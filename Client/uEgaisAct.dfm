object fEgaisAct: TfEgaisAct
  Left = 928
  Top = 475
  BorderStyle = bsSingle
  Caption = #1040#1082#1090' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
  ClientHeight = 71
  ClientWidth = 307
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
  object CommentarycxTE: TcxTextEdit
    Left = 8
    Top = 9
    Style.BorderStyle = ebsFlat
    TabOrder = 0
    Width = 289
  end
  object ApplaycxButton: TcxButton
    Left = 222
    Top = 40
    Width = 75
    Height = 25
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    ModalResult = 1
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
  end
  object AcceptxCB: TcxCheckBox
    Left = 8
    Top = 40
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
    Enabled = False
    Properties.ValueChecked = 1
    Properties.ValueUnchecked = 0
    Properties.OnEditValueChanged = AcceptxCBPropertiesEditValueChanged
    State = cbsChecked
    Style.BorderStyle = ebsFlat
    TabOrder = 2
    Width = 121
  end
end
