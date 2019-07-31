object fBuyAddDetailLine: TfBuyAddDetailLine
  Left = 576
  Top = 262
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 239
  ClientWidth = 267
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
  object BottomPanel: TPanel
    Left = 0
    Top = 198
    Width = 267
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object CreateLinecxButton: TcxButton
      Left = 216
      Top = 0
      Width = 51
      Height = 41
      ModalResult = 1
      TabOrder = 0
      OnClick = CreateLinecxButtonClick
      Align = alRight
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000430B0000430B00000000000000000000FF00FFFF00FF
        6D422F6D422F6D422F6D422F6D422F6D422F6D422F6D422F6D422F6D422F6D42
        2F6D422F6D422F6D422FFF00FFCE726FD19792CB8E8A715A48C0B2ABC4BCB8CA
        C1BCCAC1BCCAC1BCCAC1BC8C76679443409443409443406D422FFF00FFCE726F
        D79F9BD19792715A482E1F185F5046FFFFFFFFFFFFFFFFFFF0E4DE8C76679747
        449443409443406D422FFF00FFCE726FDDA8A3D79F9B715A4800000036241BFF
        FFFFF7F1EEF0E4DEE1CABD8C76679E504D9747449443406D422FFF00FFCE726F
        E3B0ABDDA8A3715A48715A48715A48715A48715A48715A48715A48715A48A459
        569E504D9747446D422FFF00FFCE726FEDBDB8E7B5B0E0ACA7DAA49FD49B97CB
        8E8AC58682BF7E79B97571B26B68AB625FA459569E504D6D422FFF00FFCE726F
        F0C1BCEDBDB8E7B5B0E0ACA7DAA49FD49B97CE938EC88A86C2827EBC7975B26B
        68AB625FA459566D422FFF00FFCE726FF0C1BCF0C1BCC8635CC8635CC8635CC8
        635CC8635CC8635CC8635CC8635CC8635CB5706CAE67636D422FFF00FFCE726F
        F0C1BCC8635CFAF5F3F6EEEAF2E7E2EEE2DAEBDCD3E7D6CBE4D0C4E1CABDE1CA
        BDC8635CB5706C6D422FFF00FFCE726FF0C1BCC8635CFFFFFFFCF8F7F8F1EEF4
        EAE6F0E4DEECDFD6E9D9CFE6D3C8E2CDC0C8635CBC79756D422FFF00FFCE726F
        F0C1BCC8635CFFFFFFFFFFFFFCF8F7F8F1EEF4EAE6F0E4DEECDFD6E9D9CFE6D3
        C8C8635CC2827E6D422FFF00FFCE726FF0C1BCC8635CFFFFFFFFFFFFFFFFFFFC
        F8F7F8F1EEF4EAE6F0E4DEECDFD6E9D9CFC8635CC88A866D422FFF00FFCE726F
        F0C1BCC8635CFFFFFFFFFFFFFFFFFFFFFFFFFCF8F7F8F1EEF4EAE6F0E4DEECDF
        D6C8635CD197926D422FFF00FFCE726FF0C1BCC8635CFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFCF8F7F8F1EEF4EAE6F0E4DEC8635C0000006D422FFF00FFCE726F
        F0C1BCC8635CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF8F7F8F1EEF4EA
        E6C8635CC88A866D422FFF00FFCE726FCE726FCE726FCE726FCE726FCE726FCE
        726FCE726FCE726FCE726FCE726FCE726FCE726FCE726FCE726F}
      LookAndFeel.Kind = lfFlat
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 0
      Top = 0
      Width = 216
      Height = 41
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Append.Visible = True
      Buttons.Cancel.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = DS
      LookAndFeel.Kind = lfFlat
      Align = alLeft
      TabOrder = 1
    end
  end
  object LinecxGrid: TcxGrid
    Left = 0
    Top = 0
    Width = 267
    Height = 198
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object LinecxGridDBTV: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DS
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object LinecxGridDBTVID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 26
      end
      object LinecxGridDBTVPRESENT: TcxGridDBColumn
        DataBinding.FieldName = 'PRESENT'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.InputKind = ikRegExpr
        Width = 109
      end
      object LinecxGridDBTVBEGINRANGE: TcxGridDBColumn
        DataBinding.FieldName = 'BEGINRANGE'
        Width = 64
      end
      object LinecxGridDBTVENDRANGE: TcxGridDBColumn
        DataBinding.FieldName = 'ENDRANGE'
        Width = 66
      end
    end
    object LinecxGridLevel: TcxGridLevel
      GridView = LinecxGridDBTV
    end
  end
  object RxMD: TRxMemoryData
    FieldDefs = <>
    OnNewRecord = RxMDNewRecord
    Left = 8
    Top = 48
    object RxMDID: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID'
    end
    object RxMDPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072
      FieldName = 'PRESENT'
    end
    object RxMDBEGINRANGE: TFloatField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1076#1080#1072#1087#1072#1079#1086#1085#1072
      FieldName = 'BEGINRANGE'
      OnChange = RxMDBEGINRANGEChange
    end
    object RxMDENDRANGE: TFloatField
      DisplayLabel = #1050#1086#1085#1077#1094' '#1076#1080#1072#1087#1072#1079#1086#1085#1072
      FieldName = 'ENDRANGE'
      OnChange = RxMDBEGINRANGEChange
    end
  end
  object DS: TDataSource
    DataSet = RxMD
    Left = 8
    Top = 80
  end
end
