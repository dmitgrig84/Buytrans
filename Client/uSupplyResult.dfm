object fSupplyResult: TfSupplyResult
  Left = 181
  Top = 93
  Width = 1483
  Height = 771
  Caption = #1047#1072#1082#1072#1079
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 25
    Width = 1475
    Height = 719
    Bands = <
      item
        Caption = #1058#1086#1074#1072#1088
        Width = 551
      end
      item
        Caption = #1057#1082#1083#1072#1076#1044#1079#1077#1088#1078#1080#1085#1089#1082
        Visible = False
        Width = 231
      end
      item
        Caption = #1055#1088#1086#1076#1072#1078#1080#1044#1079#1077#1088#1078#1080#1085#1089#1082
        Visible = False
        Width = 181
      end
      item
        Caption = #1047#1072#1082#1072#1079#1044#1079#1077#1088#1078#1080#1085#1089#1082
      end
      item
        Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077#1044#1079#1077#1088#1078#1080#1085#1089#1082
        Visible = False
        Width = 595
      end
      item
        Caption = #1057#1082#1083#1072#1076#1053#1053
      end
      item
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1090#1086#1074#1072#1088#1072
        Width = 200
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'TEMPDRINKID'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    DataSource = SupllyDS
    Filter.Active = True
    Filter.MaxDropDownCount = 10000
    Filter.Criteria = {00000000}
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartRefresh, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
    PreviewLines = 3
    ShowBands = True
    object dxDBGrid1TEMPDRINKID: TdxDBGridMaskColumn
      Width = 42
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TEMPDRINKID'
      SummaryFooterType = cstCount
    end
    object dxDBGrid1DRINKGROUPNAME: TdxDBGridMaskColumn
      Width = 48
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DRINKGROUPNAME'
    end
    object dxDBGrid1FIRMNAME: TdxDBGridMaskColumn
      Width = 49
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FIRMNAME'
    end
    object dxDBGrid1FACTORY: TdxDBGridMaskColumn
      Width = 41
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FACTORY'
    end
    object dxDBGrid1DRINKNAME: TdxDBGridMaskColumn
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Width = 142
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DRINKNAME'
    end
    object dxDBGrid1TRADEMARKNAME: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TRADEMARKNAME'
    end
    object dxDBGridTRADEMARKSERIESNAME: TdxDBGridColumn
      Caption = #1057#1077#1088#1080#1103
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TRADEMARKSERIESNAME'
    end
    object dxDBGrid1CBOTTLECOUNT: TdxDBGridMaskColumn
      Caption = #8470'25'
      Width = 45
      BandIndex = 1
      RowIndex = 0
      FieldName = 'CBOTTLECOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1VOLUME: TdxDBGridMaskColumn
      Width = 28
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VOLUME'
    end
    object dxDBGrid1matrikr: TdxDBGridColumn
      Width = 43
      BandIndex = 0
      RowIndex = 0
      FieldName = 'matrikr'
    end
    object dxDBGrid1matrikc: TdxDBGridColumn
      Width = 44
      BandIndex = 0
      RowIndex = 0
      FieldName = 'matrikc'
    end
    object dxDBGrid1S31BOTCOUNT: TdxDBGridColumn
      Caption = #8470'31'
      Width = 57
      BandIndex = 1
      RowIndex = 0
      FieldName = 'S31BOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1matrikm: TdxDBGridColumn
      Width = 40
      BandIndex = 0
      RowIndex = 0
      FieldName = 'matrikm'
    end
    object dxDBGrid1RBOTTLECOUNT: TdxDBGridMaskColumn
      Caption = #1053#1072#1082#1086#1087#1080#1090#1077#1083#1100
      Visible = False
      Width = 61
      BandIndex = 1
      RowIndex = 0
      FieldName = 'RBOTTLECOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1ABOTTLEPRICE: TdxDBGridMaskColumn
      Caption = #1040#1082#1094'('#1088')'
      Visible = False
      Width = 74
      BandIndex = 1
      RowIndex = 0
      FieldName = 'ABOTTLEPRICE'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1DAYSTORAGE: TdxDBGridMaskColumn
      Caption = #1044#1085#1077#1081
      Width = 68
      BandIndex = 2
      RowIndex = 0
      FieldName = 'DAYSTORAGE'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1AVGBOTTLECOUNT: TdxDBGridMaskColumn
      Caption = #1057#1088#1077#1076#1054#1089#1090
      Visible = False
      Width = 45
      BandIndex = 1
      RowIndex = 0
      FieldName = 'AVGBOTTLECOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S25RBOTCOUNT: TdxDBGridColumn
      Caption = '25+'#1053#1072#1082#1086#1087#1080#1090#1077#1083#1100
      Visible = False
      Width = 68
      BandIndex = 1
      RowIndex = 0
      FieldName = 'S25RBOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1OVERDAY: TdxDBGridMaskColumn
      Visible = False
      Width = 106
      BandIndex = 1
      RowIndex = 0
      FieldName = 'OVERDAY'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1I34BOTCOUNT: TdxDBGridColumn
      Caption = #1057#1074#1086#1073#1086#1076#1085#1099#1081#1055#1088#1076#1091#1082#1090
      Visible = False
      Width = 69
      BandIndex = 1
      RowIndex = 0
      FieldName = 'I34BOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1StrahDay: TdxDBGridMaskColumn
      Caption = #1053#1086#1088#1084#1072' '#1079#1072#1087#1072#1089#1072
      Visible = False
      Width = 90
      BandIndex = 1
      RowIndex = 0
      FieldName = 'STRAHDAY'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1T: TdxDBGridColumn
      Visible = False
      Width = 41
      BandIndex = 1
      RowIndex = 0
      FieldName = 'DRINKGROUPS'
    end
    object dxDBGrid1SBOTTLECOUNT: TdxDBGridMaskColumn
      Caption = #1041#1091#1090
      Visible = False
      Width = 95
      BandIndex = 2
      RowIndex = 0
      FieldName = 'SBOTTLECOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1DAYSTORAGER: TdxDBGridColumn
      Caption = #1044#1085#1077#1081#1055#1088#1086#1076#1056#1086#1079#1085#1080#1094#1072
      Visible = False
      Width = 91
      BandIndex = 2
      RowIndex = 0
      FieldName = 'DAYSTORAGER'
    end
    object dxDBGrid1OBOTTLECOUNT: TdxDBGridMaskColumn
      Caption = #1055#1088#1086#1076#1072#1078#1080' '#1088#1086#1079#1085#1080#1094#1072', '#1073#1091#1090'.'
      Width = 89
      BandIndex = 2
      RowIndex = 0
      FieldName = 'OBOTTLECOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1s5Bottlecount: TdxDBGridColumn
      Caption = #1056#1077#1079#1077#1088#1074'-'#1056#1086#1079#1085#1080#1094#1099
      Visible = False
      Width = 82
      BandIndex = 2
      RowIndex = 0
      FieldName = 'retailreserve'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1DAYCOUNT: TdxDBGridMaskColumn
      Visible = False
      Width = 96
      BandIndex = 2
      RowIndex = 0
      FieldName = 'DAYCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1BOXCAPACITY: TdxDBGridMaskColumn
      Width = 57
      BandIndex = 3
      RowIndex = 0
      FieldName = 'BOXCAPACITY'
    end
    object dxDBGrid1BOXCAPACITYSALE: TdxDBGridColumn
      Caption = #1058#1072#1088#1072' '#1087#1088#1086#1076#1072#1078#1080
      Width = 56
      BandIndex = 3
      RowIndex = 0
      FieldName = 'BOXCAPACITYSALE'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1CLASTPRICE: TdxDBGridMaskColumn
      Caption = #1047#1072#1082#1091#1087'('#1088#1091#1073')'
      Width = 75
      BandIndex = 3
      RowIndex = 0
      FieldName = 'CLASTPRICE'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1SPRICECITYPART: TdxDBGridMaskColumn
      Caption = #1055#1088#1072#1081#1089'('#1088#1091#1073')'
      Width = 75
      BandIndex = 3
      RowIndex = 0
      FieldName = 'SPRICECITYPART'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1FPERCENT: TdxDBGridColumn
      Caption = #1052#1080#1085#1055#1088#1086#1094#1077#1085#1090#1055#1086' '#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1102
      Visible = False
      Width = 210
      BandIndex = 3
      RowIndex = 0
      FieldName = 'FPERCENT'
    end
    object dxDBGrid1PLANBOTTLESALE: TdxDBGridMaskColumn
      Caption = #1055#1083#1072#1085
      Visible = False
      Width = 89
      BandIndex = 2
      RowIndex = 0
      FieldName = 'PLANBOTTLESALE'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1s38botcountday: TdxDBGridColumn
      Caption = #1044#1085#1077#1081#1054#1089#1090#1056#1086#1079#1085#1080#1094#1072
      Visible = False
      Width = 144
      BandIndex = 2
      RowIndex = 0
      FieldName = 'S38BOTCOUNTDAY'
    end
    object dxDBGrid1DRINKGROUP: TdxDBGridMaskColumn
      Visible = False
      Width = 49
      BandIndex = 2
      RowIndex = 0
      FieldName = 'DRINKGROUP'
    end
    object dxDBGrid1STRAHPLANBUY: TdxDBGridMaskColumn
      Caption = #1059#1087#1072#1082#1086#1074#1086#1082'('#1079#1072#1087#1072#1089')'
      Visible = False
      Width = 121
      BandIndex = 4
      RowIndex = 0
      FieldName = 'STRAHPLANBUY'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S5BOTCOUNT: TdxDBGridMaskColumn
      Caption = #8470'5'
      Visible = False
      Width = 79
      BandIndex = 4
      RowIndex = 0
      FieldName = 'S5BOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S5NEEDBOTCOUNT: TdxDBGridColumn
      Caption = #1055#1077#1088#1077#1084#8470'5'
      Visible = False
      Width = 111
      BandIndex = 4
      RowIndex = 0
      FieldName = 'S5NEEDBOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S2BOTCOUNT: TdxDBGridColumn
      Caption = #8470'2'
      Visible = False
      Width = 81
      BandIndex = 4
      RowIndex = 0
      FieldName = 'S2BOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S32BOTCOUNT: TdxDBGridColumn
      Caption = #8470'32'
      Visible = False
      Width = 81
      BandIndex = 4
      RowIndex = 0
      FieldName = 'S32BOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S33BOTCOUNT: TdxDBGridColumn
      Caption = #8470'33'
      Visible = False
      Width = 81
      BandIndex = 4
      RowIndex = 0
      FieldName = 'S33BOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S34BOTCOUNT: TdxDBGridColumn
      Caption = #8470'34'
      Visible = False
      Width = 81
      BandIndex = 4
      RowIndex = 0
      FieldName = 'S34BOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S15BOTCOUNT: TdxDBGridColumn
      Caption = #1053#1072#1082#1086#1087#1080#1090#1077#1083#1100'-'#1044#1079#1077#1088#1078#1080#1085#1089#1082
      Visible = False
      Width = 162
      BandIndex = 4
      RowIndex = 0
      FieldName = 'S15BOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1CBOTTLECOUNTP: TdxDBGridColumn
      Caption = '25'#1087#1088#1080#1077#1084#1082#1072
      Width = 81
      BandIndex = 4
      RowIndex = 0
      FieldName = 'CBOTTLECOUNTP'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S25BOTCOUNT: TdxDBGridColumn
      Caption = #8470'25'
      Width = 81
      BandIndex = 4
      RowIndex = 0
      FieldName = 'S25BOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S25NEEDBOTCOUNT: TdxDBGridColumn
      Caption = #1055#1077#1088#1077#1084#8470'25'
      Width = 81
      BandIndex = 4
      RowIndex = 0
      FieldName = 'S25NEEDBOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1DRINKGROUP2: TdxDBGridColumn
      Caption = #1058#1080#1087#1053#1053
      Visible = False
      Width = 55
      BandIndex = 5
      RowIndex = 0
      FieldName = 'DRINKGROUP2'
    end
    object dxDBGrid1DAYSTORAGE2: TdxDBGridColumn
      Alignment = taLeftJustify
      Width = 94
      BandIndex = 5
      RowIndex = 0
      FieldName = 'DAYSTORAGE2'
    end
    object dxDBGrid1CBOTTLECOUNT2: TdxDBGridColumn
      Caption = #8470'1'
      Visible = False
      Width = 67
      BandIndex = 5
      RowIndex = 0
      FieldName = 'CBOTTLECOUNT2'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1CBOTTLECOUNT51: TdxDBGridColumn
      Caption = #8470'51'
      Width = 64
      BandIndex = 5
      RowIndex = 0
      FieldName = 'CBOTTLECOUNT51'
    end
    object dxDBGrid1Reservseti: TdxDBGridColumn
      Caption = #8470'51'#1056#1077#1079#1077#1088#1074
      Width = 66
      BandIndex = 5
      RowIndex = 0
      FieldName = 'RESERVSETI'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1MAXORDERDATE: TdxDBGridColumn
      Caption = #1044#1072#1090#1072#1056#1077#1079#1077#1088#1074#1072
      Width = 112
      BandIndex = 5
      RowIndex = 0
      FieldName = 'MAXORDERDATE'
    end
    object dxDBGrid1S1TRANSBOTCOUNT: TdxDBGridColumn
      Caption = #1055#1077#1088#1077#1084#1053#1072#1082#1086#1087#1080#1090#1077#1083#1100'1'
      Visible = False
      Width = 57
      BandIndex = 5
      RowIndex = 0
      FieldName = 'S1TRANSBOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1CBOTTLECOUNT51P: TdxDBGridColumn
      Caption = #8470'51'#1087#1088#1080#1077#1084#1082#1072
      Width = 73
      BandIndex = 5
      RowIndex = 0
      FieldName = 'CBOTTLECOUNT51P'
    end
    object dxDBGrid1CBOTTLECOUNT2N: TdxDBGridColumn
      Caption = #1053#1072#1082#1086#1087#1080#1090#1077#1083#1100#1053#1053
      Visible = False
      Width = 68
      BandIndex = 5
      RowIndex = 0
      FieldName = 'CBOTTLECOUNT2N'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S50BOTCOUNT: TdxDBGridColumn
      Caption = #1057#1082#1083#1072#1076' '#1061#1088#1072#1085#1077#1085#1080#1103
      Visible = False
      Width = 93
      BandIndex = 5
      RowIndex = 0
      FieldName = 'S50BOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1cbottlecount50r: TdxDBGridColumn
      Visible = False
      Width = 93
      BandIndex = 5
      RowIndex = 0
      FieldName = 'CBOTTLECOUNT50R'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1Column59: TdxDBGridColumn
      Caption = #1056#1077#1079#1077#1088#1074#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077#1053#1072#1082#1086#1087#1080#1090#1077#1083#1100'1'
      Visible = False
      Width = 85
      BandIndex = 5
      RowIndex = 0
      FieldName = 'TBOTTLECOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1CBOTTLECOUNT2SP: TdxDBGridColumn
      Caption = #1057#1074#1086#1073'.'#1055#1088#1086#1076#1091#1082#1090
      Visible = False
      Width = 79
      BandIndex = 5
      RowIndex = 0
      FieldName = 'CBOTTLECOUNT2SP'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1CBOTTLECOUNT53: TdxDBGridColumn
      Caption = #8470'53'#1057#1074#1086#1073#1086#1076#1085#1080#1082
      Width = 84
      BandIndex = 5
      RowIndex = 0
      FieldName = 'CBOTTLECOUNT53'
    end
    object dxDBGrid1CBOTTLECOUNT2R32: TdxDBGridColumn
      Caption = #8470'32'#1056#1072#1089#1087#1088#1086#1076#1072#1078#1072
      Visible = False
      Width = 96
      BandIndex = 5
      RowIndex = 0
      FieldName = 'CBOTTLECOUNT2R32'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1CBOTTLECOUNT52: TdxDBGridColumn
      Caption = #8470'52'#1056#1072#1089#1087#1088#1086#1076#1072#1078#1072
      Width = 92
      BandIndex = 5
      RowIndex = 0
      FieldName = 'CBOTTLECOUNT52'
    end
    object dxDBGrid1SBOTTLECOUNT2: TdxDBGridColumn
      Width = 67
      BandIndex = 5
      RowIndex = 0
      FieldName = 'SBOTTLECOUNT2'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1S1PLANBUYBOTCOUNT: TdxDBGridColumn
      Caption = #1047#1072#1082#1091#1087'1'#1057#1082#1083#1072#1076
      Visible = False
      Width = 78
      BandIndex = 5
      RowIndex = 0
      FieldName = 'S1PLANBUYBOTCOUNT'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1RBOTTLEPRICE: TdxDBGridMaskColumn
      Caption = #8470'5'
      Visible = False
      Width = 81
      BandIndex = 6
      RowIndex = 0
      FieldName = 'RBOTTLEPRICE'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1BOTTLEPRICE51P: TdxDBGridColumn
      Caption = #8470'51 '#1055#1088#1080#1105#1084#1082#1072
      Width = 74
      BandIndex = 6
      RowIndex = 0
      FieldName = 'BOTTLEPRICE51P'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1BOTTLEPRICE51: TdxDBGridColumn
      Caption = #8470'51 '#1057#1082#1083#1072#1076
      Width = 103
      BandIndex = 6
      RowIndex = 0
      FieldName = 'BOTTLEPRICE51'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1BOTTLEPRICE52: TdxDBGridColumn
      Caption = #8470'52 '#1056#1072#1089#1087#1088#1086#1076#1072#1078#1072
      BandIndex = 6
      RowIndex = 0
      FieldName = 'BOTTLEPRICE52'
      SummaryFooterType = cstSum
    end
    object dxDBGrid1BOTTLEPRICE53: TdxDBGridColumn
      Caption = #8470'53 '#1057#1074#1086#1073#1086#1076#1085#1099#1081' '#1087#1088#1086#1076#1091#1082#1090
      BandIndex = 6
      RowIndex = 0
      FieldName = 'BOTTLEPRICE53'
      SummaryFooterType = cstSum
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1475
    Height = 25
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 5
      Top = 4
      Width = 127
      Height = 17
      Caption = #1057#1082#1088#1099#1090#1100' '#1057#1082#1083#1072#1076
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 637
      Top = 4
      Width = 127
      Height = 17
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 511
      Top = 4
      Width = 127
      Height = 17
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 131
      Top = 4
      Width = 127
      Height = 17
      Caption = #1057#1082#1088#1099#1090#1100' '#1055#1088#1086#1076#1072#1078#1080
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 259
      Top = 4
      Width = 127
      Height = 17
      Caption = #1057#1082#1088#1099#1090#1100' '#1047#1072#1082#1072#1079
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 387
      Top = 4
      Width = 127
      Height = 17
      Caption = #1057#1082#1088#1099#1090#1100' '#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      TabOrder = 5
      OnClick = Button6Click
    end
  end
  object SupplyCDS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'begindate'
        ParamType = ptInput
        Value = '25.01.2010'
      end
      item
        DataType = ftDateTime
        Name = 'enddate'
        ParamType = ptInput
        Value = '02.02.2010'
      end
      item
        DataType = ftInteger
        Name = 'minbottlea'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'minbottleb'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'minbottlec'
        ParamType = ptInput
        Value = '1'
      end>
    Left = 200
    Top = 194
    object SupplyCDSTEMPDRINKID: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 5
      FieldName = 'TEMPDRINKID'
      Origin = 'SCLADYOUBOTTLE.TEMPDRINKID'
    end
    object SupplyCDSDRINKGROUPNAME: TStringField
      DisplayLabel = #1043#1088#1091#1087#1087#1072
      DisplayWidth = 15
      FieldName = 'DRINKGROUPNAME'
      Origin = 'SCLADYOUBOTTLE.DRINKGROUPNAME'
      Size = 30
    end
    object SupplyCDSFIRMNAME: TStringField
      DisplayLabel = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      DisplayWidth = 10
      FieldName = 'FIRMNAME'
      Origin = 'SCLADYOUBOTTLE.FIRMNAME'
      Size = 10
    end
    object SupplyCDSFACTORY: TStringField
      DisplayLabel = #1047#1072#1074#1086#1076
      DisplayWidth = 15
      FieldName = 'FACTORY'
      Origin = 'SCLADYOUBOTTLE.FACTORY'
      Size = 50
    end
    object SupplyCDSDRINKNAME: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      DisplayWidth = 20
      FieldName = 'DRINKNAME'
      Origin = 'SCLADYOUBOTTLE.DRINKNAME'
      Size = 255
    end
    object SupplyCDSTRADEMARKNAME: TStringField
      DisplayLabel = #1058#1086#1088#1075'.'#1084#1072#1088#1082#1072
      DisplayWidth = 10
      FieldName = 'TRADEMARKNAME'
      Origin = 'SCLADYOUBOTTLE.TRADEMARKNAME'
      Size = 10
    end
    object SupplyCDSTRADEMARKSERIESNAME: TStringField
      FieldName = 'TRADEMARKSERIESNAME'
      Size = 256
    end
    object SupplyCDSmatrikr: TStringField
      DisplayLabel = #1056#1086#1079#1085#1080#1094#1072#1052#1072#1090#1088#1080#1094#1072
      DisplayWidth = 20
      FieldName = 'matrikr'
      Origin = 'SCLADYOUBOTTLE.MATRIKR'
      Size = 255
    end
    object SupplyCDSmatrikm: TStringField
      DisplayLabel = #1054#1089#1085#1086#1074#1085#1086#1081#1052#1072#1090#1088#1080#1094#1072
      DisplayWidth = 20
      FieldName = 'matrikm'
      Origin = 'SCLADYOUBOTTLE.MATRIKm'
      Size = 255
    end
    object SupplyCDSMATRIKC: TStringField
      DisplayLabel = #1057#1077#1090#1080#1052#1072#1090#1088#1080#1094#1072
      DisplayWidth = 20
      FieldName = 'matrikc'
      Origin = 'SCLADYOUBOTTLE.MATRIKC'
      Size = 255
    end
    object SupplyCDSVOLUME: TFloatField
      DisplayLabel = #1045#1084#1082
      DisplayWidth = 3
      FieldName = 'VOLUME'
      Origin = 'SCLADYOUBOTTLE.VOLUME'
    end
    object SupplyCDSCBOTTLECOUNT: TIntegerField
      DisplayLabel = #1047#1072#1087#1072#1089#1041#1091#1090
      FieldName = 'CBOTTLECOUNT'
      Origin = 'SCLADYOUBOTTLE.CBOTTLECOUNT'
    end
    object SupplyCDSCBOTTLECOUNTP: TIntegerField
      DisplayLabel = #1047#1072#1087#1072#1089#1041#1091#1090
      FieldName = 'CBOTTLECOUNTP'
      Origin = 'SCLADYOUBOTTLE.CBOTTLECOUNTP'
    end
    object SupplyCDSCBOTTLECOUNT2: TIntegerField
      DisplayLabel = #1047#1072#1087#1072#1089#1041#1091#1090
      FieldName = 'CBOTTLECOUNT2'
      Origin = 'SCLADYOUBOTTLE.CBOTTLECOUNT2'
    end
    object SupplyCDSRESERVSETI: TIntegerField
      FieldName = 'RESERVSETI'
      Origin = 'SCLADYOUBOTTLE.RESERVSETI'
    end
    object SupplyCDSCBOTTLECOUNT50R: TIntegerField
      DisplayLabel = #1056#1077#1079#1077#1088#1074#1041#1091#1090#1057#1082#1083#1072#1076#1061#1088#1072#1085#1077#1085#1080#1103
      FieldName = 'CBOTTLECOUNT50R'
      Origin = 'SCLADYOUBOTTLE.CBOTTLECOUNT50R'
    end
    object SupplyCDSMAXORDERDATE: TDateTimeField
      FieldName = 'MAXORDERDATE'
    end
    object SupplyCDSTBOTTLECOUNT: TIntegerField
      DisplayLabel = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077#1053#1072#1082#1086#1087'1'
      FieldName = 'TBOTTLECOUNT'
      Origin = 'SCLADYOUBOTTLE.TBOTTLECOUNT'
    end
    object SupplyCDSCBOTTLECOUNT2N: TIntegerField
      DisplayLabel = #1047#1072#1087#1072#1089#1041#1091#1090
      FieldName = 'CBOTTLECOUNT2N'
      Origin = 'SCLADYOUBOTTLE.CBOTTLECOUNT2N'
    end
    object SupplyCDSCBOTTLECOUNT2SP: TIntegerField
      DisplayLabel = #1047#1072#1087#1072#1089#1041#1091#1090
      FieldName = 'CBOTTLECOUNT2SP'
      Origin = 'SCLADYOUBOTTLE.CBOTTLECOUNT2SP'
    end
    object SupplyCDSCBOTTLECOUNT2R32: TIntegerField
      DisplayLabel = #1047#1072#1087#1072#1089#1041#1091#1090
      FieldName = 'CBOTTLECOUNT2R32'
      Origin = 'SCLADYOUBOTTLE.CBOTTLECOUNT2R32'
    end
    object SupplyCDSRBOTTLECOUNT: TIntegerField
      DisplayLabel = #1056#1077#1079#1077#1088#1074#1041#1091#1090
      FieldName = 'RBOTTLECOUNT'
      Origin = 'SCLADYOUBOTTLE.RBOTTLECOUNT'
    end
    object SupplyCDSDAYSTORAGE: TIntegerField
      DisplayLabel = #1044#1085#1077#1081#1055#1088#1086#1076
      DisplayWidth = 5
      FieldName = 'DAYSTORAGE'
      Origin = 'SCLADYOUBOTTLE.DAYSTORAGE'
    end
    object SupplyCDSDAYSTORAGER: TIntegerField
      DisplayLabel = #1044#1085#1077#1081#1055#1088#1086#1076
      DisplayWidth = 5
      FieldName = 'DAYSTORAGER'
      Origin = 'SCLADYOUBOTTLE.DAYSTORAGER'
    end
    object SupplyCDSDAYSTORAGE2: TIntegerField
      DisplayLabel = #1044#1085#1077#1081#1055#1088#1086#1076
      DisplayWidth = 5
      FieldName = 'DAYSTORAGE2'
      Origin = 'SCLADYOUBOTTLE.DAYSTORAGE2'
    end
    object SupplyCDSSTRAHDAY: TIntegerField
      DisplayLabel = #1057#1090#1088#1072#1093#1086#1074#1086#1081' '#1079#1072#1087#1072#1089
      FieldName = 'STRAHDAY'
      Origin = 'SCLADYOUBOTTLE.STRAHDAY'
    end
    object SupplyCDSOVERDAY: TIntegerField
      DisplayLabel = #1053#1086#1088#1084#1072' '#1079#1072#1082#1072#1079#1072
      DisplayWidth = 6
      FieldName = 'OVERDAY'
      Origin = 'SCLADYOUBOTTLE.OVERDAY'
    end
    object SupplyCDSSBOTTLECOUNT: TIntegerField
      DisplayLabel = #1055#1088#1086#1076#1072#1085#1086#1041#1091#1090
      FieldName = 'SBOTTLECOUNT'
      Origin = 'SCLADYOUBOTTLE.SBOTTLECOUNT'
    end
    object SupplyCDSSBOTTLECOUNT2: TIntegerField
      DisplayLabel = #1055#1088#1086#1076#1072#1085#1086#1041#1091#1090
      FieldName = 'SBOTTLECOUNT2'
      Origin = 'SCLADYOUBOTTLE.SBOTTLECOUNT2'
    end
    object SupplyCDSOBOTTLECOUNT: TIntegerField
      DisplayLabel = #1055#1088#1086#1076#1072#1085#1086#1054#1087#1090
      FieldName = 'OBOTTLECOUNT'
      Origin = 'SCLADYOUBOTTLE.OBOTTLECOUNT'
    end
    object SupplyCDSDAYCOUNT: TIntegerField
      DisplayLabel = #1047#1072#1087#1072#1089#1044#1085#1077#1081
      FieldName = 'DAYCOUNT'
      Origin = 'SCLADYOUBOTTLE.DAYCOUNT'
    end
    object SupplyCDSBOXCAPACITY: TIntegerField
      DisplayLabel = #1058#1072#1088#1072
      DisplayWidth = 4
      FieldName = 'BOXCAPACITY'
      Origin = 'SCLADYOUBOTTLE.BOXCAPACITY'
    end
    object SupplyCDSSTRAHPLANBUY: TIntegerField
      DisplayLabel = #1059#1087#1072#1082#1086#1074#1086#1082' ('#1079#1072#1087#1072#1089')'
      FieldName = 'STRAHPLANBUY'
      Origin = 'SCLADYOUBOTTLE.STRAHPLANBUY'
    end
    object SupplyCDSPLANBOTTLESALE: TIntegerField
      DisplayLabel = #1055#1083#1072#1085#1055#1088#1086#1076#1072#1078
      FieldName = 'PLANBOTTLESALE'
      Origin = 'SCLADYOUBOTTLE.PLANBOTTLESALE'
    end
    object SupplyCDSDRINKGROUP: TStringField
      DisplayLabel = #1058#1080#1087
      FieldName = 'DRINKGROUP'
      Origin = 'SCLADYOUBOTTLE.DRINKGROUP'
      Size = 1
    end
    object SupplyCDSDRINKGROUP2: TStringField
      DisplayLabel = #1058#1080#1087
      FieldName = 'DRINKGROUP2'
      Origin = 'SCLADYOUBOTTLE.DRINKGROUP2'
      Size = 1
    end
    object SupplyCDSDRINKGROUPS: TStringField
      DisplayLabel = #1058
      FieldName = 'DRINKGROUPS'
      Origin = 'SCLADYOUBOTTLE.DRINKGROUPS'
      Size = 1
    end
    object BOXCAPACITYSALE: TIntegerField
      FieldName = 'BOXCAPACITYSALE'
      Origin = 'SCLADYOUBOTTLE.BOXCAPACITYSALE'
    end
    object SupplyCDSOPRICE: TFloatField
      DisplayLabel = #1088#1091#1073'('#1086#1087#1090')'
      FieldName = 'SPRICECITYPART'
      Origin = 'SCLADYOUBOTTLE.SPRICECITYPART'
      DisplayFormat = '######.00'
    end
    object SupplyCDSFPERCENT: TFloatField
      DisplayLabel = #1088#1091#1073
      FieldName = 'FPERCENT'
      DisplayFormat = '###'
    end
    object SupplyCDSS5BOTCOUNT: TIntegerField
      FieldName = 'S5BOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S5BOTCOUNT'
    end
    object SupplyCDSS5NEEDBOTCOUNT: TIntegerField
      FieldName = 'S5NEEDBOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S5NEEDBOTCOUNT'
    end
    object SupplyCDSS2BOTCOUNT: TIntegerField
      FieldName = 'S2BOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S2BOTCOUNT'
    end
    object SupplyCDSS32BOTCOUNT: TIntegerField
      FieldName = 'S32BOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S32BOTCOUNT'
    end
    object SupplyCDSS33BOTCOUNT: TIntegerField
      FieldName = 'S33BOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S33BOTCOUNT'
    end
    object SupplyCDSS34BOTCOUNT: TIntegerField
      FieldName = 'S34BOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S34BOTCOUNT'
    end
    object SupplyCDSS38BOTCOUNT: TIntegerField
      FieldName = 'S38BOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S38BOTCOUNT'
    end
    object SupplyCDSS50BOTCOUNT: TIntegerField
      FieldName = 'S50BOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S50BOTCOUNT'
    end
    object SupplyCDSS1TRANSBOTCOUNT: TIntegerField
      FieldName = 'S1TRANSBOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S1TRANSBOTCOUNT'
    end
    object SupplyCDSS38BOTCOUNTDAY: TIntegerField
      FieldName = 'S38BOTCOUNTDAY'
      Origin = 'SCLADYOUBOTTLE.S38BOTCOUNTDAY'
    end
    object SupplyCDSI34BOTCOUNT: TIntegerField
      FieldName = 'I34BOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.I34BOTCOUNT'
    end
    object SupplyCDSS25BOTCOUNT: TIntegerField
      FieldName = 'S25BOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S25BOTCOUNT'
    end
    object SupplyCDSS25NEEDBOTCOUNT: TIntegerField
      FieldName = 'S25NEEDBOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S25NEEDBOTCOUNT'
    end
    object SupplyCDSS31BOTCOUNT: TIntegerField
      FieldName = 'S31BOTCOUNT'
    end
    object SupplyCDSS15BOTCOUNT: TIntegerField
      FieldName = 'S15BOTCOUNT'
    end
    object SupplyCDSS25RBOTCOUNT: TIntegerField
      FieldName = 'S25RBOTCOUNT'
      Origin = 'SCLADYOUBOTTLE.S25RBOTCOUNT'
    end
    object SupplyCDSCLASTPRICE: TFloatField
      DisplayLabel = #1088#1091#1073
      FieldName = 'CLASTPRICE'
      Origin = 'SCLADYOUBOTTLE.CLASTPRICE'
      DisplayFormat = '######.00'
    end
    object SupplyCDSPLANBOTCOUNT: TIntegerField
      FieldName = 'S1PLANBOTCOUNT5'
    end
    object SupplyCDSDBOTTLEPRICE51: TFloatField
      FieldName = 'BOTTLEPRICE51'
      DisplayFormat = ',#'
    end
    object SupplyCDSRBOTTLEPRICE: TFloatField
      FieldName = 'RBOTTLEPRICE'
      DisplayFormat = ',#'
    end
    object SupplyCDSBOTTLEPRICE51P: TFloatField
      FieldName = 'BOTTLEPRICE51P'
      DisplayFormat = ',#'
    end
    object SupplyCDSretailreserve: TIntegerField
      FieldName = 'retailreserve'
    end
    object SupplyCDSBOTTLEPRICE52: TFloatField
      FieldName = 'BOTTLEPRICE52'
    end
    object SupplyCDSBOTTLEPRICE53: TFloatField
      FieldName = 'BOTTLEPRICE53'
    end
    object SupplyCDSCBOTTLECOUNT51: TIntegerField
      FieldName = 'CBOTTLECOUNT51'
    end
    object SupplyCDSCBOTTLECOUNT51P: TIntegerField
      FieldName = 'CBOTTLECOUNT51P'
    end
    object SupplyCDSCBOTTLECOUNT52: TIntegerField
      FieldName = 'CBOTTLECOUNT52'
    end
    object SupplyCDSCBOTTLECOUNT53: TIntegerField
      FieldName = 'CBOTTLECOUNT53'
    end
  end
  object SupllyDS: TDataSource
    DataSet = SupplyCDS
    Left = 197
    Top = 254
  end
end
