object fTransportationAddDetail: TfTransportationAddDetail
  Left = 281
  Top = 185
  Width = 1014
  Height = 563
  Caption = #1053#1086#1074#1072#1103' '#1087#1086#1079#1080#1094#1080#1103' '#1074' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1085#1072' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
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
    000000000000E3AF7BFFFFFFFEFFFFFCFAFFFFFBF6FFFFF9F2FFFFF7EEFFFFF5
    EBFFFFF3E7FFFFF1E3FF057A08FFFFFBF7FFDDA36CFF00000000000000000000
    000000000000E5B380FFFFFDFCFFFFF7F0FFFFF6ECFFFFF4E8FFFFF2E5FFFFF0
    E1FFFFEEDDFFFFECD9FF2DC746FF057A08FFDFA770FF00000000000000000000
    000000000000E6B684FFFFFCF9FFFFF2E6FFFFF1E2FFFFEFDEFF059008FF058B
    08FF058708FF058308FF37D053FF33CC4EFF057A08FF00000000000000000000
    000000000000E8B989FFFFFBF7FFFFEDDCFFFFECD8FFFFEAD4FF48B54BFF85FF
    C1FF47E06CFF44DC66FF40D961FF3DD65BFF39D256FF057A08FF000000000000
    000000000000EABD8DFFFFFAF4FFFFE8D2FFFFE7CEFFFFE5CBFF48B54BFF85FF
    C1FF51EA7AFF4DE774FF49E26FFF46DF6AFF42DC64FF3FD85FFF057A08FF0000
    000000000000EBC091FFFFF8F2FFFFE4C8FFFFE2C4FFFFE0C1FF48B54BFF85FF
    C1FF85FFC1FF85FFC1FF53EC7DFF4FE878FF4CE672FF057F08FF000000000000
    000000000000EDC496FFFFF7EFFFFFDFBEFFFFDDBAFFFFDBB7FF48B54BFF48B5
    4BFF48B54BFF48B54BFF5BF489FF58F185FF058708FF00000000000000000000
    000000000000EFC79AFFFFF6EDFFFFDAB4FFFFD8B0FFFFD6ADFFFFD4A9FFFFD2
    A5FFFFD0A2FFFFCE9EFF85FFC1FF059008FFE9BB8BFF00000000000000000000
    000000000000F0CA9EFFFFF5EAFFFFD5AAFFFFD3A7FFFFD1A3FFFFCF9FFFFFCD
    9CFFFFCC9AFFFFCC99FF059808FFFFF2E6FFEBBE8FFF00000000000000000000
    000000000000F2CDA3FFFFF3E8FFFFD0A0FFFFCE9DFFFFCD9AFFFFCC99FFFFCC
    99FFFFFFFFFFFFFFFFFFFFFFFFFFFEF7F0FFE9B882FF00000000000000000000
    000000000000F3D1A7FFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
    99FFFFFFFFFFFFFFFFFFFEFAF7FFEDC291FFE8B275DB00000000000000000000
    000000000000F5D4ABFFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
    99FFFFFFFFFFFEFBF7FFEFC697FFEBB87DDB0000000000000000000000000000
    000000000000F6D4A9FFFFFFFFFFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2
    E6FFFEF8F1FFF1CB9DFFEDBD84DB000000000000000000000000000000000000
    000000000000F5CE9AF6F7D7ACFFF7D9B1FFF7D8B0FFF6D7AFFFF6D6ADFFF5D5
    ACFFF1C58EFFF0C38CDB0000000000000000000000000000000000000000C003
    0000C0030000C0030000C0030000C0030000C0010000C0000000C0010000C003
    0000C0030000C0030000C0030000C0030000C0070000C00F0000C01F0000}
  OldCreateOrder = False
  Position = poOwnerFormCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 35
    Hint = 'd'
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object CountUnitcxSE: TcxSpinEdit
      Left = 420
      Top = 8
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1077#1076#1080#1085#1080#1094' '#1090#1086#1074#1072#1088#1072' '#1076#1083#1103' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      ParentShowHint = False
      Properties.MinValue = 1
      Properties.OnChange = CountUnitSEPropertiesChange
      ShowHint = True
      Style.BorderStyle = ebsFlat
      TabOrder = 0
      Value = 1
      OnKeyPress = CountUnitcxSEKeyPress
      Width = 65
    end
    object TopRightPanel: TPanel
      Left = 808
      Top = 2
      Width = 196
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object AddBB: TBitBtn
        Left = 4
        Top = 1
        Width = 93
        Height = 25
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' '#1074' '#1085#1086#1074#1091#1102' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = AddBBClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000530B0000530B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF009000009000006000006000006000006000FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900031C94C0E
          A6160EA6160EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00900036CE5531C94C2BC3440EA616006000FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0090003BD35D36
          CE5534CC510EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00900042DA693DD56139D1590EA616006000FF00FFFF00
          FFFF00FFFF00FFFF00FF00900000600000600000600000600000600047DF7142
          DA693DD5610EA61600600000600000600000600000600000600000900060F898
          0EA6160EA6160EA6160EA6164CE47947DF7142DA690EA6160EA6160EA6160EA6
          160EA6160EA61600600000900060F89860F89860F8985BF39156EE8951E9814C
          E47947DF7142DA693DD56139D15934CC512EC6480EA61600600000900060F898
          60F89860F89860F8985BF39156EE8951E9814CE47947DF7142DA693DD56139D1
          5934CC510EA61600600000900060F89860F89860F89860F89860F8985BF39156
          EE8951E9814CE47947DF7142DA693DD56139D15934CC51006000009000009000
          00900000900000900000900060F8985BF39156EE890EA6160060000090000090
          00009000009000009000FF00FFFF00FFFF00FFFF00FFFF00FF00900060F89860
          F8985BF3910EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00900060F89860F89860F8980EA616006000FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F89860
          F89860F8980EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00900060F89860F89860F8980EA616006000FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900000900000
          9000009000009000009000FF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object CancelBB: TBitBtn
        Left = 100
        Top = 2
        Width = 93
        Height = 25
        Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1087#1086#1079#1080#1094#1080#1080' '#1074' '#1085#1086#1074#1091#1102' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = CancelBBClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000530B0000530B00000000000000000000FF00FFFF00FF
          000098000098FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
          98000098FF00FFFF00FFFF00FF000098001CC8001CC8000098FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF000098001CC8001CC8000098FF00FF000098001CC8
          1139F9113AFB001CC8000098FF00FFFF00FFFF00FFFF00FF000098001CC80430
          FB022FF9001CC80000980000987D8FFF2048FF153FFF123BFC001CC8000098FF
          00FFFF00FF000098001CC80733FC0634FF113CFF7D8FFF000098FF00FF000098
          7D8FFF1E46FF163FFF113AFB001CC8000098000098001CC80A35FB0936FF103C
          FF7D8FFF000098FF00FFFF00FFFF00FF0000987D8FFF2148FF163FFF123BFB00
          1CC8001CC80D37FB0D39FF1841FF7D8FFF000098FF00FFFF00FFFF00FFFF00FF
          FF00FF0000987D8FFF2047FF163FFF123CFC103AFC113CFF1941FF7D8FFF0000
          98FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000098001CC8153DFC16
          3FFF143EFF103AFC001CC8000098FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF000098001CC8163FFC1741FF1640FF133CFC001CC8000098FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000098001CC81840FB1A43FF1F
          47FF1E45FF1640FF123BFB001CC8000098FF00FFFF00FFFF00FFFF00FFFF00FF
          000098001CC81B41FB1E45FF244AFF7D8FFF7D8FFF2047FF1640FF123BFB001C
          C8000098FF00FFFF00FFFF00FF000098001CC82045FC2247FF294DFF7D8FFF00
          00980000987D8FFF2148FF1640FF133CFC001CC8000098FF00FF000098001CC8
          2145FB254AFF2A4DFF7D8FFF000098FF00FFFF00FF0000987D8FFF1F46FF1640
          FF123BFB001CC80000980000987D8FFF3454FF2F51FF7D8FFF000098FF00FFFF
          00FFFF00FFFF00FF0000987D8FFF2248FF264BFF7D8FFF000098FF00FF000098
          7D8FFF7D8FFF000098FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000987D8F
          FF7D8FFF000098FF00FFFF00FFFF00FF000098000098FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF000098000098FF00FFFF00FF}
      end
    end
    object BuyBoxcxLCB: TcxLookupComboBox
      Left = 568
      Top = 8
      Hint = #1053#1086#1074#1072#1103' '#1090#1072#1088#1072' '#1087#1088#1080#1093#1086#1076#1072
      ParentShowHint = False
      Properties.DropDownSizeable = True
      Properties.HideSelection = False
      Properties.ImmediateDropDown = False
      Properties.IncrementalFiltering = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ReadOnly = False
      ShowHint = True
      Style.BorderStyle = ebsFlat
      TabOrder = 2
      OnKeyPress = CountUnitcxSEKeyPress
      Width = 62
    end
    object SaleBoxcxLCB: TcxLookupComboBox
      Left = 640
      Top = 8
      Hint = #1053#1086#1074#1072#1103' '#1090#1072#1088#1072' '#1087#1088#1086#1076#1072#1078#1080
      ParentShowHint = False
      Properties.DropDownSizeable = True
      Properties.HideSelection = False
      Properties.ImmediateDropDown = False
      Properties.IncrementalFiltering = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ReadOnly = False
      ShowHint = True
      Style.BorderStyle = ebsFlat
      TabOrder = 3
      OnKeyPress = CountUnitcxSEKeyPress
      Width = 78
    end
    object SaleBoxCountcxSE: TcxSpinEdit
      Left = 492
      Top = 8
      Hint = #1050#1086#1083'-'#1074#1086' '#1074' '#1090#1072#1088#1077' '#1087#1088#1086#1076#1072#1078#1080' '#1076#1083#1103' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      ParentShowHint = False
      Properties.MinValue = 1
      Properties.OnChange = SaleBoxCountcxSEPropertiesChange
      ShowHint = True
      Style.BorderStyle = ebsFlat
      TabOrder = 4
      Value = 1
      OnKeyPress = CountUnitcxSEKeyPress
      Width = 65
    end
    object PrintMarkFiltercxTE: TcxTextEdit
      Left = 88
      Top = 8
      Hint = #1060#1080#1083#1100#1090#1088' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072' '#1090#1086#1074#1072#1088#1072
      ParentShowHint = False
      ShowHint = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 5
      OnKeyPress = PrintMarkFiltercxTEKeyPress
      Width = 121
    end
  end
  object StorageCashecxGrid: TcxGrid
    Left = 0
    Top = 35
    Width = 1006
    Height = 501
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    object StorageCashecxGridDBTV: TcxGridDBTableView
      PopupMenu = PM
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = StorageCasheDS
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'KEYID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skSum
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
          Position = spFooter
        end
        item
          Kind = skSum
        end
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
          Position = spFooter
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end
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
        end
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
          Kind = skCount
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Kind = skCount
          Position = spFooter
          Column = StorageCashecxGridDBTVDRINKID
        end
        item
          Kind = skSum
          Position = spFooter
          Column = StorageCashecxGridDBTVCOUNTUNIT
        end
        item
          Kind = skSum
          Position = spFooter
          Column = StorageCashecxGridDBTVSALEBOXCOUNT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
        end
        item
          Kind = skCount
        end
        item
          Kind = skSum
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
        end
        item
          Kind = skCount
        end
        item
          Format = ',0.000;-,0.000'
          Kind = skSum
        end
        item
          Format = ',0.000;-,0.000'
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
          Kind = skCount
          Column = StorageCashecxGridDBTVDRINKID
        end
        item
          Kind = skSum
          Column = StorageCashecxGridDBTVCOUNTUNIT
        end
        item
          Kind = skSum
          Column = StorageCashecxGridDBTVSALEBOXCOUNT
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
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      OnCustomDrawColumnHeader = StorageCashecxGridDBTVCustomDrawColumnHeader
      object StorageCashecxGridDBTVKEYID: TcxGridDBColumn
        DataBinding.FieldName = 'KEYID'
        Visible = False
      end
      object StorageCashecxGridDBTVRACKID: TcxGridDBColumn
        DataBinding.FieldName = 'RACKID'
        Visible = False
      end
      object StorageCashecxGridDBTVDRINKID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKID'
        Width = 51
      end
      object StorageCashecxGridDBTVDRINKGROUPNAME: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'DRINKGROUPNAME'
      end
      object StorageCashecxGridDBTVPRINTMARK: TcxGridDBColumn
        DataBinding.FieldName = 'PRINTMARK'
        Width = 146
      end
      object StorageCashecxGridDBTVRACKNAME: TcxGridDBColumn
        DataBinding.FieldName = 'RACKNAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 33
      end
      object StorageCashecxGridDBTVDRINKKINDID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKKINDID'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '\d+'
        Width = 34
      end
      object StorageCashecxGridDBTVCAPACITYID: TcxGridDBColumn
        DataBinding.FieldName = 'CAPACITYID'
        Visible = False
      end
      object StorageCashecxGridDBTVCOUNTUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'COUNTUNIT'
        Width = 49
      end
      object StorageCashecxGridDBTVSALEBOXCOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOXCOUNT'
        Width = 51
      end
      object StorageCashecxGridDBTVBUYBOXNAME: TcxGridDBColumn
        DataBinding.FieldName = 'BUYBOXNAME'
        Width = 47
      end
      object StorageCashecxGridDBTVSALEBOXNAME: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOXNAME'
        Width = 38
      end
      object StorageCashecxGridDBTVSSPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'SSPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Width = 40
      end
      object StorageCashecxGridDBTVDATEFECTORY: TcxGridDBColumn
        DataBinding.FieldName = 'DATEFECTORY'
        Width = 75
      end
      object StorageCashecxGridDBTVEXCISELINE: TcxGridDBColumn
        DataBinding.FieldName = 'EXCISELINE'
        Width = 64
      end
      object StorageCashecxGridDBTVMAXRETAILPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'MAXRETAILPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Width = 81
      end
      object StorageCashecxGridDBTVFACTORYPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'FACTORYPRICE'
        Visible = False
        Width = 41
      end
      object StorageCashecxGridDBTVBUYBOXID: TcxGridDBColumn
        DataBinding.FieldName = 'BUYBOXID'
        Visible = False
      end
      object StorageCashecxGridDBTVSALEBOXID: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOXID'
        Visible = False
      end
      object StorageCashecxGridDBTVSALEBOXCAPACITY: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOXCAPACITY'
        Visible = False
      end
      object StorageCashecxGridDBTVSHELFLIFEPRESENT: TcxGridDBColumn
        DataBinding.FieldName = 'SHELFLIFEPRESENT'
        Width = 78
      end
      object StorageCashecxGridDBTVSUMWEIGHT: TcxGridDBColumn
        Caption = #1042#1077#1089
        DataBinding.FieldName = 'SUMWEIGHT'
      end
      object StorageCashecxGridDBTVEGAISINFO: TcxGridDBColumn
        DataBinding.FieldName = 'EGAISINFO'
        Width = 200
      end
    end
    object StorageCashecxGridLevel: TcxGridLevel
      GridView = StorageCashecxGridDBTV
    end
  end
  object StorageCasheCDS: TClientDataSet
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    ProviderName = 'StorageCasheDSP'
    AfterOpen = StorageCasheCDSAfterOpen
    Left = 24
    Top = 160
    object StorageCasheCDSKEYID: TStringField
      FieldName = 'KEYID'
      Visible = False
      Size = 16
    end
    object StorageCasheCDSRACKID: TIntegerField
      FieldName = 'RACKID'
      Visible = False
    end
    object StorageCasheCDSRACKNAME: TStringField
      DisplayLabel = #1071#1095#1077#1081#1082#1072
      FieldName = 'RACKNAME'
      Size = 32
    end
    object StorageCasheCDSDRINKKINDID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'DRINKKINDID'
    end
    object StorageCasheCDSCAPACITYID: TIntegerField
      FieldName = 'CAPACITYID'
      Visible = False
    end
    object StorageCasheCDSSSPRICE: TFloatField
      DisplayLabel = #1060#1072#1082#1090'. '#1089#1077#1073'-'#1089#1090#1100
      FieldName = 'SSPRICE'
      Visible = False
    end
    object StorageCasheCDSMAXRETAILPRICE: TFloatField
      DisplayLabel = #1052#1072#1082#1089#1056#1086#1079#1085#1062#1077#1085#1072
      FieldName = 'MAXRETAILPRICE'
    end
    object StorageCasheCDSDRINKID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
      FieldName = 'DRINKID'
    end
    object StorageCasheCDSDRINKGROUPNAME: TStringField
      FieldName = 'DRINKGROUPNAME'
      Size = 25
    end
    object StorageCasheCDSPRINTMARK: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldName = 'PRINTMARK'
      Size = 256
    end
    object StorageCasheCDSFACTORYPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1103
      FieldName = 'FACTORYPRICE'
      Visible = False
    end
    object StorageCasheCDSBUYBOXID: TIntegerField
      FieldName = 'BUYBOXID'
      Visible = False
    end
    object StorageCasheCDSBUYBOXNAME: TStringField
      DisplayLabel = #1058#1072#1088#1072' '#1087#1088#1080#1093#1086#1076#1072
      FieldName = 'BUYBOXNAME'
      Size = 32
    end
    object StorageCasheCDSSALEBOXID: TIntegerField
      FieldName = 'SALEBOXID'
      Visible = False
    end
    object StorageCasheCDSSALEBOXNAME: TStringField
      DisplayLabel = #1058#1072#1088#1072' '#1087#1088#1086#1076#1072#1078#1080
      FieldName = 'SALEBOXNAME'
      Size = 32
    end
    object StorageCasheCDSSALEBOXCAPACITY: TIntegerField
      FieldName = 'SALEBOXCAPACITY'
      Visible = False
    end
    object StorageCasheCDSDATEFECTORY: TStringField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072
      FieldName = 'DATEFECTORY'
      Size = 1024
    end
    object StorageCasheCDSEXCISELINE: TStringField
      DisplayLabel = #1040#1082#1094#1080#1079#1099
      FieldName = 'EXCISELINE'
      Size = 1024
    end
    object StorageCasheCDSSALEBOXCOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074' '#1090#1072#1088#1077' '#1087#1088#1086#1076#1072#1078#1080
      FieldName = 'SALEBOXCOUNT'
    end
    object StorageCasheCDSCOUNTUNIT: TFloatField
      DisplayLabel = #1045#1076#1080#1085#1080#1094
      FieldName = 'COUNTUNIT'
    end
    object StorageCasheCDSDEFAULTSALEBOXID: TIntegerField
      FieldName = 'DEFAULTSALEBOXID'
    end
    object StorageCasheCDSTOSTORAGESALEBOXID: TIntegerField
      FieldName = 'TOSTORAGESALEBOXID'
    end
    object StorageCasheCDSFROMSTORAGETYPEID: TIntegerField
      FieldName = 'FROMSTORAGETYPEID'
    end
    object StorageCasheCDSFROMSTORAGEISEXCISE: TSmallintField
      FieldName = 'FROMSTORAGEISEXCISE'
    end
    object StorageCasheCDSFROMSTORAGEDISTRIBUTIONID: TIntegerField
      FieldName = 'FROMSTORAGEDISTRIBUTIONID'
    end
    object StorageCasheCDSSHELFLIFEPRESENT: TDateTimeField
      DisplayLabel = #1043#1086#1076#1077#1085' '#1076#1086':'
      FieldName = 'SHELFLIFEPRESENT'
    end
    object StorageCasheCDSFLAGMAXRETAILPRICE: TSmallintField
      FieldName = 'FLAGMAXRETAILPRICE'
    end
    object StorageCasheCDSEGAISSTORAGEFLAG: TSmallintField
      FieldName = 'EGAISSTORAGEFLAG'
      Visible = False
    end
    object StorageCasheCDSEGAISINFO: TStringField
      DisplayLabel = #1045#1043#1040#1048#1057'('#1040#1083#1082#1086#1050#1086#1076','#1057#1087#1088#1072#1074#1082#1072' '#1040','#1041')'
      FieldName = 'EGAISINFO'
      Size = 128
    end
    object StorageCasheCDSFLAGRETAILSTORAGE: TSmallintField
      FieldName = 'FLAGRETAILSTORAGE'
    end
    object StorageCasheCDSWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object StorageCasheCDSSUMWEIGHT: TFloatField
      FieldName = 'SUMWEIGHT'
    end
  end
  object StorageCasheDS: TDataSource
    DataSet = StorageCasheCDS
    OnDataChange = StorageCasheDSDataChange
    Left = 56
    Top = 160
  end
  object PM: TPopupMenu
    Images = fMain.MenuIL
    Left = 112
    Top = 160
    object ExportToExcelMI: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      ImageIndex = 8
      OnClick = ExportToExcelMIClick
    end
  end
end
