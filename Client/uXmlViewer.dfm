object fXmlViewer: TfXmlViewer
  Left = 638
  Top = 309
  BorderStyle = bsSingle
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 534
  ClientWidth = 823
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
  object ResultcxMemo: TcxMemo
    Left = 0
    Top = 208
    Align = alClient
    Properties.ReadOnly = True
    Style.BorderStyle = ebsFlat
    TabOrder = 0
    Height = 285
    Width = 823
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 493
    Width = 823
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object UTF8cxRB: TcxRadioButton
      Left = 8
      Top = 12
      Width = 113
      Height = 17
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1074' UTF8'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = UTF8cxRBClick
    end
    object AnsicxRB: TcxRadioButton
      Left = 144
      Top = 12
      Width = 113
      Height = 17
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1074' ANSI'
      TabOrder = 1
      OnClick = AnsicxRBClick
    end
  end
  object XmlcxGrid: TcxGrid
    Left = 0
    Top = 0
    Width = 823
    Height = 200
    Align = alTop
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    object XmlcxGridDBTV: TcxGridDBTableView
      PopupMenu = PM
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = XmlDS
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
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
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object XmlcxGridDBTVID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 94
      end
      object XmlcxGridDBTVCONNECTID: TcxGridDBColumn
        DataBinding.FieldName = 'CONNECTID'
        Visible = False
      end
      object XmlcxGridDBTVFLAGINOUT: TcxGridDBColumn
        DataBinding.FieldName = 'FLAGINOUT'
        Visible = False
      end
      object XmlcxGridDBTVFLAGINOUTNAME: TcxGridDBColumn
        DataBinding.FieldName = 'FLAGINOUTNAME'
        Width = 135
      end
      object XmlcxGridDBTVPATHNAME: TcxGridDBColumn
        DataBinding.FieldName = 'PATHNAME'
        Width = 172
      end
      object XmlcxGridDBTVDOCUMENTSTYPEID: TcxGridDBColumn
        DataBinding.FieldName = 'DOCUMENTSTYPEID'
        Visible = False
      end
      object XmlcxGridDBTVDOCUMENTSTYPENAME: TcxGridDBColumn
        DataBinding.FieldName = 'DOCUMENTSTYPENAME'
        Width = 281
      end
      object XmlcxGridDBTVHOSTDOCUMENTSRECORDID: TcxGridDBColumn
        DataBinding.FieldName = 'HOSTDOCUMENTSRECORDID'
        Visible = False
      end
      object XmlcxGridDBTVHOSTDOCUMENTSTABLENAME: TcxGridDBColumn
        DataBinding.FieldName = 'HOSTDOCUMENTSTABLENAME'
        Visible = False
      end
      object XmlcxGridDBTVREPLYID: TcxGridDBColumn
        DataBinding.FieldName = 'REPLYID'
        Visible = False
      end
      object XmlcxGridDBTVSTATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Visible = False
      end
      object XmlcxGridDBTVSTATUSNAME: TcxGridDBColumn
        DataBinding.FieldName = 'STATUSNAME'
        Width = 127
      end
      object XmlcxGridDBTVXMLFILE: TcxGridDBColumn
        DataBinding.FieldName = 'XMLFILE'
        Visible = False
      end
      object XmlcxGridDBTVWHOINSERT: TcxGridDBColumn
        DataBinding.FieldName = 'WHOINSERT'
        Visible = False
      end
      object XmlcxGridDBTVWHENINSERT: TcxGridDBColumn
        DataBinding.FieldName = 'WHENINSERT'
        Visible = False
      end
      object XmlcxGridDBTVWHENREPLYID: TcxGridDBColumn
        DataBinding.FieldName = 'WHENREPLYID'
        Visible = False
      end
      object XmlcxGridDBTVWHENSTATUS: TcxGridDBColumn
        DataBinding.FieldName = 'WHENSTATUS'
        Visible = False
      end
    end
    object XmlcxGridLevel: TcxGridLevel
      GridView = XmlcxGridDBTV
    end
  end
  object cxSplitter: TcxSplitter
    Left = 0
    Top = 200
    Width = 823
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salTop
    Control = XmlcxGrid
  end
  object XmlCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = XmlCDSBeforeOpen
    Left = 40
    Top = 56
    object XmlCDSID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'ID'
    end
    object XmlCDSCONNECTID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'CONNECTID'
      Visible = False
    end
    object XmlCDSFLAGINOUT: TSmallintField
      DisplayLabel = #1050#1086#1076' '#1074#1080#1076#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'FLAGINOUT'
      Visible = False
    end
    object XmlCDSFLAGINOUTNAME: TStringField
      DisplayLabel = #1042#1080#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'FLAGINOUTNAME'
      Size = 16
    end
    object XmlCDSPATHNAME: TStringField
      DisplayLabel = #1055#1091#1090#1100' '#1087#1086#1083#1091#1095#1077#1085#1080#1103'/'#1086#1090#1087#1088#1072#1074#1082#1080
      FieldName = 'PATHNAME'
      Size = 256
    end
    object XmlCDSDOCUMENTSTYPEID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'DOCUMENTSTYPEID'
      Visible = False
    end
    object XmlCDSDOCUMENTSTYPENAME: TStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'DOCUMENTSTYPENAME'
      Size = 64
    end
    object XmlCDSHOSTDOCUMENTSRECORDID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1103
      FieldName = 'HOSTDOCUMENTSRECORDID'
      Visible = False
    end
    object XmlCDSHOSTDOCUMENTSTABLENAME: TStringField
      DisplayLabel = #1058#1072#1073#1083#1080#1094#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1103
      FieldName = 'HOSTDOCUMENTSTABLENAME'
      Visible = False
      Size = 32
    end
    object XmlCDSREPLYID: TStringField
      DisplayLabel = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1079#1072#1087#1088#1086#1089#1072
      FieldName = 'REPLYID'
      Visible = False
      Size = 128
    end
    object XmlCDSSTATUS: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1090#1072#1090#1091#1089#1072' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
      FieldName = 'STATUS'
      Visible = False
    end
    object XmlCDSSTATUSNAME: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
      FieldName = 'STATUSNAME'
      Size = 16
    end
    object XmlCDSXMLFILE: TBlobField
      DisplayLabel = #1060#1072#1081#1083' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
      FieldName = 'XMLFILE'
      Visible = False
    end
    object XmlCDSWHOINSERT: TStringField
      DisplayLabel = #1050#1090#1086' '#1074#1089#1090#1072#1074#1080#1083
      FieldName = 'WHOINSERT'
      Visible = False
      Size = 64
    end
    object XmlCDSWHENINSERT: TDateTimeField
      DisplayLabel = #1050#1086#1075#1076#1072' '#1074#1089#1090#1072#1074#1080#1083#1080
      FieldName = 'WHENINSERT'
      Visible = False
    end
    object XmlCDSWHENREPLYID: TDateTimeField
      DisplayLabel = #1050#1086#1075#1076#1072' '#1086#1090#1087#1088#1072#1074#1080#1083#1080
      FieldName = 'WHENREPLYID'
      Visible = False
    end
    object XmlCDSWHENSTATUS: TDateTimeField
      DisplayLabel = #1050#1086#1075#1076#1072' '#1086#1073#1088#1072#1073#1086#1090#1072#1083#1080
      FieldName = 'WHENSTATUS'
      Visible = False
    end
    object XmlCDSDELETEFLAG: TSmallintField
      FieldName = 'DELETEFLAG'
    end
  end
  object XmlDS: TDataSource
    DataSet = XmlCDS
    OnDataChange = XmlDSDataChange
    Left = 72
    Top = 56
  end
  object PM: TPopupMenu
    OnPopup = PMPopup
    Left = 104
    Top = 56
    object RefreshMI: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      OnClick = RefreshMIClick
    end
    object DeleteMI: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = DeleteMIClick
    end
  end
end
