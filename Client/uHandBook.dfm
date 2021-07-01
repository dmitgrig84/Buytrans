object fHandBook: TfHandBook
  Left = 404
  Top = 210
  Width = 928
  Height = 452
  Caption = 'fHandBook'
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
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000D589
    419FD89555FFDDA26AFFDCA067FFDB9E65FFDA9C62FFD99A5FFFD8985DFFD796
    5AFFD69357FFD59256FFD59256FFD59256FFD59256FFCE7F39FFC76D1D9FD995
    52FFFCF8F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF6F1FFCB762BFFE2AD
    79FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
    FDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFD59155FFE4B0
    7BFFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9
    F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFFFF9F4FFD59153FFE6B2
    7DFFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4
    E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E9FFD79254FFE7B4
    7FFFFFEFE0FFFFEFE0FFFFEFE0FFFFEFE0FFFFEFE0FFFFEFE0FFFFEFE0FFFFEF
    E0FFFFEFE0FFFFEFE0FFFFEFE0FFFFEFE0FFFFEFE0FFFFEFE0FFD89556FFE9B6
    80FFFFEAD5FFFFEAD5FFFFEAD5FFFFEAD5FFFFEAD5FFFFEAD5FFFFEAD5FFFFEA
    D5FFFFEAD5FFFFEAD5FFFFEAD5FFFFEAD5FFFFEAD5FFFFEAD5FFDA9758FFEAB8
    82FFFFE5CBFFFFE5CBFFFFE5CBFFFFE5CBFFFFE5CBFFFFE5CBFFFFE5CBFFFFE5
    CBFFFFE5CBFFFFE5CBFFFFE5CBFFFFE5CBFFFFE5CBFFFFE5CBFFDC995AFFECBA
    84FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0
    C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFFFE0C1FFDD9B5CFFEEBA
    7DFFFFD290FFFFD08BFFFFCE86FFFFCC81FFFFC97CFFFFC777FFFFC472FFFFC2
    6CFFFFBF67FFFFBD61FFFFBB5DFFFFBB5DFFFFBB5DFFFFBB5DFFDF9547FFEFBE
    7DFFFFD27CFFFFCE74FFFFCA6BFFFFC662FFFFC258FFFFBD4EFFFFB944FFFFB4
    3AFFFFAF30FFFFAA25FFFFA51AFFFFA00FFFFF9C07FFFF9A02FFE19035FFF1C4
    88FFFFDF98FFFFDB90FFFFD888FFFFD480FFFFD077FFFFCC6FFFFFC866FFFFC3
    5CFFFFBF53FFFFBB49FFFFB63FFFFFB134FFFFAC2AFFFFA71FFFE2963FFFEFC2
    89FFFEE7ADFFFFE7A9FFFFE4A2FFFFE09BFFFFDD93FFFFD98CFFFFD684FFFFD2
    7BFFFFCE73FFFFC96AFFFFC560FFFFC157FFFFBD4DFFFDB644FFDD9850FFF0C3
    8B9FF1C78FFFF2CA92FFF1C88EFFF0C58AFFEFC286FFEFBF81FFEEBC7DFFEDB9
    78FFECB774FFEBB46FFFEAB16AFFE9AE65FFE8AA60FFE3A35CFFDD9B589F0000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000FFFF0000}
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook: TNotebook
    Left = 0
    Top = 0
    Width = 920
    Height = 425
    Align = alClient
    PageIndex = 1
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'View'
      object HandBookcxGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 920
        Height = 425
        Align = alClient
        PopupMenu = HandBookPM
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object HandBookcxGridDBTV: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellDblClick = HandBookcxGridDBTVCellDblClick
          DataController.DataSource = HandBookDS
          DataController.KeyFieldNames = 'EMPLOYEEID'
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.Indicator = True
        end
        object HandBookcxGridLevel: TcxGridLevel
          GridView = HandBookcxGridDBTV
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Control'
      object DetailScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 920
        Height = 425
        VertScrollBar.Smooth = True
        Align = alClient
        Color = clInfoBk
        ParentColor = False
        TabOrder = 0
        object DetailLabelPanel: TPanel
          Left = 0
          Top = 0
          Width = 190
          Height = 421
          Align = alLeft
          Color = 16776176
          TabOrder = 0
        end
        object SaveBB: TBitBtn
          Left = 200
          Top = 96
          Width = 145
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 1
          OnClick = SaveBBClick
        end
        object CancelBB: TBitBtn
          Left = 355
          Top = 96
          Width = 145
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 2
          OnClick = CancelBBClick
        end
      end
    end
  end
  object HandBookDS: TDataSource
    Left = 72
    Top = 120
  end
  object HandBookPM: TPopupMenu
    Images = fMain.MenuIL
    OnPopup = HandBookPMPopup
    Left = 120
    Top = 120
    object RefreshHandBookMI: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 9
      OnClick = RefreshHandBookMIClick
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object AddHandBookMI: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 0
      OnClick = AddHandBookMIClick
    end
    object EditHandBookMI: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 1
      OnClick = EditHandBookMIClick
    end
    object DeleteHandBookMI: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 2
      OnClick = DeleteHandBookMIClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EgaisMI: TMenuItem
      Caption = #1047#1072#1087#1088#1086#1089' '#1074' '#1045#1043#1040#1048#1057
      ImageIndex = 28
      OnClick = EgaisMIClick
    end
    object miExcel: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      ImageIndex = 8
      OnClick = miExcelClick
    end
    object ProcessUTM: TMenuItem
      Caption = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100' '#1059#1058#1052
      ImageIndex = 31
      OnClick = ProcessUTMClick
    end
  end
  object cxESC: TcxEditStyleController
    Style.BorderStyle = ebsFlat
    Left = 120
    Top = 80
    PixelsPerInch = 96
  end
end
