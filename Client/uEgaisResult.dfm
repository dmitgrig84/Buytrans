object fEgaisResult: TfEgaisResult
  Left = 406
  Top = 149
  BorderStyle = bsSingle
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1045#1043#1040#1048#1057
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
  PixelsPerInch = 96
  TextHeight = 13
  object ResultcxMemo: TcxMemo
    Left = 0
    Top = 0
    Align = alClient
    Properties.ReadOnly = True
    Style.BorderStyle = ebsFlat
    TabOrder = 0
    Height = 493
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
    object GetcxButton: TcxButton
      Left = 736
      Top = 8
      Width = 75
      Height = 25
      Caption = 'GetcxButton'
      TabOrder = 0
      Visible = False
      OnClick = GetcxButtonClick
    end
    object UTF8cxRB: TcxRadioButton
      Left = 8
      Top = 12
      Width = 113
      Height = 17
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1074' UTF8'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = UTF8cxRBClick
    end
    object AnsicxRB: TcxRadioButton
      Left = 144
      Top = 12
      Width = 113
      Height = 17
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1074' ANSI'
      TabOrder = 2
      OnClick = AnsicxRBClick
    end
  end
end
