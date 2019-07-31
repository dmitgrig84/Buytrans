object fRetailAudit: TfRetailAudit
  Left = 276
  Top = 164
  Width = 1305
  Height = 675
  Caption = 'fRetailAudit'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label48: TLabel
    Left = 352
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Label48'
  end
  object InventoryBottomPanel: TPanel
    Left = 0
    Top = 619
    Width = 1297
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object RxSpeedButton1: TRxSpeedButton
      Left = 128
      Top = 2
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
    end
    object InvSaveBitBtn: TBitBtn
      Left = 508
      Top = 2
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1103#1077#1090' '#1085#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = InvSaveBitBtnClick
    end
    object InvCancelBitBtn: TBitBtn
      Left = 432
      Top = 2
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Enabled = False
      TabOrder = 1
      OnClick = InvCancelBitBtnClick
    end
    object InvUpdateBitBtn: TBitBtn
      Left = 696
      Top = 2
      Width = 75
      Height = 25
      Hint = #1057#1086#1093#1088#1072#1085#1103#1077#1090' '#1074#1089#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074' '#1091#1078#1077' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1077#1084' '#1076#1086#1082#1091#1084#1077#1085#1090#1077
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Visible = False
      OnClick = InvUpdateBitBtnClick
    end
    object InvMakeBitBtn: TBitBtn
      Left = 356
      Top = 2
      Width = 75
      Height = 25
      Hint = 
        #1055#1088#1086#1074#1086#1076#1080#1090' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1080' '#1087#1088#1077#1076#1086#1090#1074#1088#1072#1097#1072#1077#1090' '#1074#1089#1077' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1087#1086' '#1080#1079#1084#1077#1085#1077#1085#1080#1102' '#1076#1086#1082#1091 +
        #1084#1077#1085#1090#1072
      Caption = #1055#1088#1086#1074#1077#1089#1090#1080
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object InvCreateBitBtn: TBitBtn
      Left = 280
      Top = 2
      Width = 75
      Height = 25
      Hint = #1057#1086#1079#1076#1072#1077#1090' '#1085#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = #1057#1086#1079#1076#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = InvCreateBitBtnClick
    end
    object InvDeleteBitBtn: TBitBtn
      Left = 204
      Top = 2
      Width = 75
      Height = 25
      Hint = #1059#1076#1072#1083#1103#1077#1090' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = InvDeleteBitBtnClick
    end
    object InvPrintBitBtn: TBitBtn
      Left = 4
      Top = 2
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 6
      Visible = False
    end
  end
  object InventoryPC: TPageControl
    Left = 0
    Top = 0
    Width = 1297
    Height = 619
    ActivePage = Inventory
    Align = alClient
    TabHeight = 20
    TabIndex = 4
    TabOrder = 3
    OnChange = InventoryPCChange
    OnChanging = InventoryPCChanging
    object MainInventoryTS: TTabSheet
      Caption = #1043#1083#1072#1074#1085#1072#1103
      object InventorycxGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 1289
        Height = 589
        Hint = #1044#1074#1086#1081#1085#1086#1077' '#1085#1072#1078#1072#1090#1080#1077' '#1084#1099#1096#1080' '#1087#1088#1080#1074#1086#1076#1080#1090' '#13#10#1074' '#1088#1077#1078#1080#1084' '#1087#1088#1086#1089#1084#1086#1090#1088#1072'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
        Align = alClient
        PopupMenu = InventoryPrnPMenu
        TabOrder = 2
        LookAndFeel.Kind = lfFlat
        object InventorycxGridDBTV: TcxGridDBTableView
          OnDblClick = InventorycxGridDBTVDblClick
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = InventorycxGridDBTVCustomDrawCell
          DataController.DataSource = InventoryDS
          DataController.DetailKeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object InventorycxGridDBTVMAKE: TcxGridDBColumn
            DataBinding.FieldName = 'MAKE'
            Visible = False
          end
          object InventorycxGridDBTVID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Width = 54
          end
          object InventorycxGridDBTVNAME: TcxGridDBColumn
            DataBinding.FieldName = 'NAME'
            Width = 103
          end
          object InventorycxGridDBTVPRESENT: TcxGridDBColumn
            DataBinding.FieldName = 'PRESENT'
            Width = 82
          end
          object InventorycxGridDBTVSQNNO: TcxGridDBColumn
            DataBinding.FieldName = 'SQNNO'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 73
          end
          object InventorycxGridDBTVINVENTORYSUM: TcxGridDBColumn
            DataBinding.FieldName = 'INVENTORYSUM'
            Visible = False
          end
          object InventorycxGridDBTVUSERNAME: TcxGridDBColumn
            DataBinding.FieldName = 'USERNAME'
            Width = 126
          end
          object InventorycxGridDBTVBASIS: TcxGridDBColumn
            DataBinding.FieldName = 'BASIS'
            Width = 152
          end
          object InventorycxGridDBTVWHOINSERT: TcxGridDBColumn
            DataBinding.FieldName = 'WHOINSERT'
            Width = 268
          end
          object InventorycxGridDBTVSTORFR: TcxGridDBColumn
            DataBinding.FieldName = 'STORFR'
            Visible = False
          end
          object InventorycxGridDBTVDEPARTMENTID: TcxGridDBColumn
            DataBinding.FieldName = 'DEPARTMENTID'
            Visible = False
          end
          object InventorycxGridDBTVBESTID: TcxGridDBColumn
            DataBinding.FieldName = 'BESTID'
            Width = 93
          end
        end
        object InventorycxGL: TcxGridLevel
          GridView = InventorycxGridDBTV
        end
      end
      object InvPrintPanel: TPanel
        Left = 158
        Top = 64
        Width = 577
        Height = 281
        BorderStyle = bsSingle
        TabOrder = 0
        Visible = False
        object Label40: TLabel
          Left = 62
          Top = 16
          Width = 125
          Height = 26
          Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1099#1081' '#13#10#1088#1077#1078#1080#1084' '#1087#1077#1095#1072#1090#1080' '#1073#1083#1072#1085#1082#1086#1074
        end
        object Label42: TLabel
          Left = 234
          Top = 74
          Width = 113
          Height = 26
          Caption = #1092#1086#1088#1084' '#1073#1083#1072#1085#1082#1086#1074' '#1091#1089#1090#1072#1085#1086'-'#13#10#1074#1080#1090#1077' '#1076#1072#1085#1085#1091#1102' '#1075#1072#1083#1086#1095#1082#1091
        end
        object InvCountF3InfoLabel: TLabel
          Left = 231
          Top = 104
          Width = 116
          Height = 26
          Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083'-'#1074#1086' '#1083#1080#1089#1090#1086#1074#13#10#1076#1083#1103' '#1087#1077#1095#1072#1090#1080' '#1092#1086#1088#1084#1099' '#8470'3'
          Enabled = False
        end
        object InvCountF3Label: TLabel
          Left = 310
          Top = 136
          Width = 37
          Height = 13
          Caption = #1051#1080#1089#1090#1086#1074
          Enabled = False
        end
        object Label41: TLabel
          Left = 396
          Top = 76
          Width = 121
          Height = 39
          Caption = #1085#1086#1075#1086'  '#1087#1088#1086#1089#1084#1086#1090#1088#1072'  '#1092#1086#1088#1084' '#13#10#1073#1083#1072#1085#1082#1086#1074'  '#1091#1089#1090#1072#1085#1086#1074#1080#1090#1077' '#13#10#1076#1072#1085#1085#1091#1102' '#1075#1072#1083#1086#1095#1082#1091
        end
        object InvPrintFormRadioGroup: TRadioGroup
          Left = 46
          Top = 44
          Width = 141
          Height = 125
          Caption = #1042#1099#1073#1086#1088' '#1087#1077#1095#1072#1090#1085#1099#1093' '#1092#1086#1088#1084
          ItemIndex = 0
          Items.Strings = (
            #1055#1077#1095#1072#1090#1072#1090#1100' '#1074#1089#1077' '#1092#1086#1088#1084#1099
            #1055#1077#1095#1072#1090#1072#1090#1100' '#1092#1086#1088#1084#1091' '#8470'1'
            #1055#1077#1095#1072#1090#1072#1090#1100' '#1092#1086#1088#1084#1091' '#8470'2'
            #1055#1077#1095#1072#1090#1072#1090#1100' '#1092#1086#1088#1084#1091' '#8470'3')
          TabOrder = 0
        end
        object InvEmptyPrintCheckBox: TCheckBox
          Left = 226
          Top = 52
          Width = 121
          Height = 25
          Caption = #1044#1083#1103' '#1087#1077#1095#1072#1090#1080' '#1087#1091#1089#1090#1099#1093
          TabOrder = 1
        end
        object InvCountF3Edit: TEdit
          Left = 230
          Top = 134
          Width = 77
          Height = 21
          Enabled = False
          TabOrder = 2
          Text = '2'
        end
        object InvPreviewCheckBox: TCheckBox
          Left = 394
          Top = 60
          Width = 133
          Height = 17
          Caption = #1044#1083#1103' '#1087#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100'-'
          TabOrder = 3
        end
        object bClose: TButton
          Left = 174
          Top = 220
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 4
        end
        object bPrintAct: TButton
          Left = 290
          Top = 220
          Width = 75
          Height = 25
          Caption = #1055#1077#1095#1072#1090#1100
          TabOrder = 5
        end
      end
      object InventoryBestPanel: TPanel
        Left = 204
        Top = 114
        Width = 493
        Height = 149
        BevelInner = bvRaised
        BevelOuter = bvSpace
        BorderStyle = bsSingle
        TabOrder = 1
        Visible = False
        object IBLabel: TLabel
          Left = 10
          Top = 30
          Width = 469
          Height = 27
          Alignment = taCenter
          AutoSize = False
          Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1087#1086'159 '#1088#1077#1074#1080#1079#1080#1103#1084'?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ButtonYes: TButton
          Left = 126
          Top = 86
          Width = 75
          Height = 25
          Caption = #1044#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ButtonExit: TButton
          Left = 268
          Top = 86
          Width = 75
          Height = 25
          Caption = #1053#1077#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object ReportInventoryTS0: TTabSheet
      Caption = #1060#1086#1088#1084#1072' '#8470'1'
      ImageIndex = 2
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 1289
        Height = 589
        Align = alClient
        TabOrder = 0
        object InvPanelF1Top: TPanel
          Left = 0
          Top = 0
          Width = 1285
          Height = 133
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object Label16: TLabel
            Left = 66
            Top = 6
            Width = 31
            Height = 13
            Caption = #1057#1082#1083#1072#1076
          end
          object Label17: TLabel
            Left = 104
            Top = 26
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
            Left = 260
            Top = 40
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
          object Label20: TLabel
            Left = 16
            Top = 72
            Width = 272
            Height = 52
            Caption = 
              '                 '#1057' '#1086' '#1089' '#1090' '#1072' '#1074'   '#1082' '#1086' '#1084' '#1080' '#1089' '#1089' '#1080' '#1080':'#13#10#1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100' ('#1092 +
              #1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086' '#1080' '#1076#1086#1083#1078#1085#1086#1089#1090#1100')'#13#10#13#10#1063#1083#1077#1085#1099' :('#1092#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077 +
              #1089#1090#1074#1086' '#1080' '#1076#1086#1083#1078#1085#1086#1089#1090#1100')'
          end
          object InvBevel: TBevel
            Left = 12
            Top = 104
            Width = 619
            Height = 26
            Shape = bsFrame
          end
          object InventorySpdBtnPlus: TSpeedButton
            Tag = -1
            Left = 588
            Top = 106
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
            Top = 106
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
            Left = 348
            Top = 26
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
          object Label44: TLabel
            Left = 290
            Top = 8
            Width = 44
            Height = 13
            AutoSize = False
            Caption = #1052#1072#1075#1072#1079#1080#1085
          end
          object InventoryDateEdit: TDateEdit
            Left = 276
            Top = 52
            Width = 121
            Height = 21
            NumGlyphs = 2
            TabOrder = 0
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
          end
          object StorageInventoryRxDBLookupCombo: TRxDBLookupCombo
            Left = 106
            Top = 4
            Width = 169
            Height = 21
            DropDownCount = 8
            LookupField = 'ID'
            LookupDisplay = 'NAME'
            LookupSource = InvStorageDS
            TabOrder = 1
            OnChange = StorageInventoryRxDBLookupComboChange
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
          end
          object InvPredsedatelEdit: TEdit
            Left = 292
            Top = 82
            Width = 337
            Height = 21
            Color = clWhite
            TabOrder = 2
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
            OnKeyPress = InvPredsedatelEditKeyPress
          end
          object InventoryEdit: TEdit
            Tag = -1
            Left = 292
            Top = 106
            Width = 297
            Height = 21
            TabOrder = 3
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
            OnKeyPress = InvPredsedatelEditKeyPress
            OnMouseMove = InventoryEditMouseMove
          end
          object InvFirmLCB: TRxDBLookupCombo
            Left = 350
            Top = 4
            Width = 401
            Height = 21
            DropDownCount = 8
            LookupField = 'ID'
            LookupDisplay = 'FNAME'
            LookupSource = InvFirmDS
            TabOrder = 4
            OnChange = InvFirmLCBChange
          end
          object InventorySQNNOcxME: TcxMaskEdit
            Left = 368
            Top = 24
            Properties.MaxLength = 16
            Properties.OnChange = InventorySQNNOcxMEPropertiesChange
            TabOrder = 5
            Width = 89
          end
        end
        object InvPanelF1Midle: TPanel
          Left = 0
          Top = 133
          Width = 1285
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
          object InvEmplDBLkpCmb: TRxDBLookupCombo
            Tag = -1
            Left = 292
            Top = 2
            Width = 297
            Height = 21
            DropDownCount = 8
            LookupField = 'ID'
            LookupDisplay = 'NAME'
            LookupSource = InvEmployeeDS
            TabOrder = 0
            OnChange = InvEmplDBLkpCmbChange
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
            OnMouseMove = InventoryEditMouseMove
          end
        end
        object InvPanelF1Bottom: TPanel
          Left = 0
          Top = 159
          Width = 1285
          Height = 153
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
            Top = 50
            Width = 604
            Height = 13
            Caption = 
              #1090#1086#1074#1072#1088#1086#1074' '#1085#1072'                                                      ' +
              '       '#1088#1091#1073'.                                                '#1082#1086#1087'. ' +
              ' '#1089#1086#1075#1083#1072#1089#1085#1086' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1076#1072#1083#1077#1077' '#1086#1087#1080#1089#1080
          end
          object Label25: TLabel
            Left = 283
            Top = 68
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
            Top = 84
            Width = 321
            Height = 13
            Caption = 
              #1058#1086#1074#1072#1088#1099' '#1085#1072' '#1089#1091#1084#1084#1091'                                                 ' +
              ' '#1088#1091#1073'.  ('#1087#1088#1086#1087#1080#1089#1100#1102')'
          end
          object Label27: TLabel
            Left = 348
            Top = 84
            Width = 38
            Height = 13
            Caption = 'Label27'
            Visible = False
          end
          object Label28: TLabel
            Left = 16
            Top = 104
            Width = 250
            Height = 13
            Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1090#1086#1074#1072#1088#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1085#1072#1084#1080' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085' '#1079#1072
          end
          object Label29: TLabel
            Left = 16
            Top = 126
            Width = 315
            Height = 13
            Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1087#1077#1088#1077#1076' '#1076#1072#1085#1085#1086#1081' '#1080#1085#1074#1077#1085#1090#1086#1088#1080#1079#1072#1094#1080#1103' '#1087#1088#1086#1074#1077#1076#1077#1085#1072' '#1073#1099#1083#1072' '#1085#1072
          end
          object InventoryBasisEdit: TEdit
            Left = 184
            Top = 2
            Width = 445
            Height = 21
            TabOrder = 0
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
            OnKeyPress = InvPredsedatelEditKeyPress
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
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
          end
          object InvBEGINCASHEDE: TDateEdit
            Left = 184
            Top = 24
            Width = 100
            Height = 21
            CheckOnExit = True
            NumGlyphs = 2
            TabOrder = 2
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
          end
          object InvEndCasheDE: TDateEdit
            Left = 448
            Top = 24
            Width = 100
            Height = 21
            CheckOnExit = True
            NumGlyphs = 2
            TabOrder = 3
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
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
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
          end
          object InvSumCasheRubEdit: TEdit
            Left = 120
            Top = 46
            Width = 130
            Height = 21
            TabOrder = 5
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
            OnKeyPress = InvSumCasheRubEditKeyPress
          end
          object InvSumCasheKopEdit: TEdit
            Left = 292
            Top = 46
            Width = 130
            Height = 21
            TabOrder = 6
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
            OnKeyPress = InvSumCasheRubEditKeyPress
          end
          object SumGoodsEdit: TEdit
            Left = 120
            Top = 80
            Width = 130
            Height = 21
            TabOrder = 7
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
            OnKeyPress = SumGoodsEditKeyPress
          end
          object InvLastGoodsReportDE: TDateEdit
            Left = 344
            Top = 100
            Width = 100
            Height = 21
            CheckOnExit = True
            NumGlyphs = 2
            TabOrder = 8
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
          end
          object InvLastInventoryDE: TDateEdit
            Left = 344
            Top = 122
            Width = 100
            Height = 21
            CheckOnExit = True
            NumGlyphs = 2
            TabOrder = 9
            OnEnter = InvPredsedatelEditEnter
            OnExit = InvPredsedatelEditExit
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
        Width = 1281
        Height = 578
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
        end
        object InvBuyBottlesEdit: TEdit
          Left = 436
          Top = 48
          Width = 95
          Height = 21
          TabOrder = 3
        end
      end
    end
    object ReportInventoryTS2: TTabSheet
      Caption = #1060#1086#1088#1084#1072' '#8470'3'
      ImageIndex = 4
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 1281
        Height = 578
        HorzScrollBar.Visible = False
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        object InvdxDBGrid: TdxDBGrid
          Left = 0
          Top = 133
          Width = 1277
          Height = 441
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'DRINKKINDID'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 1
          DataSource = InvDetailDS
          Filter.Criteria = {00000000}
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHideFocusRect, edgoUseBitmap]
          object InvdxDBGridDRINKKINDID: TdxDBGridMaskColumn
            Caption = #1050#1086#1076
            DisableEditor = True
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DRINKKINDID'
          end
          object InvdxDBGridNAME: TdxDBGridMaskColumn
            DisableEditor = True
            Width = 269
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NAME'
            SummaryFooterType = cstCount
          end
          object InvdxDBGridBOTTLECOUNT: TdxDBGridMaskColumn
            DisableEditor = True
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BOTTLECOUNT'
            SummaryFooterType = cstSum
            SummaryFooterField = 'BOTTLECOUNT'
            SummaryType = cstSum
          end
          object InvdxDBGridPRICE: TdxDBGridMaskColumn
            DisableEditor = True
            Width = 48
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRICE'
            SummaryFooterField = 'PRICE'
          end
          object InvdxDBGridSUMPRICE: TdxDBGridMaskColumn
            DisableEditor = True
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SUMPRICE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'SUMPRICE'
            SummaryType = cstSum
          end
          object InvdxDBGridISREADY: TdxDBGridCheckColumn
            Alignment = taCenter
            HeaderAlignment = taCenter
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISREADY'
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object InvdxDBGridISMAKE: TdxDBGridMaskColumn
            Alignment = taCenter
            Caption = #1057#1090#1072#1090#1091#1089
            DisableEditor = True
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ISMAKE'
          end
        end
        object InvPanelF3Top: TPanel
          Left = 0
          Top = 0
          Width = 1277
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
      end
    end
    object Inventory: TTabSheet
      Caption = #1056#1077#1074#1080#1079#1080#1103
      ImageIndex = 4
      object cxSplit: TcxSplitter
        Left = 0
        Top = 359
        Width = 1289
        Height = 8
        Cursor = crVSplit
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salBottom
        Control = InventoryCashePanel
      end
      object InventoryCashePanel: TPanel
        Left = 0
        Top = 367
        Width = 1289
        Height = 222
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object InventoryItemcxGrid: TcxGrid
          Left = 0
          Top = 35
          Width = 1289
          Height = 187
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object InventoryItemcxGridDBTV: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = InventoryItemDS
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skCount
                Position = spFooter
              end
              item
                Kind = skCount
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'countitem'
                Column = InventoryItemcxGridDBTVcountitem
              end
              item
                Kind = skSum
                FieldName = 'summa'
                Column = InventoryItemcxGridDBTVsumma
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Footer = fMain.cxStyle1
            object InventoryItemcxGridDBTVinventoryitemtypeid: TcxGridDBColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'inventoryitemtypeid'
            end
            object InventoryItemcxGridDBTVInventoryItemTypeName: TcxGridDBColumn
              Caption = #1055#1088#1080#1095#1080#1085#1072' '#1085#1072#1088#1091#1096#1077#1085#1080#1103
              DataBinding.FieldName = 'InventoryItemTypeName'
              Width = 250
            end
            object InventoryItemcxGridDBTVkoef: TcxGridDBColumn
              Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090
              DataBinding.FieldName = 'koef'
              Width = 74
            end
            object InventoryItemcxGridDBTVcountitem: TcxGridDBColumn
              Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072#1088#1091#1096#1077#1085#1080#1081
              DataBinding.FieldName = 'countitem'
              Width = 110
            end
            object InventoryItemcxGridDBTVinventoryitemtypesumma: TcxGridDBColumn
              Caption = #1062#1077#1085#1072' '#1096#1090#1088#1072#1092#1072
              DataBinding.FieldName = 'inventoryitemtypesumma'
              Width = 80
            end
            object InventoryItemcxGridDBTVsumma: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072' '#1096#1090#1088#1072#1092#1072
              DataBinding.FieldName = 'summa'
              Width = 80
            end
            object InventoryItemcxGridDBTVCOMMENT: TcxGridDBColumn
              Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
              DataBinding.FieldName = 'COMMENT'
              Width = 300
            end
          end
          object InventoryItemcxGL: TcxGridLevel
            GridView = InventoryItemcxGridDBTV
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1289
          Height = 35
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object Label11: TLabel
            Left = 264
            Top = 8
            Width = 172
            Height = 13
            Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090' '#1091#1084#1085#1086#1078#1077#1085#1080#1103' '#1096#1090#1088#1072#1092#1072
          end
          object RefreshBB: TBitBtn
            Left = 2
            Top = 2
            Width = 30
            Height = 28
            Hint = #1054#1073#1085#1086#1074#1080#1090#1100
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = RefreshBBClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
              5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
              025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
              F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
              D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
              D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD6FFFFFF8DC5EB
              279AD48DC5EBFFFFFFFFFFFF8AC9EC1391CF0F90CF0B8ECE078CCD038ACCA0CF
              EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
              A1D7FFFFFFFFFFFF8DC5EBFFFFFFFFFFFFFFFFFFFFFFFF8AC9EC1391CF0F90CF
              0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
              DB43A6DA3FA4D93BA3D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF8AC9EC1391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFE6F2FA4BAADC47A8DB43A6DA3FA4D9FFFFFFFFFFFFFFFFFFFFFFFF8DC5
              EB279AD48DC5EBFFFFFFFFFFFF1793D01391CF0F90CFAED6F0025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC47A8DB43A6DAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF8DC5EB279AD48DC5EBFFFFFF8AC9EC1793D01391CFB3D9
              F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD4CAADC49
              A9DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D9DD5299BD48DC5EBFFFFFF
              1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
              E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED62D
              9DD5299BD42599D32197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF0F8FC64B5E15DB2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D93DA3
              D839A2D835A0D7319ED62D9DD5299BD42599D32197D2C4E1F4025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E1FFFFFF8DC5EB50ACDD4CAADC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF319ED62D9DD5299BD42599D3C9E4
              F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E38DC5EBFF
              FFFF8DC5EB50ACDD8AC9ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35A0D7319ED6
              2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
              E672BBE46BB8E3FFFFFFFFFFFF56AFDE50ACDD8AC9ECFFFFFFFFFFFFFFFFFFFF
              FFFF39A2D835A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF9FCFE7FC1E778BEE672BBE48DC5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF3DA3D839A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE58DC5EBFFFFFF
              FFFFFFFFFFFFFFFFFF8AC9ECFFFFFFFFFFFF43A6DA3FA4D93BA3D837A1D7D6EA
              F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
              BFE675BCE58DC5EBFFFFFFFFFFFF5AB0DF53ADDD8AC9ECFFFFFF47A8DB43A6DA
              3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
              EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
              ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
              FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
              00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
              1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
              AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object InsertBB: TBitBtn
            Left = 33
            Top = 2
            Width = 30
            Height = 28
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = InsertBBClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
              5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
              025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
              F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
              D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
              D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD62F9DD52B9CD5
              279AD48DC5EB8DC5EB8DC5EB1793D01391CF0F90CF0B8ECE078CCD038ACCA0CF
              EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
              A1D7339FD62F9DD52B9CD58DC5EBFFFFFF8DC5EB1B95D11793D01391CF0F90CF
              0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
              DB43A6DA3FA4D93BA3D837A1D7339FD62F9DD58DC5EBFFFFFF8DC5EB1F96D21B
              95D11793D01391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFE6F2FA4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7339FD68DC5EBFFFF
              FF8DC5EB2398D31F96D21B95D11793D01391CF0F90CFAED6F0025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D8
              37A1D78DC5EBFFFFFF8DC5EB279AD42398D31F96D21B95D11793D01391CFB3D9
              F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD8DC5EB8D
              C5EB8DC5EB8DC5EB8DC5EB8DC5EBFFFFFF8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB
              1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
              E056AFDE8DC5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF2197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF0F8FC64B5E15DB2E08DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EBFFFF
              FF8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB2599D32197D2C4E1F4025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E15DB2E056AFDE50ACDD4CAADC
              49A9DB8DC5EBFFFFFF8DC5EB39A2D835A0D7319ED62D9DD5299BD42599D3C9E4
              F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E364B5E15D
              B2E056AFDE50ACDD4CAADC8DC5EBFFFFFF8DC5EB3DA3D839A2D835A0D7319ED6
              2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
              E672BBE46BB8E364B5E15DB2E056AFDE50ACDD8DC5EBFFFFFF8DC5EB41A5D93D
              A3D839A2D835A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF9FCFE7FC1E778BEE672BBE46BB8E364B5E15DB2E056AFDE8DC5EBFFFF
              FF8DC5EB45A7DA41A5D93DA3D839A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE56EB9E367B6E2
              61B3E08DC5EB8DC5EB8DC5EB4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7D6EA
              F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
              BFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA
              3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
              EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
              ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
              FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
              00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
              1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
              AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object EditBB: TBitBtn
            Left = 64
            Top = 2
            Width = 30
            Height = 28
            Hint = #1048#1079#1084#1077#1085#1080#1090#1100
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = EditBBClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
              5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
              025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
              F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
              D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
              D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD62F9DD52B9CD5
              279AD42398D31F96D21B95D11793D01391CF0F90CF0B8ECE078CCD038ACCA0CF
              EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
              A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95D11793D01391CF0F90CF
              0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
              DB43A6DA3FA4D93BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B
              95D11793D01391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFE6F2FA4BAADC47A8DB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5
              EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB1391CF0F90CFAED6F0025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC8DC5EBFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEEFA1793D01391CFB3D9
              F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD8DC5EBFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEEFA
              1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
              E056AFDE50ACDD8DC5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFDCEEFA2599D32197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF0F8FC64B5E15DB2E056AFDE50ACDD8DC5EBFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFDCEEFA2D9DD5299BD42599D32197D2C4E1F4025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E15DB2E056AFDE50ACDD8DC5EB
              FFFFFFFFFFFFFFFFFFFFFFFFDCEEFA35A0D7319ED62D9DD5299BD42599D3C9E4
              F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E364B5E15D
              B2E056AFDE50ACDD8DC5EBFFFFFFFFFFFFDCEEFA3DA3D839A2D835A0D7319ED6
              2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
              E672BBE46BB8E364B5E15DB2E056AFDE50ACDD8DC5EBDCEEFA45A7DA41A5D93D
              A3D839A2D835A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF9FCFE7FC1E778BEE672BBE46BB8E364B5E15DB2E056AFDE50ACDD4CAA
              DC49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE56EB9E367B6E2
              61B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7D6EA
              F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
              BFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA
              3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
              EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
              ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
              FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
              00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
              1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
              AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object UpdateBB: TBitBtn
            Left = 126
            Top = 2
            Width = 30
            Height = 28
            Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = UpdateBBClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000230B0000230B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
              5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
              025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
              F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
              D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
              D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD62F9DD52B9CD5
              279AD42398D31F96D21B95D11793D01391CF0F90CF0B8ECE078CCD038ACCA0CF
              EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
              A1D7339FD68DC5EB2B9CD5279AD42398D31F96D21B95D11793D01391CF0F90CF
              0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
              DB43A6DA3FA4D93BA3D88DC5EBFFFFFF8DC5EB2B9CD5279AD42398D31F96D21B
              95D11793D01391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFE6F2FA4BAADC47A8DB43A6DA8DC5EBFFFFFFFFFFFFFFFFFF8DC5EB2B9C
              D5279AD42398D31F96D21B95D11793D01391CF0F90CFAED6F0025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC8DC5EBFFFFFFFFFFFF8DC5EB
              FFFFFFFFFFFF8DC5EB2B9CD5279AD42398D31F96D21B95D11793D01391CFB3D9
              F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE8DC5EBFFFFFFFF
              FFFF8DC5EB41A5D98DC5EBFFFFFFFFFFFF8DC5EB2D9DD5299BD42599D32197D2
              1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
              E056AFDE8DC5EB8DC5EB49A9DB45A7DA41A5D98DC5EBFFFFFFFFFFFF8DC5EB2D
              9DD5299BD42599D32197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF0F8FC64B5E15DB2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D98DC5
              EBFFFFFFFFFFFF8DC5EB2D9DD5299BD42599D32197D2C4E1F4025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E15DB2E056AFDE50ACDD4CAADC
              49A9DB45A7DA41A5D98DC5EBFFFFFFFFFFFF8DC5EB2D9DD5299BD42599D3C9E4
              F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E364B5E15D
              B2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D98DC5EBFFFFFFFFFFFF8DC5EB
              2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
              E672BBE46BB8E364B5E15DB2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D98D
              C5EBFFFFFFFFFFFF319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF9FCFE7FC1E778BEE672BBE46BB8E364B5E15DB2E056AFDE50ACDD4CAA
              DC49A9DB45A7DA41A5D98DC5EB39A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE56EB9E367B6E2
              61B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7D6EA
              F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
              BFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA
              3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
              EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
              ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
              FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
              00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
              1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
              AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object DeleteBB: TBitBtn
            Left = 95
            Top = 2
            Width = 30
            Height = 28
            Hint = #1059#1076#1072#1083#1080#1090#1100
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = DeleteBBClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
              5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
              025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
              F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
              D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
              D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD62F9DD52B9CD5
              279AD42398D31F96D21B95D11793D01391CF0F90CF0B8ECE078CCD038ACCA0CF
              EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
              A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95D11793D01391CF0F90CF
              0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
              DB43A6DA3FA4D93BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B
              95D11793D01391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFE6F2FA4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7339FD62F9DD52B9C
              D5279AD42398D31F96D21B95D11793D01391CF0F90CFAED6F0025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D8
              37A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95D11793D01391CFB3D9
              F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD8DC5EB8D
              C5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB
              1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
              E056AFDE8DC5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF2197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF0F8FC64B5E15DB2E08DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5
              EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB2599D32197D2C4E1F4025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E15DB2E056AFDE50ACDD4CAADC
              49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED62D9DD5299BD42599D3C9E4
              F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E364B5E15D
              B2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED6
              2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
              E672BBE46BB8E364B5E15DB2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D93D
              A3D839A2D835A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF9FCFE7FC1E778BEE672BBE46BB8E364B5E15DB2E056AFDE50ACDD4CAA
              DC49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE56EB9E367B6E2
              61B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7D6EA
              F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
              BFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA
              3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
              EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
              ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
              FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
              00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
              1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
              AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object CancelBB: TBitBtn
            Left = 157
            Top = 2
            Width = 30
            Height = 28
            Hint = #1054#1090#1084#1077#1085#1080#1090#1100
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = CancelBBClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
              5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
              025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
              F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
              D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
              D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD62F9DD52B9CD5
              279AD42398D31F96D21B95D11793D01391CF0F90CF0B8ECE078CCD038ACCA0CF
              EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
              A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95D11793D01391CF0F90CF
              0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
              DB43A6DA8DC5EBFFFFFFFFFFFF339FD62F9DD52B9CD5279AD42398D31F96D28D
              C5EBFFFFFFFFFFFF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFE6F2FA4BAADC47A8DB43A6DA8DC5EBFFFFFFFFFFFF339FD62F9DD52B9C
              D5279AD48DC5EBFFFFFFFFFFFF1793D01391CF0F90CFAED6F0025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC47A8DB43A6DA8DC5EBFFFFFF
              FFFFFF339FD62F9DD58DC5EBFFFFFFFFFFFF1F96D21B95D11793D01391CFB3D9
              F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD4CAADC49
              A9DB45A7DA8DC5EBFFFFFFFFFFFF8DC5EBFFFFFFFFFFFF299BD42599D32197D2
              1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
              E056AFDE50ACDD4CAADC49A9DB45A7DA8DC5EBFFFFFFFFFFFFFFFFFF319ED62D
              9DD5299BD42599D32197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF0F8FC64B5E15DB2E056AFDE50ACDD4CAADC49A9DB8DC5EBFFFFFFFFFF
              FFFFFFFF35A0D7319ED62D9DD5299BD42599D32197D2C4E1F4025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E15DB2E056AFDE50ACDD8DC5EB
              FFFFFFFFFFFF8DC5EBFFFFFFFFFFFF35A0D7319ED62D9DD5299BD42599D3C9E4
              F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E364B5E15D
              B2E08DC5EBFFFFFFFFFFFF49A9DB45A7DA8DC5EBFFFFFFFFFFFF35A0D7319ED6
              2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
              E672BBE46BB8E38DC5EBFFFFFFFFFFFF50ACDD4CAADC49A9DB45A7DA8DC5EBFF
              FFFFFFFFFF35A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF9FCFE7FC1E778BEE68DC5EBFFFFFFFFFFFF5DB2E056AFDE50ACDD4CAA
              DC49A9DB45A7DA8DC5EBFFFFFFFFFFFF35A0D7319ED6D2E8F6025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE56EB9E367B6E2
              61B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7D6EA
              F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
              BFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA
              3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
              EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
              ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
              FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
              00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
              1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
              AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object seTwo: TcxSpinEdit
            Left = 456
            Top = 8
            Properties.Increment = 0.5
            Properties.LargeIncrement = 0.5
            Properties.MaxValue = 1
            Properties.MinValue = 0.5
            Properties.ValueType = vtFloat
            TabOrder = 6
            Value = 1
            Width = 41
          end
        end
      end
      object InventorySearchPanel: TPanel
        Left = 0
        Top = 0
        Width = 1289
        Height = 38
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 2
        object RefreshBB2: TBitBtn
          Left = 2
          Top = 4
          Width = 30
          Height = 28
          Hint = #1054#1073#1085#1086#1074#1080#1090#1100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = RefreshBB2Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
            5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
            025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
            F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
            D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
            D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD6FFFFFF8DC5EB
            279AD48DC5EBFFFFFFFFFFFF8AC9EC1391CF0F90CF0B8ECE078CCD038ACCA0CF
            EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
            A1D7FFFFFFFFFFFF8DC5EBFFFFFFFFFFFFFFFFFFFFFFFF8AC9EC1391CF0F90CF
            0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
            DB43A6DA3FA4D93BA3D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF8AC9EC1391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFE6F2FA4BAADC47A8DB43A6DA3FA4D9FFFFFFFFFFFFFFFFFFFFFFFF8DC5
            EB279AD48DC5EBFFFFFFFFFFFF1793D01391CF0F90CFAED6F0025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC47A8DB43A6DAFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF8DC5EB279AD48DC5EBFFFFFF8AC9EC1793D01391CFB3D9
            F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD4CAADC49
            A9DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D9DD5299BD48DC5EBFFFFFF
            1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
            E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED62D
            9DD5299BD42599D32197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF0F8FC64B5E15DB2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D93DA3
            D839A2D835A0D7319ED62D9DD5299BD42599D32197D2C4E1F4025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E1FFFFFF8DC5EB50ACDD4CAADC
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF319ED62D9DD5299BD42599D3C9E4
            F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E38DC5EBFF
            FFFF8DC5EB50ACDD8AC9ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35A0D7319ED6
            2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
            E672BBE46BB8E3FFFFFFFFFFFF56AFDE50ACDD8AC9ECFFFFFFFFFFFFFFFFFFFF
            FFFF39A2D835A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF9FCFE7FC1E778BEE672BBE48DC5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF3DA3D839A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE58DC5EBFFFFFF
            FFFFFFFFFFFFFFFFFF8AC9ECFFFFFFFFFFFF43A6DA3FA4D93BA3D837A1D7D6EA
            F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
            BFE675BCE58DC5EBFFFFFFFFFFFF5AB0DF53ADDD8AC9ECFFFFFF47A8DB43A6DA
            3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
            EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
            ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
            FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
            00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
            1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
            AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object InsertBB2: TBitBtn
          Left = 33
          Top = 4
          Width = 30
          Height = 28
          Hint = #1044#1086#1073#1072#1074#1080#1090#1100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = InsertBB2Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
            5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
            025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
            F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
            D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
            D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD62F9DD52B9CD5
            279AD48DC5EB8DC5EB8DC5EB1793D01391CF0F90CF0B8ECE078CCD038ACCA0CF
            EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
            A1D7339FD62F9DD52B9CD58DC5EBFFFFFF8DC5EB1B95D11793D01391CF0F90CF
            0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
            DB43A6DA3FA4D93BA3D837A1D7339FD62F9DD58DC5EBFFFFFF8DC5EB1F96D21B
            95D11793D01391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFE6F2FA4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7339FD68DC5EBFFFF
            FF8DC5EB2398D31F96D21B95D11793D01391CF0F90CFAED6F0025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D8
            37A1D78DC5EBFFFFFF8DC5EB279AD42398D31F96D21B95D11793D01391CFB3D9
            F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD8DC5EB8D
            C5EB8DC5EB8DC5EB8DC5EB8DC5EBFFFFFF8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB
            1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
            E056AFDE8DC5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF2197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF0F8FC64B5E15DB2E08DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EBFFFF
            FF8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB2599D32197D2C4E1F4025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E15DB2E056AFDE50ACDD4CAADC
            49A9DB8DC5EBFFFFFF8DC5EB39A2D835A0D7319ED62D9DD5299BD42599D3C9E4
            F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E364B5E15D
            B2E056AFDE50ACDD4CAADC8DC5EBFFFFFF8DC5EB3DA3D839A2D835A0D7319ED6
            2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
            E672BBE46BB8E364B5E15DB2E056AFDE50ACDD8DC5EBFFFFFF8DC5EB41A5D93D
            A3D839A2D835A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF9FCFE7FC1E778BEE672BBE46BB8E364B5E15DB2E056AFDE8DC5EBFFFF
            FF8DC5EB45A7DA41A5D93DA3D839A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE56EB9E367B6E2
            61B3E08DC5EB8DC5EB8DC5EB4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7D6EA
            F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
            BFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA
            3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
            EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
            ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
            FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
            00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
            1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
            AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object EditBB2: TBitBtn
          Left = 64
          Top = 4
          Width = 30
          Height = 28
          Hint = #1048#1079#1084#1077#1085#1080#1090#1100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = EditBB2Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
            5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
            025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
            F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
            D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
            D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD62F9DD52B9CD5
            279AD42398D31F96D21B95D11793D01391CF0F90CF0B8ECE078CCD038ACCA0CF
            EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
            A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95D11793D01391CF0F90CF
            0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
            DB43A6DA3FA4D93BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B
            95D11793D01391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFE6F2FA4BAADC47A8DB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5
            EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB1391CF0F90CFAED6F0025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC8DC5EBFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEEFA1793D01391CFB3D9
            F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD8DC5EBFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEEFA
            1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
            E056AFDE50ACDD8DC5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFDCEEFA2599D32197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF0F8FC64B5E15DB2E056AFDE50ACDD8DC5EBFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFDCEEFA2D9DD5299BD42599D32197D2C4E1F4025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E15DB2E056AFDE50ACDD8DC5EB
            FFFFFFFFFFFFFFFFFFFFFFFFDCEEFA35A0D7319ED62D9DD5299BD42599D3C9E4
            F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E364B5E15D
            B2E056AFDE50ACDD8DC5EBFFFFFFFFFFFFDCEEFA3DA3D839A2D835A0D7319ED6
            2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
            E672BBE46BB8E364B5E15DB2E056AFDE50ACDD8DC5EBDCEEFA45A7DA41A5D93D
            A3D839A2D835A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF9FCFE7FC1E778BEE672BBE46BB8E364B5E15DB2E056AFDE50ACDD4CAA
            DC49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE56EB9E367B6E2
            61B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7D6EA
            F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
            BFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA
            3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
            EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
            ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
            FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
            00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
            1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
            AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object DeleteBB2: TBitBtn
          Left = 95
          Top = 4
          Width = 30
          Height = 28
          Hint = #1059#1076#1072#1083#1080#1090#1100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = DeleteBB2Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
            5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
            025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
            F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
            D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
            D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD62F9DD52B9CD5
            279AD42398D31F96D21B95D11793D01391CF0F90CF0B8ECE078CCD038ACCA0CF
            EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
            A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95D11793D01391CF0F90CF
            0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
            DB43A6DA3FA4D93BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B
            95D11793D01391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFE6F2FA4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7339FD62F9DD52B9C
            D5279AD42398D31F96D21B95D11793D01391CF0F90CFAED6F0025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D8
            37A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95D11793D01391CFB3D9
            F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD8DC5EB8D
            C5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB
            1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
            E056AFDE8DC5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF2197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF0F8FC64B5E15DB2E08DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5
            EB8DC5EB8DC5EB8DC5EB8DC5EB8DC5EB2599D32197D2C4E1F4025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E15DB2E056AFDE50ACDD4CAADC
            49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED62D9DD5299BD42599D3C9E4
            F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E364B5E15D
            B2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED6
            2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
            E672BBE46BB8E364B5E15DB2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D93D
            A3D839A2D835A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF9FCFE7FC1E778BEE672BBE46BB8E364B5E15DB2E056AFDE50ACDD4CAA
            DC49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE56EB9E367B6E2
            61B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7D6EA
            F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
            BFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA
            3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
            EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
            ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
            FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
            00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
            1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
            AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object UpdateBB2: TBitBtn
          Left = 126
          Top = 4
          Width = 30
          Height = 28
          Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = UpdateBB2Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000230B0000230B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
            5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
            025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
            F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
            D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
            D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD62F9DD52B9CD5
            279AD42398D31F96D21B95D11793D01391CF0F90CF0B8ECE078CCD038ACCA0CF
            EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
            A1D7339FD68DC5EB2B9CD5279AD42398D31F96D21B95D11793D01391CF0F90CF
            0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
            DB43A6DA3FA4D93BA3D88DC5EBFFFFFF8DC5EB2B9CD5279AD42398D31F96D21B
            95D11793D01391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFE6F2FA4BAADC47A8DB43A6DA8DC5EBFFFFFFFFFFFFFFFFFF8DC5EB2B9C
            D5279AD42398D31F96D21B95D11793D01391CF0F90CFAED6F0025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC8DC5EBFFFFFFFFFFFF8DC5EB
            FFFFFFFFFFFF8DC5EB2B9CD5279AD42398D31F96D21B95D11793D01391CFB3D9
            F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE8DC5EBFFFFFFFF
            FFFF8DC5EB41A5D98DC5EBFFFFFFFFFFFF8DC5EB2D9DD5299BD42599D32197D2
            1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
            E056AFDE8DC5EB8DC5EB49A9DB45A7DA41A5D98DC5EBFFFFFFFFFFFF8DC5EB2D
            9DD5299BD42599D32197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF0F8FC64B5E15DB2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D98DC5
            EBFFFFFFFFFFFF8DC5EB2D9DD5299BD42599D32197D2C4E1F4025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E15DB2E056AFDE50ACDD4CAADC
            49A9DB45A7DA41A5D98DC5EBFFFFFFFFFFFF8DC5EB2D9DD5299BD42599D3C9E4
            F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E364B5E15D
            B2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D98DC5EBFFFFFFFFFFFF8DC5EB
            2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
            E672BBE46BB8E364B5E15DB2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D98D
            C5EBFFFFFFFFFFFF319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF9FCFE7FC1E778BEE672BBE46BB8E364B5E15DB2E056AFDE50ACDD4CAA
            DC49A9DB45A7DA41A5D98DC5EB39A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE56EB9E367B6E2
            61B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7D6EA
            F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
            BFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA
            3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
            EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
            ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
            FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
            00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
            1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
            AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object CancelBB2: TBitBtn
          Left = 157
          Top = 4
          Width = 30
          Height = 28
          Hint = #1054#1090#1084#1077#1085#1080#1090#1100
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = CancelBB2Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
            5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
            025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
            F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
            D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
            D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD62F9DD52B9CD5
            279AD42398D31F96D21B95D11793D01391CF0F90CF0B8ECE078CCD038ACCA0CF
            EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
            A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95D11793D01391CF0F90CF
            0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
            DB43A6DA8DC5EBFFFFFFFFFFFF339FD62F9DD52B9CD5279AD42398D31F96D28D
            C5EBFFFFFFFFFFFF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFE6F2FA4BAADC47A8DB43A6DA8DC5EBFFFFFFFFFFFF339FD62F9DD52B9C
            D5279AD48DC5EBFFFFFFFFFFFF1793D01391CF0F90CFAED6F0025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC47A8DB43A6DA8DC5EBFFFFFF
            FFFFFF339FD62F9DD58DC5EBFFFFFFFFFFFF1F96D21B95D11793D01391CFB3D9
            F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD4CAADC49
            A9DB45A7DA8DC5EBFFFFFFFFFFFF8DC5EBFFFFFFFFFFFF299BD42599D32197D2
            1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
            E056AFDE50ACDD4CAADC49A9DB45A7DA8DC5EBFFFFFFFFFFFFFFFFFF319ED62D
            9DD5299BD42599D32197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF0F8FC64B5E15DB2E056AFDE50ACDD4CAADC49A9DB8DC5EBFFFFFFFFFF
            FFFFFFFF35A0D7319ED62D9DD5299BD42599D32197D2C4E1F4025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E15DB2E056AFDE50ACDD8DC5EB
            FFFFFFFFFFFF8DC5EBFFFFFFFFFFFF35A0D7319ED62D9DD5299BD42599D3C9E4
            F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E364B5E15D
            B2E08DC5EBFFFFFFFFFFFF49A9DB45A7DA8DC5EBFFFFFFFFFFFF35A0D7319ED6
            2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
            E672BBE46BB8E38DC5EBFFFFFFFFFFFF50ACDD4CAADC49A9DB45A7DA8DC5EBFF
            FFFFFFFFFF35A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFF9FCFE7FC1E778BEE68DC5EBFFFFFFFFFFFF5DB2E056AFDE50ACDD4CAA
            DC49A9DB45A7DA8DC5EBFFFFFFFFFFFF35A0D7319ED6D2E8F6025F9BFF00FFFF
            00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE56EB9E367B6E2
            61B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA3FA4D93BA3D837A1D7D6EA
            F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
            BFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4EABDC4BAADC47A8DB43A6DA
            3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
            EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
            ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
            1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
            FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
            00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
            1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
            AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
      end
      object InventoryItem2cxGrid: TcxGrid
        Left = 0
        Top = 38
        Width = 1289
        Height = 321
        Align = alClient
        TabOrder = 3
        LookAndFeel.Kind = lfFlat
        object InventoryItem2cxGridDBTV: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = InventoryItem2DS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'sumitem'
              Column = InventoryItem2cxGridDBTVsumitem
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object InventoryItem2cxGridDBTVinventoryitemtypeid: TcxGridDBColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'inventoryitemtypeid'
            Width = 64
          end
          object InventoryItem2cxGridDBTVInventoryItemTypeName: TcxGridDBColumn
            Caption = #1053#1072#1088#1091#1096#1077#1085#1080#1077
            DataBinding.FieldName = 'InventoryItemTypeName'
            Width = 300
          end
          object InventoryItem2cxGridDBTVsumitem: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'sumitem'
          end
          object InventoryItem2cxGridDBTVCOMMENT: TcxGridDBColumn
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
            DataBinding.FieldName = 'COMMENT'
            Width = 400
          end
        end
        object InventoryItem2cxGL: TcxGridLevel
          GridView = InventoryItem2cxGridDBTV
        end
      end
    end
  end
  object EndInvDE: TDateEdit
    Left = 580
    Top = 0
    Width = 110
    Height = 19
    NumGlyphs = 2
    TabOrder = 0
    OnChange = InvDEChange
  end
  object InvDEST: TStaticText
    Left = 418
    Top = 3
    Width = 151
    Height = 17
    Caption = #1089'                                       '#1087#1086'    '
    TabOrder = 1
  end
  object BeginInvDE: TDateEdit
    Left = 428
    Top = 0
    Width = 110
    Height = 19
    NumGlyphs = 2
    TabOrder = 4
    OnChange = InvDEChange
  end
  object InventoryPrnPMenu: TPopupMenu
    Left = 758
    Top = 158
    object N1: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1086#1074
    end
    object N2: TMenuItem
      Tag = 1
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1073#1086#1102
    end
    object N3: TMenuItem
      Tag = 2
      Caption = #1054#1089#1090#1072#1090#1082#1080
    end
    object N7: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1087#1086' '#1041#1101#1089#1090
    end
    object InventoryIsNotMakeMI: TMenuItem
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1077' '#1072#1082#1090#1072
    end
  end
  object InventoryDS: TDataSource
    DataSet = InventoryCDS
    OnDataChange = InventoryDSDataChange
    Left = 64
    Top = 141
  end
  object InventoryCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'begindate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'enddate'
        ParamType = ptInput
      end>
    ProviderName = 'InventoryDSP'
    ReadOnly = True
    BeforeOpen = InventoryCDSBeforeOpen
    Left = 32
    Top = 137
    object InventoryCDSID: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID'
    end
    object InventoryCDSNAME: TStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      DisplayWidth = 25
      FieldName = 'NAME'
      Size = 50
    end
    object InventoryCDSPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 15
      FieldName = 'PRESENT'
    end
    object InventoryCDSSQNNO: TStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      DisplayWidth = 16
      FieldName = 'SQNNO'
      Size = 16
    end
    object InventoryCDSINVENTORYSUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'INVENTORYSUM'
      Visible = False
    end
    object InventoryCDSUSERNAME: TStringField
      DisplayLabel = #1055#1088#1077#1076#1089#1077#1076#1072#1090#1077#1083#1100
      DisplayWidth = 77
      FieldName = 'USERNAME'
      Size = 32
    end
    object InventoryCDSBASIS: TStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 80
      FieldName = 'BASIS'
      Size = 80
    end
    object InventoryCDSMAKE: TSmallintField
      FieldName = 'MAKE'
      Visible = False
    end
    object InventoryCDSWHOINSERT: TStringField
      DisplayLabel = #1050#1090#1086' '#1089#1086#1079#1076#1072#1083
      FieldName = 'WHOINSERT'
      ReadOnly = True
      Size = 64
    end
    object InventoryCDSSTORFR: TIntegerField
      FieldName = 'STORFR'
      Required = True
      Visible = False
    end
    object InventoryCDSDEPARTMENTID: TIntegerField
      FieldName = 'DEPARTMENTID'
      Visible = False
    end
    object InventoryCDSBESTID: TStringField
      DisplayLabel = #1041#1069#1057#1058
      FieldName = 'BESTID'
      Size = 6
    end
    object InventoryCDSRATE: TFloatField
      FieldName = 'RATE'
    end
  end
  object InventoryItem2CDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <>
    Left = 934
    Top = 110
    object inventoryitemtypeid: TIntegerField
      FieldName = 'inventoryitemtypeid'
      Visible = False
    end
    object InventoryItemCDSInventoryItemType2Name: TStringField
      FieldKind = fkLookup
      FieldName = 'InventoryItemTypeName'
      LookupDataSet = InventoryItemType2CDS
      LookupKeyFields = 'ID'
      LookupResultField = 'NAMETYPE'
      KeyFields = 'inventoryitemtypeid'
      Size = 70
      Lookup = True
    end
    object InventoryItem2CDSsumitem: TFloatField
      FieldName = 'sumitem'
    end
    object InventoryItem2CDSCOMMENT: TStringField
      FieldName = 'COMMENT'
      Size = 1024
    end
  end
  object InventoryItem2DS: TDataSource
    DataSet = InventoryItem2CDS
    Left = 966
    Top = 108
  end
  object InventoryItemCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <>
    OnCalcFields = InventoryItemCDSCalcFields
    Left = 20
    Top = 240
    object InventoryItemCDSinventoryitemtypeid: TIntegerField
      FieldName = 'inventoryitemtypeid'
      Visible = False
    end
    object InventoryItemCDSInventoryItemTypeName: TStringField
      FieldKind = fkLookup
      FieldName = 'InventoryItemTypeName'
      LookupDataSet = InventoryItemTypeCDS
      LookupKeyFields = 'ID'
      LookupResultField = 'NAMETYPE'
      KeyFields = 'inventoryitemtypeid'
      Size = 70
      Lookup = True
    end
    object InventoryItemCDSkoef: TFloatField
      FieldName = 'koef'
    end
    object InventoryItemCDScountitem: TIntegerField
      FieldName = 'countitem'
    end
    object InventoryItemCDSinventoryitemtypesumma: TIntegerField
      FieldKind = fkLookup
      FieldName = 'inventoryitemtypesumma'
      LookupDataSet = InventoryItemTypeCDS
      LookupKeyFields = 'ID'
      LookupResultField = 'SUMMA'
      KeyFields = 'inventoryitemtypeid'
      Lookup = True
    end
    object InventoryItemCDSsumma: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'summa'
      Calculated = True
    end
    object InventoryItemCDSCOMMENT: TStringField
      FieldName = 'COMMENT'
      Size = 1024
    end
  end
  object InventoryItemDS: TDataSource
    DataSet = InventoryItemCDS
    Left = 50
    Top = 242
  end
  object InventoryBestCDS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'inventoryid'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'InventoryBestDSP'
    Left = 20
    Top = 210
  end
  object InventoryBestDS: TDataSource
    DataSet = InventoryBestCDS
    Left = 54
    Top = 208
  end
  object InvDetailCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'InventoryId'
        ParamType = ptInput
      end>
    ProviderName = 'InvDetailDSP'
    Left = 18
    Top = 277
    object InvDetailCDSDRINKID: TIntegerField
      FieldName = 'DRINKID'
      Visible = False
    end
    object InvDetailCDSDRINKKINDID: TIntegerField
      FieldName = 'DRINKKINDID'
      Visible = False
    end
    object InvDetailCDSNAME: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1085#1072#1087#1080#1090#1082#1072
      DisplayWidth = 60
      FieldName = 'NAME'
      Size = 119
    end
    object InvDetailCDSBOTTLECOUNT: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1073#1091#1090
      FieldName = 'BOTTLECOUNT'
    end
    object InvDetailCDSPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
    end
    object InvDetailCDSSUMPRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMPRICE'
    end
    object InvDetailCDSTP: TStringField
      FieldName = 'TP'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object InvDetailCDSISMAKE: TSmallintField
      FieldName = 'ISMAKE'
      Visible = False
    end
    object InvDetailCDSINVENTORYTYPE: TStringField
      FieldName = 'INVENTORYTYPE'
      Size = 64
    end
    object InvDetailCDSISREADY: TSmallintField
      DisplayLabel = #1055#1088#1086#1074#1077#1089#1090#1080
      FieldName = 'ISREADY'
    end
    object InvDetailCDSCASHEBOTTLECOUNT: TIntegerField
      FieldName = 'CASHEBOTTLECOUNT'
    end
  end
  object InvDetailDS: TDataSource
    DataSet = InvDetailCDS
    Left = 50
    Top = 279
  end
  object InvFirmCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'InvFirmDSP'
    Left = 738
    Top = 66
  end
  object InvFirmDS: TDataSource
    DataSet = InvFirmCDS
    Left = 770
    Top = 68
  end
  object InventoryItemTypeCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'InventoryItemTypeDSP'
    Left = 422
    Top = 300
  end
  object InventoryItemType2CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'InventoryItemType2DSP'
    Left = 454
    Top = 298
  end
  object InvStorageCDS: TClientDataSet
    Tag = 2
    Aggregates = <>
    Params = <>
    ProviderName = 'InvStorageDSP'
    Left = 20
    Top = 409
    object InvStorageCDSID: TIntegerField
      FieldName = 'ID'
    end
    object InvStorageCDSNAME: TStringField
      FieldName = 'NAME'
      Size = 30
    end
  end
  object InvStorageDS: TDataSource
    DataSet = InvStorageCDS
    Left = 52
    Top = 413
  end
  object InvEmployeeCDS: TClientDataSet
    Tag = 3
    Aggregates = <>
    Params = <>
    ProviderName = 'InvEmployeeDSP'
    Left = 18
    Top = 434
    object InvEmployeeCDSID: TIntegerField
      FieldName = 'ID'
    end
    object InvEmployeeCDSNAME: TStringField
      FieldName = 'NAME'
      Size = 219
    end
  end
  object InvEmployeeDS: TDataSource
    DataSet = InvEmployeeCDS
    Left = 50
    Top = 438
  end
end
