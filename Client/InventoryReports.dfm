object fInventoryReports: TfInventoryReports
  Left = 337
  Top = 116
  Width = 992
  Height = 616
  Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1086#1085#1085#1099#1077' '#1086#1090#1095#1077#1090#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object InventoryReportscxGrid: TcxGrid
    Left = 0
    Top = 0
    Width = 976
    Height = 300
    Align = alClient
    PopupMenu = InventoryReportsPM
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    object InventoryReportscxGridDBTV: TcxGridDBTableView
      OnKeyDown = InventoryReportscxGridDBTVKeyDown
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = InventoryReportscxGridDBTVCustomDrawCell
      DataController.DataSource = InventoryReportsDS
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Position = spFooter
          Column = InventoryReportscxGridDBTVSUMREM
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Position = spFooter
          Column = InventoryReportscxGridDBTVSUMPOST
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Position = spFooter
          Column = InventoryReportscxGridDBTVDELTABOTTLECOUNT
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Position = spFooter
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Position = spFooter
          Column = InventoryReportscxGridDBTVFACTBOTTLECOUNT
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Position = spFooter
          Column = InventoryReportscxGridDBTVFIXBOTTLECOUNT
        end
        item
          Kind = skCount
          Position = spFooter
          Column = InventoryReportscxGridDBTVDRINKKINDID
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Position = spFooter
          Column = InventoryReportscxGridDBTVREMBOTTLECOUNT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Column = InventoryReportscxGridDBTVSUMREM
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Column = InventoryReportscxGridDBTVSUMPOST
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = InventoryReportscxGridDBTVDELTABOTTLECOUNT
        end
        item
          Format = ',0;-,0'
          Kind = skSum
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = InventoryReportscxGridDBTVFACTBOTTLECOUNT
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = InventoryReportscxGridDBTVFIXBOTTLECOUNT
        end
        item
          Kind = skCount
          Column = InventoryReportscxGridDBTVDRINKKINDID
        end
        item
          Format = ',0;-,0'
          Kind = skSum
          Column = InventoryReportscxGridDBTVREMBOTTLECOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object InventoryReportscxGridDBTVDRINKID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKID'
        Width = 77
      end
      object InventoryReportscxGridDBTVDRINKKINDID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKKINDID'
        Width = 85
      end
      object InventoryReportscxGridDBTVPRINTMARK: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 110
      end
      object InventoryReportscxGridDBTVRACKNAME: TcxGridDBColumn
        DataBinding.FieldName = 'RACKNAME'
        Width = 107
      end
      object InventoryReportscxGridDBTVFIXBOTTLECOUNT: TcxGridDBColumn
        Caption = #1047#1072#1092#1080#1082#1089#1080#1088#1086#1074#1072#1085#1086', '#1096#1090'.'
        DataBinding.FieldName = 'FIXBOTTLECOUNT'
        Width = 114
      end
      object InventoryReportscxGridDBTVFACTBOTTLECOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'FACTBOTTLECOUNT'
        Width = 127
      end
      object InventoryReportscxGridDBTVREMBOTTLECOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'REMBOTTLECOUNT'
        Visible = False
        Width = 85
      end
      object InventoryReportscxGridDBTVDELTABOTTLECOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'DELTABOTTLECOUNT'
        Width = 94
      end
      object InventoryReportscxGridDBTVSUMPOST: TcxGridDBColumn
        DataBinding.FieldName = 'SUMPOST'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Width = 98
      end
      object InventoryReportscxGridDBTVSUMREM: TcxGridDBColumn
        Caption = #1053#1077#1076#1086#1089#1090#1072#1095#1072', '#1088#1091#1073'.'
        DataBinding.FieldName = 'SUMREM'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Width = 97
      end
      object InventoryReportscxGridDBTVISRESERVE: TcxGridDBColumn
        DataBinding.FieldName = 'ISRESERVE'
        Visible = False
      end
      object InventoryReportscxGridDBTVRETAILPRICE: TcxGridDBColumn
        Caption = #1056#1086#1079#1085'. '#1094#1077#1085#1072
        DataBinding.FieldName = 'RETAILPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
      end
      object InventoryReportscxGridDBTVFACTRETAILPRICE: TcxGridDBColumn
        Caption = #1062#1077#1085#1085#1080#1082
        DataBinding.FieldName = 'FACTRETAILPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
      end
      object InventoryReportscxGridDBTVMAXRETAILPRICE: TcxGridDBColumn
        Caption = #1052#1056#1062
        DataBinding.FieldName = 'MAXRETAILPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
      end
    end
    object InventoryReportscxGridLevel: TcxGridLevel
      GridView = InventoryReportscxGridDBTV
    end
  end
  object InventoryCasheByStoragecxGrid: TcxGrid
    Left = 0
    Top = 300
    Width = 976
    Height = 278
    Align = alBottom
    PopupMenu = InventoryCasheByStoragePM
    TabOrder = 1
    Visible = False
    LookAndFeel.Kind = lfFlat
    object InventoryCasheByStoragecxGridDBTV: TcxGridDBTableView
      OnKeyDown = InventoryCasheByStoragecxGridDBTVKeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = InventoryCasheByStorageDS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'DRINKID'
          Column = InventoryCasheByStoragecxGridDBTVDRINKID
        end
        item
          Kind = skSum
          FieldName = 'BOTTLECOUNT'
          Column = InventoryCasheByStoragecxGridDBTVBOTTLECOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      object InventoryCasheByStoragecxGridDBTVDRINKID: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
        DataBinding.FieldName = 'DRINKID'
        Width = 66
      end
      object InventoryCasheByStoragecxGridDBTVDRINKNAME: TcxGridDBColumn
        Caption = #1058#1086#1074#1072#1088
        DataBinding.FieldName = 'DRINKNAME'
        Width = 414
      end
      object InventoryCasheByStoragecxGridDBTVRACKNAME: TcxGridDBColumn
        Caption = #1071#1095#1077#1081#1082#1072
        DataBinding.FieldName = 'RACKNAME'
        Width = 78
      end
      object InventoryCasheByStoragecxGridDBTVBOTTLECOUNT: TcxGridDBColumn
        Caption = #1054#1089#1090#1072#1090#1086#1082
        DataBinding.FieldName = 'BOTTLECOUNT'
        Width = 100
      end
      object InventoryCasheByStoragecxGridDBTVFACTBOTTLECOUNT: TcxGridDBColumn
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Width = 122
      end
      object InventoryCasheByStoragecxGridDBTVREMBOTTLECOUNT: TcxGridDBColumn
        Caption = #1050' '#1089#1087#1080#1089#1072#1085#1080#1102
        Width = 129
      end
    end
    object InventoryCasheByStoragecxGridLevel: TcxGridLevel
      GridView = InventoryCasheByStoragecxGridDBTV
    end
  end
  object InventoryReportsCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 768
    Top = 96
    object InventoryReportsCDSDRINKID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
      FieldName = 'DRINKID'
      Origin = 'DRINK.ID'
      Required = True
    end
    object InventoryReportsCDSDRINKKINDID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'DRINKKINDID'
      Origin = 'RETREM_INVENTORYRESULTDRINKKIND.DRINKKINDID'
    end
    object InventoryReportsCDSNAME: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldName = 'NAME'
      Origin = 'DRINK.NAME'
      Size = 128
    end
    object InventoryReportsCDSFIXBOTTLECOUNT: TIntegerField
      DisplayLabel = #1047#1072#1092#1080#1082#1080#1089#1080#1088#1086#1074#1072#1085#1086', '#1096#1090'.'
      FieldName = 'FIXBOTTLECOUNT'
      Origin = 'RETREM_INVENTORYRESULTDRINKKIND.FIXBOTTLECOUNT'
    end
    object InventoryReportsCDSFACTBOTTLECOUNT: TIntegerField
      DisplayLabel = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080'('#1089' '#1091#1095#1077#1090#1086#1084' '#1089#1087#1080#1089#1072#1085#1080#1103'), '#1096#1090'.'
      FieldName = 'FACTBOTTLECOUNT'
      Origin = 'RETREM_INVENTORYRESULTDRINKKIND.FACTBOTTLECOUNT'
    end
    object InventoryReportsCDSDELTABOTTLECOUNT: TIntegerField
      DisplayLabel = #1056#1072#1079#1085#1080#1094#1072', '#1096#1090'.'
      FieldName = 'DELTABOTTLECOUNT'
      Origin = 'RETREM_INVENTORYRESULTDRINKKIND.DELTABOTTLECOUNT'
    end
    object InventoryReportsCDSSUMPOST: TFloatField
      DisplayLabel = #1048#1079#1083#1080#1096#1077#1082', '#1088#1091#1073'.'
      FieldName = 'SUMPOST'
      Origin = 'RETREM_INVENTORYRESULTDRINKKIND.SUMPOST'
    end
    object InventoryReportsCDSSUMREM: TFloatField
      DisplayLabel = #1053#1077#1076#1086#1089#1076#1072#1095#1072', '#1088#1091#1073'.'
      FieldName = 'SUMREM'
      Origin = 'RETREM_INVENTORYRESULTDRINKKIND.SUMREM'
    end
    object InventoryReportsCDSRACKNAME: TStringField
      DisplayLabel = #1071#1095#1077#1081#1082#1072
      FieldName = 'RACKNAME'
      Size = 32
    end
    object InventoryReportsCDSREMBOTTLECOUNT: TIntegerField
      DisplayLabel = #1050' '#1089#1087#1080#1089#1072#1085#1080#1102', '#1096#1090'.'
      FieldName = 'REMBOTTLECOUNT'
    end
    object InventoryReportsCDSISRESERVE: TIntegerField
      FieldName = 'ISRESERVE'
    end
    object InventoryReportsCDSRETAILPRICE: TFloatField
      FieldName = 'RETAILPRICE'
    end
    object InventoryReportsCDSFACTRETAILPRICE: TFloatField
      FieldName = 'FACTRETAILPRICE'
    end
    object InventoryReportsCDSMAXRETAILPRICE: TFloatField
      FieldName = 'MAXRETAILPRICE'
    end
  end
  object InventoryReportsDS: TDataSource
    DataSet = InventoryReportsCDS
    Left = 800
    Top = 96
  end
  object InventoryCasheByStorageCDS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'inventorylistid'
        ParamType = ptInput
      end>
    Left = 776
    Top = 384
    object InventoryCasheByStorageCDSDRINKID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'DRINKID'
    end
    object InventoryCasheByStorageCDSDRINKNAME: TStringField
      FieldName = 'DRINKNAME'
      Size = 512
    end
    object InventoryCasheByStorageCDSRACKNAME: TStringField
      FieldName = 'RACKNAME'
      Size = 32
    end
    object InventoryCasheByStorageCDSBOTTLECOUNT: TIntegerField
      FieldName = 'BOTTLECOUNT'
    end
  end
  object InventoryCasheByStorageDS: TDataSource
    DataSet = InventoryCasheByStorageCDS
    Left = 808
    Top = 384
  end
  object dxComponentPrinterRep: TdxComponentPrinter
    CurrentLink = dxComponentPrinterRepLink
    Version = 0
    Left = 200
    Top = 104
    object dxComponentPrinterRepLink: TdxGridReportLink
      Active = True
      Component = InventoryReportscxGrid
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12500
      PrinterPage.Margins.Left = 12500
      PrinterPage.Margins.Right = 12500
      PrinterPage.Margins.Top = 12500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41606.6194666319
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      BuiltInReportLink = True
    end
  end
  object dxComponentPrinterCashe: TdxComponentPrinter
    CurrentLink = dxComponentPrinterCasheLink
    Version = 0
    Left = 240
    Top = 384
    object dxComponentPrinterCasheLink: TdxGridReportLink
      Active = True
      Component = InventoryCasheByStoragecxGrid
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12500
      PrinterPage.Margins.Left = 12500
      PrinterPage.Margins.Right = 12500
      PrinterPage.Margins.Top = 12500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41606.6194666435
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsFormatting.UseNativeStyles = True
      StyleRepository = cxStyleRepository1
      Styles.BandHeader = cxStyle3
      Styles.Caption = cxStyle2
      Styles.Content = cxStyle1
      Styles.Footer = cxStyle4
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object InventoryReportsPM: TPopupMenu
    Left = 256
    Top = 112
    object InventoryReportsRefreshMI: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00ADCEAD0010841000008408008CBD8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EFF7EF0052945200109C180018B5290018B521007BB57B00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDDE
        BD002994310031C64A0031D6520031CE4A0029C64200189C210010941800108C
        1800319439008CBD8C00EFF7EF00FF00FF00FF00FF00FF00FF00FF00FF00188C
        21005AF7840052EF7B004AE773004AE76B0042DE630039DE5A0039D6520031CE
        520031CE4A0021BD3900188C21009CC69C00FF00FF00FF00FF00FF00FF00318C
        390042D66B0063FF9C0063FF940063FF94005AF78C005AF7840052EF7B004AE7
        730042E76B0042DE630039D65A00109421009CC69C00FF00FF00FF00FF00FF00
        FF007BB57B0029AD420063F78C0063FF9C0063FF9C00428C42007BB57B0052A5
        5A00299C390031BD520052EF84004AEF730021942900FF00FF00FF00FF00FF00
        FF00FF00FF00CEE7CE00399442004ADE730063F78C007BB57B00FF00FF00FF00
        FF00FF00FF009CC69C003194390052E77B0031B54A00FF00FF00FF00FF0073AD
        7300C6DEC600FF00FF00EFF7EF007BB57B004AA55200BDDEBD00FF00FF00FF00
        FF00FF00FF00FF00FF00EFF7EF00318C390021943100FF00FF00FF00FF00108C
        180031943900EFF7EF00FF00FF00FF00FF00FF00FF00FF00FF00BDDEBD004294
        42007BB57B00FF00FF00FF00FF00BDDEBD0073AD7300FF00FF00FF00FF0021A5
        310029BD420029943100A5CEA500FF00FF00FF00FF00FF00FF007BB57B0008A5
        100008940800318C3100CEE7CE00FF00FF00FF00FF00FF00FF00FF00FF0029A5
        42004AE76B0042DE630029B54200219C310052A55A0084B58400428C420021BD
        310018B5290010AD2100088C08007BB57B00FF00FF00FF00FF00FF00FF00A5D6
        AD0029AD42005AF7840052EF7B004AE7730042DE6B0042DE630039D6520031CE
        4A0029CE420029C6390021BD310018A52100318C3100FF00FF00FF00FF00FF00
        FF00A5D6AD0039B552005AEF8C0063FF94005AF78C0052F7840052EF7B004AE7
        730042DE630039DE5A0039D6520031CE5200087B1000FF00FF00FF00FF00FF00
        FF00FF00FF00F7F7F70094CE9C004AB55A0031BD520039BD520039C65A0063FF
        94005AF78C0052EF840042D6630029943100BDDEBD00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084BD8C0063FF
        9C0063FF9C0039C65A00529C5200EFF7EF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0094CE9C0039C6
        5A0031A54200B5D6B500FF00FF00FF00FF00FF00FF00FF00FF00}
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100'                     F5'
      ImageIndex = 0
      OnClick = InventoryReportsRefreshMIClick
    end
    object InventoryReportsPrintMI: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00D6BDAD006B4231006B4231006B4231006B4231006B42
        31006B4231006B423100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00D6BDAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF006B423100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0010101000D6BDAD00FFFFFF00D6BDAD00D6BDAD00D6BDAD00D6BD
        AD00FFFFFF006B42310010101000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A58C7B0010101000D6BDAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF006B42310010101000A58C7B00FF00FF00FF00FF00FF00FF00A58C
        7B00BDA59C0010101000D6BDAD00FFFFFF00D6BDAD00D6BDAD00D6BDAD00D6BD
        AD00FFFFFF006B42310010101000BDA59C00A58C7B00FF00FF00FF00FF00A58C
        7B00C6B5AD0010101000C6B5A500DECEBD00DECEBD00DECEBD00DECEBD00DECE
        BD00DECEBD006B42310010101000C6B5AD00A58C7B00FF00FF00FF00FF00A58C
        7B00D6C6BD006B4231006B4231006B4231006B4231006B4231006B4231006B42
        31006B4231006B4231006B423100D6C6BD00A58C7B00FF00FF00FF00FF00A58C
        7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00009C0000FFFFFF00A58C7B00FF00FF00FF00FF00A58C
        7B00B5A59400B5A59400A58C7B00A58C7B00A58C7B00A58C7B00A58C7B00A58C
        7B00A58C7B00A58C7B00B5A59400B5A59400A58C7B00FF00FF00FF00FF00A58C
        7B00CEBDB500CEBDB500A58C7B00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
        EF00F7EFEF00A58C7B00CEBDB500CEBDB500A58C7B00FF00FF00FF00FF00A58C
        7B00A58C7B0010101000A58C7B00A58C7B00A58C7B00A58C7B00A58C7B00A58C
        7B00A58C7B00A58C7B0010101000A58C7B00A58C7B00FF00FF00FF00FF00FF00
        FF00FF00FF0010101000D6BDAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00F7F7F7006B42310010101000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0010101000D6BDAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF006B42310010101000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00D6BDAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF006B423100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00D6BDAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF006B423100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00D6BDAD00D6BDAD00D6BDAD00D6BDAD00D6BDAD00D6BD
        AD00D6BDAD00D6BDAD00FF00FF00FF00FF00FF00FF00FF00FF00}
      Caption = #1055#1077#1095#1072#1090#1100'                         F9'
      ImageIndex = 1
      OnClick = InventoryReportsPrintMIClick
    end
    object InventoryReportsExportMI: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5A594006B42
        31006B4231006B4231006B4231006B4231006B4231006B423100FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5A59400F7EF
        E700EFE7DE00E7DED600E7D6CE00DECEBD00DECEBD006B423100FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5A594000084
        C6000084C6000084C6000084C6000084C600DECEC6006B423100FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5A594000094
        DE005AE7FF0000D6FF0000C6EF000094DE00E7D6CE006B423100FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5A59400CEF7
        FF000094DE0000D6FF000094DE00D6DEE700EFDEDE006B423100FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5A59400FFFF
        FF0000ADFF005AE7FF000094DE00F7EFEF00EFE7E7006B423100FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5A59400FFFF
        FF00CEF7FF000094DE00D6EFFF00B5A594006B4231006B423100318431003184
        310031843100318431003184310031843100318431003184310031843100FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00B5A59400B55A29006B42310031843100FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0031843100FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00B5A59400B55A2900FF00FF0031843100FFFF
        FF003184310031843100FFFFFF00429C5200318431003184310031843100B5A5
        94009C310000B5A59400B5A59400B5A59400B55A2900FF00FF0031843100FFFF
        FF00429C520031843100318431003184310031843100FFFFFF00318431009C31
        0000B55A2900FF00FF00FF00FF00B55A29009C310000FF00FF0031843100FFFF
        FF00FFFFFF00429C52003184310031843100FFFFFF00FFFFFF009C310000E7A5
        8400D6845A00B55A2900B55A2900D6845A009C310000FF00FF0031843100FFFF
        FF00429C5200318431003184310031843100318431009C310000E7A58400D684
        5A00D6845A00D6845A009C3100009C310000FF00FF00FF00FF0031843100FFFF
        FF003184310031843100FFFFFF00429C520031843100318431009C310000B55A
        2900D6845A009C310000FF00FF00FF00FF00FF00FF00FF00FF0031843100FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00318431009C31
        0000B55A2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00318431003184
        310031843100318431003184310031843100318431003184310031843100FF00
        FF009C310000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel           F10'
      ImageIndex = 2
      OnClick = InventoryReportsExportMIClick
    end
  end
  object InventoryCasheByStoragePM: TPopupMenu
    Left = 208
    Top = 424
    object InventoryCasheByStorageRefreshMI: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100'                 F5'
      ImageIndex = 7
      OnClick = InventoryCasheByStorageRefreshMIClick
    end
    object InventoryCasheByStoragePrintMI: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100'                     F9'
      ImageIndex = 9
    end
    object InventoryCasheByStorageExportMI: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel       F10'
    end
  end
end
