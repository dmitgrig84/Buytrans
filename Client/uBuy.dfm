object fBuy: TfBuy
  Left = 409
  Top = 209
  Width = 1122
  Height = 614
  Caption = #1055#1088#1080#1077#1084#1082#1072
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
  object SearchTopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1114
    Height = 35
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object StorageFiltercxLCB: TcxLookupComboBox
      Left = 500
      Top = 8
      Hint = #1047#1072#1076#1072#1081#1090#1077' '#1089#1082#1083#1072#1076', '#1085#1072' '#1082#1086#1090#1086#1088#1099#1081' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1083#1089#1103' '#1087#1088#1080#1093#1086#1076' '#1090#1086#1074#1072#1088#1072
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
      Properties.OnCloseUp = DirectorViewFiltercxICBPropertiesCloseUp
      ShowHint = True
      Style.BorderStyle = ebsFlat
      TabOrder = 4
      OnEnter = DirectorViewFiltercxICBEnter
      Width = 69
    end
    object DirectorViewFiltercxICB: TcxImageComboBox
      Left = 16
      Top = 8
      Hint = #1047#1072#1076#1072#1081#1090#1077' '#1089#1090#1072#1090#1091#1089' '#1087#1088#1080#1093#1086#1076#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      ParentShowHint = False
      Properties.Images = DirectorViewImageList
      Properties.Items = <
        item
          Description = #1042' '#1087#1088#1086#1094#1077#1089#1089#1077' '#1074#1074#1086#1076#1072
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #1042' '#1086#1078#1080#1076#1072#1085#1080#1080' '#1085#1072' '#1088#1072#1079#1088#1077#1096#1077#1085#1080#1077
          ImageIndex = 1
          Value = 1
        end
        item
          Description = #1056#1072#1079#1088#1077#1096#1077#1085#1085#1099#1077
          ImageIndex = 2
          Value = 2
        end
        item
          Description = #1042' '#1086#1078#1080#1076#1072#1085#1080#1080' '#1086#1087#1088#1080#1093#1086#1076#1099#1074#1072#1085#1080#1103
          ImageIndex = 3
          Value = 3
        end>
      Properties.OnCloseUp = DirectorViewFiltercxICBPropertiesCloseUp
      ShowHint = True
      Style.BorderStyle = ebsFlat
      TabOrder = 0
      OnEnter = DirectorViewFiltercxICBEnter
      Width = 33
    end
    object NumberDocFiltercxTE: TcxTextEdit
      Left = 56
      Top = 8
      Hint = #1047#1072#1076#1072#1081#1090#1077' '#1080#1089#1082#1086#1084#1099#1081' '#8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      ParentShowHint = False
      ShowHint = True
      Style.BorderStyle = ebsFlat
      TabOrder = 1
      OnEnter = DirectorViewFiltercxICBEnter
      OnKeyPress = NumberDocFiltercxTEKeyPress
      Width = 49
    end
    object InputDateFiltercxDE: TcxDateEdit
      Left = 176
      Top = 8
      Hint = #1047#1072#1076#1072#1081#1090#1077' '#1076#1072#1090#1091', '#1079#1072' '#1082#1086#1090#1086#1088#1091#1102' '#1073#1091#1076#1091#1090' '#1086#1090#1086#1073#1088#1072#1085#1099' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
      ParentShowHint = False
      Properties.OnCloseUp = DirectorViewFiltercxICBPropertiesCloseUp
      ShowHint = True
      Style.BorderStyle = ebsFlat
      TabOrder = 2
      OnEnter = DirectorViewFiltercxICBEnter
      Width = 89
    end
    object ProviderFiltercxLCB: TcxLookupComboBox
      Left = 276
      Top = 8
      Hint = #1047#1072#1076#1072#1081#1090#1077' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072', '#1085#1072#1082#1083#1072#1076#1085#1099#1077' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1073#1091#1076#1091#1090' '#1086#1090#1086#1073#1088#1072#1085#1099
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
      Properties.OnCloseUp = DirectorViewFiltercxICBPropertiesCloseUp
      ShowHint = True
      Style.BorderStyle = ebsFlat
      TabOrder = 5
      OnEnter = DirectorViewFiltercxICBEnter
      Width = 69
    end
    object BuyTypeFiltercxLCB: TcxLookupComboBox
      Left = 716
      Top = 8
      Hint = #1047#1072#1076#1072#1081#1090#1077' '#1090#1080#1087' '#1087#1088#1080#1093#1086#1076#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
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
      Properties.OnCloseUp = DirectorViewFiltercxICBPropertiesCloseUp
      ShowHint = True
      Style.BorderStyle = ebsFlat
      TabOrder = 6
      OnEnter = DirectorViewFiltercxICBEnter
      Width = 69
    end
    object Panel2: TPanel
      Left = 1077
      Top = 2
      Width = 35
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
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
  object BuycxGrid: TcxGrid
    Left = 0
    Top = 35
    Width = 1114
    Height = 351
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfStandard
    object BuycxGridDBTV: TcxGridDBTableView
      PopupMenu = BuyPM
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = BuycxGridDBTVCustomDrawCell
      DataController.DataSource = BuyDS
      DataController.DetailKeyFieldNames = 'ID'
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = BuycxGridDBTVWHOLESUM
        end
        item
          Kind = skSum
          Column = BuycxGridDBTVWHOLESUM
        end
        item
          Kind = skSum
          Column = BuycxGridDBTVPROVIDERPRICESUM
        end
        item
          Kind = skSum
          Position = spFooter
          Column = BuycxGridDBTVPROVIDERPRICESUM
        end
        item
          Kind = skSum
          Position = spFooter
          Column = BuycxGridDBTVNDSSUM
        end
        item
          Kind = skSum
          Column = BuycxGridDBTVNDSSUM
        end
        item
          Kind = skCount
          Position = spFooter
          Column = BuycxGridDBTVINPUTNUMBER
        end
        item
          Kind = skCount
          Column = BuycxGridDBTVINPUTNUMBER
        end
        item
          Kind = skSum
          Position = spFooter
          Column = BuycxGridDBTVBOTTLECOUNT
        end
        item
          Kind = skSum
          Column = BuycxGridDBTVBOTTLECOUNT
        end
        item
          Kind = skSum
          Position = spFooter
          Column = BuycxGridDBTVPROVIDERNDSSUM
        end
        item
          Kind = skSum
          Position = spFooter
          Column = BuycxGridDBTVSTORAGESUM
        end
        item
          Kind = skSum
          Column = BuycxGridDBTVSTORAGESUM
        end
        item
          Kind = skSum
          Column = BuycxGridDBTVPROVIDERNDSSUM
        end
        item
          Kind = skSum
          Position = spFooter
          Column = BuycxGridDBTVSUMRETAILPRICE
        end
        item
          Kind = skSum
          Column = BuycxGridDBTVSUMRETAILPRICE
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Column = BuycxGridDBTVNDSSUM
        end
        item
          Format = ',0.000;-,0.000'
          Kind = skSum
          Column = BuycxGridDBTVWHOLESUM
        end
        item
          Format = ',0.000;-,0.000'
          Kind = skSum
          Column = BuycxGridDBTVPROVIDERPRICESUM
        end
        item
          Kind = skCount
          Column = BuycxGridDBTVINPUTNUMBER
        end
        item
          Kind = skSum
          Column = BuycxGridDBTVBOTTLECOUNT
        end
        item
          Format = ',0.000;-,0.000'
          Kind = skSum
          Column = BuycxGridDBTVPROVIDERNDSSUM
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Column = BuycxGridDBTVSTORAGESUM
        end
        item
          Format = ',0.000;-,0.000'
          Kind = skSum
          Column = BuycxGridDBTVSUMRETAILPRICE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      Styles.Footer = cxStyle1
      OnCustomDrawColumnHeader = BuycxGridDBTVCustomDrawColumnHeader
      object BuycxGridDBTVNOTCOMPLITESUM: TcxGridDBColumn
        DataBinding.FieldName = 'NotCompliteSum'
        Visible = False
      end
      object BuycxGridDBTVDIRECTORVIEW: TcxGridDBColumn
        DataBinding.FieldName = 'DIRECTORVIEW'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DirectorViewImageList
        Properties.Items = <
          item
            Description = #1042' '#1087#1088#1086#1094#1077#1089#1089#1077' '#1074#1074#1086#1076#1072
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #1042' '#1086#1078#1080#1076#1072#1085#1080#1080' '#1085#1072' '#1088#1072#1079#1088#1077#1096#1077#1085#1080#1077
            ImageIndex = 1
            Value = 1
          end
          item
            Description = #1056#1072#1079#1088#1077#1096#1077#1085#1085#1099#1077
            ImageIndex = 2
            Value = 2
          end
          item
            Description = #1042' '#1086#1078#1080#1076#1072#1085#1080#1080' '#1086#1087#1088#1080#1093#1086#1076#1099#1074#1072#1085#1080#1103
            ImageIndex = 3
            Value = 3
          end>
        Properties.ShowDescriptions = False
        Width = 37
      end
      object BuycxGridDBTVID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object BuycxGridDBTVADDBUY: TcxGridDBColumn
        DataBinding.FieldName = 'ADDBUY'
        Visible = False
      end
      object BuycxGridDBTVINPUTNUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'INPUTNUMBER'
        Width = 49
      end
      object BuycxGridDBTVNUMBERCF: TcxGridDBColumn
        DataBinding.FieldName = 'NUMBERCF'
        Width = 45
      end
      object BuycxGridDBTVINPUTDATE: TcxGridDBColumn
        DataBinding.FieldName = 'INPUTDATE'
        Width = 57
      end
      object BuycxGridDBTVWHENINSERT: TcxGridDBColumn
        DataBinding.FieldName = 'WHENINSERT'
        Width = 57
      end
      object BuycxGridDBTVFIRMNAME: TcxGridDBColumn
        DataBinding.FieldName = 'FIRMNAME'
        Width = 72
      end
      object BuycxGridDBTVTRADEEMPLOYEENAME: TcxGridDBColumn
        DataBinding.FieldName = 'TRADEEMPLOYEENAME'
        Width = 64
      end
      object BuycxGridDBTVADDRESS: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS'
        Width = 114
      end
      object BuycxGridDBTVSTORAGENAME: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGENAME'
        Width = 62
      end
      object BuycxGridDBTVBOTTLECOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'BOTTLECOUNT'
        Options.Filtering = False
        Width = 70
      end
      object BuycxGridDBTVPROVIDERPRICESUM: TcxGridDBColumn
        DataBinding.FieldName = 'PROVIDERPRICESUM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Options.Filtering = False
        Width = 64
      end
      object BuycxGridDBTVPROVIDERNDSSUM: TcxGridDBColumn
        DataBinding.FieldName = 'PROVIDERNDSSUM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Options.Filtering = False
        Width = 64
      end
      object BuycxGridDBTVWHOLESUM: TcxGridDBColumn
        DataBinding.FieldName = 'WHOLESUM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Options.Filtering = False
        Width = 64
      end
      object BuycxGridDBTVSUMRETAILPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'SUMRETAILPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Options.Filtering = False
        Width = 64
      end
      object BuycxGridDBTVTICKEDFORM: TcxGridDBColumn
        DataBinding.FieldName = 'TICKEDFORM'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = BuyTickedFormIL
        Properties.Items = <
          item
            Description = #1055#1088#1086#1074#1086#1076#1085#1072#1103
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #1053#1077#1087#1088#1086#1074#1086#1076#1085#1072#1103
            ImageIndex = 1
            Value = 2
          end>
        Properties.ShowDescriptions = False
        Width = 44
      end
      object BuycxGridDBTVBUYTYPENAME: TcxGridDBColumn
        DataBinding.FieldName = 'BUYTYPENAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 94
      end
      object BuycxGridDBTVSTORAGESUM: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGESUM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Visible = False
      end
      object BuycxGridDBTVNDSSUM: TcxGridDBColumn
        DataBinding.FieldName = 'NDSSUM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Visible = False
      end
      object BuycxGridDBTVSTORAGETYPEID: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGETYPEID'
        Visible = False
      end
      object BuycxGridDBTVFIRMID: TcxGridDBColumn
        DataBinding.FieldName = 'FIRMID'
        Visible = False
      end
      object BuycxGridDBTVWHO: TcxGridDBColumn
        DataBinding.FieldName = 'WHO'
        Visible = False
      end
      object BuycxGridDBTVTRADENAME: TcxGridDBColumn
        DataBinding.FieldName = 'TRADENAME'
        Visible = False
      end
      object BuycxGridDBTVBUYTYPEID: TcxGridDBColumn
        DataBinding.FieldName = 'BUYTYPEID'
        Visible = False
      end
      object BuycxGridDBTVBUYINPUTNUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'BUYINPUTNUMBER'
        Visible = False
      end
      object BuycxGridDBTVWHODIRECTORVIEW: TcxGridDBColumn
        DataBinding.FieldName = 'WHODIRECTORVIEW'
        Visible = False
      end
      object BuycxGridDBTVWHENDIRECTORVIEW: TcxGridDBColumn
        DataBinding.FieldName = 'WHENDIRECTORVIEW'
        Visible = False
      end
      object BuycxGridDBTVSTORAGEID: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGEID'
        Visible = False
      end
      object BuycxGridDBTVINVENTORYID: TcxGridDBColumn
        DataBinding.FieldName = 'INVENTORYID'
        Visible = False
      end
      object BuycxGridDBTVDISTRIBUTIONID: TcxGridDBColumn
        DataBinding.FieldName = 'DISTRIBUTIONID'
        Visible = False
      end
      object BuycxGridDBTVTRADEEMPLOYEEID: TcxGridDBColumn
        DataBinding.FieldName = 'TRADEEMPLOYEEID'
        Visible = False
      end
      object BuycxGridDBTVSHORTNAME: TcxGridDBColumn
        DataBinding.FieldName = 'SHORTNAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 95
      end
      object BuycxGridDBTVLICENSE: TcxGridDBColumn
        DataBinding.FieldName = 'LICENSE'
        Width = 64
      end
      object BuycxGridDBTVDEPARTMENTNAME: TcxGridDBColumn
        DataBinding.FieldName = 'DEPARTMENTNAME'
        Width = 99
      end
      object BuycxGridDBTVCARRIERNAME: TcxGridDBColumn
        DataBinding.FieldName = 'CARRIERNAME'
        Width = 256
      end
      object BuycxGridDBTVINBUY: TcxGridDBColumn
        DataBinding.FieldName = 'INBUY'
        Visible = False
      end
      object BuycxGridDBTVSTORAGEDISTRIBUTIONID: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGEDISTRIBUTIONID'
        Visible = False
      end
      object BuycxGridDBTVISDUMMYSTORAGE: TcxGridDBColumn
        DataBinding.FieldName = 'ISDUMMYSTORAGE'
        Visible = False
      end
      object BuycxGridDBTVSALEID: TcxGridDBColumn
        DataBinding.FieldName = 'SALEID'
        Visible = False
      end
      object BuycxGridDBTVVETISBUYSTATUSID: TcxGridDBColumn
        DataBinding.FieldName = 'VETISBUYSTATUSID'
        Visible = False
      end
    end
    object BuycxGridLevel: TcxGridLevel
      GridView = BuycxGridDBTV
    end
  end
  object BuyDetailcxGrid: TcxGrid
    Left = 0
    Top = 394
    Width = 1114
    Height = 193
    Align = alBottom
    TabOrder = 2
    LookAndFeel.Kind = lfStandard
    object BuyDetailcxGridDBTV: TcxGridDBTableView
      PopupMenu = BuyDetailPM
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = BuyDetailcxGridDBTVCustomDrawCell
      DataController.DataSource = BuyDetailDS
      DataController.KeyFieldNames = 'ID'
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
          Column = BuyDetailcxGridDBTVDRINKKINDID
        end
        item
          Kind = skCount
          Column = BuyDetailcxGridDBTVDRINKKINDID
        end
        item
          Kind = skSum
          Position = spFooter
          Column = BuyDetailcxGridDBTVSUMPRICE
        end
        item
          Kind = skSum
          Column = BuyDetailcxGridDBTVSUMPRICE
        end
        item
          Kind = skSum
          Position = spFooter
          Column = BuyDetailcxGridDBTVSUMNDS
        end
        item
          Kind = skSum
          Column = BuyDetailcxGridDBTVSUMNDS
        end
        item
          Kind = skSum
          Position = spFooter
          Column = BuyDetailcxGridDBTVBOTTLECOUNT
        end
        item
          Kind = skSum
          Column = BuyDetailcxGridDBTVBOTTLECOUNT
        end
        item
          Kind = skSum
          Position = spFooter
          Column = BuyDetailcxGridDBTVSALEBOXCOUNT
        end
        item
          Kind = skSum
          Column = BuyDetailcxGridDBTVSALEBOXCOUNT
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
          Column = BuyDetailcxGridDBTVDRINKKINDID
        end
        item
          Format = ',0.000;-,0.000'
          Kind = skSum
          Column = BuyDetailcxGridDBTVSUMPRICE
        end
        item
          Format = ',0.000;-,0.000'
          Kind = skSum
          Column = BuyDetailcxGridDBTVSUMNDS
        end
        item
          Kind = skSum
          Column = BuyDetailcxGridDBTVBOTTLECOUNT
        end
        item
          Kind = skSum
          Column = BuyDetailcxGridDBTVSALEBOXCOUNT
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Column = BuyDetailcxGridDBTVSUMRETAILPRICE
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Column = BuyDetailcxGridDBTVSUMPROFIT
        end
        item
          Format = ',0.000;-,0.000'
          Kind = skSum
          Column = BuyDetailcxGridDBTVSUMPROVIDERPRICE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      Styles.Footer = cxStyle1
      object BuyDetailcxGridDBTVID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object BuyDetailcxGridDBTVBUYID: TcxGridDBColumn
        DataBinding.FieldName = 'BUYID'
        Visible = False
        Width = 85
      end
      object BuyDetailcxGridDBTVDRINKKINDID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKKINDID'
        Width = 69
      end
      object BuyDetailcxGridDBTVDRINKID: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
        DataBinding.FieldName = 'DRINKID'
        Width = 71
      end
      object BuyDetailcxGridDBTVPRINTMARK: TcxGridDBColumn
        DataBinding.FieldName = 'PRINTMARK'
        Width = 115
      end
      object BuyDetailcxGridDBTVMAXRETAILPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'MAXRETAILPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Width = 76
      end
      object BuyDetailcxGridDBTVBUYBOX: TcxGridDBColumn
        DataBinding.FieldName = 'BUYBOX'
        Width = 71
      end
      object BuyDetailcxGridDBTVSALEBOX: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOX'
        Width = 63
      end
      object BuyDetailcxGridDBTVPRICECONTRACTORDER: TcxGridDBColumn
        DataBinding.FieldName = 'PRICECONTRACTORDER'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Options.Filtering = False
        Width = 61
      end
      object BuyDetailcxGridDBTVNDSCONTRACTORDER: TcxGridDBColumn
        DataBinding.FieldName = 'NDSCONTRACTORDER'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Options.Filtering = False
        Width = 59
      end
      object BuyDetailcxGridDBTVSSPRICECONTRACTORDER: TcxGridDBColumn
        DataBinding.FieldName = 'SSPRICECONTRACTORDER'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Visible = False
      end
      object BuyDetailcxGridDBTVRETAILPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'RETAILPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Options.Filtering = False
        Width = 72
      end
      object BuyDetailcxGridDBTVBOTTLECOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'COUNTUNIT'
        Options.Filtering = False
        Width = 64
      end
      object BuyDetailcxGridDBTVSUMPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'SUMPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Options.Filtering = False
        Width = 79
      end
      object BuyDetailcxGridDBTVSUMNDS: TcxGridDBColumn
        DataBinding.FieldName = 'SUMNDS'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Options.Filtering = False
        Width = 71
      end
      object BuyDetailcxGridDBTVSUMPROVIDERPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'SUMPROVIDERPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Visible = False
        Width = 90
      end
      object BuyDetailcxGridDBTVSUMRETAILPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'SUMRETAILPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Options.Filtering = False
      end
      object BuyDetailcxGridDBTVSUMPROFIT: TcxGridDBColumn
        Caption = #1053#1072#1094#1077#1085#1082#1072', '#1088#1091#1073'.'
        DataBinding.FieldName = 'SUMPROFIT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Options.Filtering = False
      end
      object BuyDetailcxGridDBTVSALEBOXCOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'SALEBOXCOUNT'
        Options.Filtering = False
        Width = 74
      end
      object BuyDetailcxGridDBTVSTORAGENAME: TcxGridDBColumn
        DataBinding.FieldName = 'STORAGENAME'
        Width = 76
      end
      object BuyDetailcxGridDBTVLICENSE: TcxGridDBColumn
        DataBinding.FieldName = 'LICENSE'
        Width = 119
      end
      object BuyDetailcxGridDBTVDRINKGROUPTYPENAME: TcxGridDBColumn
        Caption = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088
        DataBinding.FieldName = 'DRINKGROUPTYPENAME'
        Width = 109
      end
      object BuyDetailcxGridDBTVDATEFACTORY: TcxGridDBColumn
        DataBinding.FieldName = 'DATEFACTORY'
        Width = 153
      end
      object BuyDetailcxGridDBTVEXCISELINE: TcxGridDBColumn
        DataBinding.FieldName = 'EXCISELINE'
        Width = 168
      end
      object BuyDetailcxGridDBTVLINKTOSALE: TcxGridDBColumn
        DataBinding.FieldName = 'LINKTOSALE'
      end
      object BuyDetailcxGridDBTVVETISBUYDETAILSTATUSID: TcxGridDBColumn
        DataBinding.FieldName = 'VETISBUYDETAILSTATUSID'
        Visible = False
      end
    end
    object BuyDetailcxGridLevel: TcxGridLevel
      GridView = BuyDetailcxGridDBTV
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 386
    Width = 1114
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salBottom
    Control = BuyDetailcxGrid
  end
  object BuyCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SQNNO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Present'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'StorageId'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProviderId'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'buytypeid'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'directorview'
        ParamType = ptInput
      end>
    ProviderName = 'BuyDSP'
    Left = 116
    Top = 149
    object BuyCDSID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object BuyCDSADDBUY: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'ADDBUY'
      Visible = False
    end
    object BuyCDSINPUTNUMBER: TStringField
      DisplayLabel = #8470' '#1076#1086#1082'.'
      DisplayWidth = 64
      FieldName = 'INPUTNUMBER'
      Size = 64
    end
    object BuyCDSINPUTDATE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'INPUTDATE'
    end
    object BuyCDSFIRMNAME: TStringField
      DisplayLabel = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      FieldName = 'FIRMNAME'
      Size = 64
    end
    object BuyCDSSTORAGENAME: TStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'STORAGENAME'
      Size = 30
    end
    object BuyCDSTICKEDFORM: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'TICKEDFORM'
    end
    object BuyCDSSTORAGESUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1087#1086#1079#1080#1094#1080#1081
      FieldName = 'STORAGESUM'
    end
    object BuyCDSNDSSUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1053#1044#1057' '#1087#1086#1079#1080#1094#1080#1081
      FieldName = 'NDSSUM'
    end
    object BuyCDSPROVIDERPRICESUM: TBCDField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PROVIDERPRICESUM'
      Size = 3
    end
    object BuyCDSPROVIDERNDSSUM: TBCDField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1053#1044#1057
      FieldName = 'PROVIDERNDSSUM'
      Size = 3
    end
    object BuyCDSWHOLESUM: TBCDField
      DisplayLabel = #1054#1073#1097#1072#1103' '#1089#1091#1084#1084#1072
      FieldName = 'WHOLESUM'
      Size = 3
    end
    object BuyCDSSUMRETAILPRICE: TBCDField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1085#1072' '#1087#1086#1083#1082#1077
      FieldName = 'SUMRETAILPRICE'
      Size = 2
    end
    object BuyCDSSTORAGETYPEID: TIntegerField
      FieldName = 'STORAGETYPEID'
    end
    object BuyCDSBUYTYPENAME: TStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1080#1093#1086#1076#1072
      FieldName = 'BUYTYPENAME'
      Size = 60
    end
    object BuyCDSFIRMID: TIntegerField
      FieldName = 'FIRMID'
      Visible = False
    end
    object BuyCDSBOTTLECOUNT: TFloatField
      DisplayLabel = #1045#1076'. '#1090#1086#1074#1072#1088#1072
      FieldName = 'BOTTLECOUNT'
    end
    object BuyCDSNUMBERCF: TStringField
      DisplayLabel = #8470' '#1057#1095'.-'#1092'.'
      DisplayWidth = 64
      FieldName = 'NUMBERCF'
      Size = 64
    end
    object BuyCDSWHENINSERT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072
      FieldName = 'WHENINSERT'
    end
    object BuyCDSWHO: TStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1090#1086#1088
      FieldName = 'WHO'
      Size = 25
    end
    object BuyCDSADDRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'ADDRESS'
      Size = 64
    end
    object BuyCDSTRADENAME: TStringField
      FieldName = 'TRADENAME'
      Size = 64
    end
    object BuyCDSLICENSE: TStringField
      DisplayLabel = #1051#1080#1094#1077#1085#1079#1080#1103
      FieldName = 'LICENSE'
      Size = 32
    end
    object BuyCDSMARKETNAME: TStringField
      FieldName = 'MARKETNAME'
      Size = 24
    end
    object BuyCDSBUYTYPEID: TIntegerField
      FieldName = 'BUYTYPEID'
      Visible = False
    end
    object BuyCDSBUYINPUTNUMBER: TIntegerField
      FieldName = 'BUYINPUTNUMBER'
      Visible = False
    end
    object BuyCDSDIRECTORVIEW: TIntegerField
      DisplayLabel = #1057#1090'.'
      FieldName = 'DIRECTORVIEW'
      Visible = False
    end
    object BuyCDSWHODIRECTORVIEW: TStringField
      DisplayLabel = #1050#1090#1086' '#1087#1088#1086#1074#1077#1088#1103#1083
      FieldName = 'WHODIRECTORVIEW'
      Size = 25
    end
    object BuyCDSWHENDIRECTORVIEW: TDateTimeField
      DisplayLabel = #1050#1086#1075#1076#1072' '#1087#1088#1086#1074#1077#1088#1103#1083
      FieldName = 'WHENDIRECTORVIEW'
    end
    object BuyCDSSTORAGEID: TIntegerField
      FieldName = 'STORAGEID'
      Visible = False
    end
    object BuyCDSINVENTORYID: TIntegerField
      FieldName = 'INVENTORYID'
      Visible = False
    end
    object BuyCDSDISTRIBUTIONID: TIntegerField
      FieldName = 'DISTRIBUTIONID'
      Visible = False
    end
    object BuyCDSTRADEEMPLOYEEID: TIntegerField
      FieldName = 'TRADEEMPLOYEEID'
      Visible = False
    end
    object BuyCDSSHORTNAME: TStringField
      DisplayLabel = #1050#1090#1086' '#1087#1088#1086#1074#1077#1088#1103#1083
      FieldName = 'SHORTNAME'
      Size = 32
    end
    object BuyCDSNOTCOMPLITESUM: TSmallintField
      FieldName = 'NOTCOMPLITESUM'
    end
    object BuyCDSDEPARTMENTID: TIntegerField
      FieldName = 'DEPARTMENTID'
    end
    object BuyCDSDEPARTMENTNAME: TStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
      FieldName = 'DEPARTMENTNAME'
      Size = 32
    end
    object BuyCDSCARRIERID: TIntegerField
      FieldName = 'CARRIERID'
    end
    object BuyCDSCARRIERCARMARK: TStringField
      FieldName = 'CARRIERCARMARK'
      Size = 32
    end
    object BuyCDSCARRIERCARLICENSEPLATE: TStringField
      FieldName = 'CARRIERCARLICENSEPLATE'
      Size = 64
    end
    object BuyCDSCARRIERNAME: TStringField
      DisplayLabel = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
      DisplayWidth = 32
      FieldName = 'CARRIERNAME'
      Size = 128
    end
    object BuyCDSMAXRETAILPRICESUM: TFloatField
      FieldName = 'MAXRETAILPRICESUM'
    end
    object BuyCDSINBUY: TSmallintField
      FieldName = 'INBUY'
    end
    object BuyCDSCORRECTION: TSmallintField
      FieldName = 'CORRECTION'
    end
    object BuyCDSTRADEEMPLOYEENAME: TStringField
      DisplayLabel = #1054#1090#1074'.'
      FieldName = 'TRADEEMPLOYEENAME'
      Size = 32
    end
    object BuyCDSISDUMMYSTORAGE: TIntegerField
      FieldName = 'ISDUMMYSTORAGE'
    end
    object BuyCDSSALEID: TIntegerField
      FieldName = 'SALEID'
    end
    object BuyCDSBANKACCOUNT: TStringField
      FieldName = 'BANKACCOUNT'
    end
    object BuyCDSSTORAGEDISTRIBUTIONID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1058#1058' '#1089#1082#1083#1072#1076#1072' '#1088#1086#1079#1085#1080#1094#1099
      FieldName = 'STORAGEDISTRIBUTIONID'
    end
    object BuyCDSACTIVITYKINDID: TIntegerField
      FieldName = 'ACTIVITYKINDID'
    end
    object BuyCDSVETISBUYSTATUSID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1090#1072#1090#1091#1089#1072' '#1042#1045#1058#1048#1057' '#1087#1088#1080#1093#1086#1076#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'VETISBUYSTATUSID'
    end
  end
  object BuyDS: TDataSource
    DataSet = BuyCDS
    OnDataChange = BuyDSDataChange
    Left = 156
    Top = 149
  end
  object BuyPM: TPopupMenu
    Images = fMain.MenuIL
    OnPopup = BuyPMPopup
    Left = 192
    Top = 168
    object AddBuyMI: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 0
      ShortCut = 45
      OnClick = AddBuyMIClick
    end
    object EditBuyMI: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 1
      OnClick = EditBuyMIClick
    end
    object DeleteBuyMI: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 2
      ShortCut = 46
      OnClick = DeleteBuyMIClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object PrintBuyMI: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Default = True
      ImageIndex = 3
      object miNarad: TMenuItem
        Caption = #1053#1072#1088#1103#1076' '#1085#1072' '#1087#1088#1080#1077#1084#1082#1091
        ShortCut = 120
        OnClick = miNaradClick
      end
      object miMX1: TMenuItem
        Caption = 'MX-1'
        ShortCut = 16504
        OnClick = miMX1Click
      end
      object miMX3: TMenuItem
        Caption = 'MX-3'
        ShortCut = 8312
        OnClick = miMX3Click
      end
    end
    object ExportToExcelBuyMI: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      ImageIndex = 8
      OnClick = ExportToExcelBuyMIClick
    end
    object PrintTorgBuyMI: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1058#1054#1056#1043'12'
      ImageIndex = 3
      OnClick = PrintTorgBuyMIClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object AccessBuyMI: TMenuItem
      Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      ImageIndex = 5
      OnClick = AccessBuyMIClick
    end
    object AccessComeBuyMI: TMenuItem
      Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1086#1087#1088#1080#1093#1086#1076#1086#1074#1072#1085#1080#1077
      ImageIndex = 4
      OnClick = AccessComeBuyMIClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SaleDummyMI: TMenuItem
      Caption = #1060#1080#1082#1090#1080#1074#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      ImageIndex = 13
      OnClick = SaleDummyMIClick
    end
    object TransTermMI: TMenuItem
      Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1077#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      ImageIndex = 11
      OnClick = TransTermMIClick
    end
    object TransOrgMI: TMenuItem
      Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1085#1072' '#1058#1044' "'#1056#1072#1089#1090#1103#1087#1080#1085#1086'"'
      ImageIndex = 19
      OnClick = TransOrgMIClick
    end
    object EgaisLinaMI: TMenuItem
      Caption = '-'
    end
    object EgaisMI: TMenuItem
      Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074' '#1080#1079' '#1045#1043#1040#1048#1057
      ImageIndex = 18
      OnClick = EgaisMIClick
    end
    object SaleActMI: TMenuItem
      Caption = #1040#1082#1090#1099' '#1088#1072#1079#1085#1086#1075#1083#1072#1089#1080#1081' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1077#1081' '#1080#1079' '#1045#1043#1040#1048#1057
      ImageIndex = 20
      OnClick = SaleActMIClick
    end
    object RDILineMI: TMenuItem
      Caption = '-'
    end
    object BuyRDIMI: TMenuItem
      Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1074#1085#1077#1096#1085#1080#1093' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074
      ImageIndex = 35
      OnClick = BuyRDIMIClick
    end
    object VetisVSDLinkMI: TMenuItem
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1042#1057#1044
      ImageIndex = 37
      OnClick = VetisVSDLinkMIClick
    end
  end
  object BuyDetailPM: TPopupMenu
    Images = fMain.MenuIL
    OnPopup = BuyDetailPMPopup
    Left = 196
    Top = 201
    object AddBuyDetailMI: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' (INS)'
      Default = True
      ImageIndex = 0
      OnClick = AddBuyDetailMIClick
    end
    object EditBuyDetailMI: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1079#1080#1094#1080#1102
      ImageIndex = 1
      OnClick = EditBuyDetailMIClick
    end
    object DeleteBuyDetailMI: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' (DEL)'
      ImageIndex = 2
      OnClick = DeleteBuyDetailMIClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object DeleteLinkToSaleMI: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1087#1088#1080#1074#1103#1079#1082#1091' '#1082' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080
      ImageIndex = 15
      OnClick = DeleteLinkToSaleMIClick
    end
    object AutoWidthMI: TMenuItem
      Caption = #1042' '#1087#1088#1077#1076#1077#1083#1072#1093' '#1092#1086#1088#1084#1099
      ImageIndex = 16
      OnClick = AutoWidthMIClick
    end
  end
  object BuyDetailDS: TDataSource
    DataSet = BuyDetailCDS
    Left = 156
    Top = 185
  end
  object BuyDetailCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BuyId'
        ParamType = ptInput
      end>
    ProviderName = 'BuyDetailDSP'
    Left = 116
    Top = 185
    object BuyDetailCDSID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1086#1079#1080#1094#1080#1080
      FieldName = 'ID'
      Visible = False
    end
    object BuyDetailCDSBUYID: TIntegerField
      FieldName = 'BUYID'
    end
    object BuyDetailCDSDRINKKINDID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'DRINKKINDID'
    end
    object BuyDetailCDSDRINKID: TIntegerField
      FieldName = 'DRINKID'
      Required = True
    end
    object BuyDetailCDSBUYBOX: TStringField
      DisplayLabel = #1058#1072#1088#1072' '#1087#1088#1080#1093#1086#1076#1072
      FieldName = 'BUYBOX'
      Size = 31
    end
    object BuyDetailCDSSALEBOX: TStringField
      DisplayLabel = #1058#1072#1088#1072' '#1087#1088#1086#1076#1072#1078#1080
      FieldName = 'SALEBOX'
      Size = 31
    end
    object BuyDetailCDSPRICECONTRACTORDER: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICECONTRACTORDER'
    end
    object BuyDetailCDSNDSCONTRACTORDER: TFloatField
      DisplayLabel = #1053#1044#1057
      FieldName = 'NDSCONTRACTORDER'
    end
    object BuyDetailCDSSSPRICECONTRACTORDER: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1089' '#1053#1044#1057
      FieldName = 'SSPRICECONTRACTORDER'
      Visible = False
    end
    object BuyDetailCDSSUMPRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'SUMPRICE'
    end
    object BuyDetailCDSSUMNDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1053#1044#1057
      FieldName = 'SUMNDS'
    end
    object BuyDetailCDSSUMPROVIDERPRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089' '#1053#1044#1057
      FieldName = 'SUMPROVIDERPRICE'
      Visible = False
    end
    object BuyDetailCDSDRINKGROUPNAME: TStringField
      DisplayLabel = #1043#1088#1091#1087#1087#1072' '#1090#1086#1074#1072#1088#1072
      FieldName = 'DRINKGROUPNAME'
      Size = 25
    end
    object BuyDetailCDSDATEFACTORY: TStringField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1080#1079'-'#1074#1072
      FieldName = 'DATEFACTORY'
      Size = 50
    end
    object BuyDetailCDSSTORAGEID: TIntegerField
      FieldName = 'STORAGEID'
    end
    object BuyDetailCDSSTORAGENAME: TStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'STORAGENAME'
      Size = 30
    end
    object BuyDetailCDSPRINTMARK: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldName = 'PRINTMARK'
      Size = 100
    end
    object BuyDetailCDSDISTRIBUTIONID: TIntegerField
      FieldName = 'DISTRIBUTIONID'
    end
    object BuyDetailCDSLICENSE: TStringField
      DisplayLabel = #1051#1080#1094#1077#1085#1079#1080#1103
      FieldName = 'LICENSE'
      Size = 32
    end
    object BuyDetailCDSCOUNTUNIT: TFloatField
      DisplayLabel = #1045#1076'. '#1090#1086#1074#1072#1088#1072
      FieldName = 'COUNTUNIT'
    end
    object BuyDetailCDSSALEBOXCOUNT: TFloatField
      DisplayLabel = #1059#1087#1072#1082#1086#1074#1086#1082' '#1074' '#1090#1072#1088#1077' '#1087#1088#1086#1076#1072#1078#1080
      FieldName = 'SALEBOXCOUNT'
    end
    object BuyDetailCDSDRINKGROUPTYPENAME: TIBStringField
      FieldName = 'DRINKGROUPTYPENAME'
      Origin = 'DRINKGROUPTYPE.NAME'
      Required = True
      Size = 128
    end
    object BuyDetailCDSIMPORTERID: TIntegerField
      FieldName = 'IMPORTERID'
    end
    object BuyDetailCDSMAXRETAILPRICE: TFloatField
      DisplayLabel = #1052#1072#1082#1089#1056#1086#1079#1085#1062#1077#1085#1072
      FieldName = 'MAXRETAILPRICE'
    end
    object BuyDetailCDSEXCISELINE: TStringField
      DisplayLabel = #1040#1082#1094#1080#1079#1099
      DisplayWidth = 32
      FieldName = 'EXCISELINE'
      Size = 1024
    end
    object BuyDetailCDSBUYBOXID: TIntegerField
      FieldName = 'BUYBOXID'
    end
    object BuyDetailCDSSALEBOXID: TIntegerField
      FieldName = 'SALEBOXID'
    end
    object BuyDetailCDSBARCODE: TStringField
      FieldName = 'BARCODE'
      Size = 13
    end
    object BuyDetailCDSLINKTOSALE: TStringField
      DisplayLabel = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1102
      DisplayWidth = 16
      FieldName = 'LINKTOSALE'
      Size = 128
    end
    object BuyDetailCDSRETAILPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1085#1072' '#1087#1086#1083#1082#1077
      FieldName = 'RETAILPRICE'
    end
    object BuyDetailCDSSUMRETAILPRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1085#1072' '#1087#1086#1083#1082#1077
      FieldName = 'SUMRETAILPRICE'
    end
    object BuyDetailCDSSUMPROFIT: TFloatField
      DisplayLabel = #1053#1072#1094#1077#1085#1082#1072
      FieldName = 'SUMPROFIT'
    end
    object BuyDetailCDSCOEFFMEAS: TIntegerField
      FieldName = 'COEFFMEAS'
    end
    object BuyDetailCDSVETISBUYDETAILSTATUSID: TSmallintField
      DisplayLabel = #1050#1086#1076' '#1089#1090#1072#1090#1091#1089#1072' '#1042#1045#1058#1048#1057' '#1087#1086#1079#1080#1094#1080#1080
      FieldName = 'VETISBUYDETAILSTATUSID'
      Visible = False
    end
  end
  object DirectorViewImageList: TImageList
    Left = 12
    Top = 64
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E328E328E328E328E328E328
      E328E328E328E328E328E3280000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E328606660666066606660666066
      60666066606660666066804DE328000000000000000096529031703170317031
      7031703170317031703170317031712D00004435E328E328E328E328E328E328
      E328E328E328E328E32800000000000000000000000000000000000000000000
      004400440000000000000000000000000000E328606660666066606660666066
      60666066606660666066804D804DE328000000002173C06EE072E072E0720077
      C16EC26EE076E072E072E072E072254E51254435267F60666066606660666066
      60666066606660666066E3280000000000000000000000000000000000000044
      00540054004C000000000000000000000000E328606660666066606660666066
      60666066606660666066804D804D804DE32800008C770077407F207B207B2077
      022502210373207B207B407F207BA45615424435267F60666066606660666066
      60666066606660666066804DE328000000000000000000000000000000000054
      006C00640054004400000000000000000000E328606660666066606660666066
      60666066606660666066804D804D804DE328000000002173617F407F407F4077
      0129E3242173407F407FA27F207B6D2D00004435267F60666066606660666066
      60666066606660666066804D804DE32800000000000000000000000000000064
      FF7F006C0054004400000000000000000000E328606660666066606660666066
      60666066606660666066804D804D804DE328000000008C772077607F407F607F
      807B807B607F407F607F617F0173B13500004435267F60666066606660666066
      60666066606660666066804D804D804DE3280000000000000000000000000054
      006C00540044000000000000000000000000E328606660666066606660666066
      60666066606660666066804D804D804DE3280000000000002173A27F607F607F
      E162E16A807F607FC37F40776D2D000000004435267F60666066606660666066
      60666066606660666066804D804D804DE3280000000000000000000000000000
      000000000000000000000000000000000000E328267F267F267F267F267F267F
      267F267F267F267F267F804D804D804DE3280000000000008C77617F817F807F
      A139A73DA07FA27FA27F0173B135000000004435267F60666066606660666066
      60666066606660666066804D804D804DE3280000000000000000000000000000
      006C004400000000000000000000000000000000E328804D804D804D60666066
      60666066606660666066267F804D804DE32800000000000000002173A17FA07B
      A139A73DA07BC37F807F6D2D0000000000004435267F60666066606660666066
      60666066606660666066804D804D804DE3280000000000000000000000000000
      006C0044000000000000000000000000000000000000E328804D804D60666066
      606660666066606660666066267F804DE32800000000000000008C77807B8077
      0225460C4073A27F0173B135000000000000C618804DC030C030C030C030C030
      C030C030C030C030C030804D804D804DE3280000000000000000000000000000
      006C00440044000000000000000000000000000000000000E328804D60666066
      6066606660666066606660666066267FE328000000000000000000002173616F
      0100460CC45E61776D2D0000000000000000C030606660666066606660666066
      606660666066606660664435804D804DE328000000000000000000000000006C
      006C006C00440000000000000000000000000000000000000000E3288055C061
      C05DC061C05DC05DC05DC05DC05D8065E328000000000000000000008C778177
      4129022183730173B13500000000000000004435267F267F267F267F267F267F
      267F267F267F267F267F4435804D804DE328000000000000000000000000006C
      006C006C00440044000000000000000000000000000000000000C0302045604D
      404D604D404D4049604D604D424DE32800000000000000000000000000008C77
      C17FE37FC07F6D2D00000000000000000000000044352C7F2C7F2C7F2C7F2C7F
      2C7F2C7F2C7F2C7F2C7F2C7F4435804DE328000000000000000000000000006C
      8C7D006C006C0044000000000000000000000000E328E328E328E328C030C030
      C030C030C030C030C030804DE328000000000000000000000000000000008C77
      C17BE27F0173B135000000000000000000000000000044352C7F2C7F2C7F2C7F
      2C7F2C7F2C7F2C7F2C7F2C7F2C7F4435E328000000000000000000008C7D006C
      006C006C006C006C00000000000000000000E328606660666066606660666066
      60666066606660666066E3280000000000000000000000000000000000000000
      2173C27BCF5A0000000000000000000000000000000000004435443544354435
      44354435443544354435443544354435E328000000000000000000000000006C
      006C006C006C000000000000000000000000E328C030C030C030C030C030C030
      C030C030C030C030C03000000000000000000000000000000000000000000000
      6C776C7700000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      006C00000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008007FFFFFFFFFFFF0003C001000FFC3F
      000180000007FC1F000080000003F81F0000C0010001F81F0000C0010000FC1F
      0000E0030000FE7F0000E0030000FE3F8000F0070000FC3FC000F0070000FC3F
      E000F80F0000FC1FF000F80F0000F81FF001FC1F8000F81F8003FC1FC000F80F
      0007FE3FE000F81F000FFE7FFFFFFC7F00000000000000000000000000000000
      000000000000}
  end
  object BuyTickedFormIL: TImageList
    Left = 16
    Top = 101
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFE7F000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFE7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000975FC105E30DE30DE30D
      E30DE105E105E105E0018001FE7F00000000000000006865C260036504610365
      0365E264E164C164A0648058FE7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000106661A871E871E871E
      DC73A61AA412C106C106E001FF7F0000000000000000C16C2471467167716671
      6571447123712275E070A064FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020A871E8926FF7F871E
      FF7FA61AA412DC73C106E30DFF7F0000000000000000E26C667188719176FF7F
      BC7FDE7FDD7F42750175C064FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000230E89268926FF7FFF7F
      E61AA61AFF7FA412A30EE30DFF7F0000000000000000046D88710D76DD7FA971
      877186754D7ABD7F2271E168FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006412AA2AAA2A89268926
      871EA61AA412A412630EE30DFF7F00000000000000002571A971BC7F0D76A971
      FF7F66714471DD7F23710365FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006412FF7FFF7FFF7F8926
      871E861AA412FF7FFF7FE30DFF7F00000000000000004671CB75FF7FAA718971
      FF7F667144719B7F24710465FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000661ACC32AA2AAA2AFF7F
      871E661AFF7F64126412E30DFF7F00000000000000006771EC75177BD47A8971
      FF7F46712471FF7F25712465FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000661ACC32CC32FF7F8926
      FF7F661AFF7FFF7F6516E30DFF7F000000000000000088712E760D76FF7FD47A
      8871CB75DD7F4F7645712565FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000871EEF3EEF3ECC32AA2A
      FF7F8926871E871E661AE30DFF7F0000000000000000A97171762E760C76167B
      FF7FBC7FEC75677146710465FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089265147EF3ECC32CC32
      FF7FAA2AAA2A8926871EE30DFF7F0000000000000000CB75D47A70762E760D76
      EC75EC75CB75A97167710465FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FE7F871E661A661A661A
      661A641264126412230E745300000000000000000000DE7FCA71A97188716771
      6771467145714571036D89690000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      E007E00700000000C003C00300000000C003C00300000000C003C00300000000
      C003C00300000000C003C00300000000C003C00300000000C003C00300000000
      C003C00300000000C003C00300000000C003C00300000000C007C00700000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object BuyfrxReport: TfrxReport
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
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '// ShowMessage(<'#1055#1088#1080#1077#1084#1082#1072'."BUYSTORAGETYPEID">);                   ' +
        '                       '
      '// BuyBarCode.Visible:=<'#1055#1088#1080#1077#1084#1082#1072'."BUYSTORAGETYPEID">='#39'1'#39';'
      '              '
      'end;'
      ''
      'procedure BuyDetailBarCodeOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' BuyDetailBarCode.Visible:=<'#1055#1088#1080#1077#1084#1082#1072'."BUYSTORAGETYPEID">='#39'1'#39';  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 240
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = #1041#1086#1081' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077
      end
      item
        DataSet = BuyfrxDBDataset
        DataSetName = #1055#1088#1080#1077#1084#1082#1072
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 52.91342
        Top = 219.21274
        Width = 718.1107
        DataSet = BuyfrxDBDataset
        DataSetName = #1055#1088#1080#1077#1084#1082#1072
        RowCount = 0
        object Memo28: TfrxMemoView
          Left = 544.25232
          Width = 173.85838
          Height = 52.91342
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 45.35436
          Height = 34.01577
          ShowHint = False
          DataField = 'DRINKID'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."DRINKID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 45.35436
          Width = 45.35436
          Height = 34.01577
          ShowHint = False
          DataField = 'DRINKKINDID'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."DRINKKINDID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 90.70872
          Width = 196.53556
          Height = 34.01577
          ShowHint = False
          DataField = 'PRINTMARK'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          LineSpacing = 0.01
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."PRINTMARK"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 287.24428
          Width = 45.35436
          Height = 52.91342
          ShowHint = False
          DataField = 'BUYBOX'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYBOX"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 332.59864
          Width = 41.57483
          Height = 52.91342
          ShowHint = False
          DataField = 'BUYBOXCOUNT'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYBOXCOUNT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 374.17347
          Width = 45.35436
          Height = 52.91342
          ShowHint = False
          DataField = 'SALEBOX'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."SALEBOX"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 419.52783
          Width = 41.57483
          Height = 52.91342
          ShowHint = False
          DataField = 'SALEBOXCOUNT'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."SALEBOXCOUNT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 502.67749
          Width = 41.57483
          Height = 52.91342
          ShowHint = False
          DataField = 'COUNTUNIT'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."COUNTUNIT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 461.10266
          Width = 41.57483
          Height = 52.91342
          ShowHint = False
          DataField = 'SUMVOLUME'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."SUMVOLUME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 90.70872
          Top = 34.01577
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DataField = 'DATEFACTORY'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          LineSpacing = 0.01
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."DATEFACTORY"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 34.01577
          Width = 90.70872
          Height = 18.89765
          ShowHint = False
          DataField = 'BARCODE'
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BARCODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object BuyDetailBarCode: TfrxBarCodeView
          Left = 563.14997
          Top = 3.77952999999999
          Width = 134
          Height = 49.13389
          OnBeforePrint = 'BuyDetailBarCodeOnBeforePrint'
          ShowHint = False
          BarType = bcCode128C
          Expression = '<'#1055#1088#1080#1077#1084#1082#1072'."BUYDETAILBARCODE">'
          Rotation = 0
          Text = '000000000000000000'
          WideBarRatio = 2
          Zoom = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 68.03154
        Top = 332.59864
        Width = 718.1107
        object Memo31: TfrxMemoView
          Left = 287.24428
          Width = 86.92919
          Height = 18.89765
          ShowHint = False
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYBOXCOUNT">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 374.17347
          Width = 86.92919
          Height = 18.89765
          ShowHint = False
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."SALEBOXCOUNT">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 461.10266
          Width = 83.14966
          Height = 18.89765
          ShowHint = False
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."COUNTUNIT">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Width = 287.24428
          Height = 18.89765
          ShowHint = False
          DataSet = BuyfrxDBDataset
          DataSetName = #1055#1088#1080#1077#1084#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109': '#1056#1111#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#8470' [Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 544.25232
          Width = 173.85838
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Top = 26.45671
          Width = 718.1107
          Height = 22.67718
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#8216#1056#1109#1056#8470' '#1056#1111#1057#1026#1056#1105' '#1056#1111#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#181' '#1056#1029#1056#176' '#1057#1027#1056#1108#1056#187#1056#176#1056#1169'('#1057#8249') ['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176 +
              '."BUYSTORAGESNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Subreport1: TfrxSubreport
          Top = 49.13389
          Width = 718.1107
          Height = 18.89765
          ShowHint = False
          Page = BuyfrxReport.Page2
          PrintOnParent = True
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 139.84261
        Top = 18.89765
        Width = 718.1107
        object Memo3: TfrxMemoView
          Left = 551.81138
          Width = 166.29932
          Height = 15.11812
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026#1056#176#1056#1029#1056#1105#1057#8224#1056#176' [Page] '#1056#1105#1056#183' [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 98.26778
          Width = 45.35436
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 45.35436
          Top = 98.26778
          Width = 45.35436
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1111#1056#176#1057#1026#1057#8218#1056#1105#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 90.70872
          Top = 98.26778
          Width = 196.53556
          Height = 22.67718
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 90.70872
          Top = 120.94496
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1105#1056#183#1056#1030#1056#1109#1056#1169#1057#1027#1057#8218#1056#1030#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 287.24428
          Top = 98.26778
          Width = 45.35436
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#176#1057#1026#1056#176' '#1056#1111#1057#1026#1056#1105#1057#8230'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 332.59864
          Top = 98.26778
          Width = 41.57483
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1031#1057#8240'-'#1056#1109#1056#1030' '#1056#1030' '#1057#8218#1056#176#1057#1026#1056#181' '#1056#1111#1057#1026#1056#1105#1057#8230'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 374.17347
          Top = 98.26778
          Width = 45.35436
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#176#1057#1026#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 419.52783
          Top = 98.26778
          Width = 41.57483
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1031#1057#8240'-'#1056#1109#1056#1030' '#1056#1030' '#1057#8218#1056#176#1057#1026#1056#181' '#1056#1111#1057#1026#1056#1109#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 502.67749
          Top = 98.26778
          Width = 41.57483
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'. '#1057#8364#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 461.10266
          Top = 98.26778
          Width = 41.57483
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'. '#1056#1108#1056#1110'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 544.25232
          Top = 98.26778
          Width = 173.85838
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1025#1057#8218#1057#1026#1056#1105#1057#8230'-'#1056#1108#1056#1109#1056#1169' '#1056#1111#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object BuyBarCode: TfrxBarCodeView
          Left = 11.33859
          Top = 15.11812
          Width = 134
          Height = 49.13389
          ShowHint = False
          BarType = bcCode128C
          Expression = '<'#1055#1088#1080#1077#1084#1082#1072'."BUYBARCODE">'
          Rotation = 0
          Text = '000000000000000000'
          WideBarRatio = 2
          Zoom = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo14: TfrxMemoView
          Left = 158.74026
          Top = 15.11812
          Width = 559.37044
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1116#1056#176#1057#1026#1057#1039#1056#1169' '#1056#1029#1056#176' '#1056#1111#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1057#1107)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 158.74026
          Top = 34.01577
          Width = 559.37044
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1111#1056#1109' '#1056#1111#1057#1026#1056#1105#1057#8230#1056#1109#1056#1169#1056#1029#1056#1109#1056#8470' '#1056#1029#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#1109#1056#8470' '#1074#8222#8211' ['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."' +
              'BUYNUMBERDOC"] '#1056#1109#1057#8218' ['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYINPUTDATE"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 158.74026
          Top = 52.91342
          Width = 559.37044
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1109#1057#8218' ['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYCONTRACTORNAME"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 158.74026
          Top = 71.81107
          Width = 559.37044
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1116#1056#176' '#1057#1027#1056#1108#1056#187#1056#176#1056#1169'('#1057#8249'): ['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYSTORAGESNAME"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      MirrorMargins = True
      ColumnWidth = 95
      object MasterData2: TfrxMasterData
        Height = 18.89765
        Top = 60.47248
        Width = 718.1107
        DataSet = frxDBDataset
        DataSetName = #1041#1086#1081' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077
        RowCount = 0
        object Memo35: TfrxMemoView
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          DataField = 'DRINKID_COLUMN1'
          DataSet = frxDBDataset
          DataSetName = #1041#1086#1081' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#8216#1056#1109#1056#8470' '#1056#1111#1057#1026#1056#1105' '#1056#1111#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#181'."DRINKID_COLUMN1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 75.5906
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          DataField = 'COUNTUNIT_COLUMN1'
          DataSet = frxDBDataset
          DataSetName = #1041#1086#1081' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#8216#1056#1109#1056#8470' '#1056#1111#1057#1026#1056#1105' '#1056#1111#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#181'."COUNTUNIT_COLUMN1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 132.28355
          Width = 226.7718
          Height = 18.89765
          ShowHint = False
          DataField = 'BASIS_COLUMN1'
          DataSet = frxDBDataset
          DataSetName = #1041#1086#1081' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '['#1056#8216#1056#1109#1056#8470' '#1056#1111#1057#1026#1056#1105' '#1056#1111#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#181'."BASIS_COLUMN1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 359.05535
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          DataField = 'DRINKID_COLUMN2'
          DataSet = frxDBDataset
          DataSetName = #1041#1086#1081' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#8216#1056#1109#1056#8470' '#1056#1111#1057#1026#1056#1105' '#1056#1111#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#181'."DRINKID_COLUMN2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 434.64595
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          DataField = 'COUNTUNIT_COLUMN2'
          DataSet = frxDBDataset
          DataSetName = #1041#1086#1081' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#8216#1056#1109#1056#8470' '#1056#1111#1057#1026#1056#1105' '#1056#1111#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#181'."COUNTUNIT_COLUMN2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 491.3389
          Width = 226.7718
          Height = 18.89765
          ShowHint = False
          DataField = 'BASIS_COLUMN2'
          DataSet = frxDBDataset
          DataSetName = #1041#1086#1081' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '['#1056#8216#1056#1109#1056#8470' '#1056#1111#1057#1026#1056#1105' '#1056#1111#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#181'."BASIS_COLUMN2"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 18.89765
        Top = 18.89765
        Width = 718.1107
        object Memo39: TfrxMemoView
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 75.5906
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 132.28355
          Width = 226.7718
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1057#8225#1056#1105#1056#1029#1056#176' '#1056#177#1056#1109#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 359.05535
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 434.64595
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 491.3389
          Width = 226.7718
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1057#8225#1056#1105#1056#1029#1056#176' '#1056#177#1056#1109#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 26.45671
        Top = 102.04731
        Width = 718.1107
        object Memo29: TfrxMemoView
          Left = 272.12616
          Top = 7.55906
          Width = 445.98454
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' __.__.__ '#1056#1113#1056#187#1056#176#1056#1169#1056#1109#1056#1030#1057#8240#1056#1105#1056#1108' _____________/____________/')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object BuyfrxDBDataset: TfrxDBDataset
    UserName = #1055#1088#1080#1077#1084#1082#1072
    CloseDataSource = False
    FieldAliases.Strings = (
      'BUYID=BUYID'
      'DRINKID=DRINKID'
      'DRINKKINDID=DRINKKINDID'
      'PRINTMARK=PRINTMARK'
      'BUYBOX=BUYBOX'
      'SALEBOX=SALEBOX'
      'BUYCAPACITY=BUYCAPACITY'
      'SALECAPACITY=SALECAPACITY'
      'ACAPACITY=ACAPACITY'
      'COUNTUNIT=COUNTUNIT'
      'BUYBOXCOUNT=BUYBOXCOUNT'
      'SALEBOXCOUNT=SALEBOXCOUNT'
      'DATEFACTORY=DATEFACTORY'
      'EXCISELINE=EXCISELINE'
      'WEIGHT=WEIGHT'
      'SUMVOLUME=SUMVOLUME'
      'STORAGEID=STORAGEID'
      'PARTYCERTIFICATEID=PARTYCERTIFICATEID'
      'BUYBARCODE=BUYBARCODE'
      'BUYNUMBERDOC=BUYNUMBERDOC'
      'BUYINPUTDATE=BUYINPUTDATE'
      'BUYCONTRACTORNAME=BUYCONTRACTORNAME'
      'BUYSTORAGESNAME=BUYSTORAGESNAME'
      'BUYDETAILBARCODE=BUYDETAILBARCODE'
      'BARCODE=BARCODE'
      'BUYSTORAGETYPEID=BUYSTORAGETYPEID'
      'ssprice=ssprice'
      'buyorgname=buyorgname'
      'buytermname=buytermname')
    DataSet = BuyPrintCDS
    BCDToCurrency = False
    Left = 152
    Top = 224
  end
  object BuyPrintCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BuyId'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'storageid'
        ParamType = ptInput
      end>
    ProviderName = 'BuyPrintDSP'
    Left = 116
    Top = 225
    object BuyPrintCDSBUYID: TIntegerField
      FieldName = 'BUYID'
    end
    object BuyPrintCDSDRINKID: TIntegerField
      FieldName = 'DRINKID'
    end
    object BuyPrintCDSDRINKKINDID: TIntegerField
      FieldName = 'DRINKKINDID'
    end
    object BuyPrintCDSPRINTMARK: TStringField
      FieldName = 'PRINTMARK'
      Size = 256
    end
    object BuyPrintCDSBUYBOX: TStringField
      FieldName = 'BUYBOX'
    end
    object BuyPrintCDSSALEBOX: TStringField
      FieldName = 'SALEBOX'
    end
    object BuyPrintCDSBUYCAPACITY: TIntegerField
      FieldName = 'BUYCAPACITY'
    end
    object BuyPrintCDSSALECAPACITY: TIntegerField
      FieldName = 'SALECAPACITY'
    end
    object BuyPrintCDSACAPACITY: TIntegerField
      FieldName = 'ACAPACITY'
    end
    object BuyPrintCDSCOUNTUNIT: TFloatField
      FieldName = 'COUNTUNIT'
    end
    object BuyPrintCDSBUYBOXCOUNT: TFloatField
      FieldName = 'BUYBOXCOUNT'
    end
    object BuyPrintCDSSALEBOXCOUNT: TFloatField
      FieldName = 'SALEBOXCOUNT'
    end
    object BuyPrintCDSDATEFACTORY: TStringField
      FieldName = 'DATEFACTORY'
      Size = 1024
    end
    object BuyPrintCDSEXCISELINE: TStringField
      FieldName = 'EXCISELINE'
      Size = 1024
    end
    object BuyPrintCDSWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object BuyPrintCDSSUMVOLUME: TFloatField
      FieldName = 'SUMVOLUME'
    end
    object BuyPrintCDSSTORAGEID: TIntegerField
      FieldName = 'STORAGEID'
    end
    object BuyPrintCDSPARTYCERTIFICATEID: TIntegerField
      FieldName = 'PARTYCERTIFICATEID'
    end
    object BuyPrintCDSBUYBARCODE: TStringField
      FieldName = 'BUYBARCODE'
      Size = 32
    end
    object BuyPrintCDSBUYNUMBERDOC: TStringField
      FieldName = 'BUYNUMBERDOC'
      Size = 64
    end
    object BuyPrintCDSBUYINPUTDATE: TDateTimeField
      FieldName = 'BUYINPUTDATE'
    end
    object BuyPrintCDSBUYCONTRACTORNAME: TStringField
      DisplayWidth = 256
      FieldName = 'BUYCONTRACTORNAME'
      Size = 256
    end
    object BuyPrintCDSBUYSTORAGESNAME: TStringField
      FieldName = 'BUYSTORAGESNAME'
      Size = 128
    end
    object BuyPrintCDSBUYDETAILBARCODE: TStringField
      FieldName = 'BUYDETAILBARCODE'
      Size = 32
    end
    object BuyPrintCDSBARCODE: TStringField
      FieldName = 'BARCODE'
      Size = 13
    end
    object BuyPrintCDSBUYSTORAGETYPEID: TIntegerField
      FieldName = 'BUYSTORAGETYPEID'
    end
    object BuyPrintCDSssprice: TFloatField
      FieldName = 'ssprice'
    end
    object BuyPrintCDSbuyorgname: TStringField
      DisplayWidth = 256
      FieldName = 'buyorgname'
      Size = 256
    end
    object BuyPrintCDSbuytermname: TStringField
      DisplayWidth = 256
      FieldName = 'buytermname'
      Size = 256
    end
  end
  object BuyPrintSubCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BuyId'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'storageid'
        ParamType = ptInput
      end>
    ProviderName = 'BuyPrintSubDSP'
    Left = 116
    Top = 265
    object BuyPrintSubCDSDRINKID_COLUMN1: TIntegerField
      FieldName = 'DRINKID_COLUMN1'
    end
    object BuyPrintSubCDSCOUNTUNIT_COLUMN1: TIntegerField
      FieldName = 'COUNTUNIT_COLUMN1'
    end
    object BuyPrintSubCDSBASIS_COLUMN1: TStringField
      FieldName = 'BASIS_COLUMN1'
      Size = 32
    end
    object BuyPrintSubCDSDRINKID_COLUMN2: TIntegerField
      FieldName = 'DRINKID_COLUMN2'
    end
    object BuyPrintSubCDSCOUNTUNIT_COLUMN2: TIntegerField
      FieldName = 'COUNTUNIT_COLUMN2'
    end
    object BuyPrintSubCDSBASIS_COLUMN2: TStringField
      FieldName = 'BASIS_COLUMN2'
      Size = 32
    end
    object BuyPrintSubCDSCOUNTER: TIntegerField
      FieldName = 'COUNTER'
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = #1041#1086#1081' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1082#1077
    CloseDataSource = False
    DataSet = BuyPrintSubCDS
    BCDToCurrency = False
    Left = 152
    Top = 264
  end
  object frxMX1: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44549.9746442708
    ReportOptions.LastChange = 44551.919447338
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 280
    Datasets = <
      item
        DataSet = BuyfrxDBDataset
        DataSetName = #1055#1088#1080#1077#1084#1082#1072
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
        Height = 589.60668
        Top = 18.89765
        Width = 718.1107
        object Memo2: TfrxMemoView
          Left = 566.9295
          Top = 60.47248
          Width = 75.5906
          Height = 18.5476935185185
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 566.9295
          Top = 79.0201735185185
          Width = 75.5906
          Height = 18.5476935185185
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '0335001')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 566.9295
          Top = 97.567867037037
          Width = 75.5906
          Height = 18.5476935185185
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 566.9295
          Top = 116.115560555556
          Width = 75.5906
          Height = 25.9667709259259
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 566.9295
          Top = 142.082331481481
          Width = 75.5906
          Height = 18.5476935185185
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 566.9295
          Top = 160.630025
          Width = 75.5906
          Height = 18.5476935185185
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 566.9295
          Top = 179.177718518519
          Width = 75.5906
          Height = 25.9667709259259
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 566.9295
          Top = 205.144489444444
          Width = 75.5906
          Height = 18.5476935185185
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 566.9295
          Top = 223.692182962963
          Width = 75.5906
          Height = 18.5476935185185
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 566.9295
          Top = 242.239876481481
          Width = 75.5906
          Height = 18.5476935185185
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 453.5436
          Top = 79.37013
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#164#1056#1109#1057#1026#1056#1112#1056#176' '#1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1032#1056#8221' ')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 472.44125
          Top = 98.26778
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1119#1056#1115' ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 22.67718
          Top = 117.16543
          Width = 445.98454
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '('#1056#1109#1057#1026#1056#1110#1056#176#1056#1029#1056#1105#1056#183#1056#176#1057#8224#1056#1105#1057#1039'-'#1057#8230#1057#1026#1056#176#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034', '#1056#176#1056#1169#1057#1026#1056#181#1057#1027', '#1057#8218#1056#181#1056#187#1056#181 +
              #1057#8222#1056#1109#1056#1029', '#1057#8222#1056#176#1056#1108#1057#1027')')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 377.953
          Top = 143.62214
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8217#1056#1105#1056#1169' '#1056#1169#1056#181#1057#1039#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105' '#1056#1111#1056#1109' '#1056#1115#1056#1113#1056#8221#1056#1119' ')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 22.67718
          Top = 143.62214
          Width = 355.27582
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1057#1027#1057#8218#1057#1026#1057#1107#1056#1108#1057#8218#1057#1107#1057#1026#1056#1029#1056#1109#1056#181' '#1056#1111#1056#1109#1056#1169#1057#1026#1056#176#1056#183#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1105#1056#181')')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 472.44125
          Top = 162.51979
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1119#1056#1115' ')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 22.67718
          Top = 181.41744
          Width = 449.76407
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '('#1056#1111#1056#1109#1056#1108#1056#187#1056#176#1056#182#1056#181#1056#1169#1056#176#1057#8218#1056#181#1056#187#1057#1034' ('#1056#1029#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181', '#1056#176#1056#1169#1057#1026#1056#181#1057 +
              #1027', '#1057#8218#1056#181#1056#187#1056#181#1057#8222#1056#1109#1056#1029', '#1057#8222#1056#176#1056#1108#1057#1027)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 517.79561
          Top = 207.87415
          Width = 49.13389
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#1109#1056#1112#1056#181#1057#1026)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 449.76407
          Top = 207.87415
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#1110#1056#1109#1056#1030#1056#1109#1057#1026)
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 26.45671
          Top = 207.87415
          Width = 427.08689
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1112#1056#1105#1056#187#1056#1105#1057#1039', '#1056#1105#1056#1112#1057#1039', '#1056#1109#1057#8218#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109'))')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 517.79561
          Top = 226.7718
          Width = 49.13389
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1169#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 472.44125
          Top = 245.66945
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1056#1105#1056#1169' '#1056#1109#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1056#1105' ')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 423.30736
          Top = 287.24428
          Width = 94.48825
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1109#1056#1112#1056#181#1057#1026' '#1056#1169#1056#1109#1056#1108#1057#1107#1056#1112#1056#181#1056#1029#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 517.79561
          Top = 287.24428
          Width = 94.48825
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 423.30736
          Top = 325.03958
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 517.79561
          Top = 325.03958
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 381.73253
          Top = 325.03958
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1106#1056#1113#1056#1118)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 30.23624
          Top = 343.93723
          Width = 612.28386
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1115' '#1056#1119#1056#160#1056#152#1056#8226#1056#1114#1056#8226'-'#1056#1119#1056#8226#1056#160#1056#8226#1056#8221#1056#1106#1056#167#1056#8226' '#1056#1118#1056#1115#1056#8217#1056#1106#1056#160#1056#1116#1056#1115'-'#1056#1114#1056#1106#1056#1118#1056#8226#1056#160#1056#152#1056#1106#1056#8250 +
              #1056#172#1056#1116#1056#171#1056#1168' '#1056#166#1056#8226#1056#1116#1056#1116#1056#1115#1056#1038#1056#1118#1056#8226#1056#8482' '#1056#1116#1056#1106' '#1056#1168#1056#160#1056#1106#1056#1116#1056#8226#1056#1116#1056#152#1056#8226)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 34.01577
          Top = 362.83488
          Width = 325.03958
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#187#1056#181#1056#1029' '#1056#1109' '#1057#8218#1056#1109#1056#1112', '#1057#8225#1057#8218#1056#1109' '#1056#1111#1057#1026#1056#1105#1056#1029#1057#1039#1057#8218#1057#8249' '#1056#1029#1056#176' ' +
              #1057#8230#1057#1026#1056#176#1056#1029#1056#181#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          Left = 597.16574
          Top = 396.85065
          Width = 45.35436
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1169#1056#1029#1056#181#1056#8470)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          Left = 408.18924
          Top = 415.7483
          Width = 188.9765
          Height = 15.11812
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1057#1027#1057#1026#1056#1109#1056#1108' '#1057#8230#1057#1026#1056#176#1056#1029#1056#181#1056#1029#1056#1105#1057#1039')')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Top = 415.7483
          Width = 393.07112
          Height = 15.11812
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '('#1056#1029#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181', '#1056#1029#1056#1109#1056#1112#1056#181#1057#1026' '#1056#1112#1056#181#1057#1027#1057#8218#1056#176' '#1057#8230#1057#1026#1056#176#1056#1029#1056#181#1056#1029#1056#1105#1057 +
              #1039')')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 15.11812
          Top = 438.42548
          Width = 291.02381
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1057#1027#1056#187#1056#181#1056#1169#1057#1107#1057#1035#1057#8240#1056#1105#1056#181' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#1029#1056#1109'-'#1056#1112#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056#176#1056#187#1057#1034#1056#1029#1057#8249#1056#181' '#1057#8224#1056#181#1056 +
              #1029#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105':')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 15.11812
          Top = 472.44125
          Width = 41.57483
          Height = 98.26778
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '"'#1056#1116#1056#1109'-   '#1056#1112#1056#181#1057#1026'   '#1056#1111#1056#1109' '#1056#1111#1056#1109'- '#1057#1026#1057#1039#1056#1169#1056#1108#1057#1107'"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 56.69295
          Top = 472.44125
          Width = 170.07885
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1109#1056#1030#1056#176#1057#1026#1056#1029#1056#1109'-'#1056#1112#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056#176#1056#187#1057#1034#1056#1029#1057#8249#1056#181
            #1057#8224#1056#181#1056#1029#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 56.69295
          Top = 506.45702
          Width = 120.94496
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181','
            #1056#1030#1056#1105#1056#1169' '#1057#1107#1056#1111#1056#176#1056#1108#1056#1109#1056#1030#1056#1108#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 177.63791
          Top = 506.45702
          Width = 49.13389
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 226.7718
          Top = 472.44125
          Width = 94.48825
          Height = 98.26778
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1168#1056#176#1057#1026#1056#176#1056#1108#1057#8218#1056#181#1057#1026#1056#1105#1057#1027#1057#8218#1056#1105#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 321.26005
          Top = 472.44125
          Width = 75.5906
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169#1056#1105#1056#1029#1056#1105#1057#8224#1056#176' '#1056#1105#1056#183#1056#1112#1056#181#1057#1026#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 396.85065
          Top = 472.44125
          Width = 71.81107
          Height = 98.26778
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109' ('#1056#1112#1056#176#1057#1027#1057#1027#1056#176')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 321.26005
          Top = 506.45702
          Width = 37.7953
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#176#1056#1105#1056#1112#1056#181'- '#1056#1029#1056#1109#1056#1030#1056#176'- '#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 359.05535
          Top = 506.45702
          Width = 37.7953
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1169' '#1056#1111#1056#1109' '#1056#1115#1056#1113#1056#8226#1056#152)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 468.66172
          Top = 472.44125
          Width = 173.85838
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8224#1056#181#1056#1029#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 468.66172
          Top = 506.45702
          Width = 83.14966
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8224#1056#181#1056#1029#1056#176','
            #1057#1026#1057#1107#1056#177'. '#1056#1108#1056#1109#1056#1111'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 551.81138
          Top = 506.45702
          Width = 90.70872
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#8218#1056#1109#1056#1105#1056#1112#1056#1109#1057#1027#1057#8218#1057#1034', '#1057#1026#1057#1107#1056#177'. '#1056#1108#1056#1109#1056#1111'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 15.11812
          Top = 570.70903
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 56.69295
          Top = 570.70903
          Width = 120.94496
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 177.63791
          Top = 570.70903
          Width = 49.13389
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 226.7718
          Top = 570.70903
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 321.26005
          Top = 570.70903
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 359.05535
          Top = 570.70903
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 396.85065
          Top = 570.70903
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 468.66172
          Top = 570.70903
          Width = 83.14966
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 551.81138
          Top = 570.70903
          Width = 90.70872
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 26.45671
          Top = 98.26778
          Width = 445.98454
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."buyorgname"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 26.45671
          Top = 128.50402
          Width = 445.98454
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."buytermname"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 3.77953
          Top = 158.74026
          Width = 487.55937
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYCONTRACTORNAME"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 423.30736
          Top = 325.03958
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYNUMBERDOC"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 517.79561
          Top = 325.03958
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYINPUTDATE"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Top = 396.85065
          Width = 393.07112
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."buytermname"] '#1057#1027#1056#1108#1056#187#1056#176#1056#1169' ['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYST' +
              'ORAGESNAME"]')
          ParentFont = False
        end
      end
      object Memo1: TfrxMemoView
        Align = baRight
        Left = 389.29159
        Top = 15.11812
        Width = 328.81911
        Height = 52.91342
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8 = (
          #1056#1032#1056#1029#1056#1105#1057#8222#1056#1105#1057#8224#1056#1105#1057#1026#1056#1109#1056#1030#1056#176#1056#1029#1056#1029#1056#176#1057#1039' '#1057#8222#1056#1109#1057#1026#1056#1112#1056#176' '#1074#8222#8211' '#1056#1114#1056#1168'-1'
          
            #1056#1032#1057#8218#1056#1030#1056#181#1057#1026#1056#182#1056#1169#1056#181#1056#1029#1056#176' '#1056#1111#1056#1109#1057#1027#1057#8218#1056#176#1056#1029#1056#1109#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1056#181#1056#1112' '#1056#8220#1056#1109#1057#1027#1056#1108#1056#1109#1056#1112#1057#1027 +
            #1057#8218#1056#176#1057#8218#1056#176
          #1056#160#1056#1109#1057#1027#1057#1027#1056#1105#1056#1105' '#1056#1109#1057#8218' 09.08.99 '#1074#8222#8211' 66')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 668.97681
        Width = 718.1107
        DataSet = BuyfrxDBDataset
        DataSetName = #1055#1088#1080#1077#1084#1082#1072
        RowCount = 0
        object Memo56: TfrxMemoView
          Left = 15.11812
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 56.69295
          Width = 120.94496
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."PRINTMARK"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 177.63791
          Width = 49.13389
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."DRINKID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 226.7718
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."DATEFACTORY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 321.26005
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8364#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 359.05535
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 396.85065
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."COUNTUNIT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 468.66172
          Width = 83.14966
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."ssprice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 551.81138
          Width = 90.70872
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."COUNTUNIT">*<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."ssprice">]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 22.67718
        Top = 710.55164
        Width = 718.1107
        object Memo65: TfrxMemoView
          Left = 396.85065
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."COUNTUNIT">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 468.66172
          Width = 83.14966
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 551.81138
          Width = 90.70872
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[SUM(<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."ssprice">*<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."COUNTUNIT">,Mas' +
              'terData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 302.3624
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxMX3: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44549.9746442708
    ReportOptions.LastChange = 44551.9719994213
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 256
    Top = 280
    Datasets = <
      item
        DataSet = BuyfrxDBDataset
        DataSetName = #1055#1088#1080#1077#1084#1082#1072
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
        Height = 521.57514
        Top = 18.89765
        Width = 718.1107
        object Memo2: TfrxMemoView
          Left = 566.9295
          Top = 60.47248
          Width = 113.3859
          Height = 18.54769352
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 566.9295
          Top = 79.02017352
          Width = 113.3859
          Height = 18.54769352
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '0335003')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 566.9295
          Top = 97.56786704
          Width = 113.3859
          Height = 18.54769352
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 566.9295
          Top = 116.11556056
          Width = 113.3859
          Height = 25.96677093
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 566.9295
          Top = 142.08233148
          Width = 113.3859
          Height = 18.54769352
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 566.9295
          Top = 160.630025
          Width = 113.3859
          Height = 18.54769352
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 566.9295
          Top = 179.17771852
          Width = 113.3859
          Height = 25.96677093
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 566.9295
          Top = 205.14448944
          Width = 113.3859
          Height = 18.54769352
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 566.9295
          Top = 223.69218296
          Width = 113.3859
          Height = 18.54769352
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 566.9295
          Top = 242.23987648
          Width = 113.3859
          Height = 18.54769352
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 453.5436
          Top = 79.37013
          Width = 109.60637
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#164#1056#1109#1057#1026#1056#1112#1056#176' '#1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1032#1056#8221' ')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 472.44125
          Top = 98.26778
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1119#1056#1115' ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 22.67718
          Top = 117.16543
          Width = 445.98454
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '('#1056#1109#1057#1026#1056#1110#1056#176#1056#1029#1056#1105#1056#183#1056#176#1057#8224#1056#1105#1057#1039'-'#1057#8230#1057#1026#1056#176#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034', '#1056#176#1056#1169#1057#1026#1056#181#1057#1027', '#1057#8218#1056#181#1056#187#1056#181 +
              #1057#8222#1056#1109#1056#1029', '#1057#8222#1056#176#1056#1108#1057#1027')')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 377.953
          Top = 143.62214
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8217#1056#1105#1056#1169' '#1056#1169#1056#181#1057#1039#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105' '#1056#1111#1056#1109' '#1056#1115#1056#1113#1056#8221#1056#1119' ')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 22.67718
          Top = 143.62214
          Width = 355.27582
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1057#1027#1057#8218#1057#1026#1057#1107#1056#1108#1057#8218#1057#1107#1057#1026#1056#1029#1056#1109#1056#181' '#1056#1111#1056#1109#1056#1169#1057#1026#1056#176#1056#183#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1105#1056#181')')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 472.44125
          Top = 162.51979
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1119#1056#1115' ')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 22.67718
          Top = 181.41744
          Width = 449.76407
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '('#1056#1111#1056#1109#1056#1108#1056#187#1056#176#1056#182#1056#181#1056#1169#1056#176#1057#8218#1056#181#1056#187#1057#1034' ('#1056#1029#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181', '#1056#176#1056#1169#1057#1026#1056#181#1057 +
              #1027', '#1057#8218#1056#181#1056#187#1056#181#1057#8222#1056#1109#1056#1029', '#1057#8222#1056#176#1056#1108#1057#1027)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 517.79561
          Top = 207.87415
          Width = 49.13389
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#1109#1056#1112#1056#181#1057#1026)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 449.76407
          Top = 207.87415
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#1110#1056#1109#1056#1030#1056#1109#1057#1026)
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 26.45671
          Top = 207.87415
          Width = 427.08689
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1112#1056#1105#1056#187#1056#1105#1057#1039', '#1056#1105#1056#1112#1057#1039', '#1056#1109#1057#8218#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109'))')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 517.79561
          Top = 226.7718
          Width = 49.13389
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1169#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 472.44125
          Top = 245.66945
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1056#1105#1056#1169' '#1056#1109#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1056#1105' ')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 423.30736
          Top = 287.24428
          Width = 94.48825
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1109#1056#1112#1056#181#1057#1026' '#1056#1169#1056#1109#1056#1108#1057#1107#1056#1112#1056#181#1056#1029#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 517.79561
          Top = 287.24428
          Width = 94.48825
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 423.30736
          Top = 325.03958
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 517.79561
          Top = 325.03958
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 381.73253
          Top = 325.03958
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1106#1056#1113#1056#1118)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 30.23624
          Top = 343.93723
          Width = 612.28386
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1115' '#1056#8217#1056#1115#1056#8212#1056#8217#1056#160#1056#1106#1056#1118#1056#8226' '#1056#1118#1056#1115#1056#8217#1056#1106#1056#160#1056#1116#1056#1115'-'#1056#1114#1056#1106#1056#1118#1056#8226#1056#160#1056#152#1056#1106#1056#8250#1056#172#1056#1116#1056#171#1056#1168' '#1056#166#1056#8226 +
              #1056#1116#1056#1116#1056#1115#1056#1038#1056#1118#1056#8226#1056#8482', '#1056#1038#1056#8221#1056#1106#1056#1116#1056#1116#1056#171#1056#1168' '#1056#1116#1056#1106' '#1056#1168#1056#160#1056#1106#1056#1116#1056#8226#1056#1116#1056#152#1056#8226)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 34.01577
          Top = 362.83488
          Width = 608.50433
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#1106#1056#1108#1057#8218' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#187#1056#181#1056#1029' '#1056#1030' '#1057#8218#1056#1109#1056#1112', '#1057#8225#1057#8218#1056#1109' '#1056#1111#1056#1109#1056#1108#1056#187#1056#176#1056#182#1056#181#1056#1169#1056#176#1057#8218 +
              #1056#181#1056#187#1057#1034' '#1056#1111#1057#1026#1056#1105#1056#1029#1057#1039#1056#187' '#1056#1109#1057#8218' '#1057#8230#1057#1026#1056#176#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1039' '#1057#1027#1056#187#1056#181#1056#1169#1057#1107#1057#1035#1057#8240#1056#1105#1056#181' '#1057 +
              #8218#1056#1109#1056#1030#1056#176#1057#1026#1056#1029#1056#1109'-'#1056#1112#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056#176#1056#187#1057#1034'-'
            #1056#1029#1057#8249#1056#181' '#1057#8224#1056#181#1056#1029#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105':')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 15.11812
          Top = 404.40971
          Width = 41.57483
          Height = 98.26778
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '"'#1056#1116#1056#1109'-   '#1056#1112#1056#181#1057#1026'   '#1056#1111#1056#1109' '#1056#1111#1056#1109'- '#1057#1026#1057#1039#1056#1169#1056#1108#1057#1107'"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 56.69295
          Top = 404.40971
          Width = 170.07885
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1109#1056#1030#1056#176#1057#1026#1056#1029#1056#1109'-'#1056#1112#1056#176#1057#8218#1056#181#1057#1026#1056#1105#1056#176#1056#187#1057#1034#1056#1029#1057#8249#1056#181
            #1057#8224#1056#181#1056#1029#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 56.69295
          Top = 438.42548
          Width = 120.94496
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181','
            #1056#1030#1056#1105#1056#1169' '#1057#1107#1056#1111#1056#176#1056#1108#1056#1109#1056#1030#1056#1108#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 177.63791
          Top = 438.42548
          Width = 49.13389
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 226.7718
          Top = 404.40971
          Width = 94.48825
          Height = 98.26778
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1168#1056#176#1057#1026#1056#176#1056#1108#1057#8218#1056#181#1057#1026#1056#1105#1057#1027#1057#8218#1056#1105#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 321.26005
          Top = 404.40971
          Width = 75.5906
          Height = 34.01577
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169#1056#1105#1056#1029#1056#1105#1057#8224#1056#176' '#1056#1105#1056#183#1056#1112#1056#181#1057#1026#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 396.85065
          Top = 404.40971
          Width = 68.03154
          Height = 98.26778
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105'- '#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109' ('#1056#1112#1056#176#1057#1027#1057#1027#1056#176')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 321.26005
          Top = 438.42548
          Width = 37.7953
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#176#1056#1105#1056#1112#1056#181'- '#1056#1029#1056#1109#1056#1030#1056#176'- '#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 359.05535
          Top = 438.42548
          Width = 37.7953
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1169' '#1056#1111#1056#1109' '#1056#1115#1056#1113#1056#8226#1056#152)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 464.88219
          Top = 404.40971
          Width = 68.03154
          Height = 98.26778
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8224#1056#181#1056#1029#1056#176','
            #1057#1026#1057#1107#1056#177'. '#1056#1108#1056#1109#1056#1111'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 532.91373
          Top = 404.40971
          Width = 75.5906
          Height = 98.26778
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#8218#1056#1109#1056#1105#1056#1112#1056#1109#1057#1027#1057#8218#1057#1034', '#1057#1026#1057#1107#1056#177'. '#1056#1108#1056#1109#1056#1111'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 15.11812
          Top = 502.67749
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 56.69295
          Top = 502.67749
          Width = 120.94496
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 177.63791
          Top = 502.67749
          Width = 49.13389
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 226.7718
          Top = 502.67749
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 321.26005
          Top = 502.67749
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 359.05535
          Top = 502.67749
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 396.85065
          Top = 502.67749
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 464.88219
          Top = 502.67749
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 532.91373
          Top = 502.67749
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 26.45671
          Top = 98.26778
          Width = 445.98454
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."buyorgname"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 26.45671
          Top = 128.50402
          Width = 445.98454
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."buytermname"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 3.77953
          Top = 158.74026
          Width = 487.55937
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYCONTRACTORNAME"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 423.30736
          Top = 325.03958
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYNUMBERDOC"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 517.79561
          Top = 325.03958
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."BUYINPUTDATE"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 608.50433
          Top = 404.40971
          Width = 71.81107
          Height = 98.26778
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1056#1112#1056#181#1057#8225#1056#176'- '#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 608.50433
          Top = 502.67749
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo1: TfrxMemoView
        Align = baRight
        Left = 434.64595
        Top = 15.11812
        Width = 283.46475
        Height = 52.91342
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8 = (
          #1056#1032#1056#1029#1056#1105#1057#8222#1056#1105#1057#8224#1056#1105#1057#1026#1056#1109#1056#1030#1056#176#1056#1029#1056#1029#1056#176#1057#1039' '#1057#8222#1056#1109#1057#1026#1056#1112#1056#176' '#1074#8222#8211' '#1056#1114#1056#1168'-3'
          
            #1056#1032#1057#8218#1056#1030#1056#181#1057#1026#1056#182#1056#1169#1056#181#1056#1029#1056#176' '#1056#1111#1056#1109#1057#1027#1057#8218#1056#176#1056#1029#1056#1109#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1056#181#1056#1112' '#1056#8220#1056#1109#1057#1027#1056#1108#1056#1109#1056#1112#1057#1027 +
            #1057#8218#1056#176#1057#8218#1056#176
          #1056#160#1056#1109#1057#1027#1057#1027#1056#1105#1056#1105' '#1056#1109#1057#8218' 09.08.99 '#1074#8222#8211' 66')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 600.94527
        Width = 718.1107
        DataSet = BuyfrxDBDataset
        DataSetName = #1055#1088#1080#1077#1084#1082#1072
        RowCount = 0
        object Memo56: TfrxMemoView
          Left = 15.11812
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 56.69295
          Width = 120.94496
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."PRINTMARK"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 177.63791
          Width = 49.13389
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."DRINKID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 226.7718
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."DATEFACTORY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 321.26005
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8364#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 359.05535
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 396.85065
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[-'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."COUNTUNIT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 464.88219
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."ssprice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 532.91373
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[-<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."COUNTUNIT">*<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."ssprice">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 608.50433
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 22.67718
        Top = 642.5201
        Width = 718.1107
        object Memo65: TfrxMemoView
          Left = 396.85065
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[-SUM(<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."COUNTUNIT">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 464.88219
          Width = 68.03154
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 532.91373
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[-SUM(<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."ssprice">*<'#1056#1119#1057#1026#1056#1105#1056#181#1056#1112#1056#1108#1056#176'."COUNTUNIT">,Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 302.3624
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
