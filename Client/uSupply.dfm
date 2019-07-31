object fSupply: TfSupply
  Left = 592
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fSupply'
  ClientHeight = 272
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel1: TRxLabel
    Left = 164
    Top = 91
    Width = 145
    Height = 13
    Caption = #1055#1077#1088#1080#1086#1076' '#1076#1083#1103' '#1088#1072#1089#1095#1077#1090#1072' '#1087#1088#1086#1076#1072#1078
  end
  object Label2: TLabel
    Left = 172
    Top = 108
    Width = 7
    Height = 13
    Caption = #1057
  end
  object Label3: TLabel
    Left = 284
    Top = 108
    Width = 14
    Height = 13
    Caption = #1055#1086
  end
  object LabelB: TLabel
    Left = 40
    Top = 168
    Width = 138
    Height = 13
    Caption = #1053#1072#1095#1072#1083#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1086#1090#1095#1077#1090#1072
  end
  object LabelE: TLabel
    Left = 40
    Top = 192
    Width = 156
    Height = 13
    Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1086#1090#1095#1077#1090#1072
  end
  object GroupBox1: TGroupBox
    Left = 106
    Top = 26
    Width = 261
    Height = 45
    Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1099#1077' '#1089#1082#1083#1072#1076#1089#1082#1080#1077' '#1079#1072#1087#1072#1089#1099' '#1074' '#1073#1091#1090#1099#1083#1082#1072#1093
    TabOrder = 1
    object RxLabel2: TRxLabel
      Left = 4
      Top = 20
      Width = 9
      Height = 13
      Caption = 'A'
    end
    object RxLabel3: TRxLabel
      Left = 84
      Top = 20
      Width = 9
      Height = 13
      Caption = 'B'
    end
    object RxLabel4: TRxLabel
      Left = 172
      Top = 20
      Width = 9
      Height = 13
      Caption = 'C'
    end
    object minbottlea: TRxSpinEdit
      Left = 20
      Top = 16
      Width = 57
      Height = 21
      MaxValue = 10000
      Value = 1000
      TabOrder = 0
    end
    object minbottleb: TRxSpinEdit
      Left = 104
      Top = 16
      Width = 57
      Height = 21
      MaxValue = 10000
      Value = 500
      TabOrder = 1
    end
    object minbottlec: TRxSpinEdit
      Left = 192
      Top = 16
      Width = 57
      Height = 21
      MaxValue = 10000
      Value = 5
      TabOrder = 2
    end
  end
  object RxSpeedButton1: TButton
    Left = 140
    Top = 220
    Width = 175
    Height = 25
    Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1086#1090#1095#1077#1090
    TabOrder = 0
    OnClick = RxSpeedButton1Click
  end
  object deBegin: TDateEdit
    Left = 124
    Top = 124
    Width = 105
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object deEnd: TDateEdit
    Left = 244
    Top = 124
    Width = 97
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
end
