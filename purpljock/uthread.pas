//-----------------------------------------------------------------------------
// Параллельный процесс доступа к БД
unit uthread;

{$mode objfpc}{$H+}

interface

uses
{$ifdef WINDOWS}
 Windows,
{$else}
 BaseUnix,
{$endif}
 Classes, SysUtils, DateUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
 ExtCtrls, MySQL55Conn, SQLdb, DB;

type
   P1Thread = class(TThread)
     DBConn: TMySQL55Connection;
     DBTran: TSQLTransaction;
     DBQuer: TSQLQuery;
     ACData: TDataSource;
     procedure REQSTMod();
     procedure LocalSetSystemTime();
     function  GetDateTime(FMode: integer; S: string): integer;
   protected
     procedure Execute; override;
   end;

var
  DBADDR: String;                       // IP адрес сервера базы данных
  DBPORT: String;                       // Порт подключения к базе данных
  DBUSER: String;                       // имя пользовтеля для подключения
  DBPASS: String;                       // пароль пользователя для подключения
  DBNAME: String;                       // название базы данных
  BaseFL: integer;                      // флаг занятости БД
  CSleep: integer;                      // счетчик в паузе
  P1: P1Thread;                         // указатель на параллельный процесс

implementation

uses
    Unit1;



//-----------------------------------------------------------------------------
// Получение строки текущей даты и времени
function P1Thread.GetDateTime(FMode: integer; S: string): integer;
var
  Fmt : TFormatSettings;
  T : TDateTime;
  I : integer;
  N : string;
begin
  Fmt.ShortDateFormat:='yyyy-mm-dd';
  Fmt.DateSeparator  :='-';
  Fmt.LongTimeFormat :='hh:nn:ss';
  Fmt.TimeSeparator  :=':';
  I:=0; N:='';
  // Текущее время
  if(FMode=0) then begin
     N:=DateTimeToStr(Now,Fmt);
     TTime:=Copy(N,6,2)+'.'+Copy(N,9,2)+' '+Copy(N,12,2)+':'+Copy(N,15,2)+':'+Copy(N,18,2);
     I:=DateTimeToUnix(Now);
  end;
  // Время из базы
  if(FMode=1) then begin
     TTime:=Copy(S,5,2)+'.'+Copy(S,7,2)+' '+Copy(S,10,2)+':'+Copy(S,12,2)+':'+Copy(S,14,2);
     T:=StrToDateTime(Copy(S,1,4)+'-'+Copy(S,5,2)+'-'+Copy(S,7,2)+' '+Copy(S,10,2)+':'+Copy(S,12,2)+':'+Copy(S,14,2),Fmt);
     I:=DateTimeToUnix(T);
  end;
  // Текущее время
  if(FMode=2) then begin
     N:=DateTimeToStr(Now,Fmt);
     TTime:=Copy(N,1,4)+Copy(N,6,2)+Copy(N,9,2)+Copy(N,12,2)+Copy(N,15,2)+Copy(N,18,2);  // yyyymmddhhMMss
     I:=DateTimeToUnix(Now);
  end;
  // Время из базы
  if(FMode=3) then begin
     TTime:=Copy(N,1,4)+Copy(N,5,2)+Copy(N,7,2)+Copy(N,10,2)+Copy(N,12,2)+Copy(N,14,2);  // yyyymmddhhMMss
     T:=StrToDateTime(Copy(S,1,4)+'-'+Copy(S,5,2)+'-'+Copy(S,7,2)+' '+Copy(S,10,2)+':'+Copy(S,12,2)+':'+Copy(S,14,2),Fmt);
     I:=DateTimeToUnix(T);
  end;
  Result:=I;
end;
//-----------------------------------------------------------------------------
// Установка системной даты
procedure P1Thread.LocalSetSystemTime();
{$ifdef UNIX}
var
  tm: integer;
  sm: string;
  tv: TTimeVal;
  tz: TTimeZone;
begin
  sm:=copy(TMSRV,1,8)+' '+copy(TMSRV,9,6);       // YYYYMMDDHHnnSS
                                                 // 12345678901234
  tm:=GetDateTime(3,sm);                         // получить кол-во секунд с сервера (текущее время сервера БД)
  tz.tz_minuteswest := 2;                        // смещение (минус - на запад, плюс - на восток) от Гринвича
  tz.tz_dsttime := 0;                            // летнее время
  tv.tv_sec := tm;                               // секунды от 00:00, 1 января 1970 (Timestamp Unix)
  tv.tv_usec := 00;                              // милисекунды
  fpsettimeofday(@tv, @tz);                      // установить системное время
end;
{$endif}
{$ifdef WINDOWS}
var
  wtm: systemtime;
begin
  wtm.Year:=Word(StrToInt(copy(TMSRV,1,4)));
  wtm.Month:=Word(StrToInt(copy(TMSRV,5,2)));
  wtm.Day:=Word(StrToInt(copy(TMSRV,7,2)));
  wtm.Hour:=Word(StrToInt(copy(TMSRV,9,2)));
  wtm.Minute:=Word(StrToInt(copy(TMSRV,11,2)));
  wtm.Second:=Word(StrToint(copy(TMSRV,13,2)));
  wtm.Millisecond:=0;
  SetLocalTime(wtm);
end;
{$endif}
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
procedure P1Thread.Execute();
var
  CW: integer;
begin
  CSleep:=(5000 div PSleep);
  // Создание объектов для работы с БД
  DBConn:=TMySQL55Connection.Create(nil);
  DBQuer:=TSQLQuery.Create(nil);
  DBTran:=TSQLTransaction.Create(nil);
  ACData:=TDataSource.Create(nil);

  // Переменные для работы с БД
  DBConn.UserName := 'root';                   // логин
  DBConn.Port := 3306;                         // порт
  DBConn.HostName := DBADDR;                   // IP адрес БД
  DBConn.Password := '1234';                   // пароль

  DBConn.DatabaseName := DBNAME;               // имя БД
  DBConn.Transaction := DBTran;                // свзанная транзакция
  DBQuer.DataBase := DBConn;                   // БД для запросов
  DBQuer.Transaction := DBTran;                // транзакция для запросов
  DBTran.DataBase := DBConn;                   // БД для транзакций
  ACData.DataSet  := DBQuer;                   // хранилище данных для запросов

  CW:=CSleep; BaseFL:=0;
  while(P1.Terminated=False)and(PExit=0)do begin
        if(CRowS<>ORowS)then begin                              // Если в списке была выбрана новая строка (линия)
           ORowS:=CRowS;
           CW:=CSleep;
        end;
        if(VRasc=1)then CW:=CSleep;                             // Если была нажата кнопка РАСЧЕТ
        CW:=CW+1;                                               // Счетчик циклов между запросами к БД
        if(RunFL>0)and(CW>CSleep)and(SetFL=0)then begin         // Если активация окна прошла и счетчик сработан
           SetFL:=1; CW:=0;                                     // Установить флаг "Занято", обнулить счетчик
           try
             if not(DBConn.Connected) then DBConn.Open;         // Подключиться к БД
             if not(DBTran.Active) then DBTran.Active:=true;    // Включить транзакцию
             if (DBConn.Connected) then BaseFL:=1;              // Установить флаг работы с БД
           except; end;
           for CLine:=1 to HLine do begin REQSTMod; end;        // Вызов процедуры запроса к БД
           DBConn.Close(true);                                  // Закрыть БД
           SetFL:=0;
           REQCN:=REQCN+1;                                      // Увеличить счетчик запросов к БД
        end;
        P1.Sleep(PSleep);
  end;
  PExit:=2;
  CW:=0;
end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Посылка команды опроса состояния входов модуля
procedure P1Thread.REQSTMod();
const
  SSM=60*60*8;       // секунд в смену
  HowLastRec=80;     // количество считываемых записей при первом запросе
var
  A, SS,SC,ST,SV,SP,TMB,TME,SQLQuery : String;
  TC,TP,TR,GG,FT,GC,GP,KP,Sec,M,H,T,i: integer;
  HP: double;
begin

  //--------------------------------------------------
  // Запрос на сервер БД
    if(SLine[CLine]>0)and(BaseFL>0)then begin
       BaseFL:=0; GG:=0;

       //---------------------------------------------
       // Запросить запись о последнем состоянии линии
       DBQuer.Close;
       SQLQuery:='select * from TCR_LINE_'+IntToStr(SLine[CLine])+' T order by scr_time DESC Limit '+intToStr(HowLastRec);
       DBQuer.SQL.Clear;
       DBQuer.SQL.Text := SQLQuery;
       try
         DBQuer.Open;                                               // Выполнение SQL запроса
         SData[CLine][1]:=DBQuer.FieldByName('ich_1').AsInteger;    // Получение данных о состоянии каналов модулей Socket1
         SData[CLine][2]:=DBQuer.FieldByName('ich_2').AsInteger;    // Количество
         SData[CLine][3]:=DBQuer.FieldByName('ich_3').AsInteger;    // Текущая Скорость BHS
         SData[CLine][4]:=DBQuer.FieldByName('ich_4').AsInteger;    //
         SV:=DBQuer.FieldByName('scr_time').AsString;               // Получить время записи данных в БД
         GG:=DBQuer.FieldByName('ist_line').AsInteger;              // Получить состояние линии связи
         // ich_1 - признак работы, ich_2 - количество, ich_3 - скорость
         //
         T:=SData[CLine][1];
         // если статус линии не WORK - просмотреть записи в обратном порядке
         // для определения когда был статус линии WORK, чтобы определить
         // начальное время с которого линия простаивает
         if(T<>1)then begin
            for i:=1 to HowLastRec-1 do begin
                DBQuer.Next; if(DBQuer.EOF)then break;
                T:=DBQuer.FieldByName('ich_1').AsInteger; if(T=1)then break;
                SV:=DBQuer.FieldByName('scr_time').AsString;
            end;
         end;
       except exit; end;
       DBQuer.Close;                                                // Закрыть данные SQL запроса

       if (GG>0) then SConn[CLine]:=200 else SConn[CLine]:=0;       // Состояние Связи
       TP:=GetDateTime(1,SV);LTime[CLine]:=TTime;                   // Время последнего переключения
       TC:=GetDateTime(0,'');TR:=TC-TP;                             // Текущее время
       QTime:=TTime;                                                // Текущее время - как время запроса
       SStat[CLine]:='';
       LTCol[CLine]:=0;                                             // Цвет закрашивания ячейки ТСтоп

       // Если линия остановлена- данных по количеству и скорости - нет
       if(SData[CLine][1]<>1)then begin
          SData[CLine][2]:=0;
       end;
       // Если линия остановлена более чем указано в 1-ом фильтре останова
       if(SData[CLine][1]<>1)and(TR>60*FLTST[1])then begin
          H:=TR div 3600;                                           // часы
          T:=TR mod 3600;                                           // промежуточное
          M:=T  div 60;                                             // минуты
          SStat[CLine]:=IntToStr(H)+'ч '+IntToStr(M)+'м';           // Время текущего простоя линии в столбец ТСтоп
          if(TR>60*FLTST[2])then LTCol[CLine]:=1;                   // более фильтра2 - включаем подсветку 1
          if(TR>60*FLTST[3])then LTCol[CLine]:=2;                   // более фильтра3 - включаем подсветку 2
       end;
       // Если есть данные со счетчика заготовок - посчитать скорость
       if(SData[CLine][2]>0)then begin
           if(TR= 0 )then TR:=1;                                    // защита /ноль
           if(SLine[CLine]=196)or(SLine[CLine]=197)then begin
               Speed[CLine]:=Round(SData[CLine][3]);                // Текущая Скорость BHS1,BHS2
           end else begin
               Speed[CLine]:=Round(SData[CLine][2]/TR*3600);        // Скорость выпуска продукции перерабатывающих линий
           end;
       end else begin
           Speed[CLine]:=0;
       end;
       BaseFL:=1;                                                   // установить флаг работы с БД

       //---------------------------------------------
       // Если текущая выделенная запись совпадает с текущим обрабатываемым номером линии
       if(CRowS=CLine)and(BaseFL>0)then begin
       if(FView=0)or((FView=2)and(FVReq=1))then begin
          BaseFL:=0;A:='';
          // Даты для SQL-запроса в режиме списка №2 Архив
          TMB:=FVDate+' 000000000';
          TME:=FVDate+' 235959999';
          // Запросить из БД последние записи для выбранной линии
          DBQuer.Close;
          if (FView=2)then begin
              // Режим списка №2 = Архив
              SQLQuery:='select * from TCR_LINE_'+IntToStr(SLine[CLine])+' T where scr_time > "'+TMB+'" and scr_time < "'+TME+'" order by scr_time desc';
              FVReq:=FVReq+1;
          end else begin
              // Режим списка №2 = Текущий
              SQLQuery:='select * from TCR_LINE_'+IntToStr(SLine[CLine])+' T order by scr_time DESC Limit '+IntToStr(MAXDREC);
          end;
          DBQuer.SQL.Clear;
          DBQuer.SQL.Text := SQLQuery;

          // Получить текущую дату и конечную дату запроса в секундах timestamp UNIX
          TC:=P1.GetDateTime(0,'');
          if(FView=2)then begin
             // Если время запроса меньше текущего - установить текущее время равным времени запроса
             GC:=P1.GetDateTime(3,TME);
             if(GC<TC)then TC:=GC;
          end;

          HView:=1;
          LName:=SName[CLine];                                       // Запомнить название выбранной линии
          //
          try
            DBQuer.Open;                                             // Выполнение SQL запроса
            while not DBQuer.EOF do begin                            //
               SV:=DBQuer.FieldByName('scr_time').AsString;          // Взять из SQL-ответа значение поля scr_time (времени)
               ST:=DBQuer.FieldByName('ich_1').AsString;             // Взять из SQL-ответа значение поля ich_1 (сост линии)
               SP:=DBQuer.FieldByName('ich_2').AsString;             // Количество

               TP:=GetDateTime(1,SV);                                // Получить время записи из считанного поля
               TR:=TC-TP; TC:=TP; A:='';                             // Посчитать разницу времени с предыдущей TR=
               H:=0; M:=0; Sec:=0;                                   // Обнулить значения Час Мин Сек
               SView[HView][9]:='';
               SView[HView][5]:='';
               SView[HView][4]:='';

               if(ST='0')or(ST='7')then begin                         // запись строки, которая будет выводиться в колонке
                  A:='STOP';                                          // SView[HView][9]:= "Строка Примечания"
                  // Проверка значений фильтров остановов для записи примечания
                  for i:=1 to MAXFILT do begin
                      if(TR>FLTST[i]*60)then SView[HView][9]:='S+'+IntToStr(FLTST[i]);
                  end;
               end;
               if(ST='1') then begin                                  // запись строки, которая будет выводиться в колонке
                  HP:=StrToFloat(SP);
                  if(SP>'0')then SView[HView][4]:=SP;                 // Кол-во заготовок
                  if(TR= 0 )then TR:=1;                               // защита /ноль
                  if(HP> 0 )then begin
                     if(SLine[CLine]=196)or(SLine[CLine]=197)then begin
                        SView[HView][5]:=IntToStr(Round(HP/(TR/60))); // Скорость выпуса продукции BHS1,BHS2
                     end else begin
                        SView[HView][5]:=IntToStr(Round(HP/TR*3600)); // Скорость выпуска продукции перераб линий
                     end;
                  end;
                  A:='WORK';
                  // Проверка значений фильтров остановов для записи примечания
                  for i:=1 to MAXFILT do begin
                      if(TR>FLTWR[i]*60)then SView[HView][9]:='W+'+IntToStr(FLTWR[i]);
                  end;
               end;
               if(ST='2')then begin                                 // запись строки, которая будет выводиться в колонке
                  A:='TEAM';
                  SView[HView][9]:='ПЕРЕСМЕНКА';
               end;
               if(ST='7')then begin                                 // Запись в статус - отсутствие связи, линия выключена
                  A:='TOFF';
               end;

               H:=TR div 3600;                                      // часы
               T:=TR mod 3600;                                      // временное
               M:=T  div 60;                                        // минуты
               Sec:=TR mod 60;                                      // секунды

               SView[HView][1]:=TTime;                              // Время
               SView[HView][2]:=A;                                  // Статус
               SView[HView][3]:=IntToStr(H) + ' час ' + IntToStr(M) + ' мин ' + IntToStr(Sec) + ' сек'; // Продолжительность

               DBQuer.Next;                                         // Переход к следующей записи в данных запроса и
               HView:=HView+1;                                      // в массиве вывода данных
            end;
          except; end;
          DBQuer.Close;                                             // Закрыть данные SQL запроса
          BaseFL:=1;                                                // Флаг работы с БД
       end;
       end;
       if(HView>MAXVIEW)then MView:=MAXVIEW else MView:=HView;
    end;
    //--------------------------------------------------


    //--------------------------------------------------
    // Если была нажата кнопка РАСЧЕТ (установлен флаг) - посчитать поля для каждой производственной линии
    if(SLine[CLine]>0)and(VRasc>0)then begin
       DBQuer.Close;
       SQLQuery:='select * from TCR_LINE_'+IntToStr(SLine[CLine])+' T order by scr_time DESC Limit '+IntToStr(MAXDREC);
       DBQuer.SQL.Clear;
       DBQuer.SQL.Text := SQLQuery;
       //
       TC:=GetDateTime(0,'');                                    // Запомнить текущую дату (UNIX timestamp)

       // Получить время начала текущей смены
       FT:=StrToInt(Copy(TTime,7,2));                            // Текущие часы
       if(FT>= 0)and(FT<= 8)then begin SC:='00'; end;            // SC - Час начала текущей смены
       if(FT>= 8)and(FT<=16)then begin SC:='08'; end;            //
       if(FT>=16)and(FT<=24)then begin SC:='16'; end;            //

       SS:=FormatDateTime('YYYYY',Now)+Copy(TTime,1,2)+Copy(TTime,4,2)+' '+SC+'0000000';
       GC:=GetDateTime(1,SS);                                            // GC - Время начала текущей смены в UNIX timestamp
       GP:=GC-SSM;                                                       // GP - Время начала предыдущей смены в UNIX timestamp
       TCKO[CLine]:=0; TCKP[CLine]:=0; TCVP[CLine]:=0; TCVR[CLine]:=0;   // Обнуление счетчиков за текущую смену
       PCKO[CLine]:=0; PCKP[CLine]:=0; PCVP[CLine]:=0; PCVR[CLine]:=0;   // Обнуление счетчиков за предыдущую смену

       try
         DBQuer.Open;                                            // Выполнение SQL запроса
         while not DBQuer.EOF do begin                           // Обработка записей ответа, пока не конец данных
            SV:=DBQuer.FieldByName('scr_time').AsString;         // Получить время записи данных в БД (UNIX timestamp)
            TP:=GetDateTime(1,SV);                               //
            TR:=TC-TP; TC:=TP;                                   //
            ST:=DBQuer.FieldByName('ich_1').AsString;            // Получение в массив данных о состоянии канала1 модуля
            KP:=DBQuer.FieldByName('ich_2').AsInteger;           // Получение данных о кол-ве продукции
            // Текущая смена
            if(TP>GC)then begin
               if(ST='1')then begin
                  TCVR[CLine]:=TCVR[CLine]+TR;                   // Время работы
                  TCKP[CLine]:=TCKP[CLine]+KP;                   // Кол-во продукции
               end;
               if(ST='0')or(ST='7')then begin
                  TCVP[CLine]:=TCVP[CLine]+TR;                   // Время простоя
                  TCKO[CLine]:=TCKO[CLine]+1;                    // Кол-во остановов
               end;
            end;
            // Предыдущая смена
            if(TP>GP)and(TP<GC)then begin
               if(ST='1')then begin
                  PCVR[CLine]:=PCVR[CLine]+TR;
                  PCKP[CLine]:=PCKP[CLine]+KP;
               end;
               if(ST='0')or(ST='7')then begin
                  PCVP[CLine]:=PCVP[CLine]+TR;
                  PCKO[CLine]:=PCKO[CLine]+1;
               end;
            end;
            DBQuer.Next;                                         // Переход к следующей записи в данных запроса и
         end;
       except; end;
       DBQuer.Close;                                             // Закрыть данные SQL запроса

       VRasc:=VRasc+1; if(VRasc>HLine)then VRasc:=0;
       BaseFL:=1;                                                // Флаг работы с БД
    end;
    //--------------------------------------------------


end;
//-----------------------------------------------------------------------------

end.

