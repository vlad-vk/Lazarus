object Form1: TForm1
  Left = 263
  Height = 685
  Top = 27
  Width = 1024
  HelpType = htKeyword
  HelpKeyword = 'help/index.html'
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Purpl Jock'
  ClientHeight = 685
  ClientWidth = 1024
  HelpFile = 'help/index.html'
  KeyPreview = True
  OnActivate = FormActivate
  OnCreate = FormCreate
  LCLVersion = '5.7'
  Visible = True
  object PC1: TPageControl
    Left = 0
    Height = 690
    Top = 0
    Width = 1024
    ActivePage = TS01
    Anchors = [akLeft]
    Font.Height = -13
    Font.Name = 'Arial'
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    TabIndex = 0
    TabOrder = 0
    OnChange = PC1Change
    object TS01: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'help/lines.html'
      Caption = 'Линии'
      ClientHeight = 657
      ClientWidth = 1018
      object SG1: TStringGrid
        Left = -2
        Height = 308
        Top = -2
        Width = 1020
        AutoAdvance = aaNone
        AutoEdit = False
        ColCount = 19
        Columns = <        
          item
            ButtonStyle = cbsButton
            MinSize = 20
            MaxSize = 20
            Title.Caption = 'N'
            Width = 20
          end        
          item
            MinSize = 30
            MaxSize = 30
            Title.Caption = 'ID'
            Width = 30
          end        
          item
            MinSize = 38
            MaxSize = 38
            Title.Caption = 'Связь '
            Width = 38
          end        
          item
            MinSize = 57
            MaxSize = 57
            Title.Caption = 'ТСтоп'
            Width = 57
          end        
          item
            MinSize = 104
            MaxSize = 104
            Title.Caption = 'Время изменения'
            Width = 109
          end        
          item
            MinSize = 120
            MaxSize = 120
            Title.Caption = 'Название линии'
            Width = 115
          end        
          item
            MinSize = 45
            MaxSize = 45
            Title.Caption = 'Статус'
            Width = 45
          end        
          item
            MinSize = 65
            MaxSize = 65
            Title.Caption = 'Кол-во'
            Width = 65
          end        
          item
            MinSize = 60
            MaxSize = 60
            Title.Caption = 'Скорость'
            Width = 60
          end        
          item
            Title.Caption = 'Заказ'
          end        
          item
            MaxSize = 50
            Title.Caption = 'Смена'
            Width = 42
          end        
          item
            Alignment = taRightJustify
            MinSize = 40
            MaxSize = 40
            Title.Caption = 'ТС КО'
            Width = 44
          end        
          item
            MinSize = 50
            MaxSize = 50
            Title.Caption = 'ТС КП'
            Width = 55
          end        
          item
            MinSize = 40
            MaxSize = 40
            Title.Caption = 'ТС ВП'
            Width = 44
          end        
          item
            MinSize = 40
            MaxSize = 40
            Title.Caption = 'ТС ВР'
            Width = 44
          end        
          item
            Alignment = taRightJustify
            MinSize = 40
            MaxSize = 40
            Title.Caption = 'ПС КО'
            Width = 44
          end        
          item
            MaxSize = 60
            Title.Caption = 'ПС КП'
            Width = 55
          end        
          item
            MinSize = 40
            MaxSize = 40
            Title.Caption = 'ПС ВП'
            Width = 44
          end        
          item
            MinSize = 40
            MaxSize = 40
            Title.Caption = 'ПС ВР'
            Width = 44
          end>
        DefaultDrawing = False
        ExtendedSelect = False
        FixedCols = 0
        Font.Height = -12
        Font.Name = 'Tahoma'
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goSmoothScroll]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        RowCount = 14
        ScrollBars = ssNone
        TabOrder = 0
        TabStop = False
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        OnDblClick = SG1DblClick
        OnDrawCell = SG1DrawCell
        OnKeyPress = SG1KeyPress
        OnSelectCell = SG1SelectCell
        ColWidths = (
          20
          30
          38
          57
          109
          115
          45
          65
          60
          64
          42
          44
          55
          44
          44
          44
          55
          44
          44
        )
      end
      object SG2: TStringGrid
        Left = -2
        Height = 318
        Top = 339
        Width = 761
        AutoEdit = False
        BorderStyle = bsNone
        ColCount = 9
        Columns = <        
          item
            MinSize = 95
            MaxSize = 95
            Title.Caption = 'Время'
            Width = 95
          end        
          item
            MinSize = 60
            MaxSize = 60
            Title.Caption = 'Статус'
            Width = 60
          end        
          item
            MinSize = 125
            MaxSize = 125
            Title.Caption = 'Продолжительность'
            Width = 125
          end        
          item
            MinSize = 60
            MaxSize = 60
            Title.Caption = 'Кол-во'
            Width = 60
          end        
          item
            MinSize = 60
            MaxSize = 60
            Title.Caption = 'Скорость'
            Width = 60
          end        
          item
            MinSize = 32
            MaxSize = 32
            Title.Caption = 'Зд'
            Width = 32
          end        
          item
            MinSize = 32
            MaxSize = 32
            Title.Caption = 'Пр'
            Width = 32
          end        
          item
            MinSize = 32
            MaxSize = 32
            Title.Caption = 'ТО'
            Width = 32
          end        
          item
            MinSize = 250
            MaxSize = 250
            Title.Caption = 'Примечание'
            Width = 250
          end>
        DefaultDrawing = False
        ExtendedSelect = False
        FixedCols = 0
        Font.Height = -12
        Font.Name = 'Tahoma'
        MouseWheelOption = mwGrid
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goSmoothScroll]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        RowCount = 1
        ScrollBars = ssVertical
        TabAdvance = aaNone
        TabOrder = 1
        TabStop = False
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        OnDrawCell = SG2DrawCell
      end
      object PN2: TPanel
        Left = -4
        Height = 33
        Top = 306
        Width = 763
        ClientHeight = 33
        ClientWidth = 763
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object SP1: TShape
          Left = 7
          Height = 8
          Top = 13
          Width = 8
          ParentShowHint = False
          Shape = stCircle
        end
        object BTF: TButton
          Left = 576
          Height = 20
          Top = 7
          Width = 57
          Caption = 'Фильтр'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BTFClick
          ParentFont = False
          TabOrder = 0
        end
        object BTR: TButton
          Left = 514
          Height = 20
          Top = 7
          Width = 57
          Caption = 'Расчет'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BTRClick
          ParentFont = False
          TabOrder = 1
        end
        object ST1: TStaticText
          Left = 18
          Height = 19
          Top = 7
          Width = 143
          Caption = ' Соединение...'
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object ST2: TStaticText
          Left = 274
          Height = 19
          Top = 7
          Width = 45
          Caption = 'Дата : '
          Font.Height = -13
          Font.Name = 'Arial'
          ParentBidiMode = False
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 3
        end
        object DE2: TLSDateEdit
          Left = 319
          Height = 25
          Top = 4
          Width = 80
          HelpType = htKeyword
          HelpKeyword = 'help/report_date.html'
          Button.AnchorSideLeft.Control = DE2
          Button.AnchorSideLeft.Side = asrBottom
          Button.AnchorSideTop.Control = DE2
          Button.AnchorSideBottom.Control = DE2
          Button.AnchorSideBottom.Side = asrBottom
          Button.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D69E
            72C4D3996EF4D19668FFCE9263FFCB8E5EFFC98A5BFFC78756FFC38452FFC384
            52FFC38452FFC38452FFC38452FFC38452FFBB7742B0FFFFFF00FFFFFF00D7A1
            75FFF8F2EDFFF7F0EAFFF6EDE6FFF4EAE2FFF3E7DEFFF1E4DBFFF0E2D8FFF0E2
            D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFC58A5DFDFFFFFF00FFFFFF00D9A4
            7AFFF9F3EEFFEBD0BCFFE7C1A4FFE7BFA1FFE6BE9FFFE6BB9AFFE3B895FFE1B5
            8FFFDEB089FFDCAB83FFD9AE89FFF0E2D8FFC68C5FFFFFFFFF00FFFFFF00DDA8
            7EFFF9F3EFFFEBD0BAFFFFFFFFFFFEFEFEFFFEFFFEFFFEFFFEFFFFFFFFFFFEFE
            FEFFFFFFFFFFFFFFFFFFDBB08CFFF0E2D8FFC68A5CFFFFFFFF00FFFFFF00DFAA
            82FFF9F3EFFFEACEB7FFFFFFFFFFC0DDC3FF62AB69FFA1CDA5FFABD2AFFF68AE
            6EFFABD2AFFFFFFFFFFFDDB491FFF0E2D8FFC88D5FFFFFFFFF00FFFFFF00E1AE
            87FFFAF4F0FFEACBB2FFFFFFFFFFFFFFFFFF62AB69FFD5E9D7FF8CC191FFFFFF
            FFFF62AB69FFFFFFFFFFDFB896FFF0E2D8FFC48654FFFFFFFF00FFFFFF00E3B1
            8CFFFAF6F1FFEAC9AEFFFFFFFFFFFFFFFFFF62AB69FFD5E9D7FF96C79BFFF9FC
            F9FF6CB173FFFFFFFFFFE1BD9DFFF0E2D8FFC68655FFFFFFFF00FFFFFF00E5B4
            8FFFFAF6F2FFE9C6AAFFFFFFFFFFABD2AFFF6CB173FFD5E9D7FFABD2AFFF65AD
            6CFFABD2AFFFFFFFFFFFE4C1A4FFF2E7DEFFC88A59FFFFFFFF00FFFFFF00E7B7
            94FFFBF7F4FFE9C3A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFE5C6ABFFF7F1EBFFCB8F5FFFFFFFFF00FFFFFF00E9BA
            98FFFBF7F4FF65A4FFFF64A3FFFF62A2FFFF61A1FFFF5F9FFFFF5C9DFFFF5A9A
            FFFF5798FFFF5495FFFF5294FFFFFBF7F4FFCE9364FFFFFFFF00FFFFFF00EBBD
            9BFFFBF7F4FF64A4FFFF79BDFFFF75BBFFFF71B9FFFF6DB8FFFF68B3FFFF61B0
            FFFF5AABFFFF54A7FFFF3B7DFFFFFBF7F4FFD1976AFFFFFFFF00FFFFFF00ECBF
            9EFFFBF7F4FF65A4FFFF64A3FFFF60A0FFFF5D9EFFFF5899FFFF5496FFFF4D90
            FFFF478BFFFF4284FFFF3D7FFFFFFBF7F4FFD49B6FFFFFFFFF00FFFFFF00EEC1
            A1EBFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
            F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFD7A074F8FFFFFF00FFFFFF00EFC2
            A37EEFC1A2E3EDC09FFFEBBE9DFFEBBC9AFFE9BA96FFE7B793FFE6B590FFE4B2
            8CFFE2AF88FFE0AC84FFDDA980FFDCA57DFFDAA37ACAFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
          }
          Button.Spacing = 0
          CalendarShowBtns = False
          CharCase = ecNormal
          DefaultToday = True
          DisplayFormat = 'dd.mm.yyyy'
          Font.Height = -13
          Font.Name = 'Arial'
          MinValue = 0
          MaxValue = 0
          MaxLength = 0
          ParentFont = False
          TabOrder = 4
          ValidDateSeparator = '.'
          OnEditingDone = DE2EditingDone
          SpaceChar = '_'
          ShowValidationHint = False
          Value = 42761
        end
        object ST5: TStaticText
          Cursor = crHandPoint
          Left = 183
          Height = 19
          Top = 7
          Width = 59
          Caption = 'Режим :  '
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = ST6Click
          ParentBidiMode = False
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 5
        end
        object ST6: TStaticText
          Cursor = crHandPoint
          Left = 240
          Height = 19
          Top = 7
          Width = 19
          Caption = ' Т '
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          OnClick = ST6Click
          ParentBidiMode = False
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 6
        end
        object ED3: TEdit
          Left = 639
          Height = 20
          Top = 7
          Width = 110
          AutoSize = False
          Font.Height = -13
          Font.Name = 'Arial'
          OnEditingDone = ED3EditingDone
          ParentFont = False
          TabOrder = 7
          Text = '9*'
        end
        object BTZ: TButton
          Left = 427
          Height = 20
          Top = 7
          Width = 57
          Caption = 'Запрос'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BTZClick
          ParentFont = False
          TabOrder = 8
        end
      end
      object PN4: TPanel
        Left = 759
        Height = 349
        Top = 306
        Width = 257
        ClientHeight = 349
        ClientWidth = 257
        TabOrder = 3
        object SG3: TStringGrid
          Left = 3
          Height = 318
          Top = 33
          Width = 254
          AutoEdit = False
          BorderStyle = bsNone
          Color = clSilver
          ColCount = 3
          Columns = <          
            item
              Title.Caption = 'Время'
              Width = 98
            end          
            item
              Title.Caption = 'Сколько'
              Width = 60
            end          
            item
              Title.Caption = 'Коды'
              Width = 80
            end>
          DefaultDrawing = False
          ExtendedSelect = False
          FixedCols = 0
          Font.Height = -13
          Font.Name = 'Arial'
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          RowCount = 1
          ScrollBars = ssVertical
          TabAdvance = aaNone
          TabOrder = 0
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
        end
        object ST18: TStaticText
          Left = 6
          Height = 19
          Top = 7
          Width = 70
          Caption = 'ПРОСТОИ'
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          TabOrder = 1
        end
        object ST19: TStaticText
          Left = 86
          Height = 19
          Top = 7
          Width = 96
          Caption = 'без пояснений'
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          TabOrder = 2
        end
        object CB2: TCheckBox
          Left = 183
          Height = 21
          Top = 6
          Width = 21
          AutoSize = False
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ParentShowHint = False
          TabOrder = 3
        end
      end
    end
    object TS10: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'help/report.html'
      Caption = 'Отчет'
      ClientHeight = 657
      ClientWidth = 1018
      object PN3: TPanel
        Left = -2
        Height = 33
        Top = -1
        Width = 1022
        ClientHeight = 33
        ClientWidth = 1022
        ParentColor = False
        TabOrder = 0
        object ST11: TStaticText
          Left = 7
          Height = 19
          Top = 7
          Width = 45
          AutoSize = True
          Caption = 'Дата : '
          Color = clDefault
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ParentColor = False
          ShowAccelChar = False
          TabOrder = 0
        end
        object BTO1: TButton
          Left = 642
          Height = 25
          Top = 4
          Width = 94
          Caption = 'Формировать'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BTO1Click
          ParentFont = False
          TabOrder = 1
        end
        object BTO3: TButton
          Left = 743
          Height = 25
          Top = 4
          Width = 54
          Caption = 'Печать'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BTO3Click
          ParentFont = False
          TabOrder = 2
        end
        object DE1: TLSDateEdit
          Left = 52
          Height = 25
          Top = 4
          Width = 80
          HelpType = htKeyword
          HelpKeyword = 'help/report_date.html'
          Button.AnchorSideLeft.Control = DE1
          Button.AnchorSideLeft.Side = asrBottom
          Button.AnchorSideTop.Control = DE1
          Button.AnchorSideBottom.Control = DE1
          Button.AnchorSideBottom.Side = asrBottom
          Button.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D69E
            72C4D3996EF4D19668FFCE9263FFCB8E5EFFC98A5BFFC78756FFC38452FFC384
            52FFC38452FFC38452FFC38452FFC38452FFBB7742B0FFFFFF00FFFFFF00D7A1
            75FFF8F2EDFFF7F0EAFFF6EDE6FFF4EAE2FFF3E7DEFFF1E4DBFFF0E2D8FFF0E2
            D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFC58A5DFDFFFFFF00FFFFFF00D9A4
            7AFFF9F3EEFFEBD0BCFFE7C1A4FFE7BFA1FFE6BE9FFFE6BB9AFFE3B895FFE1B5
            8FFFDEB089FFDCAB83FFD9AE89FFF0E2D8FFC68C5FFFFFFFFF00FFFFFF00DDA8
            7EFFF9F3EFFFEBD0BAFFFFFFFFFFFEFEFEFFFEFFFEFFFEFFFEFFFFFFFFFFFEFE
            FEFFFFFFFFFFFFFFFFFFDBB08CFFF0E2D8FFC68A5CFFFFFFFF00FFFFFF00DFAA
            82FFF9F3EFFFEACEB7FFFFFFFFFFC0DDC3FF62AB69FFA1CDA5FFABD2AFFF68AE
            6EFFABD2AFFFFFFFFFFFDDB491FFF0E2D8FFC88D5FFFFFFFFF00FFFFFF00E1AE
            87FFFAF4F0FFEACBB2FFFFFFFFFFFFFFFFFF62AB69FFD5E9D7FF8CC191FFFFFF
            FFFF62AB69FFFFFFFFFFDFB896FFF0E2D8FFC48654FFFFFFFF00FFFFFF00E3B1
            8CFFFAF6F1FFEAC9AEFFFFFFFFFFFFFFFFFF62AB69FFD5E9D7FF96C79BFFF9FC
            F9FF6CB173FFFFFFFFFFE1BD9DFFF0E2D8FFC68655FFFFFFFF00FFFFFF00E5B4
            8FFFFAF6F2FFE9C6AAFFFFFFFFFFABD2AFFF6CB173FFD5E9D7FFABD2AFFF65AD
            6CFFABD2AFFFFFFFFFFFE4C1A4FFF2E7DEFFC88A59FFFFFFFF00FFFFFF00E7B7
            94FFFBF7F4FFE9C3A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFE5C6ABFFF7F1EBFFCB8F5FFFFFFFFF00FFFFFF00E9BA
            98FFFBF7F4FF65A4FFFF64A3FFFF62A2FFFF61A1FFFF5F9FFFFF5C9DFFFF5A9A
            FFFF5798FFFF5495FFFF5294FFFFFBF7F4FFCE9364FFFFFFFF00FFFFFF00EBBD
            9BFFFBF7F4FF64A4FFFF79BDFFFF75BBFFFF71B9FFFF6DB8FFFF68B3FFFF61B0
            FFFF5AABFFFF54A7FFFF3B7DFFFFFBF7F4FFD1976AFFFFFFFF00FFFFFF00ECBF
            9EFFFBF7F4FF65A4FFFF64A3FFFF60A0FFFF5D9EFFFF5899FFFF5496FFFF4D90
            FFFF478BFFFF4284FFFF3D7FFFFFFBF7F4FFD49B6FFFFFFFFF00FFFFFF00EEC1
            A1EBFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
            F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFD7A074F8FFFFFF00FFFFFF00EFC2
            A37EEFC1A2E3EDC09FFFEBBE9DFFEBBC9AFFE9BA96FFE7B793FFE6B590FFE4B2
            8CFFE2AF88FFE0AC84FFDDA980FFDCA57DFFDAA37ACAFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
          }
          Button.Spacing = 0
          CalendarShowBtns = False
          CharCase = ecNormal
          DefaultToday = True
          DisplayFormat = 'dd.mm.yyyy'
          Font.Height = -13
          Font.Name = 'Arial'
          MinValue = 0
          MaxValue = 0
          MaxLength = 0
          ParentFont = False
          TabOrder = 3
          ValidDateSeparator = '.'
          SpaceChar = '_'
          ShowValidationHint = False
          Value = 42761
        end
        object CBOX2: TComboBox
          Left = 252
          Height = 24
          Top = 4
          Width = 158
          AutoSize = False
          Font.Height = -13
          Font.Name = 'Arial'
          ItemHeight = 0
          Items.Strings = (
            ''
          )
          OnEditingDone = CBOX2EditingDone
          ParentFont = False
          ParentShowHint = False
          TabOrder = 4
          Text = 'Все'
        end
        object ST12: TStaticText
          Left = 196
          Height = 19
          Top = 7
          Width = 53
          AutoSize = True
          Caption = 'Линия : '
          Color = clDefault
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ParentColor = False
          ShowAccelChar = False
          TabOrder = 5
        end
        object CBOX3: TComboBox
          Left = 500
          Height = 24
          Top = 4
          Width = 90
          AutoSize = False
          Font.Height = -13
          Font.Name = 'Arial'
          ItemHeight = 0
          ItemIndex = 0
          Items.Strings = (
            'Краткий'
            'Полный'
          )
          OnEditingDone = CBOX3EditingDone
          ParentFont = False
          ParentShowHint = False
          TabOrder = 6
          Text = 'Краткий'
        end
        object ST13: TStaticText
          Left = 459
          Height = 19
          Top = 7
          Width = 38
          AutoSize = True
          Caption = 'Тип : '
          Color = clDefault
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ParentColor = False
          ShowAccelChar = False
          TabOrder = 7
        end
      end
      object FPRV: TfrPreview
        Left = -2
        Height = 623
        Top = 32
        Width = 1022
        BevelOuter = bvNone
        ParentColor = False
        ParentShowHint = False
        TabOrder = 1
        ScrollBars = ssVertical
      end
    end
    object TS02: TTabSheet
      Caption = 'Журнал'
      Enabled = False
    end
    object TS03: TTabSheet
      Caption = 'Неисправности'
      Enabled = False
    end
    object TS04: TTabSheet
      Caption = 'Заявка'
      Enabled = False
    end
    object TS05: TTabSheet
      Caption = 'Кладовая'
      Enabled = False
    end
    object TS06: TTabSheet
      Caption = 'Оборудование'
      Enabled = False
    end
    object TS07: TTabSheet
      Caption = 'Документация'
      Enabled = False
    end
    object TS08: TTabSheet
      HelpType = htKeyword
      HelpKeyword = 'help/setup.html'
      Caption = 'Настройки'
      ClientHeight = 657
      ClientWidth = 1018
      ParentShowHint = False
      object ST17: TStaticText
        Left = 10
        Height = 19
        Top = 632
        Width = 131
        AutoSize = True
        Caption = 'Версия программы : '
        Font.Height = -13
        Font.Name = 'Arial'
        ParentFont = False
        ShowAccelChar = False
        TabOrder = 0
      end
      object PNSET1: TPanel
        Left = -1
        Height = 35
        Top = -1
        Width = 1020
        ClientHeight = 35
        ClientWidth = 1020
        Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        ParentBidiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        TabOrder = 1
        object ST01: TStaticText
          Left = 8
          Height = 19
          Top = 8
          Width = 88
          Caption = 'Код доступа : '
          Font.Height = -13
          Font.Name = 'Arial'
          ParentBidiMode = False
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 0
        end
        object ED1: TEdit
          Left = 104
          Height = 25
          Top = 5
          Width = 90
          AutoSize = False
          EchoMode = emPassword
          Font.Height = -13
          Font.Name = 'Arial'
          OnEditingDone = ED1EditingDone
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 1
          Text = 'ED1'
        end
        object ST03: TStaticText
          Left = 214
          Height = 19
          Top = 8
          Width = 81
          Caption = '- уровень'
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 2
        end
        object BT02: TButton
          Left = 940
          Height = 25
          Top = 5
          Width = 75
          Caption = 'Сохранить'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BT02Click
          ParentFont = False
          TabOrder = 3
        end
        object ST04: TStaticText
          Left = 335
          Height = 19
          Top = 8
          Width = 125
          Caption = 'Новый код доступа : '
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 4
        end
        object ED2: TEdit
          Left = 515
          Height = 25
          Top = 5
          Width = 90
          AutoSize = False
          EchoMode = emPassword
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 5
          Text = 'ED2'
        end
      end
      object PNSET2: TPanel
        Left = -1
        Height = 35
        Top = 34
        Width = 1020
        ClientHeight = 35
        ClientWidth = 1020
        Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        ParentBidiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        TabOrder = 2
        object ST02: TStaticText
          Left = 8
          Height = 19
          Top = 8
          Width = 254
          Caption = 'Расположение окна на экране : '
          Font.Height = -13
          Font.Name = 'Arial'
          ParentBidiMode = False
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 0
        end
        object BT01: TButton
          Left = 940
          Height = 25
          Top = 5
          Width = 75
          Caption = 'Сохранить'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BT01Click
          ParentFont = False
          TabOrder = 1
        end
        object ST05: TStaticText
          Left = 335
          Height = 19
          Top = 8
          Width = 140
          Caption = 'Печать отчета в файл : '
          Font.Height = -13
          Font.Name = 'Arial'
          ParentBidiMode = False
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 2
        end
        object CB1: TCheckBox
          Left = 584
          Height = 21
          Top = 7
          Width = 21
          AutoSize = False
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = CB1Click
          ParentFont = False
          ParentShowHint = False
          TabOrder = 3
        end
        object CBOX1: TComboBox
          Left = 515
          Height = 25
          Top = 5
          Width = 66
          AutoSize = False
          Font.Height = -13
          Font.Name = 'Arial'
          ItemHeight = 0
          ItemIndex = 0
          Items.Strings = (
            'TXT'
            'PDF'
          )
          OnChange = CBOX1Change
          ParentFont = False
          ParentShowHint = False
          TabOrder = 4
          Text = 'TXT'
        end
      end
      object PNSET3: TPanel
        Left = -1
        Height = 35
        Top = 69
        Width = 1020
        ClientHeight = 35
        ClientWidth = 1020
        Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        ParentBidiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        TabOrder = 3
        object ST3: TStaticText
          Left = 8
          Height = 19
          Top = 8
          Width = 254
          Caption = 'Фильтры работы в минутах :'
          Font.Height = -13
          Font.Name = 'Arial'
          ParentBidiMode = False
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 0
        end
        object SPE1: TSpinEdit
          Left = 335
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 180
          OnEditingDone = SPE1Change
          ParentFont = False
          TabOrder = 1
          Value = 1
        end
        object SPE2: TSpinEdit
          Left = 395
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 180
          OnEditingDone = SPE1Change
          ParentFont = False
          TabOrder = 2
          Value = 1
        end
        object SPE3: TSpinEdit
          Left = 455
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 180
          OnEditingDone = SPE1Change
          ParentFont = False
          TabOrder = 3
          Value = 1
        end
        object SPE4: TSpinEdit
          Left = 515
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 180
          OnEditingDone = SPE1Change
          ParentFont = False
          TabOrder = 4
          Value = 1
        end
        object SPE5: TSpinEdit
          Left = 575
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 180
          OnEditingDone = SPE1Change
          ParentFont = False
          TabOrder = 5
          Value = 1
        end
        object BT03: TButton
          Left = 940
          Height = 25
          Top = 5
          Width = 75
          Caption = 'Сохранить'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BT03Click
          ParentFont = False
          TabOrder = 6
        end
      end
      object PNSET4: TPanel
        Left = -1
        Height = 35
        Top = 104
        Width = 1020
        ClientHeight = 35
        ClientWidth = 1020
        Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        ParentBidiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        TabOrder = 4
        object SPE6: TSpinEdit
          Left = 335
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 180
          OnEditingDone = SPE1Change
          ParentFont = False
          TabOrder = 0
          Value = 1
        end
        object SPE7: TSpinEdit
          Left = 395
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 180
          OnEditingDone = SPE1Change
          ParentFont = False
          TabOrder = 1
          Value = 1
        end
        object SPE8: TSpinEdit
          Left = 455
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 180
          OnEditingDone = SPE1Change
          ParentFont = False
          TabOrder = 2
          Value = 1
        end
        object SPE9: TSpinEdit
          Left = 515
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 180
          OnEditingDone = SPE1Change
          ParentFont = False
          TabOrder = 3
          Value = 1
        end
        object SPE10: TSpinEdit
          Left = 575
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 180
          OnEditingDone = SPE1Change
          ParentFont = False
          TabOrder = 4
          Value = 1
        end
        object ST4: TStaticText
          Left = 8
          Height = 19
          Top = 8
          Width = 254
          Caption = 'Фильтры остановов в минутах :'
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 5
        end
        object BT6: TButton
          Left = 940
          Height = 25
          Top = 5
          Width = 75
          Caption = 'Сохранить'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BT03Click
          ParentFont = False
          TabOrder = 6
        end
      end
      object PNSET5: TPanel
        Left = -1
        Height = 35
        Top = 139
        Width = 1020
        ClientHeight = 35
        ClientWidth = 1020
        Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        ParentBidiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        TabOrder = 5
        object ST7: TStaticText
          Left = 8
          Height = 19
          Top = 8
          Width = 451
          Caption = 'Период автоматического обновления значений ТС и ПС в списке линий : '
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 0
        end
        object SPE11: TSpinEdit
          Left = 515
          Height = 25
          Top = 5
          Width = 42
          Font.Height = -13
          Font.Name = 'Arial'
          MaxValue = 60
          OnEditingDone = SPE11EditingDone
          ParentFont = False
          TabOrder = 1
        end
        object ST8: TStaticText
          Left = 575
          Height = 19
          Top = 8
          Width = 139
          AutoSize = True
          Caption = 'минут (0 - выключено)'
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 2
        end
      end
      object PNSET6: TPanel
        Left = -1
        Height = 35
        Top = 174
        Width = 1020
        ClientHeight = 35
        ClientWidth = 1020
        Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        ParentBidiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        TabOrder = 6
        object ST20: TStaticText
          Left = 8
          Height = 19
          Top = 8
          Width = 305
          Caption = 'Текущее системное время на этом компьютере : '
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 0
        end
        object ST15: TStaticText
          Left = 335
          Height = 19
          Top = 8
          Width = 150
          AutoSize = True
          Caption = 'ДД.ММ.ГГГГ ЧЧ:ММ:СС'
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 1
        end
        object BT5: TButton
          Left = 820
          Height = 25
          Top = 5
          Width = 195
          Caption = 'Синхронизировать с сервером'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BT5Click
          ParentFont = False
          TabOrder = 2
        end
        object ST21: TStaticText
          Left = 515
          Height = 19
          Top = 8
          Width = 195
          Caption = 'Синхронизировать при старте'
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 3
        end
        object CB3: TCheckBox
          Left = 710
          Height = 21
          Top = 7
          Width = 21
          AutoSize = False
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ParentShowHint = False
          TabOrder = 4
        end
      end
      object PNSET7: TPanel
        Left = -1
        Height = 35
        Top = 209
        Width = 1020
        ClientHeight = 35
        ClientWidth = 1020
        Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        ParentBidiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        TabOrder = 7
        object ST9: TStaticText
          Left = 8
          Height = 19
          Top = 8
          Width = 271
          Caption = 'Текущее системное время на сервере БД : '
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 0
        end
        object ST16: TStaticText
          Left = 335
          Height = 19
          Top = 8
          Width = 150
          AutoSize = True
          Caption = 'ДД.ММ.ГГГГ ЧЧ:ММ:СС'
          Font.Height = -13
          Font.Name = 'Arial'
          ParentFont = False
          ShowAccelChar = False
          TabOrder = 1
        end
        object BT4: TButton
          Left = 906
          Height = 25
          Top = 5
          Width = 109
          Caption = 'Обновить время'
          Font.Height = -13
          Font.Name = 'Arial'
          OnClick = BT4Click
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object TS09: TTabSheet
      Tag = 11
      Caption = 'Выход'
    end
  end
  object BTV: TBitBtn
    Left = 672
    Height = 16
    Top = 32
    Width = 16
    BorderSpacing.InnerBorder = 1
    BorderSpacing.CellAlignHorizontal = ccaLeftTop
    BorderSpacing.CellAlignVertical = ccaLeftTop
    Caption = 'x'
    OnClick = FormClose
    ParentShowHint = False
    TabOrder = 1
    Visible = False
  end
  object ST51: TStaticText
    Cursor = crHandPoint
    Left = 1003
    Height = 19
    Top = 3
    Width = 19
    Anchors = [akRight]
    AutoSize = True
    Caption = ' ? '
    Font.Height = -13
    Font.Name = 'Arial'
    OnClick = ST51Click
    OnMouseEnter = ST51MouseEnter
    OnMouseLeave = ST51MouseLeave
    ParentFont = False
    TabOrder = 2
  end
  object CRYPT1: TDCP_tea
    Id = 25
    Algorithm = 'Tea'
    MaxKeySize = 128
    BlockSize = 64
    left = 136
    top = 616
  end
  object HASH1: TDCP_sha1
    Id = 2
    Algorithm = 'SHA1'
    HashSize = 160
    left = 179
    top = 616
  end
  object FREP: TfrReport
    Dataset = FDAT
    GrayedButtons = True
    InitialZoom = pzPageWidth
    Options = []
    Preview = FPRV
    PreviewButtons = [pbZoom, pbPrint, pbExit]
    ShowProgress = False
    DataType = dtDataSet
    OnGetValue = FREPGetValue
    left = 16
    top = 616
  end
  object FDAT: TfrUserDataset
    OnCheckEOF = FDATCheckEOF
    OnFirst = FDATFirst
    OnNext = FDATNext
    left = 56
    top = 616
  end
  object PRND: TPrintDialog
    Collate = True
    FromPage = 1
    MaxPage = 1
    Options = [poPageNums]
    PrintToFile = True
    PrintRange = prCurrentPage
    ToPage = 1
    left = 95
    top = 616
  end
  object TXTEXP: TfrTextExport
    ShowExportParamsDlg = False
    left = 222
    top = 616
  end
  object lrCairoExport1: TlrCairoExport
    left = 288
    top = 616
  end
  object HTMLHelpDB: THTMLHelpDatabase
    BaseURL = 'file://help/'
    AutoRegister = True
    KeywordPrefix = 'help/'
    left = 580
    top = 552
  end
  object HTMLHelpVW: THTMLBrowserHelpViewer
    BrowserPath = 'wbhelp.exe'
    BrowserParams = '%s'
    AutoRegister = True
    left = 580
    top = 616
  end
  object LTCP1: TLTCPComponent
    Host = '127.0.0.1'
    Port = 17
    OnReceive = LTCP1Receive
    OnDisconnect = LTCP1Disconnect
    Timeout = 0
    ReuseAddress = False
    left = 370
    top = 616
  end
end
