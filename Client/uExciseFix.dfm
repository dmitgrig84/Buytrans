object fExciseFix: TfExciseFix
  Left = 536
  Top = 181
  Width = 983
  Height = 565
  Caption = #1060#1080#1082#1089#1072#1094#1080#1103' '#1040#1052' '#1085#1072' 3 '#1088#1077#1075#1080#1089#1090#1088#1077' '#1045#1043#1040#1048#1057
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000D68D45C0AC9563FF9E966BFF9C9367FF9B90
    64FF998D60FF988A5CFF968758FF958556FF958556FF958556FFC76D1DF60000
    0000000000000000000000000000D9934DEF00CCFFFF00CCFFFF00CCFFFF00CC
    FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF958556FF0000
    0000000000000000000000000000DC9955EF00D1FFFF00D0FFFF00CFFFFF00CE
    FFFF00CDFFFF00CDFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF968656FF0000
    0000000000000000000000000000DF9F5EEFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
    FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFD8975BFF0000
    0000000000000000000000000000E2A666EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA9C62FFD488
    40CED2853AEFD08035EFCE7D30EFE0A261FEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCA168FFE1A6
    6DFFFFECDAFFFFECDAFFFFECDAFFEEC18FFFFFE0AAFFFFDDA5FFFFDBA0FFFFD9
    9CFFFFD796FFFFD491FFFFD28CFFFFCF87FFFFCD83FFFFCC80FFDF994FFFEDC5
    9DFFFFF4EAFFA3AEF0FF8093F3FFD0AF9BFFFFD27DFFFFCF74FFFFCB6CFFFFC6
    63FFFFC25AFFFFBE51FFFFBA48FFFFB53EFFFFB134FFFFAC2AFFE1953EFFEECC
    A9FF97ADFBFF1F50FFFF0F41FFFFB49DA4FFFEE4A6FFFFE4A3FFFFE19CFFFFDD
    95FFFFDA8EFFFFD786FFFFD37EFFFFCF76FFFFCB6DFFFFC765FFE19D51FFF0D1
    B1FF5F87FFFF3C6BFFFF2C5CFFFF569BDBFFB3C4A7FFB2C8A3FFB1C79FFFAFC4
    9BFFBEC298FFE3AA6DFFE4AA6BEFE2A666EFE1A261EFDF9E5CEFDD9A57CEF1D4
    B5FF5681FFFF4B79FFFF4675FFFF18A9FFFF00CCFFFF00EFFFFF00F9FFFF00F7
    FFFF70F9FFFFDCA067FF0000000000000000000000000000000000000000F3D8
    B9FFA5BCFFFF4B79FFFF4B79FFFF388EFFFF00D2FFFF00FCFFFF00FFFFFF00FF
    FFFFBFFFFFFFDEA56EFF0000000000000000000000000000000000000000F5DB
    BDFFFFFFFFFFBCCDFFFF83A3FFFFA5BCFFFFB4F7FFFF60FFFFFF60FFFFFFBFFF
    FFFFFFFFFFFFE1AA74FF0000000000000000000000000000000000000000F5DA
    BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFE3AF7AFF0000000000000000000000000000000000000000F1C6
    93F6F6DBBCFFF6DDC1FFF5DCBEFFF4DABCFFF3D8B9FFF2D6B7FFF1D4B4FFF0D2
    B1FFEBC49AFFDD9B57EF0000000000000000000000000000000000000000FFFF
    0000F0000000F0000000F0000000F0000000F000000000000000000000000000
    00000000000000000000001F0000001F0000001F0000001F0000001F0000}
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ViewcxGrid: TcxGrid
    Left = 0
    Top = 41
    Width = 975
    Height = 135
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    object ViewcxGridDBTV: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ViewDS
      DataController.KeyFieldNames = 'EGAISACTFIXBARCODEID'
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
          Column = ViewcxGridDBTVEGAISREGID
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
      object ViewcxGridDBTVEGAISACTFIXBARCODEID: TcxGridDBColumn
        DataBinding.FieldName = 'EGAISACTFIXBARCODEID'
        Visible = False
      end
      object ViewcxGridDBTVPRESENT: TcxGridDBColumn
        DataBinding.FieldName = 'PRESENT'
        Width = 91
      end
      object ViewcxGridDBTVEGAISACTFIXBARCODESTATUSID: TcxGridDBColumn
        DataBinding.FieldName = 'EGAISACTFIXBARCODESTATUSID'
        Visible = False
        Width = 85
      end
      object ViewcxGridDBTVEGAISREGID: TcxGridDBColumn
        DataBinding.FieldName = 'EGAISREGID'
        Width = 376
      end
      object ViewcxGridDBTVEGAISACTFIXBARCODESTATUSNAME: TcxGridDBColumn
        DataBinding.FieldName = 'EGAISACTFIXBARCODESTATUSNAME'
        Width = 94
      end
      object ViewcxGridDBTVCOMMENTARY: TcxGridDBColumn
        DataBinding.FieldName = 'COMMENTARY'
        Width = 229
      end
      object ViewcxGridDBTVISACTIVE: TcxGridDBColumn
        DataBinding.FieldName = 'ISACTIVE'
        Visible = False
      end
      object ViewcxGridDBTVISACTIVENAME: TcxGridDBColumn
        DataBinding.FieldName = 'ISACTIVENAME'
        Width = 86
      end
      object ViewcxGridDBTVISFIXATION: TcxGridDBColumn
        DataBinding.FieldName = 'ISFIXATION'
        Visible = False
      end
      object ViewcxGridDBTVISFIXATIONNAME: TcxGridDBColumn
        DataBinding.FieldName = 'ISFIXATIONNAME'
        Width = 82
      end
    end
    object ViewcxGridLevel: TcxGridLevel
      GridView = ViewcxGridDBTV
    end
  end
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 975
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    OnResize = TopPanelResize
    object ExciseCodecxME: TcxMaskEdit
      Left = 96
      Top = 8
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyPress = ExciseCodecxMEKeyPress
      Width = 686
    end
    object ExcisecxButton: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = ExcisecxButtonClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000620B0000620B00000000000000000000FF00FFFF00FF
        C8B3A46947316947316947316947316947316947316947316947316947316947
        31694731694731FF00FFFF00FFFF00FFC8B3A4EEE6E1B7A293B7A293B7A293B7
        A293B7A293B7A293B7A293B7A293B7A293B7A293694731FF00FFFF00FFFF00FF
        C8B3A4F1EAE6EEE6E1EBE2DDE9DED8E6D9D3E3D5CEE0D1C9DDCDC4DBC9BFDBC9
        BFB7A293694731FF00FFFF00FFFF00FFC8B3A4F4EEEBF1EAE6019901EBE2DD41
        B13E41B13E71C46EE0D1C9DDCDC4DBC9BFB7A293694731FF00FFFF00FFFF00FF
        C8B3A4F6F2F0F4EEEB01990101990101990101990101990171C46EE0D1C9DDCD
        C4B7A293694731FF00FFFF00FFFF00FFC8B3A4F9F6F5F6F2F00199014CCC8501
        9901EBE2DDE9DED801990171C46EE0D1C9B7A293694731FF00FFFF00FFFF00FF
        C8B3A4FCFBFAF9F6F5019901019901019901019901EBE2DDE9DED8019901E3D5
        CEB7A293694731FF00FFFF00FFFF00FFC8B3A4FFFFFFFCFBFAF9F6F5F6F2F0F4
        EEEBF1EAE6EEE6E1EBE2DDE9DED8E6D9D3B7A293694731FF00FFFF00FFFF00FF
        C8B3A4FFFFFF019901FDFDFDFBF9F8019901019901019901019901EDE4DFEAE0
        DAB7A293694731FF00FFFF00FFFF00FFC8B3A4FFFFFFBFDFB1019901FDFDFDFB
        F9F80199014CCC85019901EFE8E4EDE4DFB7A293694731FF00FFFF00FFFF00FF
        C8B3A4FFFFFFFFFFFFBFDFB1019901019901019901019901019901F2ECE9D5BF
        B1B7A293694731FF00FFFF00FFFF00FFC8B3A4FFFFFFFFFFFFFFFFFFBFDFB141
        B13E41B13EFBF9F8019901C8B3A4694731694731694731FF00FFFF00FFFF00FF
        C8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBF9F8C8B3A4F3EB
        E6DBC9BF694731FF00FFFF00FFFF00FFC8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFDFDFDC8B3A4DBC9BF694731FF00FFFF00FFFF00FFFF00FF
        C8B3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B3A46947
        31FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8
        B3A4C8B3A4C8B3A4C8B3A4C8B3A4FF00FFFF00FFFF00FFFF00FF}
      LookAndFeel.Kind = lfFlat
    end
  end
  object DetailcxGrid: TcxGrid
    Left = 0
    Top = 184
    Width = 975
    Height = 354
    Align = alBottom
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    object DetailcxGridDBTV: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DetailDS
      DataController.KeyFieldNames = 'ID'
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
          Column = DetailcxGridDBTVEXCISECODE
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
      end
      object DetailcxGridDBTVEXCISECODE: TcxGridDBColumn
        DataBinding.FieldName = 'EXCISECODE'
      end
      object DetailcxGridDBTVDRINKKINDID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKKINDID'
        Visible = False
      end
    end
    object DetailcxGridLevel: TcxGridLevel
      GridView = DetailcxGridDBTV
    end
  end
  object cxSplitter: TcxSplitter
    Left = 0
    Top = 176
    Width = 975
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
    object ViewCDSEGAISACTFIXBARCODEID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'EGAISACTFIXBARCODEID'
      Visible = False
    end
    object ViewCDSPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'PRESENT'
    end
    object ViewCDSEGAISACTFIXBARCODESTATUSID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1090#1072#1090#1091#1089#1072
      FieldName = 'EGAISACTFIXBARCODESTATUSID'
    end
    object ViewCDSEGAISACTFIXBARCODESTATUSNAME: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'EGAISACTFIXBARCODESTATUSNAME'
      Size = 64
    end
    object ViewCDSCOMMENTARY: TStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      FieldName = 'COMMENTARY'
      Size = 128
    end
    object ViewCDSEGAISREGID: TStringField
      DisplayLabel = #8470' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      FieldName = 'EGAISREGID'
      Size = 32
    end
    object ViewCDSISACTIVE: TIntegerField
      FieldName = 'ISACTIVE'
      Visible = False
    end
    object ViewCDSISACTIVENAME: TStringField
      DisplayLabel = #1040#1082#1090#1080#1074#1077#1085
      FieldName = 'ISACTIVENAME'
      Size = 4
    end
    object ViewCDSISFIXATION: TIntegerField
      FieldName = 'ISFIXATION'
      Visible = False
    end
    object ViewCDSISFIXATIONNAME: TStringField
      DisplayLabel = #1060#1080#1082#1089#1072#1094#1080#1103
      FieldName = 'ISFIXATIONNAME'
      Size = 4
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
    object DetailCDSDRINKKINDID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'DRINKKINDID'
      Visible = False
    end
  end
  object DetailDS: TDataSource
    DataSet = DetailCDS
    Left = 40
    Top = 400
  end
end
