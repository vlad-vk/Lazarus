//-----------------------------------------------------------------------------
// Формирование отчета

//-----------------------------------------------------------------------------
// Формирование отчета
procedure TForm1.BTO1Click(Sender: TObject);
var
   DBC: TMySQL55Connection;
   DBT: TSQLTransaction;
   DBQ: TSQLQuery;
   ADT: TDataSource;
   CLN,TC,TP,TR,GC,T1,T2,T3,F_OK,CHV,TMP,SK: integer;
   CDT,IDT,SQL,CTM,TMB,TME,ST,SV: string;
begin
   // Проверка введенной даты (запись БД начата с даты StartDate)
   CDT:=FormatDateTime('YYYYYMMDD',Now);
   IDT:=Copy(DE1.Text,7,4)+Copy(DE1.Text,4,2)+Copy(DE1.Text,1,2);
   if(IDT<ShortDate)then DE1.Text:=StartDate;
   if(IDT>CDT)      then DE1.Text:=FormatDateTime('DD.MM.YYYY',Now);
   // Ожидать окончание паралленого запроса к БД со списка линий.
   // Впринципе, параллельные запросы можно останавливать, если вкладка "Линии" закрыта
   for F_OK:=0 to 3000 do if SetFL=0 then sleep(10) else break;
   for F_OK:=0 to 3000 do if SetFL=1 then sleep(10) else break;
   // Создание объектов для работы с БД
   DBC:=TMySQL55Connection.Create(nil);
   DBQ:=TSQLQuery.Create(nil);
   DBT:=TSQLTransaction.Create(nil);
   ADT:=TDataSource.Create(nil);
   //
   DBC.UserName := 'root';                               // логин
   DBC.Port := 3306;                                     // порт
   DBC.HostName := DBADDR;                               // IP адрес БД
   DBC.Password := '1234';                               // пароль
   DBC.DatabaseName := DBNAME;                           // имя БД
   DBC.Transaction := DBT;                               // свзанная транзакция
   DBQ.DataBase := DBC;                                  // БД для запросов
   DBQ.Transaction := DBT;                               // транзакция для запросов
   DBT.DataBase := DBC;                                  // БД для транзакций
   ADT.DataSet  := DBQ;                                  // хранилище данных для запросов

// MessageDlg('BT01Click', 'DBConnected 1'+#13, mtWarning, [mbOK], 0);
   try
     // Подключиться к БД
     if not(DBC.Connected) then begin DBC.Close(False); sleep(50); DBC.Open; end;
     if not(DBT.Active) then DBT.Active:=true;             // Включить транзакцию
   except
     DBC.Free; DBQ.Free; DBT.Free; ADT.Free;
     exit;
   end;

   F_OK:=0;
   if(DBC.Connected) then begin                            // Если подключились к БД
      // Сформировать даты для SQL-запроса
      CTM:=Copy(DE1.Text,7,4)+Copy(DE1.Text,4,2)+Copy(DE1.Text,1,2); RepTM:=DE1.Text;
      TMB:=CTM+' 000000000';
      TME:=CTM+' 235959999';

      if (RepLN=0)then begin
          TMP:=1; CHV:=HLine-1;                            // Выбрано формирование отчета для всех лигий
      end else begin
          TMP:=RepLN; CHV:=TMP;                            // Выбрана одна линия
      end;

      for CLN:=TMP to CHV do begin                         // Выполняем цикл для каждой линии
        SQL:='select * from TCR_LINE_'+IntToStr(SLine[CLN])+' T where scr_time > "'+TMB+'" and scr_time < "'+TME+'" order by scr_time desc';
        DBQ.SQL.Clear; DBQ.SQL.Text:=SQL;
        try
          DBQ.Open;                                        // Выполнение SQL запроса

          // Получить текущую дату и конечную дату запроса в секундах timestamp UNIX
          TC:=P1.GetDateTime(0,'');
          GC:=P1.GetDateTime(3,TME);
          // Если время запроса меньше текущего - установить текущее время равным времени запроса
          if(GC<TC)then TC:=GC;
          // Кол-во секунд в начальном времени запроса в формате timestamp UNIX
          GC:=P1.GetDateTime(3,TMB);
          // Кол-во секунд для граничного времени 3х смен T1=00:00-08:00, T2=08:00-16:00, T3=16:00-24:00.
          T1:=GC; T2:=GC+60*60*8; T3:=GC+60*60*16;
          // Обнуление счетчиков по сменам
          S1KP[CLN]:=0; S1KO[CLN]:=0; S1VP[CLN]:=0; S1VR[CLN]:=0;
          S2KP[CLN]:=0; S2KO[CLN]:=0; S2VP[CLN]:=0; S2VR[CLN]:=0;
          S3KP[CLN]:=0; S3KO[CLN]:=0; S3VP[CLN]:=0; S3VR[CLN]:=0;
          SSKP[CLN]:=0; SSKO[CLN]:=0; SSVP[CLN]:=0; SSVR[CLN]:=0;

          while not DBQ.EOF do begin
            SV:=DBQ.FieldByName('scr_time').AsString;      // время текущей записи
            ST:=DBQ.FieldByName('ich_1').AsString;         // статус канала 1 - работа линии
            SK:=DBQ.FieldByName('ich_2').AsInteger;        // кол-во продукции
            TP:=P1.GetDateTime(1,SV);
            TR:=TC-TP; TC:=TP;

            // смена T3=16:00-24:00
            if(TP>=T3)then begin
               if(ST='1')then begin
                   S3VR[CLN]:=S3VR[CLN]+TR;                // время работы
                   S3KP[CLN]:=S3KP[CLN]+SK;
               end;
               if(ST='0')or(ST='7')then begin
                   S3VP[CLN]:=S3VP[CLN]+TR;                // время простоя
                   S3KO[CLN]:=S3KO[CLN]+1;                 // количество остановов
               end;
            end;

            // смена T2=08:00-16:00
            if(TP>=T2)and(TP<T3)then begin
               if(ST='1')then begin
                   S2VR[CLN]:=S2VR[CLN]+TR;                // время работы
                   S2KP[CLN]:=S2KP[CLN]+SK;
               end;
               if(ST='0')or(ST='7')then begin
                   S2VP[CLN]:=S2VP[CLN]+TR;                // время простоя
                   S2KO[CLN]:=S2KO[CLN]+1;                 // количество остановов
               end;
            end;

            // смена T1=00:00-08:00
            if(TP>=T1)and(TP<T2)then begin
               if(ST='1')then begin
                   S1VR[CLN]:=S1VR[CLN]+TR;                // время работы
                   S1KP[CLN]:=S1KP[CLN]+SK;
               end;
               if(ST='0')or(ST='7')then begin
                   S1VP[CLN]:=S1VP[CLN]+TR;                // время простоя
                   S1KO[CLN]:=S1KO[CLN]+1;                 // количество остановов
               end;
            end;

            DBQ.Next;                                      // Переход к следующей записи в данных запроса
          end;
        except; break; end;

        DBQ.Close;                                         // Закрыть данные SQL запроса

        SSKP[CLN]:=S1KP[CLN]+S2KP[CLN]+S3KP[CLN];          // Кол-во продукции за сутки
        SSKO[CLN]:=S1KO[CLN]+S2KO[CLN]+S3KO[CLN];          // количество остановов
        SSVP[CLN]:=S1VP[CLN]+S2VP[CLN]+S3VP[CLN];          // время простоя
        SSVR[CLN]:=S1VR[CLN]+S2VR[CLN]+S3VR[CLN];          // время работы

        sleep(50);
      end;
      F_OK:=1;
   end;
   if(DBC.Connected)then DBC.Close(False);                 // Закрыть БД

// // Определение файла отчета для типа отчета "Полный"
// if(RepTP<>0)then begin
//    NFile:='';
// end;

   if F_OK>0 then begin
      if(FileExists(NFile+'.lrf'))then begin
         FREP.LoadFromFile(NFile+'.lrf');
         FREP.ShowReport;
         FREP.Preview.Zoom:=100.0;
      end;
   end;
   DBC.Destroy; DBQ.Destroy; DBT.Destroy; ADT.Destroy;
end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Вывод на печать или в файл
procedure TForm1.BTO3Click(Sender: TObject);
var
   HDF: TextFile;
   BUF: array[1..100] of string;
   a,b: integer;
begin
   FREP.LoadFromFile(NFile+'.lrf');
   if FREP.PrepareReport then begin
      if PFile=0 then begin
        // Печать отчета
        FREP.PrintPreparedReport('1-1',1)
      end else begin
        // Запись отчета в файл
        if FFile='PDF' then begin
//         FREP.ExportTo(TfrTNPDFExportFilter,NFile+'.pdf');      // PowerPDF
           FREP.ExportTo(TlrCairoExportFilter,NFile+'.pdf');      // CairoPDF
           OpenDocument(NFile+'.pdf');
        end else begin
           FREP.ExportTo(TfrTextExportFilter,NFile+'.txt');
           // Убрать из файла отчета лишние строки
           if(FileExists(NFile+'.txt'))then begin
              AssignFile(HDF, NFile+'.txt');
              // Чтение текстового файла
              Reset(HDF); a:=0;
              while not Eof(HDF) do begin a:=a+1; ReadLn(HDF, BUF[a]); end;
              CloseFile(HDF);
              // Запись в текстовый файл
              ReWrite(HDF); b:=0;
              while a>b do begin
                 b:=b+1;
                 if(StrLen(PChar(BUF[b]))>1)then Writeln(HDF,BUF[b]);
              end;
              CloseFile(HDF);
              OpenDocument(NFile+'.txt');
           end;
        end;
      end;
   end;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Заполнение переменных отчета значениями
procedure TForm1.FREPGetValue(const ParName: String; var ParValue: Variant);
begin
  if ParName='CTM' then ParValue:=RepTM;
  if frNR<HLine then begin
     if ParName='NUMPP' then ParValue:=IntToStr(frNR);
     if ParName='LNAME' then ParValue:=SName[frNR];
     //
     if ParName='S1KP'  then ParValue:=IntToStr(S1KP[frNR]);
     if ParName='S1KO'  then ParValue:=IntToStr(S1KO[frNR]);
     if ParName='S1VR'  then ParValue:=Convert_TR_TS(S1VR[frNR],0);
     if ParName='S1VP'  then ParValue:=Convert_TR_TS(S1VP[frNR],0);
     //
     if ParName='S2KP'  then ParValue:=IntToStr(S2KP[frNR]);
     if ParName='S2KO'  then ParValue:=IntToStr(S2KO[frNR]);
     if ParName='S2VR'  then ParValue:=Convert_TR_TS(S2VR[frNR],0);
     if ParName='S2VP'  then ParValue:=Convert_TR_TS(S2VP[frNR],0);
     //
     if ParName='S3KP'  then ParValue:=IntToStr(S3KP[frNR]);
     if ParName='S3KO'  then ParValue:=IntToStr(S3KO[frNR]);
     if ParName='S3VR'  then ParValue:=Convert_TR_TS(S3VR[frNR],0);
     if ParName='S3VP'  then ParValue:=Convert_TR_TS(S3VP[frNR],0);
     //
     if ParName='SSKP'  then ParValue:=IntToStr(SSKP[frNR]);
     if ParName='SSKO'  then ParValue:=IntToStr(SSKO[frNR]);
     if ParName='SSVR'  then ParValue:=Convert_TR_TS(SSVR[frNR],0);
     if ParName='SSVP'  then ParValue:=Convert_TR_TS(SSVP[frNR],0);
  end;
end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Проверка конца области данных
procedure TForm1.FDATCheckEOF(Sender: TObject; var Eof: Boolean);
var
  CHV: integer;
begin
  // RepLN=0-формирование отчета для всех линий, иначе только для выбранной
  if(RepLN=0 )then CHV:=HLine else CHV:=RepLN+1;
  if(frNR<CHV)then Eof:=false else Eof:=true;
end;
//-----------------------------------------------------------------------------
// Первая запись области данных
procedure TForm1.FDATFirst(Sender: TObject);
var
  TMP: integer;
begin
  // RepLN=0-формирование отчета для всех линий, иначе только для выбранной
  if(RepLN=0)then TMP:=1 else TMP:=RepLN;
  frNR:=TMP;
end;
//-----------------------------------------------------------------------------
// Следующая запись области данных
procedure TForm1.FDATNext(Sender: TObject);
begin
  frNR:=frNR+1;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Определение линии для формирования отчета
procedure TForm1.CBOX2EditingDone(Sender: TObject);
begin
  RepLN:=CBOX2.ItemIndex;
  if(RepLN=0)then begin RepTP:=0; CBOX3.ItemIndex:=0; end;
end;
// Определение типа отчета для формирования (Краткий,Полный,...)
procedure TForm1.CBOX3EditingDone(Sender: TObject);
begin
  if(RepLN=0)then begin RepTP:=0; CBOX3.ItemIndex:=0; end;
end;
//-----------------------------------------------------------------------------


