object fAutoTrans: TfAutoTrans
  Left = 266
  Top = 95
  Width = 870
  Height = 640
  Caption = #1040#1074#1090#1086'-'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SetupPanel: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 41
    Align = alTop
    Caption = #1056#1045#1046#1048#1052' '#1047#1040#1050#1040#1047#1040
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DaySE: TcxSpinEdit
      Left = 120
      Top = 16
      Properties.MaxValue = 30
      Properties.MinValue = 1
      TabOrder = 0
      Value = 1
      Width = 41
    end
    object cxLabel1: TcxLabel
      Left = 88
      Top = 0
      Caption = #1047#1072#1082#1072#1079#1099' '#1074#1087#1077#1088#1077#1076' '#1085#1072':'
    end
    object OpenButton: TcxButton
      Left = 1
      Top = 1
      Width = 75
      Height = 39
      Caption = #1054#1090#1082#1088#1099#1090#1100
      TabOrder = 2
      OnClick = OpenButtonClick
      Align = alLeft
      LookAndFeel.Kind = lfOffice11
    end
    object CheckerButton: TcxButton
      Tag = 1
      Left = 746
      Top = 1
      Width = 115
      Height = 39
      Caption = #1055#1077#1088#1077#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1078#1080#1084
      TabOrder = 3
      OnClick = CheckerButtonClick
      Align = alRight
      LookAndFeel.Kind = lfOffice11
    end
    object cbTerminal: TComboBox
      Tag = 2
      Left = 208
      Top = 16
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = #1056#1072#1089#1090#1103#1087#1080#1085#1086
      OnChange = cbTerminalChange
      Items.Strings = (
        #1056#1072#1089#1090#1103#1087#1080#1085#1086
        #1056#1091#1089#1042#1080#1085#1086
        #1058#1088#1077#1081#1076#1051#1086#1075#1080#1089#1090#1080#1082)
    end
    object cxLabel2: TcxLabel
      Left = 248
      Top = 0
      Caption = #1058#1077#1088#1084#1080#1085#1072#1083':'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 862
    Height = 572
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object MainGrid: TcxGrid
      Left = 1
      Top = 1
      Width = 860
      Height = 570
      Align = alClient
      TabOrder = 0
      object MainGridDBTV: TcxGridDBTableView
        PopupMenu = pmAutoTrans
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = AutoTransDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = MainGridDBTVDRINKID
          end
          item
            Kind = skSum
            Column = MainGridDBTVSBOTTLECOUNT
          end
          item
            Kind = skSum
            Column = MainGridDBTVRBOTTLECOUNT
          end
          item
            Kind = skSum
            Column = MainGridDBTVCBOTTLECOUNT
          end
          item
            Kind = skSum
            Column = MainGridDBTVINBOTTLECOUNT
          end
          item
            Kind = skSum
            Column = MainGridDBTVOUTBOTTLECOUNT
          end
          item
            Kind = skSum
            Column = MainGridDBTVCOUNTRACK
          end
          item
            Kind = skSum
            Column = MainGridDBTVvbottlecount
          end
          item
            Kind = skSum
            Column = MainGridDBTVzbottlecount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Styles.OnGetContentStyle = MainGridDBTVStylesGetContentStyle
        object MainGridDBTVDRINKID: TcxGridDBColumn
          DataBinding.FieldName = 'DRINKID'
        end
        object MainGridDBTVNAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          Width = 204
        end
        object MainGridDBTVSBOTTLECOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'SBOTTLECOUNT'
        end
        object MainGridDBTVRBOTTLECOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'RBOTTLECOUNT'
        end
        object MainGridDBTVCBOTTLECOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'CBOTTLECOUNT'
        end
        object MainGridDBTVvbottlecount: TcxGridDBColumn
          DataBinding.FieldName = 'vbottlecount'
        end
        object MainGridDBTVINBOTTLECOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'INBOTTLECOUNT'
        end
        object MainGridDBTVOUTBOTTLECOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'OUTBOTTLECOUNT'
        end
        object MainGridDBTVCOUNTRACK: TcxGridDBColumn
          DataBinding.FieldName = 'COUNTRACK'
        end
        object MainGridDBTVMINRACK: TcxGridDBColumn
          Caption = #1052#1080#1085' '#1082#1086#1083'-'#1074#1086' '#1074' '#1103#1095#1077#1081#1082#1080
          DataBinding.FieldName = 'MINRACK'
        end
        object MainGridDBTVBOXCAPACITY: TcxGridDBColumn
          DataBinding.FieldName = 'BOXCAPACITY'
        end
        object MainGridDBTVmaxtrans: TcxGridDBColumn
          Caption = #8470' '#1072#1074#1090#1086#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
          DataBinding.FieldName = 'maxtrans'
        end
        object MainGridDBTVzbottlecount: TcxGridDBColumn
          DataBinding.FieldName = 'zbottlecount'
        end
      end
      object MainGridLevel1: TcxGridLevel
        GridView = MainGridDBTV
      end
    end
  end
  object AutoTransCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AutoTransDSP'
    BeforeDelete = AutoTransCDSBeforeDelete
    Left = 48
    Top = 80
    object AutoTransCDSDRINKID: TIntegerField
      DisplayLabel = #1082#1086#1076' '#1090#1086#1074#1072#1088#1072
      FieldName = 'DRINKID'
    end
    object AutoTransCDSNAME: TStringField
      DisplayLabel = #1085#1072#1079#1074#1072#1085#1080#1077
      DisplayWidth = 200
      FieldName = 'NAME'
      Size = 512
    end
    object AutoTransCDSSBOTTLECOUNT: TIntegerField
      DisplayLabel = #1082#1086#1083'-'#1074#1086' '#1087#1088#1086#1076#1072#1078
      FieldName = 'SBOTTLECOUNT'
    end
    object AutoTransCDSRBOTTLECOUNT: TIntegerField
      DisplayLabel = #1082#1086#1083'-'#1074#1086' '#1085#1072' '#1093#1088#1072#1085#1077#1085#1080#1080
      FieldName = 'RBOTTLECOUNT'
    end
    object AutoTransCDSCBOTTLECOUNT: TIntegerField
      DisplayLabel = #1082#1086#1083'-'#1074#1086' '#1085#1072' 1 '#1089#1082#1083#1072#1076#1077
      FieldName = 'CBOTTLECOUNT'
    end
    object AutoTransCDSvbottlecount: TIntegerField
      DisplayLabel = #1096#1090#1091#1095#1082#1072' '#1085#1072' 1 '#1089#1082#1083#1072#1076#1077
      FieldName = 'vbottlecount'
    end
    object AutoTransCDSINBOTTLECOUNT: TIntegerField
      DisplayLabel = #1055#1088#1080#1085#1103#1090#1100' '#1085#1072' 1 '#1089#1082#1083#1072#1076#1077
      FieldName = 'INBOTTLECOUNT'
    end
    object AutoTransCDSOUTBOTTLECOUNT: TIntegerField
      DisplayLabel = #1059#1073#1088#1072#1090#1100' '#1089' 1 '#1089#1082#1083#1072#1076#1072
      FieldName = 'OUTBOTTLECOUNT'
    end
    object AutoTransCDSCOUNTRACK: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1103#1095#1077#1077#1082' '#1085#1072' 1 '#1089#1082#1083#1072#1076#1077
      FieldName = 'COUNTRACK'
    end
    object AutoTransCDSMINRACK: TIntegerField
      DisplayLabel = #1052#1080#1085' '#1082#1086#1083'-'#1074#1086' '#1074' '#1103#1095#1077#1081#1082#1080' 1 '#1089#1082#1083#1072#1076#1072
      FieldName = 'MINRACK'
    end
    object AutoTransCDSBOXCAPACITY: TIntegerField
      DisplayLabel = #1058#1072#1088#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
      FieldName = 'BOXCAPACITY'
    end
    object AutoTransCDSmaxtrans: TIntegerField
      FieldName = 'maxtrans'
    end
    object AutoTransCDSzbottlecount: TIntegerField
      DisplayLabel = #1088#1077#1079#1077#1088#1074' '#1087#1086' '#1079#1072#1082#1072#1079#1091
      FieldName = 'zbottlecount'
    end
  end
  object AutoTransDS: TDataSource
    DataSet = AutoTransCDS
    Left = 48
    Top = 136
  end
  object pmAutoTrans: TPopupMenu
    Left = 48
    Top = 192
    object miCreateTrans: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      OnClick = miCreateTransClick
    end
  end
end
