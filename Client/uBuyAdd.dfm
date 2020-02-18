object fBuyAdd: TfBuyAdd
  Left = 517
  Top = 228
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1085#1072' '#1087#1088#1080#1077#1084#1082#1091
  ClientHeight = 458
  ClientWidth = 383
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
  object NewBuyTypeLabel: TLabel
    Left = 20
    Top = 15
    Width = 63
    Height = 13
    Caption = #1058#1080#1087' '#1087#1088#1080#1093#1086#1076#1072
  end
  object NewbuyStorageLabel: TLabel
    Left = 36
    Top = 45
    Width = 31
    Height = 13
    Caption = #1057#1082#1083#1072#1076
  end
  object InvInfoLabel: TLabel
    Left = 10
    Top = 65
    Width = 83
    Height = 26
    Alignment = taCenter
    Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080'-'#13#10#1086#1085#1085#1072#1103' '#1086#1087#1080#1089#1100'-'#1072#1082#1090
    Enabled = False
  end
  object Bevel1: TBevel
    Left = 12
    Top = 102
    Width = 357
    Height = 3
    Shape = bsTopLine
  end
  object NewBuyNoLabel: TLabel
    Left = 20
    Top = 120
    Width = 68
    Height = 13
    Caption = #8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
  end
  object NewBuyNumberCFLabel: TLabel
    Left = 216
    Top = 112
    Width = 57
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = #8470' '#1089#1095#1077#1090'-'#13#10#1092#1072#1082'-'#1088#1099'.'
  end
  object ToDayLabel: TLabel
    Left = 210
    Top = 144
    Width = 69
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072#13#10#1085#1072#1082#1083#1072#1076#1085#1086#1081
  end
  object NewBuyDateLabel: TLabel
    Left = 27
    Top = 145
    Width = 54
    Height = 26
    Alignment = taCenter
    Caption = #1044#1072#1090#1072' '#13#10#1085#1072#1082#1083#1072#1076#1085#1086#1081
  end
  object NewBuySumPriceLabel: TLabel
    Left = 18
    Top = 176
    Width = 72
    Height = 26
    Alignment = taCenter
    Caption = #1057#1091#1084#1084#1072' '#1090#1086#1074#1072#1088#1072#13#10#1073#1077#1079' '#1053#1044#1057
  end
  object NewBuySumNDSLabel: TLabel
    Left = 214
    Top = 184
    Width = 61
    Height = 13
    Alignment = taCenter
    Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
  end
  object Bevel8: TBevel
    Left = 12
    Top = 206
    Width = 357
    Height = 3
    Shape = bsTopLine
  end
  object Label15: TLabel
    Tag = 1
    Left = 2
    Top = 224
    Width = 40
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1050#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label22: TLabel
    Tag = 1
    Left = 112
    Top = 224
    Width = 58
    Height = 13
    Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label23: TLabel
    Left = 2
    Top = 249
    Width = 40
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1054#1090#1074'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label24: TLabel
    Left = 112
    Top = 274
    Width = 40
    Height = 13
    AutoSize = False
    Caption = #1040#1076#1088#1077#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label29: TLabel
    Tag = 1
    Left = 36
    Top = 310
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label28: TLabel
    Tag = 1
    Left = 57
    Top = 333
    Width = 40
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1052#1072#1088#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label30: TLabel
    Tag = 1
    Left = 208
    Top = 333
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = #8470'-'#1086#1081' '#1079#1085#1072#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel6: TBevel
    Left = 12
    Top = 386
    Width = 357
    Height = 2
    Shape = bsTopLine
  end
  object Label1: TLabel
    Tag = 1
    Left = 2
    Top = 274
    Width = 40
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1050#1086#1076' '#1058#1058
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Tag = 1
    Left = 79
    Top = 358
    Width = 18
    Height = 13
    Alignment = taRightJustify
    Caption = #1056'/c'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BuyAddButtonPanel: TPanel
    Left = 0
    Top = 423
    Width = 383
    Height = 35
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 20
    object ApplayBB: TBitBtn
      Left = 80
      Top = 5
      Width = 137
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = ApplayBBClick
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
    end
    object CancelBB: TBitBtn
      Left = 224
      Top = 5
      Width = 137
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = CancelBBClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000D30F0000D30F00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF9A605D683030683030683030FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF906060683030683030A35651A95B55A4
        5B54683030683030683030683030683030683030683030683030FF00FF906060
        A25450BB655FBA645EB6625DB2605AA65C55683030F09190F09190F09190F091
        90F09190F09190683030FF00FF906060C56965C36863BF6661BB645FB7625DA8
        5D56683030004B00004B00004B00004E01285C17F09190683030FF00FF906060
        C96B67C76A66C16863B4615CB05E59A95D56683030005102004B00004B000565
        0D2C6C21F09190683030FF00FF906060CC6D69CB6C68C4706DDFB4B29C5F5CA0
        5953683030025A06005102045F0A0C801E2F7728F09190683030FF00FF906060
        D06F6BCE6D6ADFB4B2FDF1F1DFB4B2A35A5468303004640C125B07287114118B
        26347224F09190683030FF00FF906060D5726ED3706CD0736EDFB4B2C5716DAF
        615B68303011690F8C8124D3A441357416D3A441F09190683030FF00FF906060
        DA7471D7736FD3716CD06F6BCC6D69B3635D683030708029F8C080F8C080F8C0
        80F8C080F09190683030FF00FF906060DD7674DB7572D8736FD4716DD06F6BB4
        645D683030F8C080F8C080F8C080F8C080F8C080F09190683030FF00FF906060
        E37876DF7674DC7572D8736FD4716DB7655E683030F8C080F8C080F8C080B1B1
        A229A5F8F09190683030FF00FF906060E67A79E47977E07775DD7673D97471B9
        6660683030F8C080F8C080B1B1A222B8F729A5F8F09190683030FF00FF906060
        E07876E47978E47977E07775DD7573BB6761683030F8C080B1B1A21CC4F81CC4
        F822B8F7F09190683030FF00FFFF00FFB07068906060C76D6AC76D6AD47270B9
        6661683030906060906060906060906060906060906060906060FF00FFFF00FF
        FF00FFFF00FFB07068906060C76D6AC76D6A683030FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB0706890
        6060906060FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object InventorycxLCB: TcxLookupComboBox
    Left = 104
    Top = 70
    Enabled = False
    ParentFont = False
    Properties.ClearKey = 46
    Properties.DropDownListStyle = lsEditList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.ImmediateDropDown = False
    Properties.IncrementalFiltering = False
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    EditValue = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 2
    Width = 265
  end
  object StoragecxLCB: TcxLookupComboBox
    Left = 104
    Top = 40
    Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1082#1083#1072#1076
    ParentFont = False
    Properties.ClearKey = 46
    Properties.DropDownListStyle = lsEditList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.ImmediateDropDown = False
    Properties.IncrementalFiltering = False
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    Properties.OnEditValueChanged = StoragecxLCBPropertiesEditValueChanged
    EditValue = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 1
    Width = 265
  end
  object BuyTypecxLCB: TcxLookupComboBox
    Left = 104
    Top = 10
    Hint = #1047#1072#1076#1072#1081#1090#1077' '#1090#1080#1087' '#1087#1088#1080#1093#1086#1076#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
    ParentFont = False
    ParentShowHint = False
    Properties.ClearKey = 46
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.ImmediateDropDown = False
    Properties.IncrementalFiltering = False
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    Properties.OnEditValueChanged = BuyTypecxLCBPropertiesEditValueChanged
    EditValue = 0
    ShowHint = True
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 0
    Width = 265
  end
  object ContractorNamecxLCB: TcxLookupComboBox
    Left = 176
    Top = 220
    ParentFont = False
    Properties.ClearKey = 46
    Properties.DropDownListStyle = lsEditList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.ImmediateDropDown = False
    Properties.IncrementalFiltering = False
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    Properties.OnEditValueChanged = ContractorNamecxLCBPropertiesEditValueChanged
    EditValue = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 10
    OnKeyDown = ContractorNamecxLCBKeyDown
    Width = 193
  end
  object TradeEmployeecxLCB: TcxLookupComboBox
    Left = 48
    Top = 245
    ParentFont = False
    Properties.ClearKey = 46
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.ImmediateDropDown = False
    Properties.IncrementalFiltering = False
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.OnEditValueChanged = TradeEmployeecxLCBPropertiesEditValueChanged
    EditValue = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 11
    Width = 321
  end
  object DistributioncxLCB: TcxLookupComboBox
    Left = 152
    Top = 270
    ParentFont = False
    ParentShowHint = False
    Properties.ClearKey = 46
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.ImmediateDropDown = False
    Properties.IncrementalFiltering = False
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'AddressLicense'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.OnEditValueChanged = DistributioncxLCBPropertiesEditValueChanged
    EditValue = 0
    ShowHint = True
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 13
    Width = 217
  end
  object CarriercxLCB: TcxLookupComboBox
    Left = 104
    Top = 305
    ParentFont = False
    Properties.ClearKey = 46
    Properties.DropDownListStyle = lsEditList
    Properties.DropDownRows = 20
    Properties.DropDownSizeable = True
    Properties.ImmediateDropDown = False
    Properties.IncrementalFiltering = False
    Properties.KeyFieldNames = 'CARRIERID'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end
      item
        FieldName = 'INN'
      end
      item
        FieldName = 'KPP'
      end>
    Properties.ListOptions.ShowHeader = False
    EditValue = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 14
    Width = 265
  end
  object CarMarkcxTE: TcxTextEdit
    Left = 104
    Top = 330
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Arial'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 15
    Height = 21
    Width = 97
  end
  object LicensePlatecxTE: TcxMaskEdit
    Left = 264
    Top = 330
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = '['#1072'-'#1103']\d\d\d['#1072'-'#1103']['#1072'-'#1103']\d\d(\d)?'
    Properties.MaxLength = 0
    Style.BorderStyle = ebsFlat
    TabOrder = 16
    Width = 106
  end
  object InBuycxCB: TcxCheckBox
    Left = 32
    Top = 392
    Caption = #1054#1073#1098#1077#1076#1080#1085#1080#1090#1100' '#1089' '#1087#1088#1080#1093#1086#1076#1086#1084
    Properties.ValueChecked = 1
    Properties.ValueUnchecked = 0
    State = cbsGrayed
    Style.BorderStyle = ebsFlat
    TabOrder = 18
    Width = 153
  end
  object CorrectioncxCB: TcxCheckBox
    Left = 208
    Top = 392
    Caption = #1057#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
    Enabled = False
    Properties.ValueChecked = 1
    Properties.ValueUnchecked = 0
    State = cbsGrayed
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 19
    Width = 121
  end
  object ContractorIDcxME: TcxMaskEdit
    Left = 48
    Top = 220
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d+'
    Properties.MaxLength = 0
    Style.BorderStyle = ebsFlat
    TabOrder = 9
    OnEnter = ContractorIDcxMEEnter
    OnKeyPress = ContractorIDcxMEKeyPress
    Width = 57
  end
  object NumberDoccxTE: TcxTextEdit
    Left = 104
    Top = 116
    Hint = #1047#1072#1076#1072#1081#1090#1077' '#1085#1086#1084#1077#1088' '#1087#1088#1080#1093#1086#1076#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
    ParentShowHint = False
    Properties.MaxLength = 64
    ShowHint = True
    Style.BorderStyle = ebsFlat
    TabOrder = 3
    OnExit = NumberDoccxTEExit
    OnKeyPress = NumberDoccxTEKeyPress
    Width = 85
  end
  object NumberCFcxTE: TcxTextEdit
    Left = 285
    Top = 116
    Hint = #1047#1072#1076#1072#1081#1090#1077' '#1085#1086#1084#1077#1088' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1099
    ParentShowHint = False
    Properties.MaxLength = 64
    ShowHint = True
    Style.BorderStyle = ebsFlat
    TabOrder = 4
    Width = 85
  end
  object InputDatecxDE: TcxDateEdit
    Left = 104
    Top = 148
    Hint = #1047#1072#1076#1072#1081#1090#1077' '#1076#1072#1090#1091' '#1087#1088#1080#1093#1086#1076#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
    ParentShowHint = False
    ShowHint = True
    Style.BorderStyle = ebsFlat
    TabOrder = 5
    Width = 85
  end
  object WhenInsertcxDE: TcxDateEdit
    Left = 285
    Top = 148
    Hint = #1047#1072#1076#1072#1081#1090#1077' '#1076#1072#1090#1091'  '#1074#1074#1086#1076#1072' '#1087#1088#1080#1093#1086#1076#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
    ParentShowHint = False
    ShowHint = True
    Style.BorderStyle = ebsFlat
    TabOrder = 6
    Width = 85
  end
  object SumPricecxCE: TcxCurrencyEdit
    Left = 104
    Top = 180
    EditValue = 0
    Properties.Alignment.Horz = taRightJustify
    Properties.AssignedValues.MaxValue = True
    Properties.AssignedValues.MinValue = True
    Properties.DecimalPlaces = 3
    Properties.DisplayFormat = ',0.000;-,0.000'
    Style.BorderStyle = ebsFlat
    TabOrder = 7
    Width = 85
  end
  object SumNDScxCE: TcxCurrencyEdit
    Left = 285
    Top = 180
    EditValue = 0
    Properties.Alignment.Horz = taRightJustify
    Properties.AssignedValues.MaxValue = True
    Properties.AssignedValues.MinValue = True
    Properties.DecimalPlaces = 3
    Properties.DisplayFormat = ',0.000;-,0.000'
    Style.BorderStyle = ebsFlat
    TabOrder = 8
    Width = 85
  end
  object DistributionIDcxME: TcxMaskEdit
    Left = 48
    Top = 272
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d+'
    Properties.MaxLength = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 12
    OnEnter = DistributionIDcxMEEnter
    OnKeyPress = DistributionIDcxMEKeyPress
    Width = 57
  end
  object BankAccountME: TcxMaskEdit
    Left = 104
    Top = 355
    Hint = '4 '#1087#1086#1089#1083#1077#1076#1085#1080#1077' '#1094#1080#1092#1088#1099' '#1056'/'#1089
    ParentShowHint = False
    Properties.MaskKind = emkRegExprEx
    Properties.EditMask = '\d\d\d\d'
    Properties.MaxLength = 0
    ShowHint = True
    Style.BorderStyle = ebsFlat
    TabOrder = 17
    Width = 266
  end
  object cxHintStyleController: TcxHintStyleController
    HintStyle.CaptionFont.Charset = DEFAULT_CHARSET
    HintStyle.CaptionFont.Color = clWindowText
    HintStyle.CaptionFont.Height = 16
    HintStyle.CaptionFont.Name = 'MS Sans Serif'
    HintStyle.CaptionFont.Style = []
    HintStyle.Font.Charset = DEFAULT_CHARSET
    HintStyle.Font.Color = clRed
    HintStyle.Font.Height = 16
    HintStyle.Font.Name = 'MS Sans Serif'
    HintStyle.Font.Style = [fsBold]
    HintStyle.Rounded = True
    HintHidePause = 5000
    Left = 16
    Top = 112
  end
end
