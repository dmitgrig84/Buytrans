object fReturn: TfReturn
  Left = 235
  Top = 155
  Width = 1266
  Height = 656
  Caption = 'fReturn'
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
    000000000000D68B44F6DA9859FFDFA66FFFDEA56DFFDEA46CFFDDA26BFFDDA1
    69FFDCA068FFDC9F67FFDB9E65FFD58D4AFFCE7C2FF600000000000000000000
    000000000000DD9E60FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFEFCFFFFFD
    FBFFFFFDFBFFFFFCFAFFFFFCF9FFFFFEFDFFD6904EFF00000000000000000000
    000000000000E3AF7BFFFFFFFEFFFFFCFAFFFFFBF6FFFFF9F2FFFFF7EEFFFFF5
    EBFFFFF3E7FFFFF1E3FFFFEFE0FFFFFBF7FFDDA36CFF00000000000000000000
    000000000000E5B380FFFFFDFCFFFFF7F0FFFFF6ECFFFFF4E8FFFFF2E5FFFFF0
    E1FFFFEEDDFFFFECD9FFFFEAD6FFFFFAF4FFDFA770FF00000000000000000000
    000000000000E6B684FFFFFCF9FF0083D2FF60ACD8FFDFE1DCFFFFEDDBFFFFEB
    D7FFFFE9D3FFFFE7CFFFFFE5CCFFFFF8F2FFE1AA75FF00000000000000000000
    000000000000E8B989FFFFFBF7FF60ABD6FF127BA7FF0090DFFF60A9D2FFEFE0
    CDFFFFE4C9FFFFE2C5FFFFE1C2FFFFF7EFFFE2AD79FF00000000000000000000
    000000000000EABD8DFFFFFAF4FFDFDBD2FF008BDFFF00C7FFFF00B2F0FF3095
    CFFFEFD9C0FFFFDDBCFFFFDCB8FFFFF6EDFFE4B17DFF00000000000000000000
    000000000000EBC091FFFFF8F2FFFFE4C8FF60A7CDFF00C2F0FF00DFFFFF00B7
    F0FF3093CDFFEFD3B4FFFFD7AEFFFFF5EAFFE6B482FF00000000000000000000
    000000000000EDC496FFFFF7EFFFFFDFBEFFEFD7BCFF3094CDFF00C7F0FF00E6
    FFFF00BCF0FF3092CAFFEFCDA7FFFFF3E8FFE7B886FF00000000000000000000
    000000000000EFC79AFFFFF6EDFFFFDAB4FFFFD8B0FFEFD1AFFF3092CAFF00CB
    F0FF00EEFFFF00C1F0FF3091C8FFEFEBE5FFE9BB8BFF00000000000000000000
    000000000000F0CA9EFFFFF5EAFFFFD5AAFFFFD3A7FFFFD1A3FFEFCAA2FF3091
    C8FF00D0F0FF00F5FFFF00C5F0FF3098D6FFDCBA93FF00000000000000000000
    000000000000F2CDA3FFFFF3E8FFFFD0A0FFFFCE9DFFFFCD9AFFFFCC99FFEFC8
    9DFF30A2E0FF00D6F3FF00FCFFFF00C2E8FF598295FF9E676710000000000000
    000000000000F3D1A7FFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
    99FFEFF8FDFF30ABE6FF00D4EFFF88A1A1FFCCA4A4FF9C7180CFAF8181100000
    000000000000F5D4ABFFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
    99FFFFFFFFFFEEF5F6FF6FADBEFFE5CDCDFF3C38B2FF00008FFF000083BF0000
    000000000000F6D4A9FFFFFFFFFFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2
    E6FFFEF8F1FFF1CB9DFFEABE8DE0CDB9C7EF0000BEFF153FF4FF0000A1FF0000
    000000000000F5CE9AF6F7D7ACFFF7D9B1FFF7D8B0FFF6D7AFFFF6D6ADFFF5D5
    ACFFF1C58EFFF0C38CDB00000000DFCACA301829D2BF0419D1FF0000B69FC003
    0000C0030000C0030000C0030000C0030000C0030000C0030000C0030000C003
    0000C0030000C0030000C0010000C0000000C0000000C0000000C0100000}
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
    Width = 1258
    Height = 35
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object TopRightPanel: TPanel
      Left = 826
      Top = 2
      Width = 430
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object RxLabel4: TRxLabel
        Left = 125
        Top = 10
        Width = 5
        Height = 13
        Caption = '-'
      end
      object JustReturnFiltercxCB: TcxCheckBox
        Left = 2
        Top = -2
        Caption = #1058#1086#1083#1100#1082#1086' '#1089' '#1074#1086#1079#1074#1088#1072#1090#1072#1084#1080
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueGrayed = 0
        Style.BorderStyle = ebsFlat
        TabOrder = 0
        Width = 143
      end
      object ReturnFiltercxCB: TcxCheckBox
        Left = 2
        Top = 13
        Caption = #1060#1080#1083#1100#1090#1088' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueGrayed = 0
        Style.BorderStyle = ebsFlat
        TabOrder = 1
        OnClick = ReturnFiltercxCBClick
        Width = 145
      end
      object BegincxDE: TcxDateEdit
        Left = 146
        Top = 4
        ParentFont = False
        Properties.ButtonGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000630B0000630B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFABACAC69473169473169473169473169473169473169
          4731764529A95821BF5E19BE5812B7520C9A461273472B694731ABACACF9F6F4
          B7A293B7A293B7A293B7A293B7A293B3876CCB7434D1854CC79877C0997FD59C
          72C05E18B2511472472BABACACFCFBF9F9F6F4F6F2EFF3EDE9F0E8E4E7D8D0D1
          824DDE9E6AFEE5BDFFD89EFFD294FFDBADEDCFB2C260199A4813ABACACFFFFFF
          808080808080808080808080937362DA8C53FCDEB4FFE0ABFEDBA3F4CD96FFD1
          94FFDFB6D29261BA550FABACACFFFFFF808080FFFFFF808080FFFFFFA67D65B6
          7B54E6DFCCFFECC04E4E4D4E4E4D4E4E4D4E4E4DA67359C6651EABACACFFFFFF
          8080808080808080808080809D7763DDA175FEFDF2FFFAE5F5DFB14E4E4DAF99
          75FEE1B3DAA478C76924ABACACFFFFFF808080FFFFFF808080FFFFFF86746CDF
          9F6EECDAC8FFFFF3FFFAE2FEEFC64E4E4DB5A086D89158AD5E26ABACACFFFFFF
          808080808080808080808080807F7FA9795FE2B28DE7CFBDEAE2D7E4DAC6EEC5
          9BD69867D9894B76462AABACACFFFFFFFFFFFFFFFFFF808080FFFFFF808080F9
          F3F1A87C65E6C3A8D8AC8BD49A6CE9A66CDA915BB3876D694731ABACACFFFFFF
          FFFFFFFFFFFF808080808080808080808080807F7F86736B9D7A67A67F669374
          63E8DAD2B7A293694731ABACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFDFCFBF9F7F7F4F1F4EFECF1EBE7B7A293694731CD7621CD7621
          CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD76
          21CD7621CD7621694731CD7621FBC39FFBC39FFBC39FFBC39FFBBE98FAB38AF8
          A77BF79C6DF6935FF68953F57F46F47539F46B2DF46B2D694731CD7621FBC39F
          FBC39FFBC39FFBC39FFBC39FFBBE98FAB38AF8A77BF79C6DF6935FF68E59F584
          4CF57A40F47033694731CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD
          7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621}
        Properties.OnEditValueChanged = BegincxDEPropertiesEditValueChanged
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 119
      end
      object EndcxDE: TcxDateEdit
        Left = 270
        Top = 4
        ParentFont = False
        Properties.ButtonGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000630B0000630B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFABACAC69473169473169473169473169473169473169
          4731764529A95821BF5E19BE5812B7520C9A461273472B694731ABACACF9F6F4
          B7A293B7A293B7A293B7A293B7A293B3876CCB7434D1854CC79877C0997FD59C
          72C05E18B2511472472BABACACFCFBF9F9F6F4F6F2EFF3EDE9F0E8E4E7D8D0D1
          824DDE9E6AFEE5BDFFD89EFFD294FFDBADEDCFB2C260199A4813ABACACFFFFFF
          808080808080808080808080937362DA8C53FCDEB4FFE0ABFEDBA3F4CD96FFD1
          94FFDFB6D29261BA550FABACACFFFFFF808080FFFFFF808080FFFFFFA67D65B6
          7B54E6DFCCFFECC04E4E4D4E4E4D4E4E4D4E4E4DA67359C6651EABACACFFFFFF
          8080808080808080808080809D7763DDA175FEFDF2FFFAE5F5DFB14E4E4DAF99
          75FEE1B3DAA478C76924ABACACFFFFFF808080FFFFFF808080FFFFFF86746CDF
          9F6EECDAC8FFFFF3FFFAE2FEEFC64E4E4DB5A086D89158AD5E26ABACACFFFFFF
          808080808080808080808080807F7FA9795FE2B28DE7CFBDEAE2D7E4DAC6EEC5
          9BD69867D9894B76462AABACACFFFFFFFFFFFFFFFFFF808080FFFFFF808080F9
          F3F1A87C65E6C3A8D8AC8BD49A6CE9A66CDA915BB3876D694731ABACACFFFFFF
          FFFFFFFFFFFF808080808080808080808080807F7F86736B9D7A67A67F669374
          63E8DAD2B7A293694731ABACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFDFCFBF9F7F7F4F1F4EFECF1EBE7B7A293694731CD7621CD7621
          CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD76
          21CD7621CD7621694731CD7621FBC39FFBC39FFBC39FFBC39FFBBE98FAB38AF8
          A77BF79C6DF6935FF68953F57F46F47539F46B2DF46B2D694731CD7621FBC39F
          FBC39FFBC39FFBC39FFBC39FFBBE98FAB38AF8A77BF79C6DF6935FF68E59F584
          4CF57A40F47033694731CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD
          7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621}
        Properties.OnEditValueChanged = EndcxDEPropertiesEditValueChanged
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 119
      end
      object RefreshcxButton: TcxButton
        Left = 394
        Top = 2
        Width = 30
        Height = 27
        Hint = #1054#1073#1085#1086#1074#1080#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = RefreshcxButtonClick
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
        LookAndFeel.Kind = lfFlat
      end
    end
    object ConractorIDFiltercxME: TcxMaskEdit
      Left = 24
      Top = 8
      Style.BorderStyle = ebsFlat
      TabOrder = 0
      OnEnter = ConractorIDFiltercxMEEnter
      OnKeyPress = ConractorIDFiltercxMEKeyPress
      Width = 121
    end
    object PresentFiltercxDE: TcxDateEdit
      Left = 416
      Top = 8
      Properties.OnChange = PresentFiltercxDEPropertiesChange
      Style.BorderStyle = ebsFlat
      TabOrder = 2
      OnEnter = ConractorIDFiltercxMEEnter
      Width = 121
    end
    object SQNNOFiltercxME: TcxMaskEdit
      Left = 312
      Top = 8
      Style.BorderStyle = ebsFlat
      TabOrder = 1
      OnEnter = ConractorIDFiltercxMEEnter
      OnKeyPress = SQNNOFiltercxMEKeyPress
      Width = 121
    end
    object ContractorNameFiltercxLCB: TcxLookupComboBox
      Left = 160
      Top = 8
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownRows = 20
      Properties.DropDownSizeable = True
      Properties.HideSelection = False
      Properties.ImmediateDropDown = False
      Properties.IncrementalFiltering = False
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = ContractorNameFiltercxLCBPropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 4
      OnKeyPress = ContractorNameFiltercxLCBKeyPress
      Width = 225
    end
  end
  object ReturnSalePanel: TPanel
    Left = 0
    Top = 35
    Width = 1258
    Height = 243
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object SalecxGrid: TcxGrid
      Left = 0
      Top = 0
      Width = 946
      Height = 243
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      object SalecxGridDBTV: TcxGridDBTableView
        PopupMenu = ReturnSalePM
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = SalecxGridDBTVCellDblClick
        OnCustomDrawCell = SalecxGridDBTVCustomDrawCell
        DataController.DataSource = ReturnSaleDS
        DataController.KeyFieldNames = 'SALEID'
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            Position = spFooter
            Column = SalecxGridDBTVSQNNO
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = SalecxGridDBTVSQNNO
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = SalecxGridDBTVSUMPRICE
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
        OnCustomDrawColumnHeader = SalecxGridDBTVCustomDrawColumnHeader
        object SalecxGridDBTVCONTRACTORID: TcxGridDBColumn
          DataBinding.FieldName = 'CONTRACTORID'
          Width = 40
        end
        object SalecxGridDBTVCLIENTREGID: TcxGridDBColumn
          DataBinding.FieldName = 'CLIENTREGID'
          Visible = False
        end
        object SalecxGridDBTVCONTRACTORNAME: TcxGridDBColumn
          DataBinding.FieldName = 'CONTRACTORNAME'
          Width = 103
        end
        object SalecxGridDBTVSALEID: TcxGridDBColumn
          DataBinding.FieldName = 'SALEID'
          Visible = False
        end
        object SalecxGridDBTVSQNNO: TcxGridDBColumn
          DataBinding.FieldName = 'SQNNO'
          Width = 53
        end
        object SalecxGridDBTVREPLYID: TcxGridDBColumn
          DataBinding.FieldName = 'REPLYID'
          Visible = False
        end
        object SalecxGridDBTVWBREGID: TcxGridDBColumn
          DataBinding.FieldName = 'WBREGID'
          Visible = False
        end
        object SalecxGridDBTVEGAISFIXNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'EGAISFIXNUMBER'
          Visible = False
        end
        object SalecxGridDBTVPRESENT: TcxGridDBColumn
          DataBinding.FieldName = 'PRESENT'
          Width = 62
        end
        object SalecxGridDBTVADDRESS: TcxGridDBColumn
          DataBinding.FieldName = 'ADDRESS'
          Width = 209
        end
        object SalecxGridDBTVNORMRETURN: TcxGridDBColumn
          DataBinding.FieldName = 'NORMRETURN'
          Visible = False
        end
        object SalecxGridDBTVTERMINALNAME: TcxGridDBColumn
          DataBinding.FieldName = 'TERMINALNAME'
          Width = 109
        end
        object SalecxGridDBTVSTORAGENAME: TcxGridDBColumn
          DataBinding.FieldName = 'STORAGENAME'
          Width = 95
        end
        object SalecxGridDBTVDRIVERNAME: TcxGridDBColumn
          DataBinding.FieldName = 'DRIVERNAME'
          Visible = False
        end
        object SalecxGridDBTVTECHRETURN: TcxGridDBColumn
          DataBinding.FieldName = 'TECHRETURN'
          Visible = False
        end
        object SalecxGridDBTVSUMPRICE: TcxGridDBColumn
          DataBinding.FieldName = 'SUMPRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
        end
        object SalecxGridDBTVWHENWHO: TcxGridDBColumn
          DataBinding.FieldName = 'WHENWHO'
          Visible = False
          Width = 128
        end
        object SalecxGridDBTVISDELIVERED: TcxGridDBColumn
          DataBinding.FieldName = 'ISDELIVERED'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DeliveredIL
          Properties.Items = <>
          Properties.ShowDescriptions = False
        end
        object SalecxGridDBTVEGAISSTATUS: TcxGridDBColumn
          DataBinding.FieldName = 'EGAISSTATUS'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = EgaisIL
          Properties.Items = <>
          Properties.ShowDescriptions = False
          Width = 67
        end
        object SalecxGridDBTVFLAGEXCISESALE: TcxGridDBColumn
          DataBinding.FieldName = 'FLAGEXCISESALE'
          Visible = False
        end
        object SalecxGridDBTVFLAGCANCELCONFIRM: TcxGridDBColumn
          DataBinding.FieldName = 'FLAGCANCELCONFIRM'
          Visible = False
        end
      end
      object SalecxGridLevel: TcxGridLevel
        GridView = SalecxGridDBTV
      end
    end
    object SalecxSplitter: TcxSplitter
      Left = 946
      Top = 0
      Width = 8
      Height = 243
      HotZoneClassName = 'TcxXPTaskBarStyle'
      AlignSplitter = salRight
      Control = FilterPanel
      OnAfterOpen = SalecxSplitterAfterOpen
      OnAfterClose = SalecxSplitterAfterClose
    end
    object FilterPanel: TPanel
      Left = 954
      Top = 0
      Width = 304
      Height = 243
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      OnResize = FilterPanelResize
      object GoodNameFilterLabel: TLabel
        Left = 8
        Top = 16
        Width = 37
        Height = 13
        Caption = #1058#1086#1074#1072#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GoodIDFilterLabel: TLabel
        Left = 104
        Top = 16
        Width = 68
        Height = 13
        Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GoodNameFiltercxLCB: TcxLookupComboBox
        Left = 8
        Top = 40
        Properties.DropDownListStyle = lsEditList
        Properties.DropDownRows = 20
        Properties.DropDownSizeable = True
        Properties.HideSelection = False
        Properties.ImmediateDropDown = False
        Properties.IncrementalFiltering = False
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'DrinkName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.OnEditValueChanged = GoodNameFiltercxLCBPropertiesEditValueChanged
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        OnKeyDown = GoodNameFiltercxLCBKeyDown
        Width = 289
      end
      object GoodIDFiltercxME: TcxMaskEdit
        Left = 176
        Top = 10
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d+'
        Properties.MaxLength = 0
        Style.BorderStyle = ebsFlat
        TabOrder = 1
        OnKeyDown = GoodIDFiltercxMEKeyDown
        Width = 113
      end
    end
  end
  object SaleDetailcxSplitter: TcxSplitter
    Left = 0
    Top = 278
    Width = 1258
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salBottom
    Control = SaleDetailcxGrid
  end
  object SaleDetailcxGrid: TcxGrid
    Left = 0
    Top = 286
    Width = 1258
    Height = 176
    Align = alBottom
    TabOrder = 3
    LookAndFeel.Kind = lfFlat
    object SaleDetailcxGridDBTV: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = SaleDetailcxGridDBTVCellDblClick
      OnCustomDrawCell = SaleDetailcxGridDBTVCustomDrawCell
      DataController.DataSource = ReturnSaleDetailDS
      DataController.KeyFieldNames = 'SALEDETAILID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Position = spFooter
          Column = SaleDetailcxGridDBTVDRINKKINDID
        end
        item
          Kind = skSum
          Position = spFooter
          Column = SaleDetailcxGridDBTVSALEBOXCOUNT
        end
        item
          Kind = skSum
          Position = spFooter
          Column = SaleDetailcxGridDBTVCOUNTUNIT
        end
        item
          Kind = skSum
          Position = spFooter
          Column = SaleDetailcxGridDBTVNESTEDBONUS
        end
        item
          Kind = skSum
          Position = spFooter
          Column = SaleDetailcxGridDBTVRETURNCOUNTUNIT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = SaleDetailcxGridDBTVDRINKKINDID
        end
        item
          Kind = skSum
          Column = SaleDetailcxGridDBTVSALEBOXCOUNT
        end
        item
          Kind = skSum
          Column = SaleDetailcxGridDBTVCOUNTUNIT
        end
        item
          Kind = skSum
          Column = SaleDetailcxGridDBTVNESTEDBONUS
        end
        item
          Kind = skSum
          Column = SaleDetailcxGridDBTVRETURNCOUNTUNIT
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
      object SaleDetailcxGridDBTVSALEDETAILID: TcxGridDBColumn
        DataBinding.FieldName = 'SALEDETAILID'
        Visible = False
      end
      object SaleDetailcxGridDBTVDRINKKINDID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKKINDID'
        Width = 58
      end
      object SaleDetailcxGridDBTVDRINKID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKID'
        Width = 57
      end
      object SaleDetailcxGridDBTVPRINTMARK: TcxGridDBColumn
        DataBinding.FieldName = 'PRINTMARK'
        Width = 141
      end
      object SaleDetailcxGridDBTVPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Width = 80
      end
      object SaleDetailcxGridDBTVSALEBOXCOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOXCOUNT'
        Width = 54
      end
      object SaleDetailcxGridDBTVCOUNTUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'COUNTUNIT'
        Width = 60
      end
      object SaleDetailcxGridDBTVNESTEDBONUS: TcxGridDBColumn
        DataBinding.FieldName = 'NESTEDBONUS'
        Width = 54
      end
      object SaleDetailcxGridDBTVSALEBOXID: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOXID'
        Visible = False
      end
      object SaleDetailcxGridDBTVRETURNCOUNTUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'RETURNCOUNTUNIT'
        Width = 86
      end
      object SaleDetailcxGridDBTVRETURNSALEBOXCOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'RETURNSALEBOXCOUNT'
        Visible = False
      end
      object SaleDetailcxGridDBTVSALEBOXNAME: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOXNAME'
        Width = 126
      end
      object SaleDetailcxGridDBTVSALEBOXCAPACITY: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOXCAPACITY'
        Visible = False
      end
      object SaleDetailcxGridDBTVSTORAGEID: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGEID'
        Visible = False
      end
      object SaleDetailcxGridDBTVNORMRETURN: TcxGridDBColumn
        DataBinding.FieldName = 'NORMRETURN'
        Visible = False
      end
      object SaleDetailcxGridDBTVTECHRETURN: TcxGridDBColumn
        DataBinding.FieldName = 'TECHRETURN'
        Visible = False
      end
      object SaleDetailcxGridDBTVDATEFACTORY: TcxGridDBColumn
        DataBinding.FieldName = 'DATEFACTORY'
        Width = 109
      end
      object SaleDetailcxGridDBTVEXCISELINE: TcxGridDBColumn
        DataBinding.FieldName = 'EXCISELINE'
        Visible = False
        Width = 136
      end
      object SaleDetailcxGridDBTVSTORAGENAME: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGENAME'
        Width = 93
      end
      object SaleDetailcxGridDBTVEGAISINFORMREGID: TcxGridDBColumn
        DataBinding.FieldName = 'EGAISINFORMREGID'
        Width = 132
      end
    end
    object SaleDetailcxGridLevel: TcxGridLevel
      GridView = SaleDetailcxGridDBTV
    end
  end
  object ReturncxSplitter: TcxSplitter
    Left = 0
    Top = 462
    Width = 1258
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salBottom
    Control = ReturncxGrid
  end
  object ReturncxGrid: TcxGrid
    Left = 0
    Top = 470
    Width = 1258
    Height = 159
    Align = alBottom
    PopupMenu = ReturnPM
    TabOrder = 5
    LookAndFeel.Kind = lfFlat
    object ReturncxGridDBTV: TcxGridDBTableView
      OnDblClick = PrintMIClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ReturnDS
      DataController.KeyFieldNames = 'DRINKRETURNID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Position = spFooter
          Column = ReturncxGridDBTVPRESENT
        end
        item
          Kind = skSum
          Position = spFooter
          Column = ReturncxGridDBTVSALEBOTTLECOUNT
        end
        item
          Kind = skSum
          Position = spFooter
          Column = ReturncxGridDBTVSTORAGEBOTTLECOUNT
        end
        item
          Kind = skSum
          Position = spFooter
          Column = ReturncxGridDBTVRETURNBOXCOUNT
        end
        item
          Kind = skSum
          Position = spFooter
          Column = ReturncxGridDBTVRETURNEDONCASHEBOXCOUNT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = ReturncxGridDBTVPRESENT
        end
        item
          Kind = skSum
          Column = ReturncxGridDBTVSALEBOTTLECOUNT
        end
        item
          Kind = skSum
          Column = ReturncxGridDBTVSTORAGEBOTTLECOUNT
        end
        item
          Kind = skSum
          Column = ReturncxGridDBTVRETURNBOXCOUNT
        end
        item
          Kind = skSum
          Column = ReturncxGridDBTVRETURNEDONCASHEBOXCOUNT
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
      object ReturncxGridDBTVDRINKRETURNID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKRETURNID'
        Visible = False
      end
      object ReturncxGridDBTVPRESENT: TcxGridDBColumn
        DataBinding.FieldName = 'PRESENT'
        Width = 82
      end
      object ReturncxGridDBTVSALEBOTTLECOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOTTLECOUNT'
        Width = 94
      end
      object ReturncxGridDBTVSTORAGEBOTTLECOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGEBOTTLECOUNT'
        Width = 89
      end
      object ReturncxGridDBTVEXCISECOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'EXCISECOUNT'
        Visible = False
      end
      object ReturncxGridDBTVRETURNBOXCOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'RETURNBOXCOUNT'
        Width = 78
      end
      object ReturncxGridDBTVRETURNEDONCASHEBOXCOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'RETURNEDONCASHEBOXCOUNT'
        Width = 56
      end
      object ReturncxGridDBTVRETURNTYPENAME: TcxGridDBColumn
        DataBinding.FieldName = 'RETURNTYPENAME'
        Width = 173
      end
      object ReturncxGridDBTVBOXID: TcxGridDBColumn
        DataBinding.FieldName = 'BOXID'
        Visible = False
      end
      object ReturncxGridDBTVTOBOXNAME: TcxGridDBColumn
        DataBinding.FieldName = 'TOBOXNAME'
        Width = 79
      end
      object ReturncxGridDBTVTOSTORAGEID: TcxGridDBColumn
        DataBinding.FieldName = 'TOSTORAGEID'
        Visible = False
      end
      object ReturncxGridDBTVTOSTORAGENAME: TcxGridDBColumn
        DataBinding.FieldName = 'TOSTORAGENAME'
        Width = 161
      end
      object ReturncxGridDBTVINVENTORYID: TcxGridDBColumn
        DataBinding.FieldName = 'INVENTORYID'
        Width = 56
      end
      object ReturncxGridDBTVEMPLOYEENAME: TcxGridDBColumn
        DataBinding.FieldName = 'EMPLOYEENAME'
        Width = 109
      end
      object ReturncxGridDBTVWHENINSERT: TcxGridDBColumn
        DataBinding.FieldName = 'WHENINSERT'
        Width = 65
      end
    end
    object ReturncxGridLevel: TcxGridLevel
      GridView = ReturncxGridDBTV
    end
  end
  object ReturnSaleCDS: TClientDataSet
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    ProviderName = 'ReturnSaleDSP'
    Left = 16
    Top = 88
    object ReturnSaleCDSCONTRACTORID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      FieldName = 'CONTRACTORID'
    end
    object ReturnSaleCDSCLIENTREGID: TStringField
      DisplayLabel = #1050#1086#1076' '#1045#1043#1040#1048#1057' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      FieldName = 'CLIENTREGID'
      Size = 16
    end
    object ReturnSaleCDSCONTRACTORNAME: TStringField
      DisplayLabel = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      FieldName = 'CONTRACTORNAME'
      Size = 64
    end
    object ReturnSaleCDSSALEID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'SALEID'
      Visible = False
    end
    object ReturnSaleCDSSQNNO: TIntegerField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'SQNNO'
    end
    object ReturnSaleCDSPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'PRESENT'
    end
    object ReturnSaleCDSADDRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089' '#1058#1058
      FieldName = 'ADDRESS'
      Size = 64
    end
    object ReturnSaleCDSTECHRETURN: TIntegerField
      DisplayLabel = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1089' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1095#1077#1089#1082#1080#1084' '#1074#1086#1079#1074#1088#1072#1090#1086#1084
      FieldName = 'TECHRETURN'
    end
    object ReturnSaleCDSNORMRETURN: TIntegerField
      DisplayLabel = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1089' '#1074#1086#1079#1074#1088#1072#1090#1086#1084
      FieldName = 'NORMRETURN'
    end
    object ReturnSaleCDSEGAISSTATUS: TIntegerField
      DisplayLabel = #1045#1043#1040#1048#1057' '#1089#1090#1072#1090#1091#1089
      FieldName = 'EGAISSTATUS'
    end
    object ReturnSaleCDSSTORAGEID: TIntegerField
      FieldName = 'STORAGEID'
    end
    object ReturnSaleCDSTERMINALNAME: TStringField
      DisplayLabel = #1058#1077#1088#1084#1080#1085#1072#1083
      FieldName = 'TERMINALNAME'
      Size = 128
    end
    object ReturnSaleCDSSTORAGENAME: TStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'STORAGENAME'
      Size = 64
    end
    object ReturnSaleCDSEGAISRETURN: TIntegerField
      DisplayLabel = #1042#1086#1079#1074#1088#1072#1090' '#1087#1088#1086#1074#1077#1076#1077#1085' '#1087#1086' '#1045#1043#1040#1048#1057
      FieldName = 'EGAISRETURN'
    end
    object ReturnSaleCDSWBREGID: TStringField
      DisplayLabel = #8470' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1058#1058#1053
      FieldName = 'WBREGID'
      Visible = False
      Size = 32
    end
    object ReturnSaleCDSEGAISFIXNUMBER: TStringField
      DisplayLabel = #8470' '#1060#1080#1082#1089#1072#1094#1080#1080' '#1058#1058#1053
      FieldName = 'EGAISFIXNUMBER'
      Visible = False
      Size = 32
    end
    object ReturnSaleCDSISDELIVERED: TSmallintField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'ISDELIVERED'
    end
    object ReturnSaleCDSDRIVERNAME: TStringField
      DisplayLabel = #1042#1086#1076#1080#1090#1077#1083#1100
      DisplayWidth = 32
      FieldName = 'DRIVERNAME'
      Size = 64
    end
    object ReturnSaleCDSSUMPRICE: TBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMPRICE'
      Precision = 15
      Size = 2
    end
    object ReturnSaleCDSWHENWHO: TStringField
      DisplayLabel = #1050#1086#1075#1076#1072' '#1080' '#1082#1090#1086' '#1086#1090#1087#1088#1072#1074#1083#1103#1083' '#1074' '#1045#1043#1040#1048#1057
      FieldName = 'WHENWHO'
      Size = 64
    end
    object ReturnSaleCDSREPLYID: TStringField
      DisplayLabel = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086#1075#1086' '#1087#1072#1082#1077#1090#1072
      FieldName = 'REPLYID'
      Size = 64
    end
    object ReturnSaleCDSFLAGEXCISESCAN: TSmallintField
      FieldName = 'FLAGEXCISESCAN'
    end
    object ReturnSaleCDSFLAGEXCISESALE: TSmallintField
      DisplayLabel = #1055#1088#1080#1079#1085#1072#1082' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1089' '#1040#1052
      FieldName = 'FLAGEXCISESALE'
      Visible = False
    end
    object ReturnSaleCDSFLAGCANCELCONFIRM: TSmallintField
      DisplayLabel = #1054#1090#1084#1077#1085#1072' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103' '#1085#1072' '#1058#1058
      FieldName = 'FLAGCANCELCONFIRM'
    end
  end
  object ReturnSaleDS: TDataSource
    DataSet = ReturnSaleCDS
    OnDataChange = ReturnSaleDSDataChange
    Left = 48
    Top = 88
  end
  object ReturnSaleDetailCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    Params = <
      item
        DataType = ftInteger
        Name = 'pSaleId'
        ParamType = ptInput
      end>
    ProviderName = 'ReturnSaleDetailDSP'
    BeforeOpen = ReturnSaleDetailCDSBeforeOpen
    AfterOpen = ReturnSaleDetailCDSAfterOpen
    Left = 16
    Top = 245
    object ReturnSaleDetailCDSSALEDETAILID: TIntegerField
      FieldName = 'SALEDETAILID'
      Visible = False
    end
    object ReturnSaleDetailCDSDRINKKINDID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1072#1088#1090#1080#1080
      DisplayWidth = 10
      FieldName = 'DRINKKINDID'
    end
    object ReturnSaleDetailCDSDRINKID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
      FieldName = 'DRINKID'
    end
    object ReturnSaleDetailCDSPRINTMARK: TStringField
      DisplayLabel = '('#1050#1086#1076' '#1087#1086#1079#1080#1094#1080#1080')'#1058#1086#1074#1072#1088
      DisplayWidth = 256
      FieldName = 'PRINTMARK'
      Size = 256
    end
    object ReturnSaleDetailCDSSALEBOXCOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1091#1087'. '#1074' '#1090#1072#1088#1077' '#1087#1088#1086#1076#1072#1078#1080
      FieldName = 'SALEBOXCOUNT'
    end
    object ReturnSaleDetailCDSCOUNTUNIT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1077#1076#1080#1085#1080#1094
      FieldName = 'COUNTUNIT'
    end
    object ReturnSaleDetailCDSNESTEDBONUS: TFloatField
      DisplayLabel = #1041#1086#1085#1091#1089
      FieldName = 'NESTEDBONUS'
    end
    object ReturnSaleDetailCDSSALEBOXID: TIntegerField
      FieldName = 'SALEBOXID'
      Visible = False
    end
    object ReturnSaleDetailCDSSALEBOXNAME: TStringField
      DisplayLabel = #1058#1072#1088#1072' '#1087#1088#1086#1076#1072#1078#1080
      FieldName = 'SALEBOXNAME'
      Size = 32
    end
    object ReturnSaleDetailCDSSALEBOXCAPACITY: TIntegerField
      FieldName = 'SALEBOXCAPACITY'
      Visible = False
    end
    object ReturnSaleDetailCDSPRICE: TBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      Precision = 15
      Size = 2
    end
    object ReturnSaleDetailCDSSTORAGEID: TIntegerField
      FieldName = 'STORAGEID'
      Visible = False
    end
    object ReturnSaleDetailCDSSTORAGENAME: TStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'STORAGENAME'
      Required = True
      Size = 30
    end
    object ReturnSaleDetailCDSNORMRETURN: TSmallintField
      FieldName = 'NORMRETURN'
      Visible = False
    end
    object ReturnSaleDetailCDSTECHRETURN: TSmallintField
      FieldName = 'TECHRETURN'
      Visible = False
    end
    object ReturnSaleDetailCDSRETURNCOUNTUNIT: TFloatField
      DisplayLabel = #1042#1086#1079#1074#1088#1072#1090
      FieldName = 'RETURNCOUNTUNIT'
    end
    object ReturnSaleDetailCDSRETURNSALEBOXCOUNT: TFloatField
      FieldName = 'RETURNSALEBOXCOUNT'
      Visible = False
    end
    object ReturnSaleDetailCDSMAXRETURNCOUNTUNIT: TFloatField
      FieldName = 'MAXRETURNCOUNTUNIT'
    end
    object ReturnSaleDetailCDSMAXRETURNSALEBOXCOUNT: TFloatField
      FieldName = 'MAXRETURNSALEBOXCOUNT'
    end
    object ReturnSaleDetailCDSRETURNCHECKCODE: TSmallintField
      FieldName = 'RETURNCHECKCODE'
    end
    object ReturnSaleDetailCDSDATEFACTORY: TStringField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072
      FieldName = 'DATEFACTORY'
      Size = 128
    end
    object ReturnSaleDetailCDSEXCISELINE: TStringField
      DisplayLabel = #1040#1082#1094#1080#1079#1099
      FieldName = 'EXCISELINE'
      Size = 128
    end
    object ReturnSaleDetailCDSEGAISINFORMREGID: TStringField
      DisplayLabel = #1045#1043#1040#1048#1057'('#1040#1083#1082#1086#1050#1086#1076', '#1057#1087#1088#1072#1074#1082#1072#1040','#1041')'
      FieldName = 'EGAISINFORMREGID'
      Size = 128
    end
    object ReturnSaleDetailCDSEGAISSTORAGEFLAG: TSmallintField
      FieldName = 'EGAISSTORAGEFLAG'
      Visible = False
    end
  end
  object ReturnSaleDetailDS: TDataSource
    DataSet = ReturnSaleDetailCDS
    OnDataChange = ReturnSaleDetailDSDataChange
    Left = 44
    Top = 245
  end
  object ReturnCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    Params = <
      item
        DataType = ftInteger
        Name = 'pDrinkSaleId'
        ParamType = ptInput
      end>
    ProviderName = 'ReturnDSP'
    BeforeOpen = ReturnCDSBeforeOpen
    Left = 16
    Top = 413
    object ReturnCDSDRINKRETURNID: TIntegerField
      FieldName = 'DRINKRETURNID'
      Required = True
      Visible = False
    end
    object ReturnCDSPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      FieldName = 'PRESENT'
      Required = True
    end
    object ReturnCDSSALEBOTTLECOUNT: TFloatField
      DisplayLabel = #1045#1076#1080#1085#1080#1094' '#1074' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      FieldName = 'SALEBOTTLECOUNT'
    end
    object ReturnCDSSTORAGEBOTTLECOUNT: TFloatField
      DisplayLabel = #1045#1076#1080#1085#1080#1094' '#1085#1072' '#1089#1082#1083#1072#1076
      FieldName = 'STORAGEBOTTLECOUNT'
    end
    object ReturnCDSRETURNBOXCOUNT: TFloatField
      DisplayLabel = #1052#1077#1089#1090
      FieldName = 'RETURNBOXCOUNT'
    end
    object ReturnCDSRETURNEDONCASHEBOXCOUNT: TFloatField
      DisplayLabel = #1055#1088#1080#1085#1103#1090#1086' '#1085#1072' '#1089#1082#1083#1072#1076
      FieldName = 'RETURNEDONCASHEBOXCOUNT'
      ReadOnly = True
    end
    object ReturnCDSRETURNTYPENAME: TStringField
      DisplayLabel = #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'RETURNTYPENAME'
    end
    object ReturnCDSBOXID: TIntegerField
      FieldName = 'BOXID'
      Visible = False
    end
    object ReturnCDSTOBOXNAME: TStringField
      DisplayLabel = #1042' '#1090#1072#1088#1091
      FieldName = 'TOBOXNAME'
      Size = 25
    end
    object ReturnCDSTOSTORAGEID: TIntegerField
      FieldName = 'TOSTORAGEID'
      Visible = False
    end
    object ReturnCDSTOSTORAGENAME: TStringField
      DisplayLabel = #1053#1072' '#1089#1082#1083#1072#1076
      FieldName = 'TOSTORAGENAME'
      Size = 30
    end
    object ReturnCDSINVENTORYID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1072#1082#1090#1072' '#1080#1085#1074'.'
      FieldName = 'INVENTORYID'
      Required = True
    end
    object ReturnCDSEMPLOYEENAME: TStringField
      DisplayLabel = #1050#1090#1086' '#1074#1074#1077#1083
      FieldName = 'EMPLOYEENAME'
      Size = 64
    end
    object ReturnCDSRETURNTYPEID: TIntegerField
      FieldName = 'RETURNTYPEID'
      Visible = False
    end
    object ReturnCDSREMOVINGTYPEID: TIntegerField
      FieldName = 'REMOVINGTYPEID'
    end
    object ReturnCDSREMOVINGTYPENAME: TStringField
      FieldName = 'REMOVINGTYPENAME'
      Size = 64
    end
    object ReturnCDSWHENINSERT: TDateTimeField
      DisplayLabel = #1050#1086#1075#1076#1072' '#1074#1085#1077#1089#1077#1085#1086
      FieldName = 'WHENINSERT'
    end
    object ReturnCDSEXCISECOUNT: TIntegerField
      DisplayLabel = #1054#1090#1089#1082#1072#1085#1080#1088#1086#1074#1072#1085#1086' '#1040#1052
      FieldName = 'EXCISECOUNT'
      Visible = False
    end
  end
  object ReturnDS: TDataSource
    DataSet = ReturnCDS
    Left = 48
    Top = 417
  end
  object ReturnPM: TPopupMenu
    Images = fMain.MenuIL
    OnPopup = ReturnPMPopup
    Left = 80
    Top = 416
    object AddMI: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 0
      OnClick = AddMIClick
    end
    object EditMI: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Default = True
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
    object PrintActMI: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1072#1082#1090#1072' '#1086' '#1074#1086#1079#1074#1088#1072#1090#1077
      ImageIndex = 14
      Visible = False
    end
    object ReturnExciseLineMI: TMenuItem
      Caption = '-'
    end
    object ReturnExciseMI: TMenuItem
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1072#1082#1094#1080#1079#1085#1099#1077' '#1084#1072#1088#1082#1080' '#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
      ImageIndex = 32
      OnClick = ReturnExciseMIClick
    end
  end
  object ReturnfrxReport: TfrxReport
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
    Left = 80
    Top = 464
    Datasets = <
      item
        DataSet = ReturnfrxDBDataset
        DataSetName = #1042#1086#1079#1074#1088#1072#1090
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
        Height = 102.04731
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
          DataSet = ReturnfrxDBDataset
          DataSetName = #1042#1086#1079#1074#1088#1072#1090
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
            
              #1056#1116#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#176#1057#1039' '#1056#1029#1056#176' '#1056#1030#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176' '#1056#1029#1056#176' '#1057#1027#1056#1108#1056#187#1056 +
              #176#1056#1169' ['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."STORAGENAME"]')
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
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1119#1056#1109' '#1056#1029#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#1109#1056#8470' '#1074#8222#8211' ['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."SALENUMBER"] '#1056#1109#1057#8218' [' +
              #1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."SALEPRESENT"]')
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
            
              #1056#1113#1056#187#1056#1105#1056#181#1056#1029#1057#8218' ['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."FIRMNAME"] '#1057#1027' '#1056#1108#1056#1109#1056#1169#1056#1109#1056#1112' ['#1056#8217#1056#1109#1056#183#1056#1030 +
              #1057#1026#1056#176#1057#8218'."FIRMID"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 173.85838
          Top = 83.14966
          Width = 544.25232
          Height = 18.89765
          ShowHint = False
          DataSet = ReturnfrxDBDataset
          DataSetName = #1042#1086#1079#1074#1088#1072#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1057#8225#1056#1105#1056#1029#1056#176': ['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."REMOVINGTYPENAME"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 68.03154
        Top = 238.11039
        Width = 718.1107
        DataSet = ReturnfrxDBDataset
        DataSetName = #1042#1086#1079#1074#1088#1072#1090
        RowCount = 0
        object Memo4: TfrxMemoView
          Width = 302.3624
          Height = 45.35436
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."PRINTMARK"]')
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
            
              #1056#1113#1056#1109#1056#1169' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176': ['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."DRINKID"]  '#1056#1113#1056#1109#1056#1169' '#1056#1111#1056#176#1057#1026#1057#8218 +
              #1056#1105#1056#1105': ['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."DRINKKINDID"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 302.3624
          Width = 94.48825
          Height = 68.03154
          ShowHint = False
          DataField = 'COUNTUNIT'
          DataSet = ReturnfrxDBDataset
          DataSetName = #1042#1086#1079#1074#1088#1072#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."COUNTUNIT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 396.85065
          Width = 94.48825
          Height = 68.03154
          ShowHint = False
          DataField = 'COUNTBOX'
          DataSet = ReturnfrxDBDataset
          DataSetName = #1042#1086#1079#1074#1088#1072#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."COUNTBOX"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 491.3389
          Width = 226.7718
          Height = 68.03154
          ShowHint = False
          DataSet = ReturnfrxDBDataset
          DataSetName = #1042#1086#1079#1074#1088#1072#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."DATEFACTORY"]'
            ''
            '['#1056#8217#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218'."EXCISELINE"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 34.01577
        Top = 181.41744
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
          Width = 94.48825
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
          Left = 396.85065
          Width = 94.48825
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
            #1056#1032#1056#1111#1056#176#1056#1108#1056#1109#1056#1030#1056#1109#1056#1108)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 491.3389
          Width = 226.7718
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
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1105#1056#183#1056#1030#1056#1109#1056#1169#1057#1027#1057#8218#1056#1030#1056#176
            #1056#1106#1056#1108#1057#8224#1056#1105#1056#183#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object ReturnfrxDBDataset: TfrxDBDataset
    UserName = #1042#1086#1079#1074#1088#1072#1090
    CloseDataSource = False
    FieldAliases.Strings = (
      'BARCODEDOC=BARCODEDOC'
      'STORAGENAME=STORAGENAME'
      'SALENUMBER=SALENUMBER'
      'SALEPRESENT=SALEPRESENT'
      'DRINKID=DRINKID'
      'DRINKKINDID=DRINKKINDID'
      'PRINTMARK=PRINTMARK'
      'COUNTUNIT=COUNTUNIT'
      'COUNTBOX=COUNTBOX'
      'DATEFACTORY=DATEFACTORY'
      'EXCISELINE=EXCISELINE'
      'FIRMID=FIRMID'
      'FIRMNAME=FIRMNAME'
      'REMOVINGTYPENAME=REMOVINGTYPENAME')
    DataSet = ReturnPrintCDS
    BCDToCurrency = False
    Left = 48
    Top = 464
  end
  object ReturnPrintCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pDrinkSaleId'
        ParamType = ptInput
      end>
    ProviderName = 'ReturnPrintDSP'
    Left = 16
    Top = 461
    object ReturnPrintCDSBARCODEDOC: TStringField
      FieldName = 'BARCODEDOC'
      Size = 16
    end
    object ReturnPrintCDSSTORAGENAME: TStringField
      FieldName = 'STORAGENAME'
      Size = 32
    end
    object ReturnPrintCDSSALENUMBER: TStringField
      FieldName = 'SALENUMBER'
      Size = 16
    end
    object ReturnPrintCDSSALEPRESENT: TDateTimeField
      FieldName = 'SALEPRESENT'
    end
    object ReturnPrintCDSDRINKID: TIntegerField
      FieldName = 'DRINKID'
    end
    object ReturnPrintCDSDRINKKINDID: TIntegerField
      FieldName = 'DRINKKINDID'
    end
    object ReturnPrintCDSPRINTMARK: TStringField
      FieldName = 'PRINTMARK'
      Size = 128
    end
    object ReturnPrintCDSCOUNTUNIT: TFloatField
      FieldName = 'COUNTUNIT'
    end
    object ReturnPrintCDSCOUNTBOX: TFloatField
      FieldName = 'COUNTBOX'
    end
    object ReturnPrintCDSDATEFACTORY: TStringField
      FieldName = 'DATEFACTORY'
      Size = 1024
    end
    object ReturnPrintCDSEXCISELINE: TStringField
      FieldName = 'EXCISELINE'
      Size = 1024
    end
    object ReturnPrintCDSFIRMID: TIntegerField
      FieldName = 'FIRMID'
    end
    object ReturnPrintCDSFIRMNAME: TStringField
      FieldName = 'FIRMNAME'
      Size = 128
    end
    object ReturnPrintCDSREMOVINGTYPENAME: TStringField
      FieldName = 'REMOVINGTYPENAME'
      Size = 128
    end
  end
  object EgaisIL: TImageList
    Left = 16
    Top = 120
  end
  object ReturnSalePM: TPopupMenu
    Images = EgaisIL
    OnPopup = ReturnSalePMPopup
    Left = 112
    Top = 88
    object EgaisSaleActMI: TMenuItem
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1088#1072#1089#1093#1086#1078#1076#1077#1085#1080#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1085#1099#1077' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1077#1084
      ImageIndex = 13
      OnClick = EgaisSaleActMIClick
    end
    object AcceptEgaisSaleActMI: TMenuItem
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077'/'#1086#1090#1082#1072#1079' '#1085#1072' '#1072#1082#1090' '#1088#1072#1089#1093#1086#1078#1076#1077#1085#1080#1103
      ImageIndex = 14
      OnClick = AcceptEgaisSaleActMIClick
    end
    object ClearEgaisSaleActMI: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1088#1072#1089#1093#1086#1078#1076#1077#1085#1080#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1085#1099#1077' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1077#1084
      ImageIndex = 11
      OnClick = ClearEgaisSaleActMIClick
    end
    object FirstLineMI: TMenuItem
      Caption = '-'
    end
    object UnConfirmEgaisSaleMI: TMenuItem
      Caption = #1056#1072#1089#1087#1088#1086#1074#1077#1089#1090#1080' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1074' '#1045#1043#1040#1048#1057
      ImageIndex = 16
      OnClick = UnConfirmEgaisSaleMIClick
    end
    object ConfirmEgaisSaleMI: TMenuItem
      Caption = #1055#1088#1086#1074#1077#1089#1090#1080' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1074' '#1045#1043#1040#1048#1057
      OnClick = ConfirmEgaisSaleMIClick
    end
    object SaleExciseMI: TMenuItem
      Bitmap.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C3A2255325336533253323332332E122E122A
        122A122AB80D1F7C1F7C1F7C1F7C5B26207F207F207F207F207F207F207F207F
        207F207F122A1F7C1F7C1F7C1F7C7B2A407F407F207F207F207F207F207F207F
        207F207F122A1F7C1F7C1F7C1F7C7B2EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F5B2E1F7C1F7C1F7C1F7C9C32FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F7B323A221A1E1A1AF9199C32FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F9B369C36BF6FBF6FBF6F1D479F577F537F537F4F5F4B5F4B5F473F43
        3F433F437B261D4FDF77B47A507ABA4E5F3F3F3B3F371F331F2FFF2AFF26DF1E
        DF1ABF165C1E3D57B27E437D017D76529F539F539F4F7F4B7F475F435F3F3F3B
        3F371F337C2A5E5B0B7EA77D657D6A6E16533653164F154F174FBC36BC369C32
        9C327B2E7B2A5E5B0A7EE97DC87DA37E207FA07FE07FC07FEE7F9B321F7C1F7C
        1F7C1F7C1F7C7E5FF47EE97DE97D277E407FE07FE07FE07FF77F9B361F7C1F7C
        1F7C1F7C1F7C7E5FFF7F377F907EF47ED67FEC7FEC7FF77FFF7FBC3A1F7C1F7C
        1F7C1F7C1F7C7E5FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FBC3E1F7C1F7C
        1F7C1F7C1F7C1E4B7E5F7E637E5F7E5F7E5F5E5B5E5B5E5B1D4F7B2A1F7C1F7C
        1F7C1F7C1F7C}
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1072#1082#1094#1080#1079#1085#1099#1077' '#1084#1072#1088#1082#1080' '#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
      OnClick = SaleExciseMIClick
    end
    object SaleNewTodayMI: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1082#1086#1087#1080#1102' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1076#1085#1077
      OnClick = SaleNewTodayMIClick
    end
    object EgaisResultMI: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000230B0000230B00000000000000000000FF00FFFF00FF
        6947316947316947316947316947316947316947316947316947316947316947
        31694731694731FF00FFFF00FFC3AE9FF5F0EDB7A293B7A293B7A293B7A293B7
        A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293694731FF00FFC3AE9F
        F7F4F1F5F0EDF2ECE8EFE8E3EDE4DF0033FF002AD0E4D7D0E2D3CBDFCFC60033
        FF002AD0B7A293694731FF00FFC3AE9FCE9E87983000983000C08366EFE8E3ED
        E4DF0033FF002AD09830000033FF002AD0DCCBC1B7A293694731FF00FFC3AE9F
        FCFAF8DCBAAAAA552DEDDFD8F2ECE8EFE8E3E4D1C70033FF002AD0002AD0E2D3
        CBDFCFC6B7A293694731FF00FFC3AE9FFFFFFFFEFEFDE3C8BBAF5F39F5F0ECF2
        ECE8EFE8E30033FF002AD0002AD0E4D7D0E2D3CBB7A293694731FF00FFC3AE9F
        FFFFFFFFFFFFFEFEFDD2A5919830009830000033FF002AD09830000033FF002A
        D0E4D7D0B7A293694731FF00FFC3AE9FFFFFFFFFFFFFFFFFFFFEFEFDBE7C5E00
        33FF002AD0983000983000EEE6E10033FF002AD0B7A293694731FF00FFC3AE9F
        FFFFFFFFFFFFFFFFFFFFFFFFFBF8F6AE5C37E4CBBF983000983000F1EAE6EEE6
        E1EBE2DDB7A293694731FF00FFC3AE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5
        EBE6AB562F983000983000F3EEEAF1EAE6EEE6E1B7A293694731FF00FFC3AE9F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8D2C69A3304983000F6F2EFF3EE
        EAF1EAE6B7A293694731FF00FFC3AE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD6AE9B983000F9F6F4F6F2EFF3EEEAB7A293694731FF00FFC3AE9F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFAF8
        F6F7F4F1B7A293694731FF00FFC3AE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFAF8F6F7F4F1694731FF00FFFF00FF
        C3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE
        9FC3AE9FC3AE9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1045#1043#1040#1048#1057
      OnClick = EgaisResultMIClick
    end
    object SecondLineMI: TMenuItem
      Caption = '-'
    end
    object IsDeliveredMI: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000330B0000330B00000000000000000000FF00FFFF00FF
        000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF005975C8F2FE000000000000FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0059751C687EFF00FFFF00FFFF00FFFF00FFFF00FF
        005975C8F2FE61AFC5000000FF00FFFF00FFFF00FFFF00FF00597560AEC40000
        00FF00FFFF00FFFF00FFFF00FFFF00FF00597561AFC5C8F2FE61AFC5000000FF
        00FFFF00FF00597560AEC4000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00597561AFC5C8F2FE61AFC500000000597560AEC4000000FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00597561AFC5C8F2FE61
        AFC560AEC4000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF00597561AFC5C8F2FE61AFC5000000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A778E00597500597561
        AFC5C8F2FEC86000603030FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF2A778E000000FF00FF005975D08030D08030C86000603030FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0059750059751C687E000000FF
        00FF983000F8C898D08030C86000603030FF00FFFF00FFFF00FFFF00FFFF00FF
        00597566B4CAC8F2FE66B4CA2A778E000000FF00FF983000F8C898D08030C860
        00603030FF00FFFF00FFFF00FFFF00FF00597566B4CAC8F2FE66B4CA2A778E00
        0000FF00FFFF00FF983000F8C898D08030C86000603030FF00FFFF00FFFF00FF
        00597561AFC5C8F2FE66B4CA2A778E000000FF00FFFF00FFFF00FF983000F8C8
        98D08030C86000603030FF00FFFF00FF00597500597500597500597500597500
        5975FF00FFFF00FFFF00FFFF00FF983000F8C898D08030603030FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF983000983000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1090#1072#1090#1091#1089
      OnClick = IsDeliveredMIClick
    end
    object ExportToExcelMI: TMenuItem
      Bitmap.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C964A0D190D190D190D19
        0D190D190D191F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C964ABE739D6F7C6B5C67
        3B5F3B5F0D191F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C964A0062006200620062
        00623B630D191F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C964A406E8B7F407F0077
        406E5C670D191F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C964AD97F406E407F406E
        7A737D6F0D191F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C964AFF7FA07E8B7F406E
        BE779D730D191F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C964AFF7FD97F406EBA7F
        964A0D190D19061A061A061A061A061A061A061A061A061AFF7FFF7FFF7FFF7F
        964A76150D19061AFF7FFF7FFF7FFF7FFF7FFF7FFF7F061AFF7FFF7FFF7FFF7F
        964A76151F7C061AFF7F061A061AFF7F682A061A061A061A964AD300964A964A
        964A76151F7C061AFF7F682A061A061A061A061AFF7F061AD30076151F7C1F7C
        7615D3001F7C061AFF7FFF7F682A061A061AFF7FFF7FD3009C421A2E76157615
        1A2ED3001F7C061AFF7F682A061A061A061A061AD3009C421A2E1A2E1A2ED300
        D3001F7C1F7C061AFF7F061A061AFF7F682A061A061AD30076151A2ED3001F7C
        1F7C1F7C1F7C061AFF7FFF7FFF7FFF7FFF7FFF7FFF7F061AD30076151F7C1F7C
        1F7C1F7C1F7C061A061A061A061A061A061A061A061A061A1F7CD3001F7C1F7C
        1F7C1F7C1F7C}
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = ExportToExcelMIClick
    end
    object CancelConfirmMI: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000D30E0000D30E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFAAAEAAA19083A19083A19083A19083A1908394948FFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA39B92D8C5B3D8C2AED8
        BFA9D7BCA4D7BA9FA98E769FA29EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA39B92E6D7CAF9E8D8F8E4D2CEC0AAD7C1ABF6D9BFEACBAF787067FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B9186CFD1C07EA77DA2A9902A
        76311C5D1F7E8165E9CEB59A8676FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF9A867640B15E219D405E9362519857608D5B1C632048643C7665588E8D
        86FF00FFFF00FFFF00FFFF00FFFF00FFA39B92B0C2AB36AE5A95C49CE9E6D8F3
        E9DBCBCFB61370211C6220CEB7A3837E77FF00FFFF00FFFF00FFFF00FFFF00FF
        9B9186A4DAB130C55F589D6BF4ECE6FAF0E7CCD7BD4D97555B8B58F6E0CC9A86
        76FF00FFFF00FFFF00FFFF00FFFF00FF9A8676E4F3E642C96C67BD81A7C4ABE6
        DFD9A8C5A54F8F59C0BAA9F9E5D4766558FF00FFFF00FFFF00FFFF00FFA39B92
        D3C8C1FAF9F7EEF4EDA8DDB730C65F579E6B72BC8323A044A7B79DF9E9DBD0BE
        AE8E8D86FF00FFFF00FFFF00FF9B9186F6E6D8FDFAF9FDFAF9EDF5ED67D4894E
        C2725DBE798BCA98F4EBE2FAEDE2F6E6D8837E77FF00FFFF00FFFF00FF9A8676
        DED7D3E2DBD7E2DBD7E2DCD8DFDBD6D9D9D1E0DBD6E2DAD5E1D7D0E0D4CCDFD1
        C7766558FF00FFFF00FFFF00FF907E728C786A8C796AB3A79ED5CEC9D1C9C3CA
        C0B9C2B6AEBAACA2B2A297A190839684776F6256FF00FFFF00FFFF00FFFF00FF
        9B91868D796AD3CCC7FAF9F9F2EFEEE7E1DFDDD4D0D3C8C1C8BBB3B2A399907E
        72FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8F7E6FE2DDDBFCFBFBFAF9F9F3
        EFEFE8E3E0DED6D2D4C9C3C0B2A9877D75FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFA19083A19083A19083A19083A19083A19083A190839C8D82FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = #1054#1090#1086#1079#1074#1072#1090#1100' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1085#1072' '#1058#1058
      OnClick = CancelConfirmMIClick
    end
  end
  object DeliveredIL: TImageList
    Left = 16
    Top = 152
  end
  object PMIL: TImageList
    Left = 144
    Top = 88
  end
end
