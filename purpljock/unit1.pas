unit Unit1;

// Советы:
//----------------------------------------------------------------------------
// После определения класса TThread, нужно в файле .ppr проверить строчки включения
// модуля cthreads. Они должны выглядить, как указано ниже и никак иначе!
// {$IFDEF UNIX}{$DEFINE UseCThreads}
// cthreads,
// {$ENDIF}
//----------------------------------------------------------------------------
// Установка RowCount вызывает перерисовку списка, поэтому в цикле при добавлении строк
// в список, данный признак ставить не надо,т.к. это может вызвать мерцание списка.
// Самый оптимальный вариант это перед заполнением списка, определить максимально возможное
// количество строк в нем, а после заполнения - указать в RowCount его реальный размер.
//----------------------------------------------------------------------------
// При заполнении списков StringGrid в свойстве onDrawCell нельзя заполнять ячейки списка!!!
// Это приводит к сильной загрузке процессора. Заполнение списка (ячеек) надо делать
// в отдельной процедуре, в перерисовке списка только м.б. анализ ячеек и вывод (рисование)
// информации на холсте (Canvas).
//----------------------------------------------------------------------------
// Порядок вызова процедур формы (http://wiki.typhon.freepascal.org/Event_order):
// OnCreate => OnShow => OnActivate => OnPaint => OnResize => OnPaint => ...
// OnCloseQuery => OnClose => OnDeactivate => OnHide => OnDestroy
//----------------------------------------------------------------------------

{$mode objfpc}{$H+}

interface

uses
  Classes, FileInfo, SysUtils, FileUtil, LSControls, PrintersDlgs,
  LR_Class, LR_DSet, LR_Desgn, LR_View, LR_E_TXT, lr_e_pdf, lr_e_cairo, LCLIntf,
  DCPtea, DCPsha1, Forms, Controls, Printers, Graphics, Dialogs, ExtCtrls,
  Grids, IniFiles, StdCtrls, ComCtrls, Buttons, LazHelpHTML, Spin, Types,
  MySQL55Conn, SQLdb, DB, Process, lNetComponents, lNet;

type
  TDTimer = class(TThread)
      procedure MTimer1_RUN();
      procedure MTimer2_RUN();
    protected
      procedure Execute; override;
    end;

  { TForm1 }

  TForm1 = class(TForm)
    BT01: TButton;
    BT02: TButton;
    BT03: TButton;
    BT4: TButton;
    BT5: TButton;
    BT6: TButton;
    BTO1: TButton;
    BTO3: TButton;
    BTZ: TButton;
    BTV: TBitBtn;
    BTF: TButton;
    BTR: TButton;
    CB1: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    CBOX1: TComboBox;
    CBOX2: TComboBox;
    CBOX3: TComboBox;
    CRYPT1: TDCP_tea;
    DE1Button: TLSEditBtnButton;
    DE2: TLSDateEdit;
    ED1: TEdit;
    ED2: TEdit;
    ED3: TEdit;
    FPRV: TfrPreview;
    FREP: TfrReport;
    FDAT: TfrUserDataset;
    HTMLHelpVW: THTMLBrowserHelpViewer;
    HTMLHelpDB: THTMLHelpDatabase;
    lrCairoExport1: TlrCairoExport;
    DE1: TLSDateEdit;
    LTCP1: TLTCPComponent;
    PNSET1: TPanel;
    PN4: TPanel;
    PNSET2: TPanel;
    PNSET3: TPanel;
    PNSET4: TPanel;
    PNSET5: TPanel;
    PNSET6: TPanel;
    PNSET7: TPanel;
    SPE1: TSpinEdit;
    SPE10: TSpinEdit;
    SPE11: TSpinEdit;
    SPE2: TSpinEdit;
    SPE3: TSpinEdit;
    SPE4: TSpinEdit;
    SPE5: TSpinEdit;
    SPE6: TSpinEdit;
    SPE7: TSpinEdit;
    SPE8: TSpinEdit;
    SPE9: TSpinEdit;
    ST01: TStaticText;
    ST02: TStaticText;
    ST03: TStaticText;
    ST04: TStaticText;
    ST05: TStaticText;
    ST12: TStaticText;
    ST13: TStaticText;
    ST15: TStaticText;
    ST16: TStaticText;
    ST17: TStaticText;
    ST18: TStaticText;
    ST19: TStaticText;
    ST2: TStaticText;
    ST20: TStaticText;
    ST21: TStaticText;
    ST3: TStaticText;
    ST4: TStaticText;
    ST5: TStaticText;
    ST51: TStaticText;
    ST6: TStaticText;
    ST7: TStaticText;
    ST8: TStaticText;
    SG3: TStringGrid;
    ST9: TStaticText;
    TS10: TTabSheet;
    TXTEXP: TfrTextExport;
    HASH1: TDCP_sha1;
    PN3: TPanel;
    PC1: TPageControl;
    PN2: TPanel;
    PRND: TPrintDialog;
    SP1: TShape;
    SG1: TStringGrid;
    SG2: TStringGrid;
    ST1: TStaticText;
    ST11: TStaticText;
    TS09: TTabSheet;
    TS01: TTabSheet;
    TS02: TTabSheet;
    TS03: TTabSheet;
    TS04: TTabSheet;
    TS05: TTabSheet;
    TS06: TTabSheet;
    TS07: TTabSheet;
    TS08: TTabSheet;
    procedure BT01Click(Sender: TObject);
    procedure BT02Click(Sender: TObject);
    procedure BT03Click(Sender: TObject);
    procedure BT4Click(Sender: TObject);
    procedure BT5Click(Sender: TObject);
    procedure BTO1Click(Sender: TObject);
    procedure BTO3Click(Sender: TObject);
    procedure BTZClick(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure BTFClick(Sender: TObject);
    procedure BTRClick(Sender: TObject);
    procedure CB2EditingDone(Sender: TObject);
    procedure CBOX1Change(Sender: TObject);
    procedure CBOX2EditingDone(Sender: TObject);
    procedure CBOX3EditingDone(Sender: TObject);
    procedure DE2EditingDone(Sender: TObject);
    procedure ED1EditingDone(Sender: TObject);
    procedure ED3EditingDone(Sender: TObject);
    procedure FDATCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure FDATFirst(Sender: TObject);
    procedure FDATNext(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FREPGetValue(const ParName: String; var ParValue: Variant);
    procedure LTCP1Disconnect(aSocket: TLSocket);
    procedure LTCP1Receive(aSocket: TLSocket);
    procedure SG1DblClick(Sender: TObject);
    procedure SG1KeyPress(Sender: TObject; var Key: char);
    procedure SPE11EditingDone(Sender: TObject);
    procedure SPE1Change(Sender: TObject);
    procedure ST51Click(Sender: TObject);
    procedure ST51MouseEnter(Sender: TObject);
    procedure ST51MouseLeave(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure SG1DrawCell(Sender: TObject; aCol, aRow: Integer; aRect: TRect; aState: TGridDrawState);
    procedure SG1SelectCell(Sender: TObject; aCol, aRow: Integer; var CanSelect: Boolean);
    procedure SG2DrawCell(Sender: TObject; aCol, aRow: Integer; aRect: TRect; aState: TGridDrawState);
//  procedure SG2MouseEnter(Sender: TObject);
//  procedure SG2MouseLeave(Sender: TObject);
//  procedure SG2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
//  procedure SG2MouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    function  Convert_TR_TS(TR:integer; CM:integer): string;
    procedure GetTimeFromSRV(MD: integer);
    procedure ConfigRead();
    procedure ReDrawHeader();
    procedure FillListView1();
    procedure FillListView2();
    procedure ReadLevelAccess();
    procedure SetLevelAccess();
    procedure SetLevel_1();
    procedure SetLevel_5();
    procedure ST6Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

//-------------------------------------------------------------------------------
// Определение переменных
const
  MAXLINE = 15;                                // максимальное количество линий
  MAXVIEW = 300;                               // максимальное кол-во строк для отображения работы выбранной линии
  MAXDREC = 400;                               // максимальное кол-во записей запрашиваемых из БД
  MAXFILT = 5;                                 // максимальное кол-во фильтров работы и останова линий
  MAXLEVEL= 5;                                 // максимальное кол-во уровней доступа
  PSleep  = 20;                                // пауза в цикле
  StartDate = '10.08.2016';                    // дата начала записи данных в БД
  ShortDate = '20160810';                      // дата начала записи данных в БД

var
  ProgV: TFileVersionInfo;                     // номер версии программы
//PRKey: TKeyInput;
  DTimer:TDTimer;                              // таймер перерисовки
  Form1: TForm1;                               // основная форма
  Win_X: integer;                              // координаты вывода окна программы
  Win_Y: integer;                              // ...
  RunFL: integer;                              // Флаг выполнения программы
  SetFL: integer;                              // Флаг установки и перерисовки значений
  REQCN: integer;                              // Счетчик запросов
  PExit: integer;                              // Флаг выхода из программы
  TExit: integer;                              // ...
  CMCol: array[1..11] of TColor;               // Текущий цвет меню
  SMCol: integer;                              // Сохраненный цвет меню
  CB2ch: boolean;                              // Признак установки фильтра
  SFilt: string;                               // Строка фильтра

  SConf: TINIFile;                             // компонент работы с INI файлами
  HLine: integer;                              // количество линий определенных в файле конфигурации
  CLine: integer;                              // номер текущей опрашиваемой линии
  CRowA: integer;                              // текущий номер выбранной строки списка (линии) - Select
  CRowS: integer;                              // текущий номер выбранной строки списка (линии) - Double click
  ORowS: integer;                              // предыдущий номер выбранной строки списка (линии)
  LName: string;                               // название выбранной линии

  TMSRV: string;                               // строка текущего времени с сервера БД
  TFSRV: integer;                              // флаг обновления строки вроемени с сервера БД
  TMSYN: integer;                              // флаг синхронизации времени компьютера(программы) с сервером БД
  LTime: array[1..MAXLINE] of string;          // время последнего изменения состояния линии после запуска программы
  LTCol: array[1..MAXLINE] of integer;         // цвет ячейки времени последнего изменения состояния линии
  TTime: String;                               // временная строка для преобразования времени
  QTime: String;                               // время последнего запроса
  FNSec: integer;                              // флаг новой секунды
  MTime: array[1..4] of integer;               // программные таймеры MTimer[Счетчик][Флаг]
  ITime: integer;                              // интервал таймера программы
  FITim: integer;                              // интервал таймера  для формирования расчета текущ и предыдущ смен
  FICnt: integer;                              // счетчик интервала для формирования расчета ...

  SLine: array[1..MAXLINE] of integer;         // идентификатор линии
  SHost: array[1..MAXLINE] of string;          // IP адрес линии
  SName: array[1..MAXLINE] of string;          // наименование линии
  STime: integer;                              // интервал посылки запросов
  SPath: String;                               //
  SFile: String;                               // имя файла конфигурации
  SChan: array[1..MAXLINE] of integer;         // номер канала на модуле определяющий состояние линии
  SData: array[1..MAXLINE, 1..4] of integer;   // состояние каналов опрашиваемого модуля
  SConn: array[1..MAXLINE] of integer;         // состояние связи с модулем
  SStat: array[1..MAXLINE] of string;          // состояние связи с модулем (строка)
  OConn: array[1..MAXLINE] of integer;         // предыдущее состояние связи с модулем
  WCount:array[1..MAXLINE] of integer;         // признак счета заготовок
  Speed: array[1..MAXLINE] of integer;         // текущая скорость линии

  HView: integer;                              // кол-во строк для отображения работы линии
  MView: integer;                              //
  FDraw: integer;                              // флаг перерисовки списка
  GDraw: integer;
  FView: integer;                              // флаг Текущего  просмотра списка №2 работы выбранной линии
  FVReq: integer;                              // флаг Архивного просмотра списка №2 работы выбранной линии
  FVDate:string;                               // строка даты для запроса
  SView: array[1..MAXDREC*2+7,1..9] of string; // строки отображения работы выбранной линии
  TDRWA: array[1..10] of integer;              // временная переменная для прорисовки строк
  MMove: array[1..5] of integer;               // флаги активности мышки
  SP1XY: TRect;                                // Координаты шайпера занятости нижнего окна
  VMous: integer;                              // ...
  VFilt: integer;                              // флаг фильтра отображения строк
  VRasc: integer;                              // флаг запуска расчета кол-ва остановов и времени простоя и работы за смену
  TCKO : array[1..MAXLINE] of integer;         // Текущая смена кол-во остановов
  TCKP : array[1..MAXLINE] of integer;         // Текущая смена кол-во продукции
  TCVP : array[1..MAXLINE] of integer;         // Текущая смена время простоя
  TCVR : array[1..MAXLINE] of integer;         // Текущая смена время работы
  PCKO : array[1..MAXLINE] of integer;         // Предыдущая смена кол-во остановов
  PCKP : array[1..MAXLINE] of integer;         // Предыдущая смена кол-во продукции
  PCVP : array[1..MAXLINE] of integer;         // Предыдущая смена время простоя
  PCVR : array[1..MAXLINE] of integer;         // Предыдущая смена время работы
  FLTWR: array[1..MAXFILT] of integer;         // Фильтры работы линий
  FLTST: array[1..MAXFILT] of integer;         // Фильтры остановов линий

  S1KP : array[1..MAXLINE] of integer;         // смена 1 кол-во продукции
  S1KO : array[1..MAXLINE] of integer;         // смена 1 кол-во остановов
  S1VP : array[1..MAXLINE] of integer;         // смена 1 время простоя
  S1VR : array[1..MAXLINE] of integer;         // смена 1 время работы

  S2KP : array[1..MAXLINE] of integer;         // смена 2 кол-во продукции
  S2KO : array[1..MAXLINE] of integer;         // смена 2 кол-во остановов
  S2VP : array[1..MAXLINE] of integer;         // смена 2 время простоя
  S2VR : array[1..MAXLINE] of integer;         // смена 2 время работы

  S3KP : array[1..MAXLINE] of integer;         // смена 3 кол-во продукции
  S3KO : array[1..MAXLINE] of integer;         // смена 3 кол-во остановов
  S3VP : array[1..MAXLINE] of integer;         // смена 3 время простоя
  S3VR : array[1..MAXLINE] of integer;         // смена 3 время работы

  SSKP : array[1..MAXLINE] of integer;         // за сутки кол-во продукции
  SSKO : array[1..MAXLINE] of integer;         // за сутки кол-во остановов
  SSVP : array[1..MAXLINE] of integer;         // за сутки время простоя
  SSVR : array[1..MAXLINE] of integer;         // за сутки время работы

  frNR : integer;                              // Номер записи при построении отчета
  RepTM: string;                               // Дата отчета
  RepTP: integer;                              // Тип отчета
  RepLN: integer;                              // Линия отчета
  PFile: integer;                              // Признак печати отчетов в файл
  FFile: string;                               // Формат файла отчета
  NFile: string;                               // Имя файла отчета
  HelpVW:string;                               // Имя файла браузера для просмотра файлов помощи HTML

  LEVEL: array[1..5] of string;                // Коды доступа к экранам программы
  LEVELA: integer;                             // Уровни: 1-администратор, 2-дежурный, 3-технолог, 4-начальник, 5-гость.

implementation

{$R *.frm}

{ TForm1 }

uses
    uthread;


//-----------------------------------------------------------------------------
// Чтение файла конфигурации
procedure TForm1.ConfigRead();
var
  a: integer;
  s: string;
begin
   SFile:=ChangeFileExt(Application.ExeName,'.ini');           // Имя файла конфигурации
   SConf:=TINIFile.Create(SFile);                              //
   // Глобальная информация
   FITim:=SConf.ReadInteger('Public','Interval',0);            // Интервал для расчета Текущей и Предыдущей смен
   Win_X:=SConf.ReadInteger('Public','WinX',20);               // Координаты вывода окна программы
   Win_Y:=SConf.ReadInteger('Public','WinY',20);               // ...
   PFile:=SConf.ReadInteger('Public','PFile',0);               // Признак печати отчетов в файл
   NFile:=SConf.ReadString('Public','NFile','purpljock_rep01');// Имя файла отчета
   FFile:=SConf.ReadString('Public','FFile','TXT');            // Формат файла отчета
   HelpVW:=SConf.ReadString('Public','HELPVW','wbhelp.exe');   // Имя программы для вывода помощи
   TMSYN:=SConf.ReadInteger('Public','TMSYN',0);               // флаг синхронизации времени с сервером БД
   ReadLevelAccess;
   // Времена фильтров работы и останова
   for a:=1 to MAXFILT do begin
     FLTWR[a]:=SConf.ReadInteger('Filters','WORK'+IntToStr(a),a*15);
     FLTST[a]:=SConf.ReadInteger('Filters','STOP'+IntToStr(a),a*15);
   end;
   // Информация по БД
   DBADDR:=SConf.ReadString('DataBase','ADDR','127.0.0.1');    // Адрес сервера БД
   DBPORT:=SConf.ReadString('DataBase','PORT','3306');         // Порт ТСР для работы с БД
   DBUSER:=SConf.ReadString('DataBase','USER','admin');        // Имя пользователя БД
   DBPASS:=SConf.ReadString('DataBase','PASS','');             // Пароль пользователя БД
   DBNAME:=SConf.ReadString('DataBase','NAME','test');         // Название БД
   for a:=1 to MAXLINE do begin                                //
       s:='Line_'+IntToStr(a);                                 // Заполнение массива с информацией по линиям
       SLine[a]:=SConf.ReadInteger(s,'Line',0);
       if SLine[a] = 0 then break;
       SHost[a]:=SConf.ReadString(s,'Host','');
       SName[a]:=SConf.ReadString(s,'Name','');
       SChan[a]:=SConf.ReadInteger(s,'Chan',1);
   end;
   HLine:=a;                                                    // Количество линий записанных в файле
end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Функция таймера вызывается в заданный интервал времени (200мс)
procedure TDTimer.MTimer1_RUN();
begin
  // Обновление нижнего окна разрешено
  if(FView=0)and(VMous=0)then begin
     Form1.SP1.Brush.Color:=clGreen;
     Form1.SP1.Left:=SP1XY.Left-1;
     Form1.SP1.Top:=SP1XY.Top-1;
     Form1.SP1.Width:=SP1XY.Width+2;
     Form1.SP1.Height:=SP1XY.Height+2;
  end else begin
  // Обновление нижнего окна запрещено (в режиме Архива)
     Form1.SP1.Brush.Color:=clGray;
     Form1.SP1.Left:=SP1XY.Left+1;
     Form1.SP1.Top:=SP1XY.Top+1;
     Form1.SP1.Width:=SP1XY.Width-2;
     Form1.SP1.Height:=SP1XY.Height-2;
  end;
  //
  if(TExit=1)then Form1.BTV.Click;
  // Признак установки фильтра
  Form1.ED3.Enabled:=not CB2ch;
end;
//-----------------------------------------------------------------------------
// Вызывается раз в секунду
procedure TDTimer.MTimer2_RUN();
begin
  // Флаг работы программы
  RunFL:=1;
  // Заполнение списков StringGrid
  Form1.FillListView1;
  Form1.FillListView2;
  // Вызов перерисовки списка...
  Form1.SG1.RowCount:=HLine+2;Form1.SG1.RowCount:=HLine+1;
  // Получить позицию окна и вывести ее на вкладке Сервис
  Win_X:=Form1.Left; Win_Y:=Form1.Top;
  Form1.ST02.Caption:='Расположение окна на экране :  '+IntToStr(Win_X)+' , '+IntToStr(Win_Y);
  // Вывести текущий уровень доступа на вкладке Сервис
  Form1.ST03.Caption:='- уровень '+IntToStr(LEVELA);
  // Дата запрашиваемых данных для отчета
  RepTM:=Form1.DE1.Text;
  // Обновление экранной формы
  Form1.Update;
  // Обработка таймера автоматического расчета значений Текущей и Предыдущей смены (если значение таймера определено)
  if(FITim>0)then begin
     FICnt:=FICnt+1; if(FICnt>60*FITim)then begin FICnt:=0; VRasc:=1; end;
  end;
end;
//-----------------------------------------------------------------------------
// Таймер перерисовки
procedure TDTimer.Execute();
var
  C1: integer;
begin
  while(PExit=0)do begin
    //  200 ms
    C1 := 1000 div ( 1000 div PSleep * PSleep div 10 );
    MTime[1]:=MTime[1]+1; if(MTime[1]>C1)then begin Synchronize(@MTimer1_RUN); MTime[1]:=0; end;
    //  1000 ms
    C1 := 1000 div ( 1000 div PSleep * PSleep div 50 );
    MTime[2]:=MTime[2]+1; if(MTime[2]>C1)and(SetFL=0)then begin SetFL:=2; Synchronize(@MTimer2_RUN); MTime[2]:=0; SetFL:=0; end;
    Sleep(PSleep);
  end;
end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Начальные установки при создании основного окна (начало программы)
procedure TForm1.FormCreate(Sender: TObject);
var
  a: integer;
  s: string;
begin
{$IFDEF WINDOWS}
  // На форме в OS Windows закладки (кнопки) ВЫХОД - нет
  TS09.TabVisible:=False;
{$ENDIF}
  PC1.ActivePage:=TS01;                  // При старте программы активна первая закладка - ЛИНИИ
  ConfigRead;                            // Читать данные из файла конфигурации
  Form1.Caption:='Purpl Jock';           // Заголовок окна программы

  LEVELA:=5;                             // Уровень доступа по-умолчанию - 5 (Гость)
  SetLevelAccess;                        // По-умочанию разрешены вкладки: Линии, Сервис, Выход

  CBOX2.Clear;
  CBOX2.AddItem('',nil);
  SG1.RowCount:=HLine+1;                 // Установить кол-во строк в списке линий
  for a:=1 to HLine-1 do begin           // Заполнить список линий
      SG1.Cells[0,a]:=IntToStr(a);       // Номер по порядку
      SG1.Cells[5,a]:=SName[a];          // Названия линий
      SConn[a]:=0;
      SStat[a]:='';
      CBOX2.AddItem('',nil);
      CBOX2.Items[a]:=SName[a];          // Название линий для выбора при формировании отчетов
  end;
  // Начальные значения формирования отчетов
  CBOX3.Clear;
  CBOX3.AddItem('Краткий',nil);
  CBOX3.AddItem('Полный',nil);
  CBOX3.ItemIndex:=0; RepTP:=0;          // По-умолчанию выбран тип отчета - Краткий (ItemIndex=0)
  CBOX2.Items[0]:='Все';
  CBOX2.ItemIndex:=0; RepLN:=0;          // По-умолчанию выбрана линия - Все (ItemIndex=0)

  Form1.Left:=Win_X;                     // Координаты вывода окна программы
  Form1.Top:=Win_Y;                      //

  SP1XY.Left:=Form1.SP1.Left;            // Координаты вывода шейпа разрешения обновления нижнего окна линий
  SP1XY.Top:=Form1.SP1.Top;
  SP1XY.Width:=Form1.SP1.Width;
  SP1XY.Height:=Form1.SP1.Height;

  SG1.DoubleBuffered:=true;              // Режим перерисовки списка с использованием доп буфера
  SG2.DoubleBuffered:=true;              //
  SG1.DefaultDrawing:=false;             // Для перерисовки списков используем свою функцию
  SG2.DefaultDrawing:=false;             //
  ReDrawHeader;                          // Определить заголовки списков
  FView:=0;                              // Флаг режима работы списка №2 (0-Текущий, 1-Архив)
  DE2.Enabled:=false;                    // Без переключения ввод даты и кнопка запрос для Архива закрыты
  BTZ.Enabled:=false;
  FVDate:=FormatDateTime('YYYYYMMDD',Now);

  if(PFile>0)then CB1.Checked:=true else CB1.Checked:=false; // Признак печати отчетов в файл
  CBOX1.Text:=FFile;                     // Расширение сохраняемого файла

  // Установка значений времени фильтров работы и остановов
  SPE1.Value:=FLTWR[1]; SPE2.Value:=FLTWR[2]; SPE3.Value:=FLTWR[3]; SPE4.Value:=FLTWR[4]; SPE5.Value:=FLTWR[5];
  SPE6.Value:=FLTST[1]; SPE7.Value:=FLTST[2]; SPE8.Value:=FLTST[3]; SPE9.Value:=FLTST[4]; SPE10.Value:=FLTST[5];
  // Период пересчета значений ТС и ПС
  SPE11.Value:=FITim;

  // Установка начальных значений переменных
  VMous:=0; MMove[1]:=0; MMove[2]:=0; MMove[3]:=0; FNSec:=0; LName:='';
  ITime:=20;
  FICnt:=0;
  MTime[1]:=0; MTime[2]:=0; MTime[3]:=0; MTime[4]:=0;
  CRowS:=1; ORowS:=1;
  SetFL:=0;
  PExit:=0; TExit:=0;
  SFilt:=ED3.Text;

  // Установка праметров вызова помощи
  s:=ExtractFilePath(SFile);
  HTMLHelpDB.BaseURL:='file://'+s+'help/';
  HTMLHelpVW.BrowserPath:=HelpVW;
  Form1.HelpKeyword:=TS01.HelpKeyword;
{$IFNDEF WINDOWS}
  HTMLHelpVW.BrowserPath:='wbhelp.elf';
{$ENDIF}

  // Версия программы
  Progv:=TFileVersionInfo.Create(nil);
  Progv.FileName:=Application.ExeName;
  Progv.ReadFileInfo;
//ST17.Caption:=ST17.Caption+Progv.VersionStrings.Values['FileVersion'];
  ST17.Caption:=ST17.Caption+Progv.VersionStrings.Values['ProductVersion'];

  // Приоритеты выполнения параллельного процесса:
  // tpTimeCritical - критический
  // tpHighest - очень высокий
  // tpHigher - высокий
  // tpNormal - средний
  // tpLower  - низкий
  // tpLowest - очень низкий
  // tpIdle   - поток работает во время простоя системы
  P1:=P1Thread.Create(False);
  P1.Priority:=tpIdle;

  DTimer:=TDTimer.Create(False);
  DTimer.Priority:=tpLowest;

  // Начать обработку событий (без этого таймеры не работают)
  Application.ProcessMessages;
end;
//-----------------------------------------------------------------------------
procedure TForm1.FormActivate(Sender: TObject);
begin
  // Текущее время компьютера и сервера
  Form1.ST15.Caption:=FormatDateTime('DD.MM.YYYYY HH:mm:SS ',Now);
  GetTimeFromSRV(1);
  if(TFSRV>1)then begin
     Form1.ST16.Caption:=copy(TMSRV,7,2)+'.'+copy(TMSRV,5,2)+'.'+copy(TMSRV,1,4)+' '+copy(TMSRV,9,2)+':'+copy(TMSRV,11,2)+':'+copy(TMSRV,13,2);
  end;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Закрытие приложения
procedure TForm1.FormClose(Sender: TObject);
begin
  PExit:=1;
  while(PExit<>2)do sleep(PSleep);
  P1.Destroy;
  PC1.Destroy;
  Form1.Destroy;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Конвертировать количество секунд в строку (час:мин:сек)
function TForm1.Convert_TR_TS(TR:integer; CM:integer): string;
var
  H,T,M,S: integer;
  R: string;
begin
  H:=TR div 3600; T:=TR mod 3600; M:=T div 60; S:=TR mod 60;
  R:=Format('%.2d:%.2d',[H,M]);
  if(CM=1)then R:=IntToStr(H)+':'+IntToStr(M)+':'+IntToStr(S);
  if(CM=2)then R:=IntToStr(H)+'ч '+IntToStr(M)+'м '+IntToStr(S)+'с';
  Result:=R;
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Перерисовка заголовков списков
procedure TForm1.ReDrawHeader();
begin
  if(SG1.RowCount=0)then SG1.RowCount:=HLine+1;
  SG1.Cells[0,0]:='N';
  SG1.Cells[1,0]:='ID';
  SG1.Cells[2,0]:='Связь';
  SG1.Cells[3,0]:='ТСтоп';
  SG1.Cells[4,0]:='Время изменения';
  SG1.Cells[5,0]:='Название линии';
  SG1.Cells[6,0]:='Статус';
  SG1.Cells[7,0]:='Кол-во';
  SG1.Cells[8,0]:='Скорость';
  SG1.Cells[9,0]:='Заказ';
  SG1.Cells[10,0]:='Смена';
  SG1.Cells[11,0]:='ТС КО';
  SG1.Cells[12,0]:='ТС КП';
  SG1.Cells[13,0]:='ТС ВП';
  SG1.Cells[14,0]:='ТС ВР';
  SG1.Cells[15,0]:='ПС КО';
  SG1.Cells[16,0]:='ПС КП';
  SG1.Cells[17,0]:='ПС ВП';
  SG1.Cells[18,0]:='ПС ВР';
  if(SG2.RowCount=0)then SG2.RowCount:=1;
  SG2.Cells[0,0]:='Время';
  SG2.Cells[1,0]:='Статус';
  SG2.Cells[2,0]:='Продолжительность';
  SG2.Cells[3,0]:='Кол-во';
  SG2.Cells[4,0]:='Скорость';
  SG2.Cells[5,0]:='Зд';
  SG2.Cells[6,0]:='Пр';
  SG2.Cells[7,0]:='ТО';
  SG2.Cells[8,0]:='Примечание';
end;
//-----------------------------------------------------------------------------


//-----------------------------------------------------------------------------
// Передача данных из массива в список #1
procedure TForm1.FillListView1();
var
  a: integer;
begin
  for a:=1 to HLine do begin
    // 0 - N  - номер ПП
    // 1 - ID - линии
    SG1.Cells[1,a]:=IntToStr(SLine[a]);
    // 2 - Связь - Состояние связи с модулем
    // 3 - ТСтоп - Время текущего останова линии
    SG1.Cells[3,a]:=SStat[a];
    // 4 - Время изменения последнего состояния
    SG1.Cells[4,a]:=LTime[a];
    // 5 - Название линии
    // 6 - Статус
    // 7 - Кол-во
    SG1.Cells[7,a]:='   '+IntToStr(SData[a][2]);
    // 8 - Скорость
    SG1.Cells[8,a]:='   '+IntToStr(Speed[a]);
    // 9 - Заказ
    SG1.Cells[9,a]:='   ';
    // 10 - Смена
    SG1.Cells[10,a]:='   ';
    // 11 - Текущая смена : Кол-во остановов
    SG1.Cells[11,a]:=Format('  %3d',[TCKO[a]]);
    // 12 - Текущая смена : Кол-во продукции
    SG1.Cells[12,a]:=IntToStr(TCKP[a]);
    // 13- Текущая смена : Время простоя
    SG1.Cells[13,a]:=Convert_TR_TS(TCVP[a],0);
    // 14- Текущая смена : Время работы
    SG1.Cells[14,a]:=Convert_TR_TS(TCVR[a],0);
    // 15- Предыдущая смена : Кол-во остановов
    SG1.Cells[15,a]:=Format('  %3d',[PCKO[a]]);
    // 16- Предыдущая смена : Кол-во продукции
    SG1.Cells[16,a]:=IntToStr(PCKP[a]);
    // 17- Предыдущая смена : Время простоя
    SG1.Cells[17,a]:=Convert_TR_TS(PCVP[a],0);
    // 18- Предыдущая смена : Время работы
    SG1.Cells[18,a]:=Convert_TR_TS(PCVR[a],0);
  end;
  // Строка вывода кол-ва запросов
  SG1.Cells[4,a]:=QTime;
  SG1.Cells[5,a]:='Запрос №  '+IntToStr(REQCN);
  SG1.Cells[6,a]:=IntToStr(MTime[3]);
  MTime[3]:=MTime[3]+1;
end;
//-----------------------------------------------------------------------------
// Передача данных из массива в список #2
procedure TForm1.FillListView2();
var
  c: PChar;
  s, StrFilt: string;
  a,b,F,LenField,LenFilt,NumFilt,PosFilt: integer;
begin

  if((FView=0)and(VMous=0))or((FView=2)and(FVReq=2))then begin
     b:=1;                                     // Счетчик текущей строки
     FDraw:=1;                                 // Флаг запрета перерисовки
     SG2.RowCount:=HView;                      // Выставляем максимально возможное кол-во строк в списке
     ReDrawHeader;

     // длинна строки фильтра
     s:=SFilt;
     LenFilt:=StrLen(PChar(s));
     // номер поля для фильтрации
     c:=PChar(copy(PChar(s),1,1)); if(c<'1')or(c>'9')then c:='0';
     NumFilt:=StrToInt(c);
     if(NumFilt<1)or(NumFilt>9)then begin NumFilt:=9; StrFilt:='*'; SFilt:='9*'; ED3.Text:=SFilt; end;
     // строка фильтра
     if(LenFilt>1)then begin StrFilt:=copy(s,2,LenFilt-1); end else begin StrFilt:='*'; end;
{
     MessageDlg('Debug Filter',
     'Len_Filt: ['+IntToStr(LenFilt)+']'+#13+
     'Str_Filt: ['+StrFilt+']'+#13+
     'Num_Filt: ['+IntToStr(NumFilt)+']'+#13,
     mtWarning, [mbOK], 0);
}
     // HView - кол-во записей(строк) выбранных SQL-запросом для списка #2
     for a:=1 to HView-1 do begin
         F:=1;   // По-умолчанию установлен флаг вывода записи в списке #2 (Фильтр выключен)

         // Если установлен флаг фильтрации записей (Включен фильтр)
         if(VFilt=1)then begin
            LenField:=StrLen(PChar(SView[a][NumFilt]));
            // Если определен фильтр "не пустая строка" для отбора записей
            if(StrFilt='*')then begin
                // Если в текущей строке указанное поле NumFilt пустое отметить эту запись, чтобы не выводить (F:=0)
                if(LenField<1)then begin F:=0; end;
            // Если определен конкретный фильтр
            end else begin
                // Если текущая запись не содержит подстроку фильтра - не выводить ее в списке
                if(LenFilt>0)then begin
                   PosFilt:=Pos(StrFilt,Sview[a][NumFilt]); if(PosFilt=0)then F:=0;
                end;
            end;
          end;

          if F>0 then begin
             SG2.Cells[0,b]:=SView[a][1];         // Время
             SG2.Cells[1,b]:=SView[a][2];         // Статус
             SG2.Cells[2,b]:=SView[a][3];         // Продолжительность
             SG2.Cells[3,b]:=SView[a][4];         // Количество
             SG2.Cells[4,b]:=SView[a][5];         // Скорость
             SG2.Cells[5,b]:='';                  //
             SG2.Cells[6,b]:='';                  //
             SG2.Cells[7,b]:='';                  //
             SG2.Cells[8,b]:=SView[a][9];         // Примечание
             b:=b+1;
             if(b>MView-1)then break;
          end;
     end;

     SG2.RowCount:=b;                          // Выставляем реальное кол-во строк в списке
     FDraw:=0;                                 // Сбросить флаг запрета перерисовки

     // Вывести информацию про линию на пенель
     if(LName<>'')then begin ST1.Caption:=' '+LName; ST1.Color:=clSkyBlue; end;
  end;
end;
//----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Список №1 - перечень линий и их состояний
procedure TForm1.SG1DrawCell(Sender: TObject; aCol, aRow: Integer; aRect: TRect; aState: TGridDrawState);
var
  X,Y,W,H,T: integer;
  SColor, WColor: TColor;
  StatWR: String;
begin
  if(aRow>0)then begin
     // цвет фона списка и шрифта
     SG1.Canvas.Brush.Color := clWhite;
     SG1.Canvas.Font.Color := clBlack;
     // установка цвета для колонки ТСтоп (выделение время останова линии)
     if(aCol=3)then begin
        if(LTCol[aRow]=1)then SG1.Canvas.Brush.Color := clForm;
        if(LTCol[aRow]=2)then begin SG1.Canvas.Brush.Color := clMoneyGreen; SG1.Canvas.Font.Color := clRed; end;
     end;
     // установка цвета шрифта для колонок ТС и ПС
     if(aCol=11)or(aCol=15)then begin SG1.Canvas.Font.Color:=clBlue; end;
     if(aCol=13)or(aCol=17)then begin SG1.Canvas.Font.Color:=clMaroon; end;
     if(aCol=14)or(aCol=18)then begin SG1.Canvas.Font.Color:=clGreen; end;
     // цвет выделенной строки
     if(SG1.Row=aRow)then begin SG1.Canvas.Brush.Color:=clSkyBlue; end;
     // рисование фона ячеек
     SG1.Canvas.FillRect(aRect);
     // Высота ячейки
     Y:=SG1.DefaultRowHeight+5;
     T:=SG1.RowHeights[aRow];
     H:=T*(aRow-1);
     // Вывод текстовых строк
     if((aCol<>2)and(aCol<>6))and(aRow<HLine)then begin
        SG1.Canvas.TextOut(ARect.Left+3,ARect.Top+3, SG1.Cells[aCol,aRow]);
     end;
     // Вывод последней итоговой строки
     if((aCol=4)or(aCol=5)or(aCol=6))and(aRow=HLine)then begin
        SG1.Canvas.TextOut(ARect.Left+3,ARect.Top+3, SG1.Cells[aCol,aRow]);
     end;

     // цвет обвода закрашиваемой области
     SG1.Canvas.Pen.Color:=clWhite;
     // Рисование состояния соединения с модулем на линии
     if(aCol=2)and(aRow<HLine)then begin
        X:=SG1.Columns[0].Width+SG1.Columns[1].Width+12;
        if SConn[aRow]=200 then begin
           SG1.Canvas.Brush.Color:=clBlue;
           SG1.Canvas.Rectangle(X, Y+H, X+10, Y+H+10);
        end else begin
           SG1.Canvas.Brush.Color:=clGray;
           SG1.Canvas.Ellipse(X+1, Y+H+1, X+10-2, Y+H+10-2);
        end;
     end;
     // Рисование текущего состояния каналов модуля из массива SData
     if(aCol=6)and(aRow<HLine)then begin
        X:=SG1.Columns[0].Width+SG1.Columns[1].Width+SG1.Columns[2].Width+
           SG1.Columns[3].Width+SG1.Columns[4].Width+SG1.Columns[5].Width+4; W:=16;
        SColor:=SG1.Canvas.Brush.Color;
        // канал 1
        if SData[aRow][1]=1 then begin
           SG1.Canvas.Brush.Color:=clGreen; WColor:=clGreen;
           SG1.Canvas.Rectangle(X+W*0, Y+H, X+10+W*0, Y+H+10);
           StatWR:='w';
        end else begin
           SG1.Canvas.Brush.Color:=clGray; WColor:=clRed;
           SG1.Canvas.Ellipse(X+W*0+1, Y+H+1, X+10+W*0-2, Y+H+10-2);
           StatWR:='s';
        end;
        SG1.Canvas.Brush.Color:=SColor;
        // вывод текста после отрисовки статуса
        SG1.Canvas.TextOut(ARect.Left+20,ARect.Top+3, ':');
        SG1.Canvas.Font.Color:=WColor;
        SG1.Canvas.TextOut(ARect.Left+29,ARect.Top+3, StatWR);
        SG1.Canvas.Font.Color:=clBlack;
{
        // канал 2
        if SData[aRow][2]=1 then begin
           SG1.Canvas.Brush.Color:=clGreen;
           SG1.Canvas.Rectangle(X+W*1, Y+H, X+10+W*1, Y+H+10);
        end else begin
           SG1.Canvas.Brush.Color:=clGray;
           SG1.Canvas.Ellipse(X+W*1+1, Y+H+1, X+10+W*1-2, Y+H+10-2);
        end;
        // канал 3
        if SData[aRow][3]=1 then begin
           SG1.Canvas.Brush.Color:=clGreen;
           SG1.Canvas.Rectangle(X+W*2, Y+H, X+10+W*2, Y+H+10);
        end else begin
           SG1.Canvas.Brush.Color:=clGray;
           SG1.Canvas.Ellipse(X+W*2+1, Y+H+1, X+10+W*2-2, Y+H+10-2);
        end;
        // канал 4
        if SData[aRow][4]=1 then begin
           SG1.Canvas.Brush.Color:=clGreen;
           SG1.Canvas.Rectangle(X+W*3, Y+H, X+10+W*3, Y+H+10);
        end else begin
           SG1.Canvas.Brush.Color:=clGray;
           SG1.Canvas.Ellipse(X+W*3+1, Y+H+1, X+10+W*3-2, Y+H+10-2);
        end;
}
     end;
  end else begin
     // Перерисовка заголовка
     SG1.Canvas.Brush.Color := clMenuBar;
     SG1.Canvas.FillRect(aRect);
     SG1.Canvas.Brush.Color := clMenuBar;
     SG1.Canvas.TextOut(ARect.Left+3,ARect.Top+3, SG1.Cells[aCol,0]);
  end;
end;
//-----------------------------------------------------------------------------
// Запомнить номер выбранной ячейки (номер линии)
procedure TForm1.SG1SelectCell(Sender: TObject; aCol, aRow: Integer; var CanSelect: Boolean);
begin
  CRowA:=aRow;
end;
// Установить имя линии выбранной записи, как текущую? при двойном клике мышки
procedure TForm1.SG1DblClick(Sender: TObject);
begin
  CRowS:=CRowA; if(FView=2)and(FVReq=2)then FVReq:=1;
end;
// Установить имя линии выбранной записи, как текущую при нажатии клавиши Enter
procedure TForm1.SG1KeyPress(Sender: TObject; var Key: char);
begin
  if Key = #13 then begin CRowS:=CRowA; if(FView=2)and(FVReq=2)then FVReq:=1; end;
end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Список №2 - вывод предыдущих состояний выбранной в списке 1 линии
procedure TForm1.SG2DrawCell(Sender: TObject; aCol, aRow: Integer; aRect: TRect; aState: TGridDrawState);
var
  s: string;
begin
  SG2.Canvas.Brush.Color := clMenuBar;
  if(MView>0)and(FDraw=0)then begin
     s:=copy(SG2.Cells[1,aRow],1,1);
     if s='W' then begin SG2.Canvas.Brush.Color := clYellow;     SG2.Canvas.Font.Color := clGreen; end;
     if s='S' then begin SG2.Canvas.Brush.Color := clMoneyGreen; SG2.Canvas.Font.Color := clRed;   end;
     if s='T' then begin SG2.Canvas.Brush.Color := clGray;       SG2.Canvas.Font.Color := clBlack; end;
     SG2.Canvas.FillRect(aRect);
     SG2.Canvas.TextOut(ARect.Left+3,ARect.Top+3, SG2.Cells[aCol,aRow]); // перерисовка каждой ячейки
  end else begin
     SG2.Canvas.FillRect(aRect);
     SG2.Canvas.TextOut(ARect.Left+3,ARect.Top+3, SG2.Cells[aCol,0]);    // перерисовать только заголовок
  end;
end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
//Если мышь находится в области списка #2
//procedure TForm1.SG2MouseEnter(Sender: TObject);
//begin {if(FView<>2)then begin FView:=1; end;} end;
//-----------------------------------------------------------------------------
//Если мышь НЕ находится в области списка #2
//procedure TForm1.SG2MouseLeave(Sender: TObject);
//begin if(FView<>2)then begin FView:=0; VMous:=0; end; end;
//-----------------------------------------------------------------------------
//Если мышь двигается по области списка #2
//procedure TForm1.SG2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
//begin if(X+Y<>MMove[4])then begin MMove[4]:=X+Y; VMous:=1; MMove[1]:=MMove[1]+1; end; end;
//-----------------------------------------------------------------------------
//Если прокручивается колесо мыши на области списка #2
//procedure TForm1.SG2MouseWheel(Sender: TObject; Shift: TShiftState;
//  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
//begin if(MousePos.X>0)or(MousePos.Y>0)then begin VMous:=1; MMove[1]:=MMove[1]+1; end;end;
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Нажатие кнопки ФИЛЬТР
procedure TForm1.BTFClick(Sender: TObject);
begin
   if(VFilt=0)then begin VFilt:=1; CB2Ch:=true; end else begin VFilt:=0; CB2Ch:=false; end;
end;
// Корректировка строки фильтра
procedure TForm1.ED3EditingDone(Sender: TObject);
var
  c: PChar;
begin
  c:=PChar(copy(PChar(ED3.Text),1,1)); if(c<'1')or(c>'9')then ED3.Text:='9*';
  if(StrLen(PChar(ED3.Text))<2)then ED3.Text:='9*';
  SFilt:=ED3.Text;
end;
// Нажатие кнопки РАСЧЕТ
procedure TForm1.BTRClick(Sender: TObject);
begin
   if(VRasc=0)then begin VRasc:=1; FICnt:=0; end;
end;


// Переключение режима вывода списка №2 экрана Линии (A-архив, Т-текущее)
procedure TForm1.ST6Click(Sender: TObject);
begin
   if (FView>0)then begin
       FView:=0; FVReq:=0; ST6.Caption:=' T ';
       DE2.Text:=FormatDateTime('DD.MM.YYYY',Now);
       DE2.Enabled:=false; BTZ.Enabled:=false;
   end else begin
       FView:=2; FVReq:=2; ST6.Caption:=' A ';
       DE2.Enabled:=true; BTZ.Enabled:=true;
   end;
end;
// Ввод даты вывода данных списка №2 в режиме Архива
procedure TForm1.DE2EditingDone(Sender: TObject);
var
  CDT,IDT: string;
begin
  // Проверка введенной даты (запись БД начата с даты StartDate(ShortDate))
  CDT:=FormatDateTime('YYYYYMMDD',Now);
  IDT:=Copy(DE2.Text,7,4)+Copy(DE2.Text,4,2)+Copy(DE2.Text,1,2);
  if(IDT<ShortDate)then DE2.Text:=StartDate;
  if(IDT>CDT)      then DE2.Text:=FormatDateTime('DD.MM.YYYY',Now);
  // Запомнить дату для запроса
  FVDate:=Copy(DE2.Text,7,4)+Copy(DE2.Text,4,2)+Copy(DE2.Text,1,2);
end;
// Нажатие кнопки Запрос на вывод списка Архива
procedure TForm1.BTZClick(Sender: TObject);
begin
  // Установить флаг начала запроса для введенной даты
  FVReq:=1;
end;
//-----------------------------------------------------------------------------

{$I ureport.pas}
{$I uservice.pas}

end.

