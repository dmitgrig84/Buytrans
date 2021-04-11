object fEgaisTransferWithExciseFix: TfEgaisTransferWithExciseFix
  Left = 505
  Top = 286
  Width = 844
  Height = 565
  Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1085#1072' '#1073#1072#1083#1072#1085#1089' 1 '#1088#1077#1075#1080#1089#1090#1088#1072' '#1089' '#1092#1080#1082#1089#1072#1094#1080#1077#1081' '#1040#1052' '#1085#1072' 3 '#1088#1077#1075#1080#1089#1090#1088#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    000000000000D68B44F6DA9859FFDFA66FFFDEA56DFFDEA46CFFDDA26BFFDDA1
    69FFDCA068FFDC9F67FFDB9E65FFD58D4AFFCE7C2FF600000000000000000000
    000000000000DD9E60FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFEFCFFFFFD
    FBFFFFFDFBFFFFFCFAFFFFFCF9FFFFFEFDFFD6904EFF00000000000000000000
    0000DA944F40DB9857FFD3873EFFBD844FFFBA7E48FFCB7527FFDDA36EFFF4DB
    C4FFFFF3E7FFFFF1E3FFFFEFE0FFFFFBF7FFDDA36CFF0000000000000000DF9F
    5D40D09B61FF64A4BCFF2FA6F3FF29A3FFFF227DF3FF0D20C3FF654779FFCB78
    2CFFF1CEADFFFFECD9FFFFEAD6FFFFFAF4FFDFA770FF0000000000000000E2A6
    66DF51B3CDFF14B8FFFF18B4FFFF4FC0FFFF4CA3F9FF0022DDFF0021DAFF3F3A
    A0FFD07F37FFFFE7CFFFFFE5CCFFFFF8F2FFE1AA75FF0000000000000000C9B0
    80FF37CBF6FF90E5FCFF90F4FFFF6BEDFFFF6FCAFFFF95AAFFFF8DA0F7FF2647
    EBFFB26C40FFFFE2C5FFFFE1C2FFFFF7EFFFE2AD79FF0000000000000000C9BE
    96FF8BF7F8FF17F6FFFF00EFFFFF00E8FFFF159FFFFF1D4EFFFF2351FFFF8BA2
    FEFFB17B62FFFFDDBCFFFFDCB8FFFFF6EDFFE4B17DFF0000000000000000D4CB
    9FFF09FEFFFF00FBFFFF00F6FFFF00F0FFFF329BFFFF3E6CFFFF2C5CFFFF2453
    FFFFBD886AFFFFD8B2FFFFD7AEFFFFF5EAFFE6B482FF0000000000000000D1C8
    96FF00FFFFFF00FEFFFF00FBFFFF00F7FFFF3898FFFF4B79FFFF4876FFFF3B6A
    FFFFBF8359FFFFD3A8FFFFD2A4FFFFF3E8FFE7B886FF0000000000000000F1C5
    8EDF4BECDBFF00FFFFFF40F6EBFFBFE0B4FFFFD18BFFFFCC80FFFFC773FFF1B1
    5DFFDD9855FFFFCE9EFFFFCD9BFFFFF2E6FFE9BB8BFF0000000000000000F3C9
    9340F1C58FEFC7DAB5FFFEE6C3FFFFE4BCFFFFDFB0FFFDD79FFFF0BB7AFFE0A0
    5EFFF8C28CFFFFCC99FFFFCC99FFFFF2E6FFEBBE8FFF00000000000000000000
    0000F3C89230F1C895FFEFC088FFEFC18BFFECBB83FFE8B174FFECB378FFF9C4
    8FFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7F0FFE9B882FF00000000000000000000
    000000000000F3D1A7FFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
    99FFFFFFFFFFFFFFFFFFFEFAF7FFEDC291FFE8B275DB00000000000000000000
    000000000000F5D4ABFFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
    99FFFFFFFFFFFEFBF7FFEFC697FFEBB87DDB0000000000000000000000000000
    000000000000F6D4A9FFFFFFFFFFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2
    E6FFFEF8F1FFF1CB9DFFEDBD84DB000000000000000000000000000000000000
    000000000000F5CE9AF6F7D7ACFFF7D9B1FFF7D8B0FFF6D7AFFFF6D6ADFFF5D5
    ACFFF1C58EFFF0C38CDB0000000000000000000000000000000000000000C003
    0000C00300008003000000030000000300000003000000030000000300000003
    0000000300000003000080030000C0030000C0070000C00F0000C01F0000}
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ViewcxGrid: TcxGrid
    Left = 0
    Top = 0
    Width = 836
    Height = 190
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    object ViewcxGridDBTV: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ViewDS
      DataController.KeyFieldNames = 'ORDERBYID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = ViewcxGridDBTVPARAMNAME
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      object ViewcxGridDBTVORDERBYID: TcxGridDBColumn
        DataBinding.FieldName = 'ORDERBYID'
        Visible = False
        Options.Editing = False
        Options.Sorting = False
      end
      object ViewcxGridDBTVPARAMNAME: TcxGridDBColumn
        DataBinding.FieldName = 'PARAMNAME'
        Options.Editing = False
        Width = 469
      end
      object ViewcxGridDBTVPARAMVALUE: TcxGridDBColumn
        DataBinding.FieldName = 'PARAMVALUE'
        Width = 489
      end
    end
    object ViewcxGridLevel: TcxGridLevel
      GridView = ViewcxGridDBTV
    end
  end
  object TopPanel: TPanel
    Left = 0
    Top = 198
    Width = 836
    Height = 74
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 48
      Width = 167
      Height = 13
      Caption = #1057#1082#1072#1085#1080#1088#1091#1081#1090#1077' '#1085#1077#1076#1086#1089#1090#1072#1102#1097#1080#1077' '#1084#1072#1088#1082#1080
    end
    object TransDKToEgaisFirstRegistrycxButton: TcxButton
      Left = 8
      Top = 8
      Width = 811
      Height = 25
      Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080' '#1085#1072' '#1073#1072#1083#1072#1085#1089
      Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1085#1072' 1 '#1088#1077#1075#1080#1089#1090#1088' '#1080' '#1079#1072#1092#1080#1082#1089#1080#1088#1086#1074#1072#1090#1100' '#1040#1052
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = TransDKToEgaisFirstRegistrycxButtonClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000720B0000720B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF983000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFB7A29369473169473169473169473169473169
        4731694731983000983000694731694731FF00FFFF00FFFF00FFFF00FFB7A293
        F2EBE8B7A293B7A293B7A293D76733983000983000983000D98B619830006947
        31FF00FFFF00FFFF00FFFF00FFB7A293F5F0EEF2EBE8EEE6E2ECE2DCD76733F3
        B995FAAE85EFA279E4966DD98B61983000FF00FFFF00FFFF00FFFF00FFB7A293
        F9F5F4F5F0EEF2EBE8EEE6E2D76733FBC4A1FFB38BFAAE85EFA279E4966DDF91
        67983000FF00FFFF00FFFF00FFB7A293FCFAFAF9F5F4F5F0EEF2EBE8D76733FB
        C4A1FBC4A1F9AD84EFA279EFA279983000FF00FFFF00FFFF00FFFF00FFB7A293
        FFFFFFFCFAFAF9F5F4F5F0EED76733D76733D76733D76733FFB38B9830006947
        31FF00FFFF00FFFF00FFFF00FFB7A293FFFFFFFFFFFFFCFAFAF9F5F4F5F0EEF2
        EBE8EEE6E2D76733983000B7A293694731FF00FFFF00FFFF00FFFF00FFB7A293
        FFFFFFFFFFFFFFFFFFFCFAFAF9F5F4F5F0EEF2EBE8983000ECE2DCB7A2936947
        31FF00FFFF00FFFF00FFFF00FFB7A293FFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFB
        F8F7F7F3F1F4EEEBF0E9E5B7A293694731FF00FFFF00FFFF00FFFF00FFB7A293
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFBF8F7F7F3F1F4EEEBB7A2936947
        31FF00FFFF00FFFF00FFFF00FFB7A293FFFFFFFFFFFFFFFFFF3A92EB3A92EB3A
        92EB3A92EB3A92EB3A92EB3A92EB3A92EB3A92EB3A92EB3A92EBFF00FFB7A293
        FFFFFFFFFFFFFFFFFF3A92EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF3A92EBFF00FFB7A293FFFFFFFFFFFFFFFFFF3A92EBFFFFFFE0
        9840E09840E09840E09840E09840E09840E09840FFFFFF3A92EBFF00FFB7A293
        B7A293B7A293B7A2933A92EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF3A92EBFF00FFFF00FFFF00FFFF00FFFF00FF3A92EB3A92EB3A
        92EB3A92EB3A92EB3A92EB3A92EB3A92EB3A92EB3A92EB3A92EB}
      LookAndFeel.Kind = lfFlat
    end
    object ExciseCodecxME: TcxMaskEdit
      Left = 192
      Top = 42
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = ExciseCodecxMEKeyPress
      Width = 626
    end
  end
  object DetailcxGrid: TcxGrid
    Left = 0
    Top = 272
    Width = 836
    Height = 266
    Align = alBottom
    PopupMenu = PM
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    object DetailcxGridDBTV: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DetailDS
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skCount
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skCount
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skCount
        end
        item
          Kind = skCount
        end
        item
          Kind = skCount
          Column = DetailcxGridDBTVEXCISECODE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsSelection.CellMultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      object DetailcxGridDBTVID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object DetailcxGridDBTVEXCISECODE: TcxGridDBColumn
        DataBinding.FieldName = 'EXCISECODE'
        Width = 222
      end
      object DetailcxGridDBTVALCCODE: TcxGridDBColumn
        DataBinding.FieldName = 'ALCCODE'
        Width = 150
      end
      object DetailcxGridDBTVSTRLENEXCISE: TcxGridDBColumn
        DataBinding.FieldName = 'STRLENEXCISE'
        Visible = False
      end
      object DetailcxGridDBTVRETAILSALEID: TcxGridDBColumn
        DataBinding.FieldName = 'RETAILSALEID'
        Width = 70
      end
      object DetailcxGridDBTVEXISTSDKID: TcxGridDBColumn
        DataBinding.FieldName = 'EXISTSDKID'
        Width = 70
      end
      object DetailcxGridDBTVINFORMREG: TcxGridDBColumn
        DataBinding.FieldName = 'INFORMREG'
        Width = 307
      end
    end
    object DetailcxGridLevel: TcxGridLevel
      GridView = DetailcxGridDBTV
    end
  end
  object cxSplitter: TcxSplitter
    Left = 0
    Top = 190
    Width = 836
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salBottom
    Control = DetailcxGrid
  end
  object ViewCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 8
    Top = 64
    object ViewCDSORDERBYID: TIntegerField
      FieldName = 'ORDERBYID'
      Visible = False
    end
    object ViewCDSPARAMNAME: TStringField
      DisplayLabel = #1055#1072#1088#1072#1084#1077#1090#1088
      FieldName = 'PARAMNAME'
      Size = 128
    end
    object ViewCDSPARAMVALUE: TStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'PARAMVALUE'
      Size = 128
    end
  end
  object ViewDS: TDataSource
    DataSet = ViewCDS
    OnDataChange = ViewDSDataChange
    Left = 40
    Top = 64
  end
  object DetailCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = DetailCDSBeforeOpen
    AfterOpen = DetailCDSAfterOpen
    Left = 8
    Top = 400
    object DetailCDSID: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID'
      Visible = False
    end
    object DetailCDSEXCISECODE: TStringField
      DisplayLabel = #1040#1052
      FieldName = 'EXCISECODE'
      Size = 256
    end
    object DetailCDSSTRLENEXCISE: TIntegerField
      DisplayLabel = #1044#1083#1080#1085#1072' '#1040#1052
      FieldName = 'STRLENEXCISE'
      Visible = False
    end
    object DetailCDSALCCODE: TStringField
      DisplayLabel = #1050#1086#1076' '#1045#1043#1040#1048#1057
      FieldName = 'ALCCODE'
      Visible = False
      Size = 32
    end
    object DetailCDSRETAILSALEID: TIntegerField
      DisplayLabel = #1055#1088#1086#1076#1072#1078#1072
      FieldName = 'RETAILSALEID'
    end
    object DetailCDSEXISTSDKID: TIntegerField
      DisplayLabel = #1042' '#1086#1095#1077#1088#1077#1076#1080' '#1089' '#1087#1072#1088#1090#1080#1077#1081
      FieldName = 'EXISTSDKID'
    end
    object DetailCDSINFORMREG: TStringField
      DisplayLabel = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1045#1043#1040#1048#1057
      FieldName = 'INFORMREG'
      Size = 256
    end
  end
  object DetailDS: TDataSource
    DataSet = DetailCDS
    Left = 40
    Top = 400
  end
  object PM: TPopupMenu
    OnPopup = PMPopup
    Left = 72
    Top = 400
    object DeleteMI: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = DeleteMIClick
    end
    object CopyMI: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1073#1091#1092#1077#1088
      OnClick = CopyMIClick
    end
    object DeleteExistsMI: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074' '#1086#1095#1077#1088#1077#1076#1080
      OnClick = DeleteExistsMIClick
    end
  end
end
