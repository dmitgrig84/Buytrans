object fEgaisSaleAct: TfEgaisSaleAct
  Left = 592
  Top = 190
  Width = 1107
  Height = 699
  Caption = #1040#1082#1090#1099' '#1088#1072#1079#1085#1086#1075#1083#1072#1089#1080#1081' '#1080#1079' '#1045#1043#1040#1048#1057
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1099
    Height = 35
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel20: TPanel
      Left = 549
      Top = 2
      Width = 548
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object RxLabel4: TRxLabel
        Left = 381
        Top = 10
        Width = 5
        Height = 13
        Caption = '-'
      end
      object BegincxDE: TcxDateEdit
        Left = 258
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
        Properties.OnChange = BegincxDEPropertiesChange
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 119
      end
      object EndcxDE: TcxDateEdit
        Left = 390
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
        Properties.OnChange = EndcxDEPropertiesChange
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 119
      end
      object RefreshcxButton: TcxButton
        Left = 514
        Top = 2
        Width = 30
        Height = 27
        Hint = #1055#1077#1095#1072#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
      object StoragecxLCB: TcxLookupComboBox
        Left = 7
        Top = 4
        Hint = #1047#1072#1076#1072#1081#1090#1077' '#1089#1082#1083#1072#1076', '#1085#1072' '#1082#1086#1090#1086#1088#1099#1081' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1083#1089#1103' '#1087#1088#1080#1093#1086#1076' '#1090#1086#1074#1072#1088#1072
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownAutoSize = True
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
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 242
      end
    end
  end
  object ViewcxGrid: TcxGrid
    Left = 0
    Top = 35
    Width = 1099
    Height = 437
    Hint = #1044#1074#1086#1081#1085#1086#1077' '#1085#1072#1078#1072#1090#1080#1077' '#1084#1099#1096#1080' '#1087#1088#1080#1074#1086#1076#1080#1090' '#13#10#1074' '#1088#1077#1078#1080#1084' '#1087#1088#1086#1089#1084#1086#1090#1088#1072'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object ViewcxGridDBTV: TcxGridDBTableView
      PopupMenu = PM
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = EgaisBuyDS
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
        end
        item
          Kind = skCount
          Column = ViewcxGridDBTVSQNNO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      object ViewcxGridDBTVID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object ViewcxGridDBTVCONTRACTORID: TcxGridDBColumn
        DataBinding.FieldName = 'CONTRACTORID'
        Width = 71
      end
      object ViewcxGridDBTVCONTRACTORNAME: TcxGridDBColumn
        DataBinding.FieldName = 'CONTRACTORNAME'
        Width = 147
      end
      object ViewcxGridDBTVCONTRACTORINN: TcxGridDBColumn
        DataBinding.FieldName = 'CONTRACTORINN'
        Visible = False
      end
      object ViewcxGridDBTVCONTRACTORKPP: TcxGridDBColumn
        DataBinding.FieldName = 'CONTRACTORKPP'
        Visible = False
      end
      object ViewcxGridDBTVDISTRIBUTIONID: TcxGridDBColumn
        DataBinding.FieldName = 'DISTRIBUTIONID'
        Visible = False
      end
      object ViewcxGridDBTVADDRESS: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS'
        Width = 155
      end
      object ViewcxGridDBTVCLIENTREGID: TcxGridDBColumn
        DataBinding.FieldName = 'CLIENTREGID'
        Visible = False
        Width = 79
      end
      object ViewcxGridDBTVSALEID: TcxGridDBColumn
        DataBinding.FieldName = 'SALEID'
        Visible = False
        Width = 29
      end
      object ViewcxGridDBTVSQNNO: TcxGridDBColumn
        DataBinding.FieldName = 'SQNNO'
        Width = 87
      end
      object ViewcxGridDBTVPRESENT: TcxGridDBColumn
        DataBinding.FieldName = 'PRESENT'
        Width = 66
      end
      object ViewcxGridDBTVACTNUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'ACTNUMBER'
        Width = 95
      end
      object ViewcxGridDBTVACTPRESENT: TcxGridDBColumn
        DataBinding.FieldName = 'ACTPRESENT'
        Width = 89
      end
      object ViewcxGridDBTVWBREGID: TcxGridDBColumn
        DataBinding.FieldName = 'WBREGID'
        Visible = False
        Width = 89
      end
      object ViewcxGridDBTVNOTE: TcxGridDBColumn
        DataBinding.FieldName = 'NOTE'
        Width = 320
      end
      object ViewcxGridDBTVEGAISSTATUS: TcxGridDBColumn
        DataBinding.FieldName = 'EGAISSTATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = EgaisIL
        Properties.Items = <>
        Properties.ShowDescriptions = False
        Width = 52
      end
    end
    object ViewcxGL: TcxGridLevel
      GridView = ViewcxGridDBTV
    end
  end
  object DetailcxGrid: TcxGrid
    Left = 0
    Top = 480
    Width = 1099
    Height = 192
    Hint = #1044#1074#1086#1081#1085#1086#1077' '#1085#1072#1078#1072#1090#1080#1077' '#1084#1099#1096#1080' '#1087#1088#1080#1074#1086#1076#1080#1090' '#13#10#1074' '#1088#1077#1078#1080#1084' '#1087#1088#1086#1089#1084#1086#1090#1088#1072'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
    Align = alBottom
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    object DetailcxGridDBTV: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = EgaisBuyDetailDS
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
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
          Column = DetailcxGridDBTVDELTACOUNT
        end
        item
          Kind = skSum
          Column = DetailcxGridDBTVREALCOUNTUNIT
        end
        item
          Kind = skSum
          Column = DetailcxGridDBTVSALECOUNTUNIT
        end
        item
          Kind = skCount
          Column = DetailcxGridDBTVDRINKKINDID
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      object DetailcxGridDBTVID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Width = 49
      end
      object DetailcxGridDBTVDRINKSALEID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKSALEID'
        Visible = False
        Width = 65
      end
      object DetailcxGridDBTVDRINKKINDID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKKINDID'
        Width = 78
      end
      object DetailcxGridDBTVALCCODE: TcxGridDBColumn
        DataBinding.FieldName = 'ALCCODE'
        Width = 150
      end
      object DetailcxGridDBTVDRINKID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKID'
        Width = 99
      end
      object DetailcxGridDBTVDRINKNAME: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKNAME'
        Width = 225
      end
      object DetailcxGridDBTVINFORMA_REGID: TcxGridDBColumn
        DataBinding.FieldName = 'INFORMA_REGID'
        Width = 157
      end
      object DetailcxGridDBTVINFORMB_REGID: TcxGridDBColumn
        DataBinding.FieldName = 'INFORMB_REGID'
        Width = 102
      end
      object DetailcxGridDBTVSALECOUNTUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'SALECOUNTUNIT'
        Width = 70
      end
      object DetailcxGridDBTVREALCOUNTUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'REALCOUNTUNIT'
        Width = 66
      end
      object DetailcxGridDBTVDELTACOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'DELTACOUNT'
        Width = 70
      end
    end
    object DetailcxGridL: TcxGridLevel
      GridView = DetailcxGridDBTV
    end
  end
  object cxSplitter: TcxSplitter
    Left = 0
    Top = 472
    Width = 1099
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salBottom
    Control = DetailcxGrid
  end
  object EgaisSaleActCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = EgaisSaleActCDSBeforeOpen
    Left = 64
    Top = 88
    object EgaisSaleActCDSID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1040#1082#1090#1072' HOST'
      FieldName = 'ID'
    end
    object EgaisSaleActCDSCONTRACTORID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      FieldName = 'CONTRACTORID'
    end
    object EgaisSaleActCDSCONTRACTORNAME: TStringField
      DisplayLabel = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      FieldName = 'CONTRACTORNAME'
      Size = 64
    end
    object EgaisSaleActCDSCONTRACTORINN: TStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'CONTRACTORINN'
      Size = 16
    end
    object EgaisSaleActCDSCONTRACTORKPP: TStringField
      DisplayLabel = #1050#1055#1055
      FieldName = 'CONTRACTORKPP'
      Size = 16
    end
    object EgaisSaleActCDSDISTRIBUTIONID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1058#1058
      FieldName = 'DISTRIBUTIONID'
    end
    object EgaisSaleActCDSADDRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 64
      FieldName = 'ADDRESS'
      Size = 512
    end
    object EgaisSaleActCDSCLIENTREGID: TStringField
      DisplayLabel = #1050#1086#1076' '#1045#1043#1040#1048#1057' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      FieldName = 'CLIENTREGID'
      Size = 16
    end
    object EgaisSaleActCDSSALEID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'SALEID'
    end
    object EgaisSaleActCDSSQNNO: TStringField
      DisplayLabel = #8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'SQNNO'
      Size = 16
    end
    object EgaisSaleActCDSPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'PRESENT'
    end
    object EgaisSaleActCDSACTNUMBER: TStringField
      DisplayLabel = #8470' '#1072#1082#1090#1072
      FieldName = 'ACTNUMBER'
      Size = 64
    end
    object EgaisSaleActCDSACTPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1072#1082#1090#1072
      FieldName = 'ACTPRESENT'
    end
    object EgaisSaleActCDSWBREGID: TStringField
      DisplayLabel = #8470' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1058#1058#1053' '#1074' '#1045#1043#1040#1048#1057
      FieldName = 'WBREGID'
      Size = 32
    end
    object EgaisSaleActCDSNOTE: TStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      DisplayWidth = 64
      FieldName = 'NOTE'
      Size = 512
    end
    object EgaisSaleActCDSEGAISSTATUS: TSmallintField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1045#1043#1040#1048#1057
      FieldName = 'EGAISSTATUS'
    end
    object EgaisSaleActCDSFLAGCREATE: TSmallintField
      FieldName = 'FLAGCREATE'
      Visible = False
    end
    object EgaisSaleActCDSFLAGACCEPTED: TSmallintField
      FieldName = 'FLAGACCEPTED'
    end
  end
  object EgaisBuyDS: TDataSource
    DataSet = EgaisSaleActCDS
    OnDataChange = EgaisBuyDSDataChange
    Left = 96
    Top = 88
  end
  object EgaisSaleActDetailCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = EgaisSaleActDetailCDSBeforeOpen
    Left = 48
    Top = 408
    object EgaisSaleActDetailCDSID: TIntegerField
      FieldName = 'ID'
    end
    object EgaisSaleActDetailCDSDRINKSALEID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1086#1079#1080#1094#1080#1080' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'DRINKSALEID'
    end
    object EgaisSaleActDetailCDSDRINKKINDID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'DRINKKINDID'
    end
    object EgaisSaleActDetailCDSALCCODE: TStringField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072' '#1045#1043#1040#1048#1057
      FieldName = 'ALCCODE'
      Size = 32
    end
    object EgaisSaleActDetailCDSDRINKID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072' HOST'
      FieldName = 'DRINKID'
    end
    object EgaisSaleActDetailCDSDRINKNAME: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      DisplayWidth = 64
      FieldName = 'DRINKNAME'
      Size = 512
    end
    object EgaisSaleActDetailCDSINFORMA_REGID: TStringField
      DisplayLabel = #1057#1087#1088#1072#1074#1082#1072' '#1040
      FieldName = 'INFORMA_REGID'
      Size = 32
    end
    object EgaisSaleActDetailCDSINFORMB_REGID: TStringField
      DisplayLabel = #1057#1087#1088#1072#1074#1082#1072' '#1041
      FieldName = 'INFORMB_REGID'
      Size = 32
    end
    object EgaisSaleActDetailCDSSALECOUNTUNIT: TIntegerField
      DisplayLabel = #1055#1088#1086#1076#1072#1085#1086' '#1096#1090'.'
      FieldName = 'SALECOUNTUNIT'
    end
    object EgaisSaleActDetailCDSREALCOUNTUNIT: TIntegerField
      DisplayLabel = #1055#1088#1080#1085#1103#1090#1086' '#1096#1090'.'
      FieldName = 'REALCOUNTUNIT'
    end
    object EgaisSaleActDetailCDSDELTACOUNT: TIntegerField
      DisplayLabel = #1056#1072#1079#1085#1080#1094#1072
      FieldName = 'DELTACOUNT'
    end
  end
  object EgaisBuyDetailDS: TDataSource
    DataSet = EgaisSaleActDetailCDS
    Left = 80
    Top = 408
  end
  object PM: TPopupMenu
    Images = EgaisIL
    OnPopup = PMPopup
    Left = 128
    Top = 88
    object BuyCreateMI: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1074#1086#1079#1074#1088#1072#1090#1085#1091#1102' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1074' HOST'
      ImageIndex = 13
      OnClick = BuyCreateMIClick
    end
    object LineMI: TMenuItem
      Caption = '-'
    end
    object AcceptMI: TMenuItem
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077'/'#1086#1090#1082#1072#1079' '#1074' '#1045#1043#1040#1048#1057
      ImageIndex = 14
      OnClick = AcceptMIClick
    end
  end
  object EgaisIL: TImageList
    Left = 32
    Top = 88
  end
end
