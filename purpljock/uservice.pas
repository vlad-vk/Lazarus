//-----------------------------------------------------------------------------
// Обработка закладки "Сервис"


//-----------------------------------------------------------------------------
// Переход по вкладкам программы
procedure TForm1.PC1Change(Sender: TObject);
begin
  if(PC1.ActivePage=TS09)then begin TExit:=1; Exit; end;    // Выход
  // Переназначение файлов помощи для вкладок
  if(PC1.ActivePage=TS01)then begin Form1.HelpKeyword:=TS01.HelpKeyword; end;
  if(PC1.ActivePage=TS02)then begin Form1.HelpKeyword:=TS02.HelpKeyword; end;
  if(PC1.ActivePage=TS03)then begin Form1.HelpKeyword:=TS03.HelpKeyword; end;
  if(PC1.ActivePage=TS04)then begin Form1.HelpKeyword:=TS04.HelpKeyword; end;
  if(PC1.ActivePage=TS05)then begin Form1.HelpKeyword:=TS05.HelpKeyword; end;
  if(PC1.ActivePage=TS06)then begin Form1.HelpKeyword:=TS06.HelpKeyword; end;
  if(PC1.ActivePage=TS07)then begin Form1.HelpKeyword:=TS07.HelpKeyword; end;
  if(PC1.ActivePage=TS08)then begin Form1.HelpKeyword:=TS08.HelpKeyword; end;
  if(PC1.ActivePage=TS10)then begin Form1.HelpKeyword:=TS10.HelpKeyword; end;
end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Получение текущего времени с сервера базы данных
procedure TForm1.GetTimeFromSRV(MD:integer);
var
  count: integer;
begin
  TFSRV:=0;
  LTCP1.Host:=DBADDR;
  LTCP1.Port:=17;
  LTCP1.Timeout:=2000;
  if(LTCP1.Connect(LTCP1.Host,LTCP1.Port))then begin
     if MD>0 then begin
        // вызов Application.ProcessMessages дает возможность отработать другим процедурам и функциям во
        // время выполнения цикла не замораживая программу
        for count:=0 to 200 do begin sleep(10); if(TFSRV>0)then break; Application.ProcessMessages; end;
     end;
  end;
end;
//---------------------------
procedure TForm1.LTCP1Receive(aSocket: TLSocket);
var
  RBuffer: string;
  LBuffer: integer;
begin
  LBuffer:=aSocket.GetMessage(RBuffer);
  if(LBuffer>10)then begin TMSRV:=RBuffer; TFSRV:=LBuffer; end;
end;
//---------------------------
procedure TForm1.LTCP1Disconnect(aSocket: TLSocket);
begin
//MessageDlg('Debug LTCPDisconnect',
//'LBuffer: ['+IntToStr(TFSRV)+#13+
//'RBuffer: ['+TMSRV+']'+#13,
//mtWarning, [mbOK], 0);
end;
//-----------------------------------------------------------------------------
// Разрешить синхронизацию времени с сервером БД:
procedure TForm1.CB2EditingDone(Sender: TObject);
begin
  if (TMSYN =0) then begin
      TMSYN:=1
  end else begin
      TMSYN:=0;
  end;
  SConf.WriteInteger('Public','TMSYN',TMSYN);
end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Вызов помощи при нажатии на знак вопроса
procedure TForm1.ST51Click(Sender: TObject);
var
  i: integer;
  PrgStr, CmdStr: string;
  RProc: TProcess;
  HelpK: string;
begin
  HelpK:='';
  // просмотреть все компоненты программы (основной формы)
  for i:=0 to Form1.ComponentCount-1 do begin
      // имя компонента для отладки
      // ACtrl:=Components[i].Name+':'+IntToStr(i);
      //-----------------------------------------------------------------------
      // просмотреть компоненты для которых есть ввод
      if(Components[i] is TEdit) then
         // проверить - установлен ли фокус на компоненте
         if(TEdit(Components[i]).Focused) then begin
            // если установлен - получить строку вызова помощи для компонента, если она определена
            if(TEdit(Components[i]).HelpKeyword<>'') then HelpK:=TEdit(Components[i]).HelpKeyword;
            // выйти из цикла
            break;
         end;
      //-----------------------------------------------------------------------
      if(Components[i] is TLSDateEdit) then
         if(TLSDateEdit(Components[i]).Focused) then begin
            if(TLSDateEdit(Components[i]).HelpKeyword<>'') then HelpK:=TLSDateEdit(Components[i]).HelpKeyword;
            break;
         end;
      if(Components[i] is TButton) then
         if(TButton(Components[i]).Focused) then begin
            if(TButton(Components[i]).HelpKeyword<>'') then HelpK:=TButton(Components[i]).HelpKeyword;
            break;
         end;
      if(Components[i] is TComboBox) then
         if(TComboBox(Components[i]).Focused) then begin
            if(TComboBox(Components[i]).HelpKeyword<>'') then HelpK:=TComboBox(Components[i]).HelpKeyword;
            break;
         end;
      if(Components[i] is TCheckBox) then
         if(TCheckBox(Components[i]).Focused) then begin
            if(TCheckBox(Components[i]).HelpKeyword<>'') then HelpK:=TCheckBox(Components[i]).HelpKeyword;
            break;
         end;
  end;

  // имя программы помощи
  PrgStr:=HTMLHelpVW.BrowserPath;
  // ком строка для вызова помощи
  if(HelpK<>'')then CmdStr:=HelpK else CmdStr:=Form1.HelpKeyword;
  // вызов внешней программы
  RProc:= TProcess.Create(nil);
  RProc.Executable:=PrgStr;
  RProc.Parameters.Add(CmdStr);
  RProc.Execute;
  RProc.Free;

  // сообщение для отладки
  //MessageDlg('Debug KeyClick',
  //           'PrgStr: ['+PrgStr+']'+#13+
  //           'CmdStr: ['+CmdStr+']'+#13+
  //           'ActiveControlName=: ['+ACtrl+']'+#13+
  //           'CCount: ['+IntToStr(ComponentCount)+']'+#13,
  //           mtWarning, [mbOK], 0);
end;
//-----------------------------------------------------------------------------
procedure TForm1.ST51MouseEnter(Sender: TObject);
begin
   ST51.Font.Style:=[fsBold];
end;
//-----------------------------------------------------------------------------
procedure TForm1.ST51MouseLeave(Sender: TObject);
begin
  ST51.Font.Style:=[];
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Запись координат окна в файл конфигурации
procedure TForm1.BT01Click(Sender: TObject);
begin
  SConf.WriteInteger('Public','WINX',Win_X);
  SConf.WriteInteger('Public','WINY',Win_Y);
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Запись кода доступа в файл
procedure TForm1.BT02Click(Sender: TObject);
var
  s: string;
begin
  if LEVELA=1 then begin
     if(ED2.Text='')then ED2.Text:='78787878';
     CRYPT1.InitStr('1234567890',TDCP_sha1);
     s:=CRYPT1.EncryptString(ED2.Text);
     SConf.WriteString('Public','LEVEL1',s);
  end;
  ReadLevelAccess;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Определение печати отчетов в файл
procedure TForm1.CB1Click(Sender: TObject);
begin
  PFile:=CB1.Checked.ToInteger;
  SConf.WriteInteger('Public','PFile',PFile);
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Ввод расширения файла для сохранения
procedure TForm1.CBOX1Change(Sender: TObject);
begin
  if(CBOX1.Text='')then CBOX1.Text:='TXT'; FFile:=CBOX1.Text;
  SConf.WriteString('Public','FFILE',FFile);
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Чтение из файла конфигурации уровней доступа
procedure TForm1.ReadLevelAccess();
var
  s: string;
begin
  CRYPT1.InitStr('1234567890',TDCP_sha1);
  s:=SConf.ReadString('Public','LEVEL1','');                  // Код доступа для уровня 1
  if (s<>'')then LEVEL[1]:=CRYPT1.DecryptString(s) else LEVEL[1]:='78787878';
  s:=SConf.ReadString('Public','LEVEL2','');                  // Код доступа для уровня 2
  if (s<>'')then LEVEL[2]:=CRYPT1.DecryptString(s) else LEVEL[2]:='54545454';
  s:=SConf.ReadString('Public','LEVEL3','');                  // Код доступа для уровня 3
  if (s<>'')then LEVEL[3]:=CRYPT1.DecryptString(s) else LEVEL[3]:='23232323';
  s:=SConf.ReadString('Public','LEVEL4','');                  // Код доступа для уровня 4
  if (s<>'')then LEVEL[4]:=CRYPT1.DecryptString(s) else LEVEL[4]:='19191919';
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Ввод кода доступа
procedure TForm1.ED1EditingDone(Sender: TObject);
begin
  for LEVELA:=1 to MAXLEVEL do begin
    if(ED1.Caption=LEVEL[LEVELA])then break;
  end;
  SetLevelAccess;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Уровень доступа по-умолчанию
procedure TForm1.SetLevel_5();
begin
  TS02.TabVisible:=false;
  TS03.TabVisible:=false;
  TS04.TabVisible:=false;
  TS05.TabVisible:=false;
  TS06.TabVisible:=false;
  TS07.TabVisible:=false;
  //
  BT02.Visible:=false;
  ST04.Visible:=false;
  ED2.Visible:=false;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Уровень доступа администратора
procedure TForm1.SetLevel_1();
begin
  TS01.TabVisible:=true;
  TS02.TabVisible:=true;
  TS03.TabVisible:=true;
  TS04.TabVisible:=true;
  TS05.TabVisible:=true;
  TS06.TabVisible:=true;
  TS07.TabVisible:=true;
  //
  BT02.Visible:=true;
  ST04.Visible:=true;
  ED2.Visible:=true;
  ED2.Text:=ED1.Text;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Ввод времени фильтров работы и остановов
procedure TForm1.SPE1Change(Sender: TObject);
begin
  // Ввод времени фильтра работы
  if SPE1.Value>SPE2.Value then SPE1.Value:=SPE2.Value;
  if SPE2.Value>SPE3.Value then SPE2.Value:=SPE3.Value;
  if SPE3.Value>SPE4.Value then SPE3.Value:=SPE4.Value;
  if SPE4.Value>SPE5.Value then SPE4.Value:=SPE5.Value;
  // Ввод времени фильтра остановов
  if SPE6.Value>SPE7.Value  then SPE6.Value:=SPE7.Value;
  if SPE7.Value>SPE8.Value  then SPE7.Value:=SPE8.Value;
  if SPE8.Value>SPE9.Value  then SPE8.Value:=SPE9.Value;
  if SPE9.Value>SPE10.Value then SPE9.Value:=SPE10.Value;
  FLTWR[1]:=SPE1.Value; FLTWR[2]:=SPE2.Value; FLTWR[3]:=SPE3.Value; FLTWR[4]:=SPE4.Value; FLTWR[5]:=SPE5.Value;
  FLTST[1]:=SPE6.Value; FLTST[2]:=SPE7.Value; FLTST[3]:=SPE8.Value; FLTST[4]:=SPE9.Value; FLTST[5]:=SPE10.Value;
end;
//-----------------------------------------------------------------------------
// Запись времени фильтров работы и остановов в файл
procedure TForm1.BT03Click(Sender: TObject);
var
  i: integer;
begin
  for i:=1 to MAXFILT do begin
    SConf.WriteInteger('Filters','WORK'+IntToStr(i),FLTWR[i]);
    SConf.WriteInteger('Filters','STOP'+IntToStr(i),FLTST[i]);
  end;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Обновление показаний времени компьютера и сервера
procedure TForm1.BT4Click(Sender: TObject);
begin
  // Текущее время компьютера и сервера
  Form1.ST15.Caption:=FormatDateTime('DD.MM.YYYYY HH:mm:SS ',Now);
  GetTimeFromSRV(1);
  if(TFSRV>1)then begin
     Form1.ST16.Caption:=copy(TMSRV,7,2)+'.'+copy(TMSRV,5,2)+'.'+copy(TMSRV,1,4)+' '+copy(TMSRV,9,2)+':'+copy(TMSRV,11,2)+':'+copy(TMSRV,13,2);
  end;
end;
//-----------------------------------------------------------------------------
procedure TForm1.BT5Click(Sender: TObject);
begin
  // Установка системного времени с сервера
  GetTimeFromSRV(1);
  if(TFSRV>1)then begin
     P1.LocalSetSystemTime;
  end;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Разрешения для разных уровней
procedure TForm1.SetLevelAccess();
begin
  // Вывести текущий уровень доступа на вкладке Сервис
  ST03.Caption:='- уровень '+IntToStr(LEVELA);
  // Уровень 1
  if(LEVELA=1)then SetLevel_1;
  if(LEVELA=5)then SetLevel_5;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Определение периода автоматического расчета значений ТС и ПС в списке линий
procedure TForm1.SPE11EditingDone(Sender: TObject);
begin
  FITim:=SPE11.Value;
  SConf.WriteInteger('Public','Interval',FITim);
end;
//-----------------------------------------------------------------------------




