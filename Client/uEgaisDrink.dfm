object fEgaisDrink: TfEgaisDrink
  Left = 808
  Top = 293
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 98
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DrinkcxME: TcxMaskEdit
    Left = 16
    Top = 16
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d+'
    Properties.MaxLength = 0
    Style.BorderStyle = ebsFlat
    TabOrder = 0
    OnKeyPress = DrinkcxMEKeyPress
    Width = 121
  end
  object DrinkcxLabel: TcxLabel
    Left = 0
    Top = 78
    Align = alBottom
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 339
  end
  object ChangecxButton: TcxButton
    Left = 256
    Top = 16
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    ModalResult = 1
    TabOrder = 2
    OnClick = ChangecxButtonClick
  end
end
