unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Strutils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, MouseAndKeyInput, LazHelpHTML, TplShapeObjects, TplShapeLineUnit,
  Windows, Eventlog, IniFiles, LCLType, commtypes, tcp_udpport, ModBusTCP,
  PLCTagNumber, Tag, GLMapMem, Version;

const
  MAXMSG = 100;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    HTMLHelpVW: THTMLBrowserHelpViewer;
    HTMLHelpDB: THTMLHelpDatabase;
    ELOG: TEventlog;
    Label01: TLabel;
    Label03: TLabel;
    Label04: TLabel;
    Label05: TLabel;
    Label06: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label02: TLabel;
    Label20: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    PLCTag10: TPLCTagNumber;
    PLCTag11: TPLCTagNumber;
    PLCTag12: TPLCTagNumber;
    PLCTag13: TPLCTagNumber;
    PLCTag14: TPLCTagNumber;
    PLCTag15: TPLCTagNumber;
    PLCTag16: TPLCTagNumber;
    PLCTag17: TPLCTagNumber;
    PLCTag18: TPLCTagNumber;
    PLCTag19: TPLCTagNumber;
    PLCTag5: TPLCTagNumber;
    PLCTag6: TPLCTagNumber;
    PLCTag7: TPLCTagNumber;
    PLCTag8: TPLCTagNumber;
    PLCTag9: TPLCTagNumber;
    plShapeLine1: TplShapeLine;
    plShapeLine2: TplShapeLine;
    plShapeLine3: TplShapeLine;
    Shape41: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Text04: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    PLCTag3: TPLCTagNumber;
    PLCTag4: TPLCTagNumber;
    Shape1: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape21: TShape;
    Shape2: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape31: TShape;
    Shape3: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    Shape37: TShape;
    Shape38: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape11: TShape;
    Text01: TLabel;
    ModBusTCP: TModBusTCPDriver;
    PLCTag0: TPLCTagNumber;
    PLCTag1: TPLCTagNumber;
    PLCTag2: TPLCTagNumber;
    TCPPort: TTCP_UDPPort;
    Text02: TLabel;
    Text03: TLabel;
    Text05: TLabel;
    Text06: TLabel;
    Text07: TLabel;
    Text08: TLabel;
    Text09: TLabel;
    Text10: TLabel;
    Text11: TLabel;
    Text12: TLabel;
    Text13: TLabel;
    Text14: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Tray1: TTrayIcon;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1EditingDone(Sender: TObject);
    procedure Edit2EditingDone(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormInit(Sender: TObject);
    procedure FormUTF8KeyPress(Sender: TObject; var UTF8Key: TUTF8Char);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormUpdate;
    procedure TCPPortCommErrorReading(Error: TIOResult);
    procedure TCPPortCommPortOpened(Sender: TObject);
    procedure TCPPortCommPortOpenError(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Tray1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  // ?????????? ?????????? ?? ???????????? ??????????????
  UpCNT: Integer;
  StrPNT: String;
  // ???????????????????? ?????????????? ??????????????????????
  m1di,  m1do,  m1v1,  m1v2 : byte;
  m1dis, m1dos, m1v1s, m1v2s: string;
  // ???????????????????? ?????????????? ??????????????????????
  aip1, aip2, aip3, m1zdpr: real;
  m1tmsc, m1blst, m1prst, m1erco, m1erla, m1tmou, m1zdtm: Integer;
  // ?????????????????????? (????????????????????) ???????????????? ???????????????? ?????? ???????????? ??????????
  STEPO: Integer;         // ?????? ???????????????????? ?????????????????? ??????????????????????
  PLCPS: Char;            // ?????? ???????????????????? ?????????????????? ???????????? ????????
  BSTOP: Char;            // ?????????????????? ???????????? ????????  ???? ????????????
  BSBRO: Char;            // ?????????????????? ???????????? ?????????? ???? ????????????
  KSBRO: Char;            // ?????????????????? ???????????????? ???????????? ????????
  // ?????????? ?????????????? ????????????
  FLBSStop: Integer;
  FLBSSbros: Integer;
  // ?????????? ????????????????????????????
  FLEdit: Integer;
  SEdit1: String;
  SEdit2: String;
  // ??????????????
  TM1W, TM1C, TM1Sbros, TM2CNT: Integer;
  // ???????? ????????????????????????
  FINI: TINIFile;
  // ???????? ?????????????????????? ???????????????????? ??????????????????
  FLOG: String;
  YLOG: Integer;
  // ??????????????????
  FMSG: String;
  AMSG: Array [0..MAXMSG] of String;
  // IP ???????????? ??????
  IPPLC: String;
  PLCPort: Integer;
  // ?????????????????? ????????
  WINNAME: string;
  // ???????????????? ???????????????????? ??????????????
  HMut: THandle;
  // ?????????? ???????????????? ??????????????????
  FKeyQ: Integer;
  FExit: Integer;
  FTray: Integer;

implementation

{$R *.frm}

{ TForm1 }

//-----------------------------------------------------------------------------
procedure TForm1.FormCreate(Sender: TObject);
var
   a: Integer;
begin
     // ?????????????????????????? ?????????? ????????????????????????
     FINI := TINIFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
     // ???????????? ???????????????? ???? ?????????? ????????????????????????
     FLOG := FINI.ReadString('Public', 'Log', 'bhs2_sto.log');
     FMSG := FINI.ReadString('Public','Messages', 'bhs2_sto.msg');
     IPPLC:= FINI.ReadString('Network','IP', '192.168.0.113');
     PLCPort := FINI.ReadInteger('Network','Port', 502);
     FINI.Destroy;
     // ???????????? ?????????????????? ???? ??????????
     FINI := TINIFile.Create(FMSG);
     for a:=0 to MAXMSG do begin
         AMSG[a] := FINI.ReadString('Messages', IntToStr(a), ' MES' + IntToStr(a) + ' ');
     end;
     FINI.Destroy;

     // ???????????????? ?????????????????? ?? ?????????? ???????????? ?? ?????????????????? ????????
     WINNAME := AMSG[1] + VERSION.PROGVER;  // '?????????????? ?????????? ????????, ????????????: '
     Form1.Caption := ' ' + WINNAME;
     // ?????????????? ?????????????????????? ?????????????? ????????????
     MM_CreateFMEM('BHS2STOMEM');
     // ???????????????? ???????????????????? ?????????????? ????????????????????
     HMut := OpenMutex(MUTEX_ALL_ACCESS, false, 'BHS2STO');
     // ???????? OpenMutex ???????????? ???? ???????? - ???????????? ???????????????????? ?????? ??????????????
     if HMut <> 0 then begin
        // ???????????????????? ?? ?????????????????????? ?????????????? ???????????? ????????????????
        MM_WriteToFMEM('111');
        // ?????????????? ???? ??????????????????
        Halt;
     end;
     HMut := CreateMutex(nil, false, 'BHS2STO');
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// ?????????????????? ???????? ???????????????? ?????????? ?? ?????????????????? ???????????????? ????????????????????
procedure TForm1.FormActivate(Sender: TObject);
var
     s: string;
begin
     // ???????????????????? ?????????????????? ?????????? ??????????
     Label01.Caption := '???????????????????? ?? ???????????????????????? ' + TCPPort.Host + ':' + IntToStr(TCPPort.Port);
     Label03.Caption := ''; Label04.Caption := ''; Label05.Caption := ''; Label06.Caption := '';
     Button1.Caption:= AMSG[40]; // '????????????'
     Text01.Caption := AMSG[33]+' 1, bar'; // '???????????????? ???????? ????????????'
     Text02.Caption := AMSG[33]+' 2, bar';
     Text03.Caption := AMSG[33]+' 3, bar';
     Text08.Caption := AMSG[29]; // '????????????'
     Text09.Caption := AMSG[29]; // '????????????'
     Text10.Caption := AMSG[29]; // '????????????'
     Text11.Caption := AMSG[34]; // '??????????????'
     Text12.Caption := AMSG[35]+', bar'; // '???????????????????? ???????????????? ????'
     Text13.Caption := AMSG[36]; // '?????????? ???????????? ????????, ??????'
     Text14.Caption := AMSG[37]; // '?????????? ????????????'
     Panel1.Caption := AMSG[38]; // '????????'
     Panel2.Caption := AMSG[39]; // '??????????'
     Tray1.Hint := WINNAME;
     Application.Title := WINNAME;

     // ?????????????????? ???????????????????? ????????????????
     Timer1.Interval := 1000; // (????)
     Timer2.Interval := 200;
     // ?????????????? ?????? "??????????????" ???????????? ????????????
     TM1Sbros := -1;
     // ???????? ????????????????????????????
     FLEdit := 0;
     // ???????????????????? ?????????????? ?? ?????????? ????????????????????????????
     HideCaret(Edit1.Handle);
     HideCaret(Edit2.Handle);
     // ?????????? ???? ?????????????????? ????????????
     Button2.SetFocus;
     // ???????????????? ???????????? ?? ????????
     Tray1.Visible:=True;
     Tray1.Show;
     FExit := 0;

     // ?????????????????????? ???????????????? ?? ?????????????????? ???????????? ???????????? ????????????
     // ?????? ???????????? ?????????????? ???????????? ???? ?????????? ???????????? ???????? ?????????????????????? ?????? ???????????????? ????
     // ???????????????? System: THTMLHelpDatabase ?? THTMLBrowserHelpViewer.
     // ?????? ???????????????? THTMLHelpDatabase ???????????????????? ?????? HTMLHelpDB.
     // ?????? ???????????????? THTMLBrowserHelpViewer ???????????????????? ?????? HTMLHelpVW.
     // HTML ?????????? ???????????? ???????????? ???????????????????? ?? ?????????????????????? help ???????????????????? ???????????????? ??????????????????.
     s := ExtractFilePath(ChangeFileExt(Application.ExeName,'.exe'));
     HTMLHelpDB.AutoRegister := True;
     HTMLHelpDB.BaseURL := s + 'help';
     HTMLHelpDB.KeywordPrefix := 'help/';
     HTMLHelpVW.AutoRegister:= True;;
     HTMLHelpVW.BrowserPath := s + 'wbhelp.exe';
     Form1.HelpFile := 'help/index.html';
     Form1.HelpKeyword := 'help/index.html';
     Form1.HelpType := htKeyword;

     // ?????????????????? ?????????????????? ????????????????
     TCPPort.Host  := IPPLC;
     TCPPort.Port  := PLCPort;
     TCPPort.Active:= True;
     // ?????????????????????????? ???????????? ??????????
     ELOG := TEventLog.Create(nil);
     ELOG.LogType  := ltFile;
     ELOG.FileName := FLOG;
     ELOG.Identification := '';
     ELOG.AppendContent := True;
     ELOG.Active := True;
     YLOG := 1;
     ELOG.Info(AMSG[2] + WINNAME); // '???????????? ??????????????????: '
end;
//-----------------------------------------------------------------------------
procedure TForm1.FormInit(Sender: TObject);
begin
     ShowMessage('FORM INIT');
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// ?????????????????? ???????????????? ???????? ??????????????????...
// ?????????? ???? ?????????????????? ???? ???????????????? ?????????????? ????????????: Q
procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  // CloseAction := caNone;        // ?????????????? 3 - ?????????????????? ?????????????????????? caNone ???? ?????????????? ????????
  // CloseAction := caFree;        // ?????????????? ???????????????? ???????? ??????????????????
  // CloseAction := caHide;        // ???????????? ???????? ??????????????????
  // CloseAction := caMinimize;    // ????????????????????????, ???? ???? ?????????????? ?? ???????????????? ??????????
  // CanClose := False;            // ?????????????? 2 - ???????????????????? ???????? ?????????????????????? ???????????????? ?????????? ?? False
  // Abort;                        // ?????????????? 1 - ???????????????????? ???????????????????? ??????????????????????
end;
procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // ???????? ???? ???????????????????? ???????? ???????????? - ???????????? ?????????????????? ?? ????????
  if FExit=0 then begin
     Tray1.Show;
     Form1.Hide;
     FTray:=1;
     Abort;
  end;
end;
//-----------------------------------------------------------------------------
// ?????? ?????????????? ?????????????? ?????????? ???? ???????????? ?? ????????
procedure TForm1.Tray1Click(Sender: TObject);
begin
  // ???????????????????????? ???????? ?????????????????? ???? ????????
  if FTray = 1 then begin
     Form1.ShowOnTop;
     Form1.FormStyle := fsStayOnTop;
     Form1.SetFocus;
     HideCaret(Edit1.Handle);
     HideCaret(Edit2.Handle);
     FTray := 0;
  // ???????????????? ???????? ?????????????????? ?? ????????
  end else begin
     Tray1.Show;
     Form1.Hide;
     FTray := 1;
  end;
end;
//-----------------------------------------------------------------------------
// ?????????????????? ?????????????? ???????????? ???? ??????????
procedure TForm1.FormUTF8KeyPress(Sender: TObject; var UTF8Key: TUTF8Char);
begin
    // ?????????????? ?????????????? ?????? ???????? ?????????? Q - ?????????? ???? ??????????????????
    if(UTF8Key='q')or(UTF8Key='Q')or(UTF8Key='??')or(UTF8Key='??')then FKeyQ:=FKeyQ+2;
    if FKeyQ  > 4 then begin
       FExit := 1;
       Form1.Close;
    end;
end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// ?????????????? ???? ?????????? ???????????? - ???????????????? ?????????????? ?????????????? F1
procedure TForm1.Button1Click(Sender: TObject);
begin
     KeyInput.Apply([ssCtrl]);
     KeyInput.Press(VK_F1);
     KeyInput.Unapply([ssCtrl]);
     ELOG.Info(AMSG[3]); // '?????????????? ???????????? [????????????]'
end;
//-----------------------------------------------------------------------------
procedure TForm1.Edit1Change(Sender: TObject);
begin
     Edit1.ReadOnly:=False;
     Edit1.Color:=clDefault;
     ShowCaret(Edit1.Handle);
     SEdit1:=Edit1.Text;
     FLEdit := 1;
     ELOG.Info(AMSG[4]); // '?????????????????? ???????????????? [???????????????????? ???????????????? ????]; '
end;
procedure TForm1.Edit2Change(Sender: TObject);
begin
     Edit2.ReadOnly:=False;
     Edit2.Color:=clDefault;
     ShowCaret(Edit2.Handle);
     SEdit2:=Edit2.Text;
     FLEdit := 1;
     ELOG.Info(AMSG[5]); // '?????????????????? ???????????????? [?????????? ???????????? ????????]; '
end;
procedure TForm1.Edit1EditingDone(Sender: TObject);
begin
     Edit1.ReadOnly:=True;
     Edit1.Color:=clSilver;
     if (Trim(Edit1.Text)='') then Edit1.Text:=SEdit1;
     if (StrToFloat(Edit1.Text)>15) or (StrToFloat(Edit1.Text)<0.1) then Edit1.Text:=SEdit1;
     PLCTag18.Value := StrToFloat(Edit1.Text) * 100;
     HideCaret(Edit1.Handle);
     Button2.SetFocus;
     FLEdit := 2;
     ELOG.Info(AMSG[4]+'['+SEdit1+'] -> ['+Edit1.Text+']');
end;
procedure TForm1.Edit2EditingDone(Sender: TObject);
begin
     Edit2.ReadOnly:=True;
     Edit2.Color:=clSilver;
     if (StrToInt(Edit2.Text)>900) or (StrToInt(Edit2.Text)<1) then Edit2.Text:=SEdit2;
     PLCTag19.Value := StrToFloat(Edit2.Text);
     HideCaret(Edit2.Handle);
     Button2.SetFocus;
     FLEdit := 2;
     ELOG.Info(AMSG[5]+'['+SEdit2+'] -> ['+Edit2.Text+'];');
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// ?????????????????? ?????????????? 1 ((???????????????????? ???????????? 1000 ????)
procedure TForm1.Timer1Timer(Sender: TObject);
begin
     if TM1W >     0 then TM1W := TM1W - 1;
     if TM1C < 84600 then TM1C := TM1C + 1;

     // ?????????????? (????????????) ???????????? ??????????
     if TM1Sbros >= 0 then TM1Sbros := TM1Sbros - 1;
     // ???????? ???????????? ?????????? ???????? ???????????? - ?????????? ?????? ?????????????? "????????????????"
     if (FLBSSbros > 0) and (TM1Sbros = 0) then begin
         Panel2.BevelOuter := bvRaised;    // ???????????????? ?????????????????????? ??????????
         FLBSSbros := 0;                   // ???????????????? ???????? ??????????????
         ELOG.Info(AMSG[6]);               // '???????????? ?????????? ???????????? ????????????????_1000????;'
     end;

     // ???????? ???????????????????????????? (???????????????? ???????????????????? ?????????? ??????????)
     if FLEdit > 1 then FLEdit := FLEdit + 1;
     if FLEdit > 2 then FLEdit := 0;

     // ???????? ???????????????????? ?????????????????????? ?? ??????????????????????
     if(YLOG > 0) and (YLOG < 5) then YLOG := YLOG + 1;

     // ???????? ?????????????? ???????????? ????????????
     if FKeyQ > 0 then FKeyQ := FKeyQ - 1;
end;
//-----------------------------------------------------------------------------
// ?????????????????? ?????????????? 2 (???????????????????? ???????????? 200 ????)
procedure TForm1.Timer2Timer(Sender: TObject);
begin
     FormUpdate;

     TM2CNT := TM2CNT + 1;
     if TM2CNT > 1 then begin
        TM2CNT:= 0;
        // ???????????? ???????????????????? ?? ??????
        // ???????????????? ?????????????????? ???????????????? ???????????? ????????  ???? ??????
        if PLCTag16.Value <> FLBSStop  then PLCTag16.Value := FLBSStop;
        // ???????????????? ?????????????????? ???????????????? ???????????? ?????????? ???? ??????
        if PLCTag17.Value <> FLBSSbros then PLCTag17.Value := FLBSSbros;
     end;

     // ???????????? ?????????????????????? ?????????????? ???????????? ?? ???????????????????????????? ???????? ??????????????????
     if MM_ReadFromFMEM = '111' then begin
        MM_WriteToFMEM('000');
        Form1.ShowOnTop;
        Form1.FormStyle := fsStayOnTop;
        Form1.SetFocus;
        FTray:=0;
        ELOG.Info(AMSG[7]); // '?????????? ???????? ?????????????????? ???? ???????????????? ???????? '
     end;

     // ???????????????????? ?????????? ???? ?????????????????????????? ???????? ??????????
     if Edit1.ReadOnly=False then begin Edit1.SetFocus; end;
     if Edit2.ReadOnly=False then begin Edit2.SetFocus; end;

     Application.ProcessMessages;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// ?????????????????? ???????????????????? ?? ???????????????? ??????????????
procedure TForm1.TCPPortCommPortOpened(Sender: TObject);
begin
     Form1.Label01.Caption := AMSG[8] + TCPPort.Host + ' : ' + IntToStr(TCPPort.Port);
     if YLOG>0 then ELOG.Info(Form1.Label01.Caption); // '????????????????????: ?????????? '
end;
// ???????????? ???????????????????? ?? ???????????????? ??????????????
procedure TForm1.TCPPortCommPortOpenError(Sender: TObject);
begin
     Form1.Label01.Caption := AMSG[9]+': '+AMSG[8]+ TCPPort.Host + ' : ' + IntToStr(TCPPort.Port);
     if YLOG>0 then ELOG.Info(Form1.Label01.Caption); // '????????????: ????????????????????: ?????????? '
end;
// ???????????? ???????????? ??????????????
procedure TForm1.TCPPortCommErrorReading(Error: TIOResult);
begin
     Form1.Label01.Caption := AMSG[10]; // '????????????: ???????????? ???? ?????????? '
     if YLOG>0 then ELOG.Info(Form1.Label01.Caption);
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// ???????????????????? ???????????????????? ?? ???? ??????????????????????
procedure TForm1.FormUpdate;
var
     STmp1, STmp2: string;
begin
     if UpCNT > 40 then begin
        UpCNT:= 0; StrPNT := '';
     end;
     if UpCNT mod 2 = 0 then begin
        StrPNT := StrPNT + '.';
     end;
     UpCNT := UpCNT + 1;
     Label01.Caption := AMSG[11] + StrPNT; // '?????????? ?????????????? '

     // ???????????????? ???????????????????? ??????????????
     aip1 := PLCTag0.Value * 0.01; // ???????????????? ???????? ???????????? 1
     aip2 := PLCTag1.Value * 0.01; // ???????????????? ???????? ???????????? 2
     aip3 := PLCTag2.Value * 0.01; // ???????????????? ???????? ???????????? 3
     // ?????????????? ???? ?????????? ???????????????????? ??????????????
     Label11.Caption := FloatToStrF(aip1,ffFixed,0,2);
     Label12.Caption := FloatToStrF(aip2,ffFixed,0,2);
     Label13.Caption := FloatToStrF(aip3,ffFixed,0,2);

     // ???????????????? ???? ???????????????????????? ???????? ?????????????????? ?????????? ???????????????????? ????????????????
     m1di := round(PLCTag3.Value) and $FF;
     m1do := round(PLCTag3.Value) shr 8 and $FF;
     m1v1 := round(PLCTag4.Value) and $FF;
     m1v2 := round(PLCTag4.Value) shr 8 and $FF;
     // ?????????????????????? ?????????????????? ???????????????????? ????????????, ?????????? ?????????? ?????????????? ???????????????????????????? ???????????? ????????: 12345678
     m1dis:= ReverseString(m1di.ToBinString);
     m1dos:= ReverseString(m1do.ToBinString);
     m1v1s:= ReverseString(m1v1.ToBinString);
     m1v2s:= ReverseString(m1v2.ToBinString);
     // ?????????????????????????? ???????????? ???? ???????????? ????????
     // ???? ?????????????????? ???????????? ?????????????????? ???????????????? (=1), ???? ???????????? ???????????? ?????????????????? ?????????????????????? (=0),
     // ?????????? ?? ?????????????????? ???????????? ?????????????????? ?????? ?????????????? ???? ????????????.
     if m1dis[8] = '1' then m1dis[8]:='0' else m1dis[8]:='1';
     //
     m1tmsc := round(PLCTag5.Value);      // ?????????????? ?????????????? ???????????? ??????
     m1blst := round(PLCTag6.Value);      // ?????? ????????????????????
     m1prst := round(PLCTag7.Value);      // ?????? ??????????????????
     m1erco := round(PLCTag8.Value);      // ?????? ????????????
     m1erla := round(PLCTag9.Value);      // ?????? ?????????????????? ????????????
     m1tmou := round(PLCTag10.Value);     // ?????????? ???????????? ????????
     m1zdpr := PLCTag11.Value * 0.01;     // ?????????????? ???????????????? ???????????? ????????
     m1zdtm := round(PLCTag12.Value);     // ?????????????? ?????????????? ???????????? ????????

     // ?????? ?????????????????????? ??????????????????
     Label20.Caption := IntToStr(m1prst) + ' :';

     // ?????????????????????? ???????????? ???????????? ???? ???????? ???????????????????? ??????????????????
     Label18.Caption := AMSG[12]; // '????????????'
     if (m1prst  >  0 ) and (m1prst < 4) then Label18.Caption := AMSG[13]; // '????????????????'
     if (m1prst  =  4 ) or  (m1prst = 5) then Label18.Caption := AMSG[14]; // '??????????'
     if (m1prst  = 10 ) then Label18.Caption := AMSG[15];     // '????????????????'
     if (m1v1s[5]= '1') then Label18.Caption := AMSG[16];     // '????????????????????'
     if (m1prst<>STEPO) then begin
        // '?????? ???????????????????? ?????????????????? ??????: '
        ELOG.Info(AMSG[17] + IntToStr(m1prst) + ' - ' + Label18.Caption);
     end;
     STEPO:=m1prst;

     // ?????????? ???????????? ????????
     Label17.Caption := IntToStr(m1tmou);

     // ?????? ???????????????? ???????????????????? ?????????????????? ???????????? ????????
     if m1dos[1]  = '1' then Label19.Caption := 'OWEN' else Label19.Caption := 'BHS';
     Label19.Hint:= AMSG[18]; // '?????????????? ???????????????????? ?????????????????? ???????????? ???????? BHS ?????? OWEN'

     // ?????????????????????? ?????????????????? DI/DO ????????????????
     if(m1dos[1] <> PLCPS) and (YLOG>1) then begin
        // '???????????????????? ?????????????????? ???????????? ???????? ????????????????: '
        if m1dos[1] = '1' then ELOG.Info(AMSG[19] + 'OWEN');
        if m1dos[1] = '0' then ELOG.Info(AMSG[19] + 'BHS' );
     end;
     PLCPS := m1dos[1];

     if(m1dis[7] <> BSBRO) and (YLOG>1) then begin
        if m1dis[7] = '1' then ELOG.Info(AMSG[20]); // '???? ???????????? ???????????? ???????????? ??????????'
        if m1dis[7] = '0' then ELOG.Info(AMSG[21]); // '???? ???????????? ???????????? ???????????? ??????????'
     end;
     BSBRO := m1dis[7];

     if(m1dis[8] <> BSTOP) and (YLOG>1) then begin
        if m1dis[8] = '1' then ELOG.Info(AMSG[22]); // '???? ???????????? ???????????? ???????????? ????????'
        if m1dis[8] = '0' then ELOG.Info(AMSG[23]); // '???? ???????????? ???????????? ???????????? ????????'
     end;
     BSTOP := m1dis[8];

     if(m1v1s[1] <> KSBRO) and (YLOG>1) then begin
        if m1v1s[1] = '1' then ELOG.Info(AMSG[24]); // '?????????????? ???????????? ???????? ??????????????'
        if m1v1s[1] = '0' then ELOG.Info(AMSG[25]); // '?????????????? ???????????? ???????? ??????????????'
        // '???????????????? ???????? ???? ?????????????? 1/2/3: '
        ELOG.Info(AMSG[26]+Label11.Caption+' / '+Label12.Caption+' / '+Label13.Caption);
     end;
     KSBRO := m1v1s[1];

     // ?????????????? ?????? ???????????????? ???????? ?? ?????????????? ????????????
     if FLEdit = 0 then begin
        STmp1 := FloatToStrF(m1zdpr,ffFixed,0,2);
        if Edit1.Text <> STmp1 then Edit1.Text := STmp1;
        STmp2 := IntToStr(m1zdtm);
        if Edit2.Text <> STmp2 then Edit2.Text := STmp2;
     end;

     // ???????????????????? ???????????? ???????????????????? ???????????????????? (?????????????????? ?? ?????????????????? Visible=True, Enable=True)
     Label03.Caption := IntToStr(m1di)+'=0x'+HexStr(m1di,2)+' : [12345678] : '+m1dis+' ['+m1dis[8]+']';
     Label04.Caption := IntToStr(m1do)+'=0x'+HexStr(m1do,2)+' : '+m1dos;
     Label05.Caption := IntToStr(m1v1)+'=0x'+HexStr(m1v1,2)+' : '+m1v1s;
     Label06.Caption := IntToStr(m1v2)+'=0x'+HexStr(m1v2,2)+' : '+m1v2s;

     // ???????????????????? ?????????????????????? ???????????????????? ????????????????
     // DI ??????????????:
     if m1dis[1] = '1' then Shape1.Brush.Color:=clLime else Shape1.Brush.Color:=clSilver;
     Shape1.Hint:= AMSG[41]; // 'M5 DI1: ???????????? 1 ???????????? ???????? ???????????? 100%'
     if m1dis[2] = '1' then Shape2.Brush.Color:=clLime else Shape2.Brush.Color:=clSilver;
     Shape2.Hint:= AMSG[42]; // 'M5 DI2: ???????????? 1 ???????????? ???????? ????????????'
     if m1dis[3] = '1' then Shape3.Brush.Color:=clLime else Shape3.Brush.Color:=clSilver;
     Shape3.Hint:= AMSG[43]; // 'M5 DI3: ???????????? 2 ???????????? ???????? ???????????? 100%'
     if m1dis[4] = '1' then Shape4.Brush.Color:=clLime else Shape4.Brush.Color:=clSilver;
     Shape4.Hint:= AMSG[44]; // 'M5 DI4: ???????????? 2 ???????????? ???????? ????????????'
     if m1dis[5] = '1' then Shape5.Brush.Color:=clLime else Shape5.Brush.Color:=clSilver;
     Shape5.Hint:= AMSG[45]; // 'M5 DI5: ???????????? 3 ???????????? ???????? ???????????? 100%'
     if m1dis[6] = '1' then Shape6.Brush.Color:=clLime else Shape6.Brush.Color:=clSilver;
     Shape6.Hint:= AMSG[46]; // 'M5 DI6: ???????????? 3 ???????????? ???????? ????????????'
     if m1dis[7] = '1' then Shape7.Brush.Color:=clLime else Shape7.Brush.Color:=clSilver;
     Shape7.Hint:= AMSG[47]; // 'M5 DI7: ???????????? ??????????'
     if m1dis[8] = '1' then Shape8.Brush.Color:=clLime else Shape8.Brush.Color:=clSilver;
     Shape8.Hint:= AMSG[48]; // 'M5 DI8: ???????????? ????????'

     // DO ??????????????:
     if m1dos[1]  ='1' then Shape11.Brush.Color:=clLime else Shape11.Brush.Color:=clSilver;
     Shape11.Hint:=AMSG[51]; // 'M5 DO1: ???????????????????????? ???????????????????? ?????????????????? ???????????? ???????? BHS=0 / OWEN=1'
     if m1dos[2]  ='1' then Shape12.Brush.Color:=clLime else Shape12.Brush.Color:=clSilver;
     Shape12.Hint:=AMSG[52]; // 'M5 DO2: ???????????? 1 ???????????? ???????? ???? OWEN ???????????? ??????????????'
     if m1dos[3]  ='1' then Shape13.Brush.Color:=clLime else Shape13.Brush.Color:=clSilver;
     Shape13.Hint:=AMSG[53]; // 'M5 DO3: ???????????? 1 ???????????? ???????? ???? OWEN ???????????? ??????????????'
     if m1dos[4]  ='1' then Shape14.Brush.Color:=clLime else Shape14.Brush.Color:=clSilver;
     Shape14.Hint:=AMSG[54]; // 'M5 DO4: ???????????? 2 ???????????? ???????? ???? OWEN ???????????? ??????????????'
     if m1dos[5]  ='1' then Shape15.Brush.Color:=clLime else Shape15.Brush.Color:=clSilver;
     Shape15.Hint:=AMSG[55]; // 'M5 DO5: ???????????? 2 ???????????? ???????? ???? OWEN ???????????? ??????????????'
     if m1dos[6]  ='1' then Shape16.Brush.Color:=clLime else Shape16.Brush.Color:=clSilver;
     Shape16.Hint:=AMSG[56]; // 'M5 DO6: ???????????? 3 ???????????? ???????? ???? OWEN ???????????? ??????????????'
     if m1dos[7]  ='1' then Shape17.Brush.Color:=clLime else Shape17.Brush.Color:=clSilver;
     Shape17.Hint:=AMSG[57]; // 'M5 DO7: ???????????? 3 ???????????? ???????? ???? OWEN ???????????? ??????????????'
     if m1dos[8]  ='1' then Shape18.Brush.Color:=clLime else Shape18.Brush.Color:=clSilver;
     Shape18.Hint:=AMSG[58]; // 'M5 DO8: ???????????????? ??????????'

     // ???????????????????? 1:
     if m1v1s[1]  ='1' then Shape21.Brush.Color:=clLime else Shape21.Brush.Color:=clSilver;
     Shape21.Hint:=AMSG[61]; // 'M0 DO1: ???????????? ???????????????? =1 / ???????????????? =0 ???????????????? ???????????? ???????? ???????????? 1-3' // VO_ST_OU
     if m1v1s[2]  ='1' then Shape22.Brush.Color:=clLime else Shape22.Brush.Color:=clSilver;
     Shape22.Hint:=AMSG[62]; // 'MO DO2: ????????????'
     if m1v1s[3]  ='1' then Shape23.Brush.Color:=clLime else Shape23.Brush.Color:=clSilver;
     Shape23.Hint:=AMSG[63]; // 'MO DO3: ???????????????? ???????????????? ???????????????? ???????????? ????????' // LP_CLOS
     if m1v1s[4]  ='1' then Shape24.Brush.Color:=clLime else Shape24.Brush.Color:=clSilver;
     Shape24.Hint:=AMSG[64]; // 'M0 DO4: ???????????????? ???????? / ????????????????????' // LP_STOP
     if m1v1s[5]  ='1' then Shape25.Brush.Color:=clLime else Shape25.Brush.Color:=clSilver;
     Shape25.Hint:=AMSG[65]; // 'M1 VAR1.4: ???????? ?????????????? ???????????????????? ?????????????????? ??????' // FL_BLOCK_S
     if m1v1s[6]  ='1' then Shape26.Brush.Color:=clLime else Shape26.Brush.Color:=clSilver;
     Shape26.Hint:=AMSG[66]; // 'M1 VAR1.5: ????????????, ???????? =1'
     if m1v1s[7]  ='1' then Shape27.Brush.Color:=clLime else Shape27.Brush.Color:=clSilver;
     Shape27.Hint:=AMSG[67]; // 'M1 VAR1.6: ????????????, ???????? =0'
     if m1v1s[8]  ='1' then Shape28.Brush.Color:=clLime else Shape28.Brush.Color:=clSilver;
     Shape28.Hint:=AMSG[68]; // 'M1 VAR1.7: ????????????, ???????? =1'

     // ???????????????????? 2:
     if m1v2s[1]  ='1' then Shape31.Brush.Color:=clLime else Shape31.Brush.Color:=clSilver;
     if m1v2s[2]  ='1' then Shape32.Brush.Color:=clLime else Shape32.Brush.Color:=clSilver;
     if m1v2s[3]  ='1' then Shape33.Brush.Color:=clLime else Shape33.Brush.Color:=clSilver;
     if m1v2s[4]  ='1' then Shape34.Brush.Color:=clLime else Shape34.Brush.Color:=clSilver;
     if m1v2s[5]  ='1' then Shape35.Brush.Color:=clLime else Shape35.Brush.Color:=clSilver;
     if m1v2s[6]  ='1' then Shape36.Brush.Color:=clLime else Shape36.Brush.Color:=clSilver;
     if m1v2s[7]  ='1' then Shape37.Brush.Color:=clLime else Shape37.Brush.Color:=clSilver;
     if m1v2s[8]  ='1' then Shape38.Brush.Color:=clLime else Shape38.Brush.Color:=clSilver;
     // 'M5 F1: M1 VAR2.7: ???????? ???????????? ?????????????????? ??????, ???????????? ?????? ?? ?????? ??????????????'
     Shape38.Hint:=AMSG[78];

     // ?????????????????????? ?????????????????? ???????????????? ???????????? ????????
     if m1dis[2] = '1' then begin
        Label14.Caption := AMSG[27]; Label14.Font.Color := clRed;     // '????????????'
     end else begin
        Label14.Caption := AMSG[28]; Label14.Font.Color := clGreen;   // '????????????'
     end;
     if m1dis[4] = '1' then begin
        Label15.Caption := AMSG[27]; Label15.Font.Color := clRed;
     end else begin
        Label15.Caption := AMSG[28]; Label15.Font.Color := clGreen;
     end;
     if m1dis[6] = '1' then begin
        Label16.Caption := AMSG[27]; Label16.Font.Color := clRed;
     end else begin
        Label16.Caption := AMSG[28]; Label16.Font.Color := clGreen;
     end;
     // ?????????????????????? ???????????????? ???????????????? ???????????????? ???????????? ????????
     if m1dos[2] = '1' then begin
        plShapeLine1.ArrowColor := clRed; plShapeLine1.LineColor := clRed;
        plShapeLine2.ArrowColor := clRed; plShapeLine2.LineColor := clRed;
        plShapeLine3.ArrowColor := clRed; plShapeLine3.LineColor := clRed;
     end else begin
        plShapeLine1.ArrowColor := clSilver; plShapeLine1.LineColor := clSilver;
        plShapeLine2.ArrowColor := clSilver; plShapeLine2.LineColor := clSilver;
        plShapeLine3.ArrowColor := clSilver; plShapeLine3.LineColor := clSilver;
     end;

     // YLOG>  - ???? ???????????????????? ?????? ??????????????????????????
     if YLOG>3 then begin

        // ?????????????????????? ???????????????? ????????, ??????????, ????????????????
     // m1dis[8] -  ???????????? ????????, m1v1s[4] - ???????????????? ????????
     if(m1dis[8] = '1') or (m1v1s[4] = '1') then begin
         Shape41.Brush.Color:=clRed;
     end else begin
         Shape41.Brush.Color:=clSilver;
     end;
     // m1dis[7] - ???????????? ??????????, m1dos[8] - ???????????????? ??????????, m1v1s[1] - ?????????????? ???????????? ????????
     if(m1dis[7] = '1') or (m1dos[8] = '1') then begin
         Shape42.Brush.Color:=clYellow;
     end else begin
         Shape42.Brush.Color:=clSilver;
     end;
     // m1v1s[3] - ???????????????? ???????????????? ????????????
     if m1v1s[3] = '1' then begin
         Shape43.Brush.Color:=clGreen;
     end else begin
         Shape43.Brush.Color:=clSilver;
     end;

     // YLOG>1 - ???? ???????????????????? ?????? ??????????????????????????
     end;

end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// ?????????????? ???????????? ???????? (STOP)
procedure TForm1.Panel1Click(Sender: TObject);
begin
     if FLBSStop > 0 then begin
        Panel1.BevelOuter := bvRaised;
        FLBSStop :=0;
        ELOG.Info(AMSG[30]); // '???? ???????????? ?????????????? ???????????? ????????'
     end else begin
        Panel1.BevelOuter := bvLowered;
        FLBSStop :=1;
        ELOG.Info(AMSG[31]); // '???? ???????????? ?????????????? ???????????? ????????'
     end;
end;
// ?????????????? ???????????? ??????????
procedure TForm1.Panel2Click(Sender: TObject);
begin
     if FLBSSbros  = 0 then begin
        Panel2.BevelOuter := bvLowered;
        FLBSSbros := 1; // ???????? ?????????????? ????????????
        TM1Sbros  := 2; // ?????????????????? ???????????? - 2 ?????? (?????????????????? ?? ?????????????????? ??????????????)
        ELOG.Info(AMSG[32]); // '???? ???????????? ?????????????? ???????????? ??????????'
     end;
end;
//-----------------------------------------------------------------------------


end.

