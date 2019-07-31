object fInventoryAdd: TfInventoryAdd
  Left = 468
  Top = 191
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1072#1082#1090#1086#1074' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1080
  ClientHeight = 576
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    00000000000000000000000000000000000000690150037B05FF048506FF0383
    04FF017902FF0068005000000000000000000000000000000000000000000000
    000000000000000000000000000000000000026D04800EA415FF0CA512FF09A2
    0EFF079C0AFF0068008000000000000000000000000000000000000000000000
    00000000000000000000000000000000000005730A8015AE20FF12AB1BFF0FA8
    17FF0CA512FF0068008000000000000000000000000000000000000000000000
    000000000000000000000000000000000000097B11801CB52AFF19B225FF15AE
    20FF12AB1BFF026C038000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000D83198024BD35FF20B930FF1CB5
    2AFF19B225FF0571098000000000000000000000000000000000000000001FA7
    3A501DA236801B9D318018982D8016932880128D22BF2BC441FF27C03BFF24BD
    35FF20B930FF08790FBF07760D8005720A80046F0780026C0480016A025031C1
    52FF46DE6AFF44DD66FF40D960FF3CD559FF38D153FF33CC4DFF2FC847FF2BC4
    41FF27C03BFF24BD35FF20B930FF1CB52AFF19B225FF14AA1FFF08810DFF40D5
    67FF52EB7BFF4DE674FF49E26DFF44DD66FF40D960FF3CD559FF38D153FF33CC
    4DFF2FC847FF2BC441FF27C03BFF24BD35FF20B930FF1CB52AFF109318FF47E0
    73FF5BF489FF56EF82FF52EB7BFF4DE674FF49E26DFF44DD66FF40D960FF3CD5
    59FF38D153FF33CC4DFF2FC847FF2BC441FF27C03BFF24BD35FF159A21FF45E1
    74FF61FA93FF60F990FF5BF489FF56EF82FF52EB7BFF4DE674FF49E26DFF44DD
    66FF40D960FF3CD559FF38D153FF33CC4DFF2FC847FF29C03EFF169724FF39DB
    695037D6658034D0608031CA5A802EC455802CC051BF56EF82FF52EB7BFF4DE6
    74FF49E26DFF1FA538BF1B9E328019992D8016942980148F2480128B20500000
    00000000000000000000000000000000000032CC5C8060F990FF5BF489FF56EF
    82FF52EB7BFF25B2448000000000000000000000000000000000000000000000
    00000000000000000000000000000000000038D8678066FF99FF64FD96FF60F9
    90FF5BF489FF2BBD4E8000000000000000000000000000000000000000000000
    0000000000000000000000000000000000003EE3728066FF99FF66FF99FF66FF
    99FF64FD96FF31C9598000000000000000000000000000000000000000000000
    0000000000000000000000000000000000003FE6748064FD97FF66FF99FF66FF
    99FF63FD96FF37D5658000000000000000000000000000000000000000000000
    0000000000000000000000000000000000003FE674504BEE80FF53F387FF53F3
    87FF4BED7FFF3CE06E500000000000000000000000000000000000000000F81F
    0000F81F0000F81F0000F81F0000F81F00000000000000000000000000000000
    00000000000000000000F81F0000F81F0000F81F0000F81F0000F81F0000}
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PC: TPageControl
    Tag = -1
    Left = 0
    Top = 0
    Width = 824
    Height = 535
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HotTrack = True
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
  end
  object QRShape68: TQRShape
    Left = 92
    Top = 945
    Width = 636
    Height = 6
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      16.5364583333333
      244.739583333333
      2500.3125
      1683.41145833333)
    Shape = qrsHorLine
    VertAdjust = 0
  end
  object QRShape69: TQRShape
    Left = 92
    Top = 970
    Width = 636
    Height = 6
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      16.5364583333333
      244.739583333333
      2566.45833333333
      1683.41145833333)
    Shape = qrsHorLine
    VertAdjust = 0
  end
  object InventoryPC: TPageControl
    Left = 0
    Top = 0
    Width = 824
    Height = 535
    ActivePage = ReportInventoryTS0
    Align = alClient
    TabHeight = 20
    TabIndex = 0
    TabOrder = 3
    object ReportInventoryTS0: TTabSheet
      Caption = #1060#1086#1088#1084#1072' '#8470'1'
      ImageIndex = 2
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 816
        Height = 505
        Align = alClient
        TabOrder = 0
        object InvPanelF1Top: TPanel
          Left = 0
          Top = 0
          Width = 812
          Height = 137
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object Label20: TLabel
            Left = 16
            Top = 75
            Width = 272
            Height = 52
            Caption = 
              '                 '#1057' '#1086' '#1089' '#1090' '#1072' '#1074'   '#1082' '#1086' '#1084' '#1080' '#1089' '#1089' '#1080' '#1080':'#13#10#1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' ('#1092 +
              #1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086' '#1080' '#1076#1086#1083#1078#1085#1086#1089#1090#1100')'#13#10#13#10#1063#1083#1077#1085#1099' :('#1092#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077 +
              #1089#1090#1074#1086' '#1080' '#1076#1086#1083#1078#1085#1086#1089#1090#1100')'
          end
          object InvBevel: TBevel
            Left = 12
            Top = 107
            Width = 619
            Height = 26
            Shape = bsFrame
          end
          object Label16: TLabel
            Left = 250
            Top = 65
            Width = 31
            Height = 13
            Caption = #1057#1082#1083#1072#1076
          end
          object Label17: TLabel
            Left = 152
            Top = 10
            Width = 240
            Height = 16
            Alignment = taCenter
            Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1086#1085#1085#1072#1103' '#1086#1087#1080#1089#1100'-'#1072#1082#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 228
            Top = 24
            Width = 139
            Height = 26
            Caption = #1090#1086#1074#1072#1088#1086#1074', '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074', '#1090#1072#1088#1099#13#10#1085#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object InventorySpdBtnPlus: TSpeedButton
            Tag = -1
            Left = 588
            Top = 109
            Width = 20
            Height = 20
            Hint = #1053#1072#1078#1084#1080#1090#1077' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091' '#1076#1083#1103' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1087#1086#1083#1077#1081' '#1074#1074#1086#1076#1072
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = InventorySpdBtnPlusClick
          end
          object InventorySpdBtnMinus: TSpeedButton
            Tag = -1
            Left = 608
            Top = 109
            Width = 20
            Height = 20
            Hint = #1053#1072#1078#1084#1080#1090#1077' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091' '#1076#1083#1103' '#1091#1076#1072#1083#1077#1085#1080#1103' '#1087#1086#1083#1077#1081' '#1074#1074#1086#1076#1072
            Caption = 'X'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = InventorySpdBtnMinusClick
          end
          object InvNoLabel: TLabel
            Left = 396
            Top = 10
            Width = 16
            Height = 16
            Caption = #8470
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lInventoryid: TLabel
            Left = 372
            Top = 26
            Width = 51
            Height = 13
            AutoSize = False
          end
          object InventoryDateEdit: TDateEdit
            Left = 244
            Top = 36
            Width = 121
            Height = 21
            NumGlyphs = 2
            TabOrder = 0
          end
          object StorageRxDBLC: TRxDBLookupCombo
            Left = 292
            Top = 60
            Width = 337
            Height = 21
            DropDownCount = 8
            LookupField = 'ID'
            LookupDisplay = 'NAME'
            TabOrder = 1
          end
          object InvPredsedatelEdit: TEdit
            Left = 292
            Top = 82
            Width = 337
            Height = 21
            Color = clWhite
            TabOrder = 2
          end
          object InventoryEdit: TEdit
            Tag = -1
            Left = 292
            Top = 109
            Width = 297
            Height = 21
            TabOrder = 3
          end
          object InventorySQNNOcxME: TcxMaskEdit
            Left = 416
            Top = 8
            Properties.MaxLength = 16
            TabOrder = 4
            Width = 89
          end
        end
        object InvPanelF1Midle: TPanel
          Left = 0
          Top = 137
          Width = 812
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 1
          object Label21: TLabel
            Left = 16
            Top = 6
            Width = 175
            Height = 13
            Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1100#1085#1086' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1077' '#1083#1080#1094#1072
          end
          object InvEmplSpdBtnPlus: TSpeedButton
            Tag = -1
            Left = 588
            Top = 2
            Width = 20
            Height = 20
            Hint = #1053#1072#1078#1084#1080#1090#1077' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091' '#1076#1083#1103' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1087#1086#1083#1077#1081' '#1074#1074#1086#1076#1072
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = InvEmplSpdBtnPlusClick
          end
          object InvEmplSpdBtnMinus: TSpeedButton
            Tag = -1
            Left = 608
            Top = 2
            Width = 20
            Height = 20
            Hint = #1053#1072#1078#1084#1080#1090#1077' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091' '#1076#1083#1103' '#1091#1076#1072#1083#1077#1085#1080#1103' '#1087#1086#1083#1077#1081' '#1074#1074#1086#1076#1072
            Caption = 'X'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = InvEmplSpdBtnMinusClick
          end
          object InvRetEmplSpdBtnPlus: TSpeedButton
            Tag = -1
            Left = 588
            Top = 2
            Width = 20
            Height = 20
            Hint = #1053#1072#1078#1084#1080#1090#1077' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091' '#1076#1083#1103' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1087#1086#1083#1077#1081' '#1074#1074#1086#1076#1072
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = InvRetEmplSpdBtnPlusClick
          end
          object InvRetEmplSpdBtnMinus: TSpeedButton
            Tag = -1
            Left = 608
            Top = 2
            Width = 20
            Height = 20
            Hint = #1053#1072#1078#1084#1080#1090#1077' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091' '#1076#1083#1103' '#1091#1076#1072#1083#1077#1085#1080#1103' '#1087#1086#1083#1077#1081' '#1074#1074#1086#1076#1072
            Caption = 'X'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = InvRetEmplSpdBtnMinusClick
          end
          object EmployeeRxDBLC: TRxDBLookupCombo
            Tag = -1
            Left = 292
            Top = 2
            Width = 297
            Height = 21
            DropDownCount = 8
            LookupField = 'ID'
            LookupDisplay = 'NAME'
            TabOrder = 0
            OnChange = EmployeeRxDBLCChange
          end
          object InventoryRetEdit: TEdit
            Left = 292
            Top = 2
            Width = 293
            Height = 21
            TabOrder = 1
          end
          object InventoryRetCheckBoxFirst: TCheckBox
            Left = 632
            Top = 4
            Width = 89
            Height = 17
            Caption = '1-'#1103' '#1087#1086#1076#1087#1080#1089#1082#1072
            TabOrder = 2
          end
          object InventoryRetCheckBoxThird: TCheckBox
            Left = 720
            Top = 4
            Width = 97
            Height = 17
            Caption = '3-'#1103' '#1087#1086#1076#1087#1080#1089#1082#1072
            TabOrder = 3
          end
        end
        object InvPanelF1Bottom: TPanel
          Left = 0
          Top = 163
          Width = 812
          Height = 246
          Align = alTop
          Color = clWhite
          TabOrder = 2
          object Label22: TLabel
            Left = 16
            Top = 6
            Width = 163
            Height = 13
            Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1080
          end
          object Label23: TLabel
            Left = 24
            Top = 28
            Width = 406
            Height = 13
            Caption = 
              #1057#1085#1103#1090#1080#1077' '#1086#1089#1090#1072#1090#1082#1086#1074' '#1085#1072#1095#1072#1090#1086'                                          ' +
              '                                  '#1080' '#1086#1082#1086#1085#1095#1077#1085#1086
          end
          object Label24: TLabel
            Left = 21
            Top = 90
            Width = 604
            Height = 13
            Caption = 
              #1090#1086#1074#1072#1088#1086#1074' '#1085#1072'                                                      ' +
              '       '#1088#1091#1073'.                                                '#1082#1086#1087'. ' +
              ' '#1089#1086#1075#1083#1072#1089#1085#1086' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1076#1072#1083#1077#1077' '#1086#1087#1080#1089#1080
          end
          object Label25: TLabel
            Left = 283
            Top = 124
            Width = 94
            Height = 13
            Caption = #1055#1054#1044#1055#1048#1057#1050#1040' '#8470'1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 21
            Top = 140
            Width = 321
            Height = 13
            Caption = 
              #1058#1086#1074#1072#1088#1099' '#1085#1072' '#1089#1091#1084#1084#1091'                                                 ' +
              ' '#1088#1091#1073'.  ('#1087#1088#1086#1087#1080#1089#1100#1102')'
          end
          object Label28: TLabel
            Left = 16
            Top = 160
            Width = 250
            Height = 13
            Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1090#1086#1074#1072#1088#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1085#1072#1084#1080' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085' '#1079#1072
          end
          object Label29: TLabel
            Left = 16
            Top = 182
            Width = 315
            Height = 13
            Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1087#1077#1088#1077#1076' '#1076#1072#1085#1085#1086#1081' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103' '#1087#1088#1086#1074#1077#1076#1077#1085#1072' '#1073#1099#1083#1072' '#1085#1072
          end
          object Label1: TLabel
            Left = 21
            Top = 56
            Width = 57
            Height = 13
            Caption = #1085#1072#1083#1080#1095#1085#1099#1084#1080
          end
          object Label2: TLabel
            Left = 261
            Top = 60
            Width = 20
            Height = 13
            Caption = #1088#1091#1073'.'
          end
          object Label3: TLabel
            Left = 424
            Top = 60
            Width = 21
            Height = 13
            Caption = #1082#1086#1087'.'
          end
          object Label4: TLabel
            Left = 451
            Top = 160
            Width = 3
            Height = 13
            Caption = '-'
          end
          object InventoryBasisEdit: TEdit
            Left = 184
            Top = 2
            Width = 445
            Height = 21
            TabOrder = 0
          end
          object InvBeginCasheDTP: TDateTimePicker
            Left = 284
            Top = 24
            Width = 80
            Height = 21
            CalAlignment = dtaLeft
            Date = 37796.6502570139
            Time = 37796.6502570139
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkTime
            ParseInput = False
            TabOrder = 1
          end
          object InvBEGINCASHEDE: TDateEdit
            Left = 184
            Top = 24
            Width = 100
            Height = 21
            CheckOnExit = True
            NumGlyphs = 2
            TabOrder = 2
          end
          object InvEndCasheDE: TDateEdit
            Left = 448
            Top = 24
            Width = 100
            Height = 21
            CheckOnExit = True
            NumGlyphs = 2
            TabOrder = 3
          end
          object InvEndCasheDTP: TDateTimePicker
            Left = 548
            Top = 24
            Width = 80
            Height = 21
            CalAlignment = dtaLeft
            Date = 37796.6502570139
            Time = 37796.6502570139
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkTime
            ParseInput = False
            TabOrder = 4
          end
          object InvSumCasheRubEdit: TEdit
            Left = 120
            Top = 86
            Width = 130
            Height = 21
            TabOrder = 5
            OnKeyPress = InvSumCasheRubEditKeyPress
          end
          object InvSumCasheKopEdit: TEdit
            Left = 292
            Top = 86
            Width = 130
            Height = 21
            TabOrder = 6
            OnKeyPress = InvSumCasheRubEditKeyPress
          end
          object SumGoodsEdit: TEdit
            Left = 120
            Top = 136
            Width = 130
            Height = 21
            TabOrder = 7
          end
          object InvLastGoodsReportDE: TDateEdit
            Left = 344
            Top = 156
            Width = 100
            Height = 21
            CheckOnExit = True
            NumGlyphs = 2
            TabOrder = 8
          end
          object InvLastInventoryDE: TDateEdit
            Left = 344
            Top = 178
            Width = 100
            Height = 21
            CheckOnExit = True
            NumGlyphs = 2
            TabOrder = 9
          end
          object InvSumBuhRubEdit: TEdit
            Left = 120
            Top = 56
            Width = 130
            Height = 21
            TabOrder = 10
          end
          object InvSumBuhKopEdit: TEdit
            Left = 292
            Top = 56
            Width = 130
            Height = 21
            TabOrder = 11
          end
          object InvLastGoodsReportEndDE: TDateEdit
            Left = 464
            Top = 156
            Width = 100
            Height = 21
            NumGlyphs = 2
            TabOrder = 12
          end
          object SynccxCB: TcxCheckBox
            Left = 24
            Top = 224
            Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1080#1088#1086#1074#1072#1090#1100' '#1089' 1'#1057
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            TabOrder = 13
            Width = 145
          end
          object RegradingcxCB: TcxCheckBox
            Left = 176
            Top = 224
            Caption = #1055#1077#1088#1077#1089#1086#1088#1090
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            TabOrder = 14
            Width = 145
          end
        end
      end
    end
    object ReportInventoryTS1: TTabSheet
      Caption = #1060#1086#1088#1084#1072' '#8470'2'
      ImageIndex = 3
      object InvPanelF2Top: TPanel
        Left = 0
        Top = 0
        Width = 816
        Height = 505
        Align = alClient
        Color = clWhite
        TabOrder = 0
        object Label30: TLabel
          Left = 283
          Top = 4
          Width = 94
          Height = 13
          Caption = #1055#1054#1044#1055#1048#1057#1050#1040' '#8470'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 16
          Top = 24
          Width = 593
          Height = 65
          Caption = 
            #1053#1072#1089#1090#1086#1103#1097#1072#1103' '#1086#1087#1080#1089#1100'-'#1072#1082#1090' '#1085#1072#1095#1072#1090#1072' '#1089' '#1087#1086#1088#1103#1076#1082#1086#1074#1086#1075#1086' '#1085#1086#1084#1077#1088#1072' '#1086#1076#1080#1085' '#1080' '#1079#1072#1082#1086#1085#1095#1077#1085#1072 +
            ' '#1087#1086#1088#1103#1076#1082#1086#1074#1099#1084' '#1085#1086#1084#1077#1088#1086#1084' '#1089' '#1086#1073#1097#1080#1084' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086#1084' '#13#10#13#10#1090#1086#1074#1072#1088#1085#1099#1093' '#1077#1076#1080#1085#1080#1094'     ' +
            '                            '#1074' '#1090#1086#1084' '#1095#1080#1089#1083#1077'                         ' +
            '        '#1073#1091#1090'. '#1085#1077#1076#1086#1089#1076#1072#1095',                                 '#1073#1091#1090'. '#1080#1079#1083#1080 +
            #1096#1082#1086#1074#13#10#13#10#1080' '#1086#1073#1097#1077#1081' '#1089#1091#1084#1084#1086#1074#1086#1081' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1090#1086#1074#1072#1088#1086#1074
        end
        object Label32: TLabel
          Left = 283
          Top = 108
          Width = 94
          Height = 13
          Caption = #1055#1054#1044#1055#1048#1057#1050#1040' '#8470'3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 236
          Top = 128
          Width = 289
          Height = 39
          Caption = #1062#1077#1085#1085#1086#1089#1090#1080', '#1087#1077#1088#1077#1095#1080#1089#1083#1077#1085#1085#1099#1077' '#1074' '#1086#1087#1080#1089#1080'-'#1072#1082#1090#1077' '#1085#1072' '#1086#1073#1097#1091#1102' '#1089#1091#1084#1084#1091#13#10#13#10#1085#1072#1093#1086#1076#1103#1090#1089#1103
        end
        object InvNumberEdit: TEdit
          Left = 106
          Top = 48
          Width = 95
          Height = 21
          TabOrder = 0
          OnKeyPress = InvSumCasheRubEditKeyPress
        end
        object InventorySumEdit: TEdit
          Left = 220
          Top = 74
          Width = 389
          Height = 21
          TabOrder = 1
        end
        object InvRemovingBottlesEdit: TEdit
          Left = 264
          Top = 48
          Width = 95
          Height = 21
          TabOrder = 2
          OnKeyPress = InvSumCasheRubEditKeyPress
        end
        object InvBuyBottlesEdit: TEdit
          Left = 436
          Top = 48
          Width = 95
          Height = 21
          TabOrder = 3
          OnKeyPress = InvSumCasheRubEditKeyPress
        end
      end
    end
    object ReportInventoryTS2: TTabSheet
      Caption = #1060#1086#1088#1084#1072' '#8470'3'
      ImageIndex = 4
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 816
        Height = 505
        HorzScrollBar.Visible = False
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        object InvPanelF3Top: TPanel
          Left = 0
          Top = 0
          Width = 812
          Height = 133
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object Label34: TLabel
            Left = 292
            Top = 8
            Width = 38
            Height = 16
            Caption = #1040' '#1050' '#1058
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 16
            Top = 32
            Width = 93
            Height = 13
            Caption = #1057#1095#1077#1090#1085#1099#1081' '#1088#1072#1073#1086#1090#1085#1080#1082
          end
          object Label36: TLabel
            Left = 16
            Top = 56
            Width = 142
            Height = 13
            Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1099#1081' '#1087#1088#1086#1074#1077#1088#1103#1102#1097#1080#1081
          end
          object Label37: TLabel
            Left = 244
            Top = 76
            Width = 197
            Height = 13
            Caption = 'I. '#1055#1086' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1086#1085#1085#1086#1081' '#1086#1087#1080#1089#1080
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label38: TLabel
            Left = 264
            Top = 116
            Width = 147
            Height = 13
            Caption = 'II. '#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1087#1088#1086#1074#1077#1088#1082#1080
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 16
            Top = 96
            Width = 528
            Height = 13
            Caption = 
              #1079#1085#1072#1095#1080#1090#1089#1103' '#1094#1077#1085#1085#1086#1089#1090#1077#1081' '#1074' '#1085#1072#1083#1080#1095#1080#1080' '#1085#1072' '#1089#1091#1084#1084#1091'                           ' +
              '                     '#1088#1091#1073'.                                       ' +
              '       '#1082#1086#1087'.'
          end
          object InvCounterMenEdit: TEdit
            Left = 176
            Top = 28
            Width = 457
            Height = 21
            TabOrder = 0
          end
          object InvGeneralMenEdit: TEdit
            Left = 176
            Top = 52
            Width = 457
            Height = 21
            TabOrder = 1
          end
          object InvSumRubEdit: TEdit
            Left = 232
            Top = 92
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object InvSumKopEdit: TEdit
            Left = 396
            Top = 92
            Width = 121
            Height = 21
            TabOrder = 3
          end
        end
        object InventoryDetailcxGrid: TcxGrid
          Left = 0
          Top = 133
          Width = 812
          Height = 368
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfFlat
          object InventoryDetailcxGridDBTV: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = InventoryDetailDS
            DataController.KeyFieldNames = 'DRINKKINDID'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = InventoryDetailcxGridDBTVSUMPRICE
              end
              item
                Kind = skSum
                Position = spFooter
                Column = InventoryDetailcxGridDBTVBOTTLECOUNT
              end
              item
                Kind = skCount
                Position = spFooter
                Column = InventoryDetailcxGridDBTVDRINKID
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Column = InventoryDetailcxGridDBTVSUMPRICE
              end
              item
                Kind = skSum
                Column = InventoryDetailcxGridDBTVBOTTLECOUNT
              end
              item
                Kind = skCount
                Column = InventoryDetailcxGridDBTVDRINKID
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.InvertSelect = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object InventoryDetailcxGridDBTVDRINKID: TcxGridDBColumn
              DataBinding.FieldName = 'DRINKID'
              Width = 72
            end
            object InventoryDetailcxGridDBTVDRINKKINDID: TcxGridDBColumn
              DataBinding.FieldName = 'DRINKKINDID'
              Width = 70
            end
            object InventoryDetailcxGridDBTVNAME: TcxGridDBColumn
              DataBinding.FieldName = 'NAME'
              Width = 184
            end
            object InventoryDetailcxGridDBTVBOTTLECOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'BOTTLECOUNT'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 124
            end
            object InventoryDetailcxGridDBTVPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'PRICE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.00;-,0.00'
              Width = 124
            end
            object InventoryDetailcxGridDBTVSUMPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'SUMPRICE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.00;-,0.00'
              Width = 122
            end
            object InventoryDetailcxGridDBTVISREADY: TcxGridDBColumn
              DataBinding.FieldName = 'ISREADY'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 114
            end
            object InventoryDetailcxGridDBTVISMAKE: TcxGridDBColumn
              DataBinding.FieldName = 'ISMAKE'
              Visible = False
              Width = 65
            end
          end
          object InventoryDetailcxGridLevel: TcxGridLevel
            GridView = InventoryDetailcxGridDBTV
          end
        end
      end
    end
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 535
    Width = 824
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object ApplaycxButton: TcxButton
      Left = 441
      Top = 8
      Width = 100
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = ApplaycxButtonClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000430B0000430B00000000000000000000FF00FFFF00FF
        6D422F6D422F6D422F6D422F6D422F6D422F6D422F6D422F6D422F6D422F6D42
        2F6D422F6D422F6D422FFF00FFCE726FD19792CB8E8A715A48C0B2ABC4BCB8CA
        C1BCCAC1BCCAC1BCCAC1BC8C76679443409443409443406D422FFF00FFCE726F
        D79F9BD19792715A482E1F185F5046FFFFFFFFFFFFFFFFFFF0E4DE8C76679747
        449443409443406D422FFF00FFCE726FDDA8A3D79F9B715A4800000036241BFF
        FFFFF7F1EEF0E4DEE1CABD8C76679E504D9747449443406D422FFF00FFCE726F
        E3B0ABDDA8A3715A48715A48715A48715A48715A48715A48715A48715A48A459
        569E504D9747446D422FFF00FFCE726FEDBDB8E7B5B0E0ACA7DAA49FD49B97CB
        8E8AC58682BF7E79B97571B26B68AB625FA459569E504D6D422FFF00FFCE726F
        F0C1BCEDBDB8E7B5B0E0ACA7DAA49FD49B97CE938EC88A86C2827EBC7975B26B
        68AB625FA459566D422FFF00FFCE726FF0C1BCF0C1BCC8635CC8635CC8635CC8
        635CC8635CC8635CC8635CC8635CC8635CB5706CAE67636D422FFF00FFCE726F
        F0C1BCC8635CFAF5F3F6EEEAF2E7E2EEE2DAEBDCD3E7D6CBE4D0C4E1CABDE1CA
        BDC8635CB5706C6D422FFF00FFCE726FF0C1BCC8635CFFFFFFFCF8F7F8F1EEF4
        EAE6F0E4DEECDFD6E9D9CFE6D3C8E2CDC0C8635CBC79756D422FFF00FFCE726F
        F0C1BCC8635CFFFFFFFFFFFFFCF8F7F8F1EEF4EAE6F0E4DEECDFD6E9D9CFE6D3
        C8C8635CC2827E6D422FFF00FFCE726FF0C1BCC8635CFFFFFFFFFFFFFFFFFFFC
        F8F7F8F1EEF4EAE6F0E4DEECDFD6E9D9CFC8635CC88A866D422FFF00FFCE726F
        F0C1BCC8635CFFFFFFFFFFFFFFFFFFFFFFFFFCF8F7F8F1EEF4EAE6F0E4DEECDF
        D6C8635CD197926D422FFF00FFCE726FF0C1BCC8635CFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFCF8F7F8F1EEF4EAE6F0E4DEC8635C0000006D422FFF00FFCE726F
        F0C1BCC8635CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF8F7F8F1EEF4EA
        E6C8635CC88A866D422FFF00FFCE726FCE726FCE726FCE726FCE726FCE726FCE
        726FCE726FCE726FCE726FCE726FCE726FCE726FCE726FCE726F}
      LookAndFeel.Kind = lfFlat
    end
    object CancelcxButton: TcxButton
      Left = 546
      Top = 8
      Width = 100
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = CancelcxButtonClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000D30F0000D30F00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF9A605D683030683030683030FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF906060683030683030A35651A95B55A4
        5B54683030683030683030683030683030683030683030683030FF00FF906060
        A25450BB655FBA645EB6625DB2605AA65C55683030F09190F09190F09190F091
        90F09190F09190683030FF00FF906060C56965C36863BF6661BB645FB7625DA8
        5D56683030004B00004B00004B00004E01285C17F09190683030FF00FF906060
        C96B67C76A66C16863B4615CB05E59A95D56683030005102004B00004B000565
        0D2C6C21F09190683030FF00FF906060CC6D69CB6C68C4706DDFB4B29C5F5CA0
        5953683030025A06005102045F0A0C801E2F7728F09190683030FF00FF906060
        D06F6BCE6D6ADFB4B2FDF1F1DFB4B2A35A5468303004640C125B07287114118B
        26347224F09190683030FF00FF906060D5726ED3706CD0736EDFB4B2C5716DAF
        615B68303011690F8C8124D3A441357416D3A441F09190683030FF00FF906060
        DA7471D7736FD3716CD06F6BCC6D69B3635D683030708029F8C080F8C080F8C0
        80F8C080F09190683030FF00FF906060DD7674DB7572D8736FD4716DD06F6BB4
        645D683030F8C080F8C080F8C080F8C080F8C080F09190683030FF00FF906060
        E37876DF7674DC7572D8736FD4716DB7655E683030F8C080F8C080F8C080B1B1
        A229A5F8F09190683030FF00FF906060E67A79E47977E07775DD7673D97471B9
        6660683030F8C080F8C080B1B1A222B8F729A5F8F09190683030FF00FF906060
        E07876E47978E47977E07775DD7573BB6761683030F8C080B1B1A21CC4F81CC4
        F822B8F7F09190683030FF00FFFF00FFB07068906060C76D6AC76D6AD47270B9
        6661683030906060906060906060906060906060906060906060FF00FFFF00FF
        FF00FFFF00FFB07068906060C76D6AC76D6A683030FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB0706890
        6060906060FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      LookAndFeel.Kind = lfFlat
    end
  end
  object InventoryDetailDS: TDataSource
    DataSet = InventoryDetailCDS
    Left = 58
    Top = 343
  end
  object InventoryDetailCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'InventoryDetailDSP'
    Left = 24
    Top = 344
    object InventoryDetailCDSDRINKID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
      FieldName = 'DRINKID'
    end
    object InventoryDetailCDSDRINKKINDID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'DRINKKINDID'
    end
    object InventoryDetailCDSNAME: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldName = 'NAME'
      Size = 256
    end
    object InventoryDetailCDSPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
    end
    object InventoryDetailCDSBOTTLECOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'BOTTLECOUNT'
    end
    object InventoryDetailCDSSUMPRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMPRICE'
    end
    object InventoryDetailCDSDOCTYPENAME: TStringField
      FieldName = 'DOCTYPENAME'
      Size = 64
    end
    object InventoryDetailCDSISREADY: TSmallintField
      DisplayLabel = #1055#1088#1086#1074#1077#1076#1077#1085#1086
      FieldName = 'ISREADY'
    end
    object InventoryDetailCDSISMAKE: TSmallintField
      FieldName = 'ISMAKE'
    end
    object InventoryDetailCDSREMPRICE: TFloatField
      FieldName = 'REMPRICE'
    end
    object InventoryDetailCDSREMBOTTLECOUNT: TFloatField
      FieldName = 'REMBOTTLECOUNT'
    end
    object InventoryDetailCDSREMSUMPRICE: TFloatField
      FieldName = 'REMSUMPRICE'
    end
    object InventoryDetailCDSBUYPRICE: TFloatField
      FieldName = 'BUYPRICE'
    end
    object InventoryDetailCDSBUYBOTTLECOUNT: TFloatField
      FieldName = 'BUYBOTTLECOUNT'
    end
    object InventoryDetailCDSBUYSUMPRICE: TFloatField
      FieldName = 'BUYSUMPRICE'
    end
  end
end
