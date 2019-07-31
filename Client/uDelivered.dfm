object fDelivered: TfDelivered
  Left = 648
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1089#1090#1072#1090#1091#1089#1072' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
  ClientHeight = 349
  ClientWidth = 409
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
  object StatusScannerLB: TListBox
    Left = 0
    Top = 0
    Width = 409
    Height = 155
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
    TabWidth = 50
  end
  object TypeRG: TRadioGroup
    Left = 0
    Top = 175
    Width = 409
    Height = 92
    Align = alBottom
    Columns = 3
    TabOrder = 1
    OnClick = TypeRGClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 308
    Width = 409
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object EnterScannerButton: TButton
      Left = 318
      Top = 8
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ModalResult = 1
      TabOrder = 0
      OnClick = EnterScannerButtonClick
    end
    object BarcodeScannercxME: TcxMaskEdit
      Left = 8
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      OnKeyPress = BarcodeScannercxMEKeyPress
      Width = 297
    end
  end
  object ReasonPanel: TPanel
    Left = 0
    Top = 267
    Width = 409
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 43
      Height = 13
      Caption = #1055#1088#1080#1095#1080#1085#1072
    end
    object ReasoncxME: TcxMaskEdit
      Left = 62
      Top = 10
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 0
      Width = 329
    end
  end
  object ScannerDocStatusPanel: TPanel
    Left = 0
    Top = 155
    Width = 409
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    Caption = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1085#1072#1082#1083#1072#1076#1085#1099#1093' '#1087#1088#1080' '#1087#1086#1084#1086#1097#1080' '#1089#1082#1072#1085#1077#1088#1072
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
end
