object fRemoving: TfRemoving
  Left = 305
  Top = 142
  Width = 1096
  Height = 594
  Caption = 'fRemoving'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    000000000000D68B44CFDA9859FFDFA66FFFDEA56DFFDEA46CFFDDA26BFFDDA1
    69FFDCA068FFDC9F67FFDB9E65FFD58D4AFFCE7C2FCF00000000000000000000
    000000000000DD9E60FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFEFCFFFFFD
    FBFFFFFDFBFFFFFCFAFFFFFCF9FFFFFEFDFFD6904EFF00000000000000000000
    000000000000E3AF7BFFFFFFFEFFFFFCFAFFFFFBF6FFFFF9F2FFFFF7EEFFFFF5
    EBFFFFF3E7FFFFF1E3FFFFEFE0FFFFFBF7FFDDA36CFF00000000000000000000
    000000000000E5B380FFFFFDFCFFFFF7F0FFFFF6ECFFFFF4E8FFFFF2E5FFFFF0
    E1FFFFEEDDFFFFECD9FFFFEAD6FFFFFAF4FFDFA770FF00000000000000000000
    000000000000E6B684FFFFFCF9FFFFF2E6FFFFF1E2FFFFEFDEFFFFEDDBFFFFEB
    D7FFFFE9D3FFFFE7CFFFFFE5CCFFFFF8F2FFE1AA75FF00000000000000000000
    000000000000E8B989FFFFFBF7FFFFEDDCFFFFECD8FFFFEAD4FFFFE8D1FFFFE6
    CDFFFFE4C9FFFFE2C5FFFFE1C2FFFFF7EFFFE2AD79FF00000000000000000000
    000000000000EABD8DFFFFFAF4FFFFE8D2FFFFE7CEFFFFE5CBFFFFE3C7FFFFE1
    C3FFFFDFBFFFFFDDBCFFFFDCB8FFFFF6EDFFE4B17DFF00000000000000000000
    000000000000EBC091FFFFF8F2FFFFE4C8FFFFE2C4FFFFE0C1FFFFDEBDFFFFDC
    B9FFFFDAB5FFFFD8B2FFFFD7AEFFFFF5EAFFE6B482FF00000000000000000000
    000000000000EDC496FFFFF7EFFFFFDFBEFFFFDDBAFFFFDBB7FFFFD9B3FFFFD7
    AFFFFFD5ACFFFFD3A8FFFFD2A4FFFFF3E8FFE7B886FF00000000000000000000
    000000000000EFC79AFFFFF6EDFFFFDAB4FFFFD8B0FFFFD6ADFFFFD4A9FFFFD2
    A5FFFFD0A2FFFFCE9EFFFFCD9BFFFFF2E6FFE9BB8BFF00000000000000001A29
    C6CF2541DBFF1F3BD7FF1934D4FF132DD1FF0E26CDFF0922CCFF051ECCFF312A
    A0FFFFCC9AFFFFCC99FFFFCC99FFFFF2E6FFEBBE8FFF00000000000000003250
    E6FF4473FFFF3C6BFFFF3564FFFF2D5DFFFF2555FFFF1D4EFFFF1547FFFF071D
    C6FFFFFFFFFFFFFFFFFFFFFFFFFFFEF7F0FFE9B882FF00000000000000002940
    E0CF3859EDFF3455EAFF2E4EE6FF2847E3FF2340DFFF1D3ADCFF1733D8FF3734
    AAFFFFFFFFFFFFFFFFFFFEFAF7FFEDC291FFE8B2759F00000000000000000000
    000000000000F5D4ABFFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
    99FFFFFFFFFFFEFBF7FFEFC697FFEBB87D9F0000000000000000000000000000
    000000000000F6D4A9FFFFFFFFFFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2
    E6FFFEF8F1FFF1CB9DFFEDBD849F000000000000000000000000000000000000
    000000000000F5CE9ACFF7D7ACFFF7D9B1FFF7D8B0FFF6D7AFFFF6D6ADFFF5D5
    ACFFF1C58EFFF0C38C9F0000000000000000000000000000000000000000C003
    0000C0030000C0030000C0030000C0030000C0030000C0030000C0030000C003
    0000C0030000000300000003000000030000C0070000C00F0000C01F0000}
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1088
    Height = 35
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object DrinkIDFiltercxME: TcxMaskEdit
      Left = 296
      Top = 8
      Style.BorderStyle = ebsFlat
      TabOrder = 3
      OnEnter = StorageFiltercxLCBEnter
      OnKeyDown = DrinkIDFiltercxMEKeyDown
      Width = 73
    end
    object PresentFiltercxDE: TcxDateEdit
      Left = 224
      Top = 8
      Properties.OnChange = RemovingIDFiltercxMEPropertiesEditValueChanged
      Style.BorderStyle = ebsFlat
      TabOrder = 2
      OnEnter = StorageFiltercxLCBEnter
      Width = 81
    end
    object StorageFiltercxLCB: TcxLookupComboBox
      Left = 80
      Top = 8
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownRows = 20
      Properties.DropDownSizeable = True
      Properties.HideSelection = False
      Properties.ImmediateDropDown = False
      Properties.IncrementalFiltering = False
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.OnCloseUp = RemovingIDFiltercxMEPropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      OnEnter = StorageFiltercxLCBEnter
      Width = 73
    end
    object RemovingTypeFiltercxLCB: TcxLookupComboBox
      Left = 584
      Top = 8
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownRows = 20
      Properties.DropDownSizeable = True
      Properties.HideSelection = False
      Properties.ImmediateDropDown = False
      Properties.IncrementalFiltering = False
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = RemovingIDFiltercxMEPropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 6
      OnEnter = StorageFiltercxLCBEnter
      Width = 97
    end
    object InventoryFiltercxLCB: TcxLookupComboBox
      Left = 696
      Top = 8
      Properties.CaseSensitiveSearch = True
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownRows = 20
      Properties.DropDownSizeable = True
      Properties.HideSelection = False
      Properties.ImmediateDropDown = False
      Properties.IncrementalFiltering = False
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = RemovingIDFiltercxMEPropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 7
      OnEnter = StorageFiltercxLCBEnter
      Width = 97
    end
    object DrinkKindIDFiltercxME: TcxMaskEdit
      Left = 440
      Top = 8
      Properties.OnEditValueChanged = RemovingIDFiltercxMEPropertiesEditValueChanged
      Style.BorderStyle = ebsFlat
      TabOrder = 5
      OnEnter = StorageFiltercxLCBEnter
      Width = 81
    end
    object IsMakeFiltercxCB: TcxCheckBox
      Left = 810
      Top = 8
      Caption = #1053#1077' '#1087#1088#1086#1074#1077#1076#1077#1085#1086
      Properties.AllowGrayed = True
      Properties.ValueChecked = 1
      Properties.ValueGrayed = 2
      Properties.ValueUnchecked = 0
      Style.BorderStyle = ebsFlat
      TabOrder = 9
      OnClick = IsMakeFiltercxCBClick
      Width = 103
    end
    object DrinkNameFiltercxLCB: TcxLookupComboBox
      Left = 368
      Top = 8
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownRows = 20
      Properties.DropDownSizeable = True
      Properties.HideSelection = False
      Properties.ImmediateDropDown = False
      Properties.IncrementalFiltering = False
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = DrinkNameFiltercxLCBPropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 4
      OnEnter = StorageFiltercxLCBEnter
      OnKeyDown = DrinkNameFiltercxLCBKeyDown
      Width = 73
    end
    object RemovingIDFiltercxME: TcxMaskEdit
      Left = 16
      Top = 8
      Properties.OnEditValueChanged = RemovingIDFiltercxMEPropertiesEditValueChanged
      Style.BorderStyle = ebsFlat
      TabOrder = 0
      OnEnter = StorageFiltercxLCBEnter
      Width = 49
    end
    object RightPanel: TPanel
      Left = 1053
      Top = 2
      Width = 33
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 8
      object RefreshBB: TBitBtn
        Left = 2
        Top = 1
        Width = 30
        Height = 30
        Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1087#1088#1080#1093#1086#1076#1086#1084' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
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
    end
  end
  object RemovingcxGrid: TcxGrid
    Left = 0
    Top = 35
    Width = 1088
    Height = 532
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object RemovingcxGridDBTV: TcxGridDBTableView
      PopupMenu = PM
      OnDblClick = PrintMIClick
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = RemovingcxGridDBTVCustomDrawCell
      DataController.DataSource = RemovingDS
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'REMOVINGID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
          Column = RemovingcxGridDBTVCOUNTUNIT
        end
        item
          Kind = skCount
          Position = spFooter
          Column = RemovingcxGridDBTVREMOVINGID
        end
        item
          Kind = skSum
          Position = spFooter
          Column = RemovingcxGridDBTVSUMSSPRICE
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
          Column = RemovingcxGridDBTVCOUNTUNIT
        end
        item
          Kind = skCount
          Column = RemovingcxGridDBTVREMOVINGID
        end
        item
          Kind = skSum
          Column = RemovingcxGridDBTVSUMSSPRICE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
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
      OnCustomDrawColumnHeader = RemovingcxGridDBTVCustomDrawColumnHeader
      object RemovingcxGridDBTVREMOVINGID: TcxGridDBColumn
        DataBinding.FieldName = 'REMOVINGID'
        Width = 91
      end
      object RemovingcxGridDBTVSTORAGEID: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGEID'
        Visible = False
      end
      object RemovingcxGridDBTVSTORAGENAME: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGENAME'
        Width = 84
      end
      object RemovingcxGridDBTVRACKNAME: TcxGridDBColumn
        DataBinding.FieldName = 'RACKNAME'
        Width = 59
      end
      object RemovingcxGridDBTVPRESENT: TcxGridDBColumn
        DataBinding.FieldName = 'PRESENT'
        Width = 85
      end
      object RemovingcxGridDBTVDRINKID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKID'
        Width = 50
      end
      object RemovingcxGridDBTVDRINKNAME: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKNAME'
        Width = 106
      end
      object RemovingcxGridDBTVDRINKKINDID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKKINDID'
        Width = 56
      end
      object RemovingcxGridDBTVEXCISECOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'EXCISECOUNT'
        Visible = False
      end
      object RemovingcxGridDBTVCOUNTUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'COUNTUNIT'
        Width = 51
      end
      object RemovingcxGridDBTVSUMSSPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'SUMSSPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Width = 69
      end
      object RemovingcxGridDBTVREMOVINGTYPEID: TcxGridDBColumn
        DataBinding.FieldName = 'REMOVINGTYPEID'
        Visible = False
      end
      object RemovingcxGridDBTVREMOVINGTYPENAME: TcxGridDBColumn
        DataBinding.FieldName = 'REMOVINGTYPENAME'
        Width = 75
      end
      object RemovingcxGridDBTVINVENTORYID: TcxGridDBColumn
        DataBinding.FieldName = 'INVENTORYID'
        Visible = False
      end
      object RemovingcxGridDBTVINVENTORYBASIS: TcxGridDBColumn
        DataBinding.FieldName = 'INVENTORYBASIS'
        Width = 59
      end
      object RemovingcxGridDBTVISMAKE: TcxGridDBColumn
        DataBinding.FieldName = 'ISMAKE'
        Visible = False
      end
      object RemovingcxGridDBTVISMAKENAME: TcxGridDBColumn
        DataBinding.FieldName = 'ISMAKENAME'
        Width = 65
      end
      object RemovingcxGridDBTVCOMMENT: TcxGridDBColumn
        DataBinding.FieldName = 'COMMENT'
        Width = 74
      end
      object RemovingcxGridDBTVRACKID: TcxGridDBColumn
        DataBinding.FieldName = 'RACKID'
        Visible = False
      end
      object RemovingcxGridDBTVWHOINSERT: TcxGridDBColumn
        DataBinding.FieldName = 'WHOINSERT'
        Width = 150
      end
      object RemovingcxGridDBTVFLAGEXCISESCAN: TcxGridDBColumn
        DataBinding.FieldName = 'FLAGEXCISESCAN'
        Visible = False
      end
    end
    object RemovingcxGridLevel: TcxGridLevel
      GridView = RemovingcxGridDBTV
    end
  end
  object RemovingCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RemovingDSP'
    BeforeOpen = RemovingCDSBeforeOpen
    Left = 32
    Top = 88
    object RemovingCDSREMOVINGID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1087#1080#1089#1072#1085#1080#1103
      FieldName = 'REMOVINGID'
      Visible = False
    end
    object RemovingCDSSTORAGEID: TIntegerField
      FieldName = 'STORAGEID'
      Visible = False
    end
    object RemovingCDSSTORAGENAME: TStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'STORAGENAME'
      Size = 32
    end
    object RemovingCDSDRINKID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
      FieldName = 'DRINKID'
    end
    object RemovingCDSDRINKNAME: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldName = 'DRINKNAME'
      Size = 256
    end
    object RemovingCDSDRINKINDID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'DRINKKINDID'
    end
    object RemovingCDSPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'PRESENT'
    end
    object RemovingCDSREMOVINGTYPEID: TIntegerField
      FieldName = 'REMOVINGTYPEID'
      Visible = False
    end
    object RemovingCDSREMOVINGTYPENAME: TStringField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072
      FieldName = 'REMOVINGTYPENAME'
      Size = 64
    end
    object RemovingCDSINVENTORYID: TIntegerField
      FieldName = 'INVENTORYID'
      Visible = False
    end
    object RemovingCDSINVENTORYBASIS: TStringField
      DisplayLabel = #1040#1082#1090' '#1080#1085#1074#1077#1085#1090'-'#1080#1080
      FieldName = 'INVENTORYBASIS'
      Size = 128
    end
    object RemovingCDSCOMMENT: TStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      FieldName = 'COMMENT'
      Size = 128
    end
    object RemovingCDSCOUNTUNIT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1077#1076#1080#1085#1080#1094
      FieldName = 'COUNTUNIT'
    end
    object RemovingCDSRACKID: TIntegerField
      FieldName = 'RACKID'
      Visible = False
    end
    object RemovingCDSRACKNAME: TStringField
      DisplayLabel = #1071#1095#1077#1081#1082#1072
      FieldName = 'RACKNAME'
      Size = 32
    end
    object RemovingCDSISMAKE: TSmallintField
      FieldName = 'ISMAKE'
    end
    object RemovingCDSISMAKENAME: TStringField
      DisplayLabel = #1055#1088#1086#1074#1077#1076#1077#1085#1086
      FieldName = 'ISMAKENAME'
      Size = 4
    end
    object RemovingCDSSUMSSPRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMSSPRICE'
    end
    object RemovingCDSWHOINSERT: TStringField
      DisplayLabel = #1057#1086#1079#1076#1072#1083
      FieldName = 'WHOINSERT'
      Size = 128
    end
    object RemovingCDSREMOVINGPRICE: TFloatField
      FieldName = 'REMOVINGPRICE'
    end
    object RemovingCDSFLAGEXCISESCAN: TSmallintField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103' '#1089' '#1040#1052
      FieldName = 'FLAGEXCISESCAN'
    end
    object RemovingCDSEXCISECOUNT: TIntegerField
      DisplayLabel = #1054#1090#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1086' '#1040#1052
      FieldName = 'EXCISECOUNT'
      Visible = False
    end
  end
  object RemovingDS: TDataSource
    DataSet = RemovingCDS
    Left = 64
    Top = 88
  end
  object PM: TPopupMenu
    Images = fMain.MenuIL
    OnPopup = PMPopup
    Left = 96
    Top = 88
    object AddMI: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 0
      OnClick = AddMIClick
    end
    object EditMI: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 1
      OnClick = EditMIClick
    end
    object DeleteMI: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 2
      OnClick = DeleteMIClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PrintMI: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      ImageIndex = 3
      OnClick = PrintMIClick
    end
    object PrintAct: TMenuItem
      Caption = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
      ImageIndex = 14
      OnClick = PrintActClick
    end
    object ExportToExcel: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      ImageIndex = 17
      OnClick = ExportToExcelClick
    end
    object RemovingExciseLineMI: TMenuItem
      Caption = '-'
    end
    object RemovingExciseMI: TMenuItem
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1072#1082#1094#1080#1079#1085#1099#1077' '#1084#1072#1088#1082#1080' '#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
      ImageIndex = 32
      OnClick = RemovingExciseMIClick
    end
  end
  object RemovingfrxDBDataset: TfrxDBDataset
    UserName = #1057#1087#1080#1089#1072#1085#1080#1077
    CloseDataSource = False
    DataSet = RemovingPrintCDS
    BCDToCurrency = False
    Left = 64
    Top = 120
  end
  object RemovingfrxReport: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41410.4969684954
    ReportOptions.LastChange = 41410.4969684954
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.            ')
    Left = 96
    Top = 120
    Datasets = <
      item
        DataSet = RemovingfrxDBDataset
        DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      object ReportTitle1: TfrxReportTitle
        Height = 109.60637
        Top = 18.89765
        Width = 718.1107
        object BarCode1: TfrxBarCodeView
          Left = 15.11812
          Top = 7.55906
          Width = 79
          Height = 45.35436
          ShowHint = False
          BarType = bcCode128C
          DataField = 'BARCODEDOC'
          DataSet = RemovingfrxDBDataset
          DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2
          Zoom = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo1: TfrxMemoView
          Left = 173.85838
          Top = 7.55906
          Width = 544.25232
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1116#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#176#1057#1039' '#1056#1029#1056#176' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176' '#1057#1027#1056#1109' '#1057#1027#1056#1108#1056 +
              #187#1056#176#1056#1169#1056#176' ['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."STORAGENAME"] '#1056#1109#1057#8218' ['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'.' +
              '"PRESENT"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 173.85838
          Top = 34.01577
          Width = 544.25232
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#1119#1056#1109' '#1056#176#1056#1108#1057#8218#1057#1107' '#1074#8222#8211'['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."INVENTORYID"]: ['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029 +
              #1056#1105#1056#181'."INVENTORYBASIS"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 173.85838
          Top = 60.47248
          Width = 544.25232
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1057#8225#1056#1105#1056#1029#1056#176': ['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."REMOVINGTYPENAME"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 15.11812
          Top = 60.47248
          Width = 136.06308
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#181#1057#8225#1056#176#1057#8218#1056#1105' '
            '[Date] [Time]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 173.85838
          Top = 83.14966
          Width = 544.25232
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1112#1056#1112#1056#181#1056#1029#1057#8218#1056#176#1057#1026#1056#1105#1056#8470': ['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."COMMENT"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 158.74026
        Top = 245.66945
        Width = 718.1107
        DataSet = RemovingfrxDBDataset
        DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
        RowCount = 0
        object Memo4: TfrxMemoView
          Width = 302.3624
          Height = 45.35436
          ShowHint = False
          DataSet = RemovingfrxDBDataset
          DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."DRINKNAME"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 45.35436
          Width = 302.3624
          Height = 22.67718
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              #1056#1113#1056#1109#1056#1169' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176': ['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."DRINKID"]  '#1056#1113#1056#1109#1056#1169' '#1056#1111#1056#176#1057#1026 +
              #1057#8218#1056#1105#1056#1105': ['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."DRINKKINDID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 302.3624
          Width = 132.28355
          Height = 45.35436
          ShowHint = False
          DataField = 'COUNTUNIT'
          DataSet = RemovingfrxDBDataset
          DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."COUNTUNIT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 434.64595
          Width = 132.28355
          Height = 45.35436
          ShowHint = False
          DataField = 'SALEBOXNAME'
          DataSet = RemovingfrxDBDataset
          DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."SALEBOXNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 566.9295
          Width = 151.1812
          Height = 45.35436
          ShowHint = False
          DataSet = RemovingfrxDBDataset
          DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."RACKID"]    ['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."RACKNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 434.64595
          Top = 68.03154
          Width = 132.28355
          Height = 22.67718
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176' '#1056#177#1056#181#1056#183' '#1056#1116#1056#8221#1056#1038)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 434.64595
          Top = 90.70872
          Width = 132.28355
          Height = 22.67718
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176' '#1056#1116#1056#8221#1056#1038)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 434.64595
          Top = 136.06308
          Width = 132.28355
          Height = 22.67718
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          LineSpacing = 0.1
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#1116#1056#8221#1056#1038)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 434.64595
          Top = 113.3859
          Width = 132.28355
          Height = 22.67718
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          LineSpacing = 0.1
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#177#1056#181#1056#183' '#1056#1116#1056#8221#1056#1038)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 566.9295
          Top = 68.03154
          Width = 151.1812
          Height = 22.67718
          ShowHint = False
          DataField = 'PRICEWITHOUTNDS'
          DataSet = RemovingfrxDBDataset
          DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."PRICEWITHOUTNDS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 566.9295
          Top = 90.70872
          Width = 151.1812
          Height = 22.67718
          ShowHint = False
          DataField = 'PRICENDS'
          DataSet = RemovingfrxDBDataset
          DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."PRICENDS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 566.9295
          Top = 136.06308
          Width = 151.1812
          Height = 22.67718
          ShowHint = False
          DataField = 'SUMPRICENDS'
          DataSet = RemovingfrxDBDataset
          DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          LineSpacing = 0.1
          Memo.UTF8 = (
            '['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."SUMPRICENDS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 566.9295
          Top = 113.3859
          Width = 151.1812
          Height = 22.67718
          ShowHint = False
          DataField = 'SUMPRICEWITHOUTNDS'
          DataSet = RemovingfrxDBDataset
          DataSetName = #1057#1087#1080#1089#1072#1085#1080#1077
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          LineSpacing = 0.1
          Memo.UTF8 = (
            '['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."SUMPRICEWITHOUTNDS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 302.3624
          Top = 45.35436
          Width = 415.7483
          Height = 22.67718
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1105#1056#183#1056#1030#1056#1109#1056#1169#1057#1027#1057#8218#1056#1030#1056#176': ['#1056#1038#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181'."PRODACTION' +
              'DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 34.01577
        Top = 188.9765
        Width = 718.1107
        object Memo3: TfrxMemoView
          Width = 302.3624
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1109#1056#1030#1056#176#1057#1026)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 302.3624
          Width = 132.28355
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169#1056#1105#1056#1029#1056#1105#1057#8224)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 434.64595
          Width = 132.28355
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#176#1057#1026#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 566.9295
          Width = 151.1812
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          LineSpacing = 0.1
          Memo.UTF8 = (
            #1056#1031#1057#8225#1056#181#1056#8470#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object RemovingPrintCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RemovingPrintDSP'
    BeforeOpen = RemovingCDSBeforeOpen
    Left = 32
    Top = 120
    object RemovingPrintCDSBARCODEDOC: TStringField
      FieldName = 'BARCODEDOC'
      Size = 16
    end
    object IntegerField2: TIntegerField
      FieldName = 'STORAGEID'
      Visible = False
    end
    object StringField1: TStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'STORAGENAME'
      Size = 32
    end
    object IntegerField5: TIntegerField
      FieldName = 'REMOVINGTYPEID'
      Visible = False
    end
    object StringField3: TStringField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072
      FieldName = 'REMOVINGTYPENAME'
      Size = 64
    end
    object IntegerField6: TIntegerField
      FieldName = 'INVENTORYID'
      Visible = False
    end
    object StringField4: TStringField
      DisplayLabel = #1040#1082#1090' '#1080#1085#1074#1077#1085#1090'-'#1080#1080
      FieldName = 'INVENTORYBASIS'
      Size = 128
    end
    object StringField5: TStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      FieldName = 'COMMENT'
      Size = 128
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'PRESENT'
    end
    object IntegerField4: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'DRINKKINDID'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
      FieldName = 'DRINKID'
    end
    object StringField2: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldName = 'DRINKNAME'
      Size = 256
    end
    object FloatField1: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1077#1076#1080#1085#1080#1094
      FieldName = 'COUNTUNIT'
    end
    object IntegerField7: TIntegerField
      FieldName = 'RACKID'
      Visible = False
    end
    object StringField6: TStringField
      DisplayLabel = #1071#1095#1077#1081#1082#1072
      FieldName = 'RACKNAME'
      Size = 32
    end
    object RemovingPrintCDSSALEBOXNAME: TStringField
      FieldName = 'SALEBOXNAME'
      Size = 32
    end
    object RemovingPrintCDSPRICEWITHOUTNDS: TFloatField
      FieldName = 'PRICEWITHOUTNDS'
    end
    object RemovingPrintCDSPRICENDS: TFloatField
      FieldName = 'PRICENDS'
    end
    object RemovingPrintCDSSUMPRICEWITHOUTNDS: TFloatField
      FieldName = 'SUMPRICEWITHOUTNDS'
    end
    object RemovingPrintCDSSUMPRICENDS: TFloatField
      FieldName = 'SUMPRICENDS'
    end
    object RemovingPrintCDSPRODACTIONDATE: TStringField
      FieldName = 'PRODACTIONDATE'
      Size = 128
    end
  end
  object RemovingActCDS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'aSaleId'
        ParamType = ptInput
      end>
    ProviderName = 'RemovingActDSP'
    BeforeOpen = RemovingActCDSBeforeOpen
    Left = 32
    Top = 153
    object RemovingActCDSDEPARTMENTNAME: TStringField
      FieldName = 'DEPARTMENTNAME'
      Size = 32
    end
    object RemovingActCDSNUMBER: TStringField
      FieldName = 'NUMBER'
      Size = 16
    end
    object RemovingActCDSPRESENT: TDateTimeField
      FieldName = 'PRESENT'
    end
    object RemovingActCDSCOMMENT: TStringField
      FieldName = 'COMMENT'
      Size = 128
    end
    object RemovingActCDSDRINKID: TIntegerField
      FieldName = 'DRINKID'
    end
    object RemovingActCDSDRINKPRINTMARK: TStringField
      FieldName = 'DRINKPRINTMARK'
      Size = 128
    end
    object RemovingActCDSDRINKKINDID: TIntegerField
      FieldName = 'DRINKKINDID'
    end
    object RemovingActCDSUNITNAME: TStringField
      FieldName = 'UNITNAME'
      Size = 16
    end
    object RemovingActCDSCOUNTUNIT: TFloatField
      FieldName = 'COUNTUNIT'
    end
    object RemovingActCDSPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object RemovingActCDSSUMPRICE: TFloatField
      FieldName = 'SUMPRICE'
    end
    object RemovingActCDSDIRPOST: TStringField
      FieldName = 'DIRPOST'
      Size = 32
    end
    object RemovingActCDSDIRNAME: TStringField
      FieldName = 'DIRNAME'
      Size = 32
    end
  end
  object RemovingActfrxReport: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41253.3975546065
    ReportOptions.LastChange = 41253.4779750694
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 152
    Datasets = <
      item
        DataSet = RemovingActfrxDBDataset
        DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      object GroupHeader1: TfrxGroupHeader
        Height = 132.28355
        Top = 18.89765
        Width = 718.1107
        Condition = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103'."NUMBER"'
        object Memo1: TfrxMemoView
          Left = 56.69295
          Top = 7.55906
          Width = 359.05535
          Height = 18.89765
          ShowHint = False
          DataField = 'DEPARTMENTNAME'
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."DEPARTMENTNAME"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 41.57483
          Width = 718.1107
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039' '#1074#8222#8211'['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."NUMBER"] '#1056#1109 +
              #1057#8218' ['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."PRESENT"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 56.69295
          Top = 75.5906
          Width = 661.41775
          Height = 18.89765
          ShowHint = False
          DataField = 'COMMENT'
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Memo.UTF8 = (
            '['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."COMMENT"]')
        end
        object Memo3: TfrxMemoView
          Top = 113.3859
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 56.69295
          Top = 113.3859
          Width = 283.46475
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1109#1056#1030#1056#176#1057#1026)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 340.1577
          Top = 113.3859
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#176#1057#1026#1057#8218#1056#1105#1057#1039)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 415.7483
          Top = 113.3859
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169'.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 453.5436
          Top = 113.3859
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 529.1342
          Top = 113.3859
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 623.62245
          Top = 113.3859
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 173.85838
        Width = 718.1107
        DataSet = RemovingActfrxDBDataset
        DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
        RowCount = 0
        object Memo5: TfrxMemoView
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          DataField = 'DRINKID'
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."DRINKID"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 56.69295
          Width = 283.46475
          Height = 18.89765
          ShowHint = False
          DataField = 'DRINKPRINTMARK'
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."DRINKPRINTMARK"]')
        end
        object Memo7: TfrxMemoView
          Left = 340.1577
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          DataField = 'DRINKKINDID'
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."DRINKKINDID"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 415.7483
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          DataField = 'UNITNAME'
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."UNITNAME"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 453.5436
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          DataField = 'COUNTUNIT'
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."COUNTUNIT"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 529.1342
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."PRICE"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 623.62245
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."SUMPRICE"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 68.03154
        Top = 215.43321
        Width = 718.1107
        object Memo12: TfrxMemoView
          Left = 56.69295
          Top = 41.57483
          Width = 661.41775
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '['#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."DIRPOST"]____________________['#1056#1106#1056#1108#1057#8218' '#1057 +
              #1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."DIRNAME"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 529.1342
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
        end
        object Memo15: TfrxMemoView
          Left = 623.62245
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          DataSet = RemovingActfrxDBDataset
          DataSetName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<'#1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039'."SUMPRICE">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object RemovingActfrxDBDataset: TfrxDBDataset
    UserName = #1040#1082#1090' '#1089#1087#1080#1089#1072#1085#1080#1103
    CloseDataSource = False
    DataSet = RemovingActCDS
    BCDToCurrency = False
    Left = 64
    Top = 152
  end
  object SaveDialog: TSaveDialog
    Left = 136
    Top = 88
  end
end
