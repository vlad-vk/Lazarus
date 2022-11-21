object Form1: TForm1
  AnchorSideTop.Side = asrCenter
  AnchorSideBottom.Side = asrCenter
  Left = 100
  Height = 287
  Top = 14
  Width = 610
  HelpType = htKeyword
  HelpKeyword = 'help/index.html'
  Anchors = []
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'БЫСТРЫЙ СБРОС ПАРА'
  ClientHeight = 287
  ClientWidth = 610
  Font.CharSet = RUSSIAN_CHARSET
  Font.Color = clNavy
  Font.Height = -21
  Font.Name = 'Arial'
  Font.Pitch = fpVariable
  Font.Quality = fqDraft
  Font.Style = [fsBold]
  HelpFile = 'help/index.html'
  KeyPreview = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnUTF8KeyPress = FormUTF8KeyPress
  LCLVersion = '7.2'
  Scaled = False
  object Label01: TLabel
    Left = 8
    Height = 21
    Top = 245
    Width = 592
    AutoSize = False
    Caption = 'Размер основного окна  610 х 287, Элементы визуализации - внизу'
    Color = clSkyBlue
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Text01: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 9
    Height = 22
    Top = 14
    Width = 223
    Anchors = []
    AutoSize = False
    Caption = 'Давление пара СЕКЦИЯ 1, bar'
    Font.Height = -15
    Font.Name = 'Arial'
    ParentColor = False
    ParentFont = False
  end
  object Text02: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 9
    Height = 22
    Top = 47
    Width = 223
    Anchors = []
    AutoSize = False
    Caption = 'Давление пара СЕКЦИЯ 2, bar'
    Font.Height = -15
    Font.Name = 'Arial'
    ParentColor = False
    ParentFont = False
  end
  object Text03: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 9
    Height = 22
    Top = 80
    Width = 223
    Anchors = []
    AutoSize = False
    Caption = 'Давление пара СЕКЦИЯ 3, bar'
    Font.Height = -15
    Font.Name = 'Arial'
    ParentColor = False
    ParentFont = False
  end
  object Label03: TLabel
    Left = 9
    Height = 16
    Top = 304
    Width = 192
    AutoSize = False
    Caption = 'Label03'
    Color = clWhite
    Font.CharSet = RUSSIAN_CHARSET
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    Transparent = False
    Visible = False
  end
  object Label04: TLabel
    Left = 208
    Height = 16
    Top = 304
    Width = 128
    AutoSize = False
    Caption = 'Label04'
    Color = clWhite
    Font.CharSet = RUSSIAN_CHARSET
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    Transparent = False
    Visible = False
  end
  object Label05: TLabel
    Left = 344
    Height = 16
    Top = 304
    Width = 128
    AutoSize = False
    Caption = 'Label05'
    Color = clWhite
    Font.CharSet = RUSSIAN_CHARSET
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    Transparent = False
    Visible = False
  end
  object Label06: TLabel
    Left = 480
    Height = 16
    Top = 304
    Width = 128
    AutoSize = False
    Caption = 'Label06'
    Color = clWhite
    Font.CharSet = RUSSIAN_CHARSET
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    Transparent = False
    Visible = False
  end
  object Label11: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 242
    Height = 25
    Top = 12
    Width = 48
    Alignment = taRightJustify
    Anchors = []
    AutoSize = False
    Caption = ' 0.00'
    Color = clInfoBk
    Font.CharSet = RUSSIAN_CHARSET
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label12: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 242
    Height = 25
    Top = 45
    Width = 48
    Alignment = taRightJustify
    Anchors = []
    AutoSize = False
    Caption = ' 0.00'
    Color = clInfoBk
    Font.CharSet = RUSSIAN_CHARSET
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label13: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 242
    Height = 24
    Top = 78
    Width = 48
    Alignment = taRightJustify
    Anchors = []
    AutoSize = False
    Caption = ' 0.00'
    Color = clInfoBk
    Font.CharSet = RUSSIAN_CHARSET
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Shape1: TShape
    Left = 24
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape2: TShape
    Left = 39
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape3: TShape
    Left = 55
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape4: TShape
    Left = 71
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape5: TShape
    Left = 87
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape6: TShape
    Left = 103
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape7: TShape
    Left = 119
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape8: TShape
    Left = 135
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape11: TShape
    Left = 176
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape12: TShape
    Left = 192
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape13: TShape
    Left = 208
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape14: TShape
    Left = 224
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape15: TShape
    Left = 240
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape16: TShape
    Left = 256
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape17: TShape
    Left = 272
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape18: TShape
    Left = 288
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape21: TShape
    Left = 328
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape22: TShape
    Left = 344
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape23: TShape
    Left = 360
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape24: TShape
    Left = 376
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape25: TShape
    Left = 392
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape26: TShape
    Left = 408
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape27: TShape
    Left = 424
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape28: TShape
    Left = 440
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape31: TShape
    Left = 480
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape32: TShape
    Left = 496
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape33: TShape
    Left = 512
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape34: TShape
    Left = 528
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape35: TShape
    Left = 544
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape36: TShape
    Left = 560
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape37: TShape
    Left = 576
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Shape38: TShape
    Left = 592
    Height = 8
    Top = 272
    Width = 8
    ParentShowHint = False
    ShowHint = True
  end
  object Text04: TLabel
    Left = 8
    Height = 14
    Top = 269
    Width = 9
    Caption = 'DI'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object Text05: TLabel
    Left = 158
    Height = 14
    Top = 269
    Width = 15
    Caption = 'DO'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object Text06: TLabel
    Left = 310
    Height = 14
    Top = 269
    Width = 14
    Caption = 'V1'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object Text07: TLabel
    Left = 462
    Height = 14
    Top = 269
    Width = 14
    Caption = 'V2'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object Text08: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 330
    Height = 24
    Top = 12
    Width = 58
    Anchors = []
    AutoSize = False
    Caption = 'Клапан'
    Font.Height = -15
    Font.Name = 'Arial'
    ParentColor = False
    ParentFont = False
  end
  object Text09: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 330
    Height = 24
    Top = 45
    Width = 58
    Anchors = []
    AutoSize = False
    Caption = 'Клапан'
    Font.Height = -15
    Font.Name = 'Arial'
    ParentColor = False
    ParentFont = False
  end
  object Text10: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 330
    Height = 24
    Top = 78
    Width = 58
    Anchors = []
    AutoSize = False
    Caption = 'Клапан'
    Font.Height = -15
    Font.Name = 'Arial'
    ParentColor = False
    ParentFont = False
  end
  object Label14: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 399
    Height = 24
    Hint = 'Состояние клапана 1 набора пара'
    Top = 12
    Width = 64
    Anchors = []
    AutoSize = False
    Caption = 'ОТКРЫТ'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label15: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 399
    Height = 24
    Hint = 'Состояние клапана 2 набора пара'
    Top = 45
    Width = 64
    Anchors = []
    AutoSize = False
    Caption = 'ОТКРЫТ'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label16: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 399
    Height = 24
    Hint = 'Состояние клапана 3 набора пара'
    Top = 78
    Width = 64
    Anchors = []
    AutoSize = False
    Caption = 'ОТКРЫТ'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Shape41: TShape
    Left = 328
    Height = 64
    Hint = 'Лампочка СТОП'
    Top = 116
    Width = 64
    Brush.Color = clSilver
    ParentShowHint = False
    Pen.Width = 2
    Shape = stCircle
    ShowHint = True
  end
  object Shape42: TShape
    Left = 432
    Height = 64
    Hint = 'Лампочка СБРОС'
    Top = 116
    Width = 64
    Brush.Color = clSilver
    ParentShowHint = False
    Pen.Width = 2
    Shape = stCircle
    ShowHint = True
  end
  object Shape43: TShape
    Left = 533
    Height = 64
    Hint = 'Лампочка ЗАКРЫТИЕ'
    Top = 116
    Width = 64
    Brush.Color = clSilver
    ParentShowHint = False
    Pen.Width = 2
    Shape = stCircle
    ShowHint = True
  end
  object Text11: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 9
    Height = 22
    Top = 110
    Width = 88
    Anchors = []
    AutoSize = False
    Caption = 'ЗАДАНИЕ'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Cursor = crHandPoint
    Left = 317
    Height = 40
    Hint = 'Кнопка СТОП'
    Top = 192
    Width = 90
    BevelWidth = 2
    Caption = 'СТОП'
    Color = 5855737
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Panel1Click
  end
  object Panel2: TPanel
    Cursor = crHandPoint
    Left = 422
    Height = 40
    Hint = 'Кнопка СБРОС'
    Top = 192
    Width = 90
    BevelWidth = 2
    Caption = 'СБРОС'
    Color = 7985625
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Panel2Click
  end
  object Text12: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 9
    Height = 22
    Top = 139
    Width = 215
    Anchors = []
    AutoSize = False
    Caption = 'Сбрасывать давление ДО, bar'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object Text13: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 9
    Height = 22
    Top = 172
    Width = 178
    Anchors = []
    AutoSize = False
    Caption = 'Время сброса пара, сек'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object Edit2: TEdit
    Left = 242
    Height = 27
    Top = 168
    Width = 48
    Alignment = taRightJustify
    AutoSize = False
    AutoSelect = False
    Color = clSilver
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    NumbersOnly = True
    OnClick = Edit2Change
    OnEditingDone = Edit2EditingDone
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Text = '0'
  end
  object Label17: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 186
    Height = 24
    Top = 170
    Width = 46
    Alignment = taRightJustify
    Anchors = []
    AutoSize = False
    BorderSpacing.Left = 2
    BorderSpacing.Top = 2
    Caption = '0'
    Color = clSilver
    Font.CharSet = RUSSIAN_CHARSET
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Text14: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 9
    Height = 22
    Top = 205
    Width = 134
    Anchors = []
    AutoSize = False
    Caption = 'РЕЖИМ РАБОТЫ'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object Label18: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 172
    Height = 24
    Top = 203
    Width = 118
    Alignment = taRightJustify
    Anchors = []
    AutoSize = False
    BorderSpacing.Left = 2
    BorderSpacing.Top = 2
    Caption = 'БЛОКИРОВКА'
    Color = clMoneyGreen
    Font.CharSet = RUSSIAN_CHARSET
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label19: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 533
    Height = 27
    Top = 199
    Width = 68
    Alignment = taCenter
    Anchors = []
    AutoSize = False
    Caption = 'OWEN'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object plShapeLine1: TplShapeLine
    Left = 472
    Height = 22
    Top = 12
    Width = 30
    ParentShowHint = False
    Direction = drUpDown
    LineColor = clSilver
    ArrowColor = clSilver
    LineWidth = 7
    Arrow2 = True
    ArrowFactor = 11
  end
  object plShapeLine2: TplShapeLine
    Left = 472
    Height = 22
    Top = 45
    Width = 30
    ParentShowHint = False
    Direction = drUpDown
    LineColor = clSilver
    ArrowColor = clSilver
    LineWidth = 7
    Arrow2 = True
    ArrowFactor = 11
  end
  object plShapeLine3: TplShapeLine
    Left = 472
    Height = 22
    Top = 78
    Width = 30
    ParentShowHint = False
    Direction = drUpDown
    LineColor = clSilver
    ArrowColor = clSilver
    LineWidth = 7
    Arrow2 = True
    ArrowFactor = 11
  end
  object Label02: TLabel
    Left = 9
    Height = 18
    Top = 228
    Width = 592
    AutoSize = False
    Caption = '...'
    Color = clSkyBlue
    Enabled = False
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    Transparent = False
    Visible = False
  end
  object Label20: TLabel
    AnchorSideTop.Side = asrCenter
    AnchorSideBottom.Side = asrCenter
    Left = 144
    Height = 24
    Top = 203
    Width = 28
    Anchors = []
    AutoSize = False
    BorderSpacing.Left = 2
    BorderSpacing.Top = 2
    Caption = '0'
    Color = clMoneyGreen
    Font.CharSet = RUSSIAN_CHARSET
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Button1: TButton
    Left = 525
    Height = 25
    Top = 11
    Width = 75
    Caption = 'Помощь'
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    OnClick = Button1Click
    ParentFont = False
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 242
    Height = 27
    Top = 134
    Width = 48
    Alignment = taRightJustify
    AutoSize = False
    AutoSelect = False
    Color = clSilver
    DoubleBuffered = False
    Font.CharSet = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    MaxLength = 4
    NumbersOnly = True
    OnClick = Edit1Change
    OnEditingDone = Edit1EditingDone
    OnExit = Edit1EditingDone
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    TabOrder = 4
    Text = '0.00'
  end
  object Button2: TButton
    Left = 552
    Height = 20
    Top = 441
    Width = 20
    Caption = 'X'
    TabOrder = 5
  end
  object TCPPort: TTCP_UDPPort
    Host = '192.168.0.113'
    Port = 502
    ExclusiveDevice = False
    OnCommPortOpened = TCPPortCommPortOpened
    OnCommPortOpenError = TCPPortCommPortOpenError
    OnCommErrorReading = TCPPortCommErrorReading
    Left = 408
    Top = 331
  end
  object ModBusTCP: TModBusTCPDriver
    CommunicationPort = TCPPort
    ReadSomethingAlways = False
    OutputMaxHole = 2
    InputMaxHole = 3
    RegisterMaxHole = 3
    InputsMaxBlockSize = 1000
    OutputsMaxBlockSize = 1000
    AnalogRegsMaxBlockSize = 100
    HoldingRegsMaxBlockSize = 3
    ReadOnly = False
    Left = 456
    Top = 331
  end
  object PLCTag0: TPLCTagNumber
    TagGUID = '{87C92CFA-8729-45DB-B768-65A57AB2F550}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 0
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 8
    Top = 384
  end
  object PLCTag1: TPLCTagNumber
    TagGUID = '{65AE5FDB-8BDB-4A86-B35F-2F9691F52D41}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 1
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 56
    Top = 384
  end
  object PLCTag2: TPLCTagNumber
    TagGUID = '{3B82527F-42E5-4739-81A2-C50AC73884BA}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 2
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 104
    Top = 384
  end
  object PLCTag3: TPLCTagNumber
    TagGUID = '{8A91E7A0-2BE2-414D-AACD-D5231C921B80}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 3
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 152
    Top = 384
  end
  object PLCTag4: TPLCTagNumber
    TagGUID = '{23A995A8-6416-4733-8740-3AD328AAB05D}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 4
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 200
    Top = 384
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 504
    Top = 331
  end
  object PLCTag5: TPLCTagNumber
    TagGUID = '{3EA7ADF3-5CD3-4D45-B440-129912A22516}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 5
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 248
    Top = 384
  end
  object PLCTag6: TPLCTagNumber
    TagGUID = '{9E3747E6-C655-4C36-895A-7CBE01EE97F8}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 6
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 296
    Top = 384
  end
  object PLCTag7: TPLCTagNumber
    TagGUID = '{B518B910-8FCE-4969-AFF6-1ED36B638E95}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 7
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 344
    Top = 384
  end
  object PLCTag8: TPLCTagNumber
    TagGUID = '{1A3B30FB-9D24-405A-B9D7-122D8DCEE86F}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 8
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 392
    Top = 384
  end
  object PLCTag9: TPLCTagNumber
    TagGUID = '{9011F871-5A3E-474C-BA4C-B23DBF1771C6}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 9
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 440
    Top = 384
  end
  object PLCTag10: TPLCTagNumber
    TagGUID = '{17DCDFF7-9B60-4352-A82C-B7F6D033DF56}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 10
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 496
    Top = 384
  end
  object PLCTag11: TPLCTagNumber
    TagGUID = '{7A4F7974-FC9D-4B0E-B20F-C9E4E07C7FC2}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 11
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 552
    Top = 384
  end
  object PLCTag12: TPLCTagNumber
    TagGUID = '{30533262-BCBD-45E3-8E32-09FE8CE9014E}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 12
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 8
    Top = 440
  end
  object HTMLHelpDB: THTMLHelpDatabase
    AutoRegister = True
    Left = 296
    Top = 329
  end
  object HTMLHelpVW: THTMLBrowserHelpViewer
    BrowserPath = 'wbhelp.exe'
    BrowserParams = '%s'
    AutoRegister = True
    Left = 344
    Top = 331
  end
  object PLCTag16: TPLCTagNumber
    TagGUID = '{BDD2CA14-DE63-42F2-A96A-2231BADD7EA4}'
    AutoRead = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 16
    MemSubElement = 0
    MemReadFunction = 0
    MemWriteFunction = 6
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 200
    Top = 440
  end
  object PLCTag17: TPLCTagNumber
    TagGUID = '{C35DAD0F-06AD-49BD-B9FA-CC4BFDFF32C7}'
    AutoRead = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 17
    MemSubElement = 0
    MemReadFunction = 0
    MemWriteFunction = 6
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 248
    Top = 440
  end
  object PLCTag13: TPLCTagNumber
    TagGUID = '{8809B363-F69D-42EA-A38E-5E00F93E8E4F}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 13
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 56
    Top = 440
  end
  object PLCTag14: TPLCTagNumber
    TagGUID = '{BF80D2C8-4E0E-4E9C-BFA7-CD215C6D1A95}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 14
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 104
    Top = 440
  end
  object PLCTag15: TPLCTagNumber
    TagGUID = '{C2AE5962-B101-40B8-8F62-1A71D7040FCA}'
    AutoWrite = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 15
    MemSubElement = 0
    MemReadFunction = 3
    MemWriteFunction = 0
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 152
    Top = 440
  end
  object Timer2: TTimer
    Interval = 200
    OnTimer = Timer2Timer
    Left = 544
    Top = 331
  end
  object PLCTag18: TPLCTagNumber
    TagGUID = '{0DEEB821-29F4-42B6-AEBB-C3796FF1C785}'
    AutoRead = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 18
    MemSubElement = 0
    MemReadFunction = 0
    MemWriteFunction = 6
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 2000
    Left = 296
    Top = 440
  end
  object PLCTag19: TPLCTagNumber
    TagGUID = '{241F1F6E-F692-4E50-A17F-3718567FBA1D}'
    AutoRead = False
    PLCRack = 0
    PLCSlot = 0
    PLCStation = 1
    MemFile_DB = 0
    MemAddress = 19
    MemSubElement = 0
    MemReadFunction = 0
    MemWriteFunction = 6
    ProtocolDriver = ModBusTCP
    LongAddress = '1'
    EnableMaxValue = False
    EnableMinValue = False
    MaxValue = 100
    Left = 344
    Top = 440
  end
  object Tray1: TTrayIcon
    Icon.Data = {
      3E42000000000100010040400000010020002842000016000000280000004000
      0000800000000100200000000000004200000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB1
      22FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF241C
      EDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF241CEDFF241C
      EDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
      EDFF241CEDFF241CEDFF241CEDFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB122FF4CB1
      22FF4CB122FF4CB122FF4CB122FF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFE8A200FFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFE8A200FFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFE8A200FFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A200FFE8A2
      00FFE8A200FFE8A200FFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A200FFE8A2
      00FFE8A200FFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFE8A2
      00FFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC483FFFCC48
      3FFFCC483FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC483FFFCC48
      3FFFCC483FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000
    }
    Hint = 'Сброс пара'
    Visible = True
    OnClick = Tray1Click
    Left = 552
    Top = 128
  end
end
