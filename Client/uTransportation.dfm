object fTransportation: TfTransportation
  Left = 460
  Top = 205
  Width = 1217
  Height = 685
  Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
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
    000000000000D68B44F6DA9859FFDFA66FFFDEA56DFFDEA46CFFDDA26BFFDDA1
    69FFDCA068FFDC9F67FFDB9E65FFD58D4AFFCE7C2FF600000000000000000000
    000000000000DD9E60FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFEFCFFFFFD
    FBFFFFFDFBFFFFFCFAFFFFFCF9FFFFFEFDFFD6904EFF00000000000000000000
    000000000000E3AF7BFFFFFFFEFFFFFCFAFFFFFBF6FFFFF9F2FFFFF7EEFFFFF5
    EBFFFFF3E7FFFFF1E3FF057A08FFFFFBF7FFDDA36CFF00000000000000000000
    000000000000E5B380FFFFFDFCFFFFF7F0FFFFF6ECFFFFF4E8FFFFF2E5FFFFF0
    E1FFFFEEDDFFFFECD9FF2DC746FF057A08FFDFA770FF00000000000000000000
    000000000000E6B684FFFFFCF9FFFFF2E6FFFFF1E2FFFFEFDEFF059008FF058B
    08FF058708FF058308FF37D053FF33CC4EFF057A08FF00000000000000000000
    000000000000E8B989FFFFFBF7FFFFEDDCFFFFECD8FFFFEAD4FF48B54BFF85FF
    C1FF47E06CFF44DC66FF40D961FF3DD65BFF39D256FF057A08FF000000000000
    000000000000EABD8DFFFFFAF4FFFFE8D2FFFFE7CEFFFFE5CBFF48B54BFF85FF
    C1FF51EA7AFF4DE774FF49E26FFF46DF6AFF42DC64FF3FD85FFF057A08FF0000
    000000000000EBC091FFFFF8F2FFFFE4C8FFFFE2C4FFFFE0C1FF48B54BFF85FF
    C1FF85FFC1FF85FFC1FF53EC7DFF4FE878FF4CE672FF057F08FF000000000000
    000000000000EDC496FFFFF7EFFFFFDFBEFFFFDDBAFFFFDBB7FF48B54BFF48B5
    4BFF48B54BFF48B54BFF5BF489FF58F185FF058708FF00000000000000000000
    000000000000EFC79AFFFFF6EDFFFFDAB4FFFFD8B0FFFFD6ADFFFFD4A9FFFFD2
    A5FFFFD0A2FFFFCE9EFF85FFC1FF059008FFE9BB8BFF00000000000000000000
    000000000000F0CA9EFFFFF5EAFFFFD5AAFFFFD3A7FFFFD1A3FFFFCF9FFFFFCD
    9CFFFFCC9AFFFFCC99FF059808FFFFF2E6FFEBBE8FFF00000000000000000000
    000000000000F2CDA3FFFFF3E8FFFFD0A0FFFFCE9DFFFFCD9AFFFFCC99FFFFCC
    99FFFFFFFFFFFFFFFFFFFFFFFFFFFEF7F0FFE9B882FF00000000000000000000
    000000000000F3D1A7FFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
    99FFFFFFFFFFFFFFFFFFFEFAF7FFEDC291FFE8B275DB00000000000000000000
    000000000000F5D4ABFFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
    99FFFFFFFFFFFEFBF7FFEFC697FFEBB87DDB0000000000000000000000000000
    000000000000F6D4A9FFFFFFFFFFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2
    E6FFFEF8F1FFF1CB9DFFEDBD84DB000000000000000000000000000000000000
    000000000000F5CE9AF6F7D7ACFFF7D9B1FFF7D8B0FFF6D7AFFFF6D6ADFFF5D5
    ACFFF1C58EFFF0C38CDB0000000000000000000000000000000000000000C003
    0000C0030000C0030000C0030000C0030000C0010000C0000000C0010000C003
    0000C0030000C0030000C0030000C0030000C0070000C00F0000C01F0000}
  OldCreateOrder = False
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
    Width = 1209
    Height = 658
    Align = alClient
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'View'
      object SetupPanel: TPanel
        Left = 0
        Top = 0
        Width = 1209
        Height = 35
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object PresentFiltercxDE: TcxDateEdit
          Left = 154
          Top = 8
          Hint = #1047#1072#1076#1072#1081#1090#1077' '#1076#1072#1090#1091', '#1079#1072' '#1082#1086#1090#1086#1088#1091#1102' '#1073#1091#1076#1091#1090' '#1086#1090#1086#1073#1088#1072#1085#1099' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
          ParentShowHint = False
          Properties.OnCloseUp = PresentFiltercxDEPropertiesCloseUp
          ShowHint = True
          Style.BorderStyle = ebsFlat
          TabOrder = 1
          OnEnter = TransportationIDFiltercxMEEnter
          Width = 120
        end
        object FromStorageFiltercxLCB: TcxLookupComboBox
          Left = 304
          Top = 8
          Hint = #1047#1072#1076#1072#1081#1090#1077' '#1089#1082#1083#1072#1076', '#1089' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1073#1099#1083#1072' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1077#1085#1072' '#1087#1077#1088#1077#1073#1088#1086#1089#1082#1072
          ParentShowHint = False
          Properties.DropDownSizeable = True
          Properties.HideSelection = False
          Properties.ImmediateDropDown = False
          Properties.IncrementalFiltering = False
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ReadOnly = False
          Properties.OnCloseUp = PresentFiltercxDEPropertiesCloseUp
          ShowHint = True
          Style.BorderStyle = ebsFlat
          TabOrder = 2
          OnEnter = TransportationIDFiltercxMEEnter
          Width = 150
        end
        object ToStorageFiltercxLCB: TcxLookupComboBox
          Left = 484
          Top = 8
          Hint = #1047#1072#1076#1072#1081#1090#1077' '#1089#1082#1083#1072#1076', '#1089' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1073#1099#1083#1072' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1077#1085#1072' '#1087#1077#1088#1077#1073#1088#1086#1089#1082#1072
          ParentShowHint = False
          Properties.DropDownSizeable = True
          Properties.HideSelection = False
          Properties.ImmediateDropDown = False
          Properties.IncrementalFiltering = False
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ReadOnly = False
          Properties.OnCloseUp = PresentFiltercxDEPropertiesCloseUp
          ShowHint = True
          Style.BorderStyle = ebsFlat
          TabOrder = 3
          OnEnter = TransportationIDFiltercxMEEnter
          Width = 150
        end
        object TransportationIDFiltercxME: TcxMaskEdit
          Left = 8
          Top = 8
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '\d+'
          Properties.MaxLength = 0
          Style.BorderStyle = ebsFlat
          TabOrder = 0
          OnEnter = TransportationIDFiltercxMEEnter
          OnKeyPress = TransportationIDFiltercxMEKeyPress
          Width = 121
        end
        object Panel2: TPanel
          Left = 1140
          Top = 2
          Width = 67
          Height = 31
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 4
          object RefreshBB: TBitBtn
            Left = 35
            Top = 1
            Width = 30
            Height = 30
            Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1087#1088#1080#1093#1086#1076#1086#1084' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
            TabOrder = 0
            OnClick = RefreshBBClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000130B0000130B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025F9B025F9B025F9B025F9B02
              5F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B025F9B
              025F9B025F9B025F9BFF00FFFF00FFFF00FFFF00FFFF00FF1B74AFDAECF8D8EB
              F8D6EAF7D3E9F7D1E7F6CFE6F6CBE5F5C7E3F5C2E0F4BDDEF3B8DBF2B3D9F1AE
              D6F0AAD4F0A5D1EFA0CFEE9ECEEE9ECEEE025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFDCEDF83BA3D837A1D7339FD62F9DD52B9CD5279AD42398D31F96D21B95
              D11793D01391CF0F90CF0B8ECE078CCD038ACC028ACC9ECEEE025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFDFEFF93FA4D93BA3D837A1D7339FD6FFFFFF8DC5EB
              279AD48DC5EBFFFFFFFFFFFF8AC9EC1391CF0F90CF0B8ECE078CCD038ACCA0CF
              EE025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE1F0F943A6DA3FA4D93BA3D837
              A1D7FFFFFFFFFFFF8DC5EBFFFFFFFFFFFFFFFFFFFFFFFF8AC9EC1391CF0F90CF
              0B8ECE078CCDA5D1EF025F9BFF00FFFF00FFFF00FFFF00FF1B74AFE3F1FA47A8
              DB43A6DA3FA4D93BA3D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF8AC9EC1391CF0F90CF0B8ECEAAD4F0025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFE6F2FA4BAADC47A8DB43A6DA3FA4D9FFFFFFFFFFFFFFFFFFFFFFFF8DC5
              EB279AD48DC5EBFFFFFFFFFFFF1793D01391CF0F90CFAED6F0025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFE8F3FB4EABDC4BAADC47A8DB43A6DAFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF8DC5EB279AD48DC5EBFFFFFF8AC9EC1793D01391CFB3D9
              F1025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEBF5FB56AFDE50ACDD4CAADC49
              A9DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D9DD5299BD48DC5EBFFFFFF
              1D96D21994D1BADCF2025F9BFF00FFFF00FFFF00FFFF00FF1B74AFEEF6FC5DB2
              E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D93DA3D839A2D835A0D7319ED62D
              9DD5299BD42599D32197D21D96D2BFDFF3025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF0F8FC64B5E15DB2E056AFDE50ACDD4CAADC49A9DB45A7DA41A5D93DA3
              D839A2D835A0D7319ED62D9DD5299BD42599D32197D2C4E1F4025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFF2F9FD6BB8E364B5E1FFFFFF8DC5EB50ACDD4CAADC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF319ED62D9DD5299BD42599D3C9E4
              F5025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF5FAFD72BBE46BB8E38DC5EBFF
              FFFF8DC5EB50ACDD8AC9ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35A0D7319ED6
              2D9DD5299BD4CEE6F6025F9BFF00FFFF00FFFF00FFFF00FF1B74AFF7FBFE78BE
              E672BBE46BB8E3FFFFFFFFFFFF56AFDE50ACDD8AC9ECFFFFFFFFFFFFFFFFFFFF
              FFFF39A2D835A0D7319ED62D9DD5D0E7F6025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFF9FCFE7FC1E778BEE672BBE48DC5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF3DA3D839A2D835A0D7319ED6D2E8F6025F9BFF00FFFF
              00FFFF00FFFF00FF1B74AFFDFEFF89C5E983C2E87CBFE675BCE58DC5EBFFFFFF
              FFFFFFFFFFFFFFFFFF8AC9ECFFFFFFFFFFFF43A6DA3FA4D93BA3D837A1D7D6EA
              F7025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF90C8EB89C5E983C2E87C
              BFE675BCE58DC5EBFFFFFFFFFFFF5AB0DF53ADDD8AC9ECFFFFFF47A8DB43A6DA
              3FA4D93BA3D8D8EBF8025F9BFF00FFFF00FFFF00FFFF00FF1B74AFFFFFFF97CB
              EC90C8EB89C5E983C2E87CBFE675BCE56EB9E367B6E261B3E05AB0DF53ADDD4E
              ABDC4BAADC47A8DB43A6DA3FA4D9DAECF8025F9BFF00FFFF00FFFF00FFFF00FF
              1B74AFFFFFFFFFFFFFFFFFFFFDFEFFFAFDFEF8FCFEF6FBFDF3F9FDF1F8FCEFF7
              FCEDF6FCEAF5FBE8F3FBE6F2FAE3F1FAE1F0F9DFEFF9DCEDF8025F9BFF00FFFF
              00FFFF00FFFF00FFFF00FF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF
              1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74AF1B74
              AFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object AddTransportation: TBitBtn
            Left = 2
            Top = 1
            Width = 30
            Height = 30
            Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1087#1088#1080#1093#1086#1076#1086#1084' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
            TabOrder = 1
            OnClick = AddTransportationMIClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000630B0000630B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF009000006000006000006000006000006000006000FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF0090002CC4460EA6160EA6160EA6160EA616006000FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F8982CC44628C04025BD
              3A0EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F898
              30C84C2CC44628C0400EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF00900060F89834CC5230C84C2CC4460EA616006000FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF00900060F89837CF5734CC5230C84C0EA616006000FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F8983BD35D37CF5734CC
              520EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FF00900000600000600000600000600000600000600000600060F898
              3ED6633BD35D37CF570EA6160060000060000060000060000060000060000060
              00006000FF00FFFF00FFFF00FF00900060F8980EA6160EA6160EA6160EA6160E
              A6160EA61648E07244DC6C40D8663CD4600EA6160EA6160EA6160EA6160EA616
              0EA6160EA6160EA616006000FF00FFFF00FFFF00FF00900060F89860F8985EF6
              965BF39057EF8A53EB844FE77E4BE37848E07244DC6C40D8663CD46039D15A36
              CE5532CA4F2EC6492AC24326BE3D0EA616006000FF00FFFF00FFFF00FF009000
              60F89860F89860F8985EF6965BF39057EF8A53EB844FE77E4BE37848E07244DC
              6C40D8663CD46039D15A36CE5532CA4F2EC6492AC2430EA616006000FF00FFFF
              00FFFF00FF00900060F89860F89860F89860F8985EF6965BF39057EF8A53EB84
              4FE77E4BE37848E07244DC6C40D8663CD46039D15A36CE5532CA4F2EC6490EA6
              16006000FF00FFFF00FFFF00FF00900060F89860F89860F89860F89860F89860
              F89860F89860F89853EB844FE77E4BE37848E07260F89860F89860F89860F898
              60F89860F8980EA616006000FF00FFFF00FFFF00FF0090000090000090000090
              0000900000900000900000900060F89857EF8A53EB844FE77E0EA61600600000
              9000009000009000009000009000009000009000FF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F8985BF39057EF8A53EB
              840EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F898
              60F8985CF49359F18D0EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF00900060F89860F89860F8985CF4930EA616006000FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF00900060F89860F89860F89860F8980EA616006000FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F89860F89860F89860F8
              980EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F898
              60F89860F89860F8980EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF009000009000009000009000009000009000009000FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
        end
      end
      object TransportationcxGrid: TcxGrid
        Left = 0
        Top = 35
        Width = 1209
        Height = 422
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfStandard
        object TransportationcxGridDBTV: TcxGridDBTableView
          PopupMenu = TransportationPM
          OnDblClick = PrintTransportationMIClick
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = TransportationcxGridDBTVCustomDrawCell
          DataController.DataSource = TransportationDS
          DataController.KeyFieldNames = 'TRANSPORTATIONID'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
              Column = TransportationcxGridDBTVTRANSPORTATIONID
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Format = ',0.000;-,0.000'
              Kind = skSum
            end
            item
              Format = ',0.000;-,0.000'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
            end
            item
              Format = ',0.000;-,0.000'
              Kind = skSum
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Kind = skCount
              Column = TransportationcxGridDBTVTRANSPORTATIONID
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 15
          OnCustomDrawColumnHeader = TransportationcxGridDBTVCustomDrawColumnHeader
          object TransportationcxGridDBTVTRANSPORTATIONID: TcxGridDBColumn
            DataBinding.FieldName = 'TRANSPORTATIONID'
            Width = 98
          end
          object TransportationcxGridDBTVFROMTERMINALID: TcxGridDBColumn
            DataBinding.FieldName = 'FROMTERMINALID'
            Visible = False
          end
          object TransportationcxGridDBTVFROMSTORAGEID: TcxGridDBColumn
            DataBinding.FieldName = 'FROMSTORAGEID'
            Visible = False
          end
          object TransportationcxGridDBTVTOTERMINALID: TcxGridDBColumn
            DataBinding.FieldName = 'TOTERMINALID'
            Visible = False
          end
          object TransportationcxGridDBTVTOSTORAGEID: TcxGridDBColumn
            DataBinding.FieldName = 'TOSTORAGEID'
            Visible = False
          end
          object TransportationcxGridDBTVPRESENT: TcxGridDBColumn
            DataBinding.FieldName = 'PRESENT'
            Width = 130
          end
          object TransportationcxGridDBTVwheninsert: TcxGridDBColumn
            DataBinding.FieldName = 'wheninsert'
            Width = 113
          end
          object TransportationcxGridDBTVSHORTNAME: TcxGridDBColumn
            DataBinding.FieldName = 'SHORTNAME'
            Width = 180
          end
          object TransportationcxGridDBTVFROMSTORAGENAME: TcxGridDBColumn
            DataBinding.FieldName = 'FROMSTORAGENAME'
            Width = 212
          end
          object TransportationcxGridDBTVTOSTORAGENAME: TcxGridDBColumn
            DataBinding.FieldName = 'TOSTORAGENAME'
            Width = 143
          end
          object TransportationcxGridDBTVSTATUSID: TcxGridDBColumn
            DataBinding.FieldName = 'STATUSID'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = TransportaionStatusIL
            Properties.Items = <
              item
                Description = #1053#1072' '#1089#1082#1083#1072#1076#1077
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #1042' '#1087#1091#1090#1080
                ImageIndex = 1
                Value = 1
              end>
            Properties.ShowDescriptions = False
            Visible = False
            Width = 92
          end
          object TransportationcxGridDBTVNOTFULLTRANSPORTATION: TcxGridDBColumn
            DataBinding.FieldName = 'NOTFULLTRANSPORTATION'
            Visible = False
          end
          object TransportationcxGridDBTVISCOLLECTED: TcxGridDBColumn
            DataBinding.FieldName = 'ISCOLLECTED'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = CollectedStatusIL
            Properties.Items = <
              item
                Description = #1053#1072#1073#1086#1088#1082#1072
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #1054#1090#1075#1088#1091#1078#1077#1085#1072
                ImageIndex = 1
                Value = 1
              end
              item
                Description = #1044#1086#1089#1090#1072#1074#1083#1077#1085#1072
                ImageIndex = 2
                Value = 2
              end>
            Properties.ShowDescriptions = False
            Width = 99
          end
          object TransportationcxGridDBTVEGAISTRANSPORTATIONSTATUSID: TcxGridDBColumn
            DataBinding.FieldName = 'EGAISTRANSPORTATIONSTATUSID'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = EgaisIL
            Properties.Items = <>
            Properties.ShowDescriptions = False
            Width = 96
          end
          object TransportationcxGridDBTVFLAGEGAISRETAILERROR: TcxGridDBColumn
            Caption = #1055#1088#1080#1079#1085#1072#1082' '#1086#1096#1080#1073#1082#1080' '#1087#1088#1080' '#1088#1086#1079#1085#1080#1095#1085#1086#1084' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1080
            DataBinding.FieldName = 'FLAGEGAISRETAILERROR'
            Visible = False
          end
          object TransportationcxGridDBTVFLAGEXCISESCAN: TcxGridDBColumn
            DataBinding.FieldName = 'FLAGEXCISESCAN'
            Visible = False
          end
          object ransportationcxGridDBTVREPRICEID: TcxGridDBColumn
            DataBinding.FieldName = 'REPRICEID'
            Visible = False
          end
        end
        object TransportationcxGridLevel: TcxGridLevel
          GridView = TransportationcxGridDBTV
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 457
        Width = 1209
        Height = 8
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salBottom
        Control = TransportationDetailcxGrid
      end
      object TransportationDetailcxGrid: TcxGrid
        Left = 0
        Top = 465
        Width = 1209
        Height = 193
        Align = alBottom
        TabOrder = 2
        LookAndFeel.Kind = lfStandard
        object TransportationDetailcxGridDBTV: TcxGridDBTableView
          PopupMenu = TransportationDetailPM
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = TransportationDetailDS
          DataController.KeyFieldNames = 'TRANSPORTATIONDETAILID'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
              Column = TransportationDetailcxGridDBTVFROMDRINKKINDID
            end
            item
              Kind = skSum
              Position = spFooter
              Column = TransportationDetailcxGridDBTVSALEBOXCOUNT
            end
            item
              Kind = skSum
              Position = spFooter
              Column = TransportationDetailcxGridDBTVCOUNTUNIT
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Format = ',0.000;-,0.000'
              Kind = skSum
            end
            item
              Format = ',0.000;-,0.000'
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Column = TransportationDetailcxGridDBTVRETAILSUMPRICE
            end
            item
              Kind = skCount
              Column = TransportationDetailcxGridDBTVFROMDRINKKINDID
            end
            item
              Kind = skSum
              Column = TransportationDetailcxGridDBTVSALEBOXCOUNT
            end
            item
              Kind = skSum
              Column = TransportationDetailcxGridDBTVCOUNTUNIT
            end
            item
              Kind = skSum
              Column = ransportationDetailcxGridDBTVSUMWEIGHT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 15
          object TransportationDetailcxGridDBTVTRANSPORTATIONDETAILID: TcxGridDBColumn
            DataBinding.FieldName = 'TRANSPORTATIONDETAILID'
            Visible = False
          end
          object TransportationDetailcxGridDBTVFROMDRINKKINDID: TcxGridDBColumn
            DataBinding.FieldName = 'FROMDRINKKINDID'
            Width = 81
          end
          object TransportationDetailcxGridDBTVTODRINKKINDID: TcxGridDBColumn
            DataBinding.FieldName = 'TODRINKKINDID'
            Width = 81
          end
          object TransportationDetailcxGridDBTVDRINKID: TcxGridDBColumn
            DataBinding.FieldName = 'DRINKID'
            Width = 81
          end
          object TransportationDetailcxGridDBTVPRINTMARK: TcxGridDBColumn
            DataBinding.FieldName = 'PRINTMARK'
            Width = 205
          end
          object TransportationDetailcxGridDBTVCOUNTUNIT: TcxGridDBColumn
            DataBinding.FieldName = 'COUNTUNIT'
            Width = 63
          end
          object TransportationDetailcxGridDBTVBUYBOXNAME: TcxGridDBColumn
            DataBinding.FieldName = 'BUYBOXNAME'
            Width = 64
          end
          object TransportationDetailcxGridDBTVSALEBOXNAME: TcxGridDBColumn
            DataBinding.FieldName = 'SALEBOXNAME'
            Width = 65
          end
          object TransportationDetailcxGridDBTVSALEBOXCOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'SALEBOXCOUNT'
            Width = 121
          end
          object ransportationDetailcxGridDBTVSUMWEIGHT: TcxGridDBColumn
            Caption = #1042#1077#1089
            DataBinding.FieldName = 'SUMWEIGHT'
          end
          object TransportationDetailcxGridDBTVPRODACTIONDATE: TcxGridDBColumn
            DataBinding.FieldName = 'PRODACTIONDATE'
            Width = 195
          end
          object TransportationDetailcxGridDBTVRETAILPRICE: TcxGridDBColumn
            Caption = #1056#1086#1079#1085'. '#1094#1077#1085#1072
            DataBinding.FieldName = 'RETAILPRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = ',0.000;-,0.000'
            Width = 104
          end
          object TransportationDetailcxGridDBTVRETAILSUMPRICE: TcxGridDBColumn
            Caption = #1056#1086#1079#1085'. '#1089#1091#1084#1084#1072
            DataBinding.FieldName = 'RETAILSUMPRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            Width = 103
          end
        end
        object TransportationDetailcxGridLevel: TcxGridLevel
          GridView = TransportationDetailcxGridDBTV
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Add'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1209
        Height = 35
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 181
          Top = 12
          Width = 6
          Height = 13
          Caption = #1089
        end
        object Label2: TLabel
          Left = 349
          Top = 12
          Width = 12
          Height = 13
          Caption = #1085#1072
        end
        object AutoCompileTranscxCB: TcxCheckBox
          Left = 656
          Top = 8
          AutoSize = False
          Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1074#1099#1073#1088#1072#1090#1100' '#1090#1086#1074#1072#1088
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Style.BorderStyle = ebsFlat
          TabOrder = 4
          Height = 21
          Width = 209
        end
        object PresentTempcxDE: TcxDateEdit
          Left = 26
          Top = 8
          Hint = #1047#1072#1076#1072#1081#1090#1077' '#1076#1072#1090#1091', '#1079#1072' '#1082#1086#1090#1086#1088#1091#1102' '#1073#1091#1076#1091#1090' '#1086#1090#1086#1073#1088#1072#1085#1099' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
          ParentShowHint = False
          ShowHint = True
          Style.BorderStyle = ebsFlat
          TabOrder = 0
          Width = 120
        end
        object FromStorageTempcxLCB: TcxLookupComboBox
          Left = 192
          Top = 8
          Hint = #1047#1072#1076#1072#1081#1090#1077' '#1089#1082#1083#1072#1076', '#1089' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1073#1099#1083#1072' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1077#1085#1072' '#1087#1077#1088#1077#1073#1088#1086#1089#1082#1072
          ParentShowHint = False
          Properties.DropDownSizeable = True
          Properties.ImmediateDropDown = False
          Properties.IncrementalFiltering = False
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = FromStorageTempcxLCBPropertiesEditValueChanged
          ShowHint = True
          Style.BorderStyle = ebsFlat
          TabOrder = 1
          Width = 150
        end
        object ToStorageTempcxLCB: TcxLookupComboBox
          Left = 368
          Top = 8
          Hint = #1047#1072#1076#1072#1081#1090#1077' '#1089#1082#1083#1072#1076', '#1089' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1073#1099#1083#1072' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1077#1085#1072' '#1087#1077#1088#1077#1073#1088#1086#1089#1082#1072
          ParentShowHint = False
          Properties.DropDownSizeable = True
          Properties.ImmediateDropDown = False
          Properties.IncrementalFiltering = False
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = FromStorageTempcxLCBPropertiesEditValueChanged
          ShowHint = True
          Style.BorderStyle = ebsFlat
          TabOrder = 2
          Width = 150
        end
        object Panel3: TPanel
          Left = 996
          Top = 2
          Width = 211
          Height = 31
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 3
          object SaveBB: TBitBtn
            Left = 2
            Top = 1
            Width = 103
            Height = 30
            Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1087#1088#1080#1093#1086#1076#1086#1084' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            TabOrder = 0
            OnClick = SaveBBClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000730B0000730B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF68303068303068303068303068
              3030683030683030683030683030683030683030683030683030683030683030
              683030683030683030FF00FFFF00FFFF00FFFF00FFFF00FFD57172DA9292D58C
              8B683030FFFFFFF8F9FAF1F2F5EAEBEFE3E5EADDE0E6D7DAE1D1D4DDCBCED8C8
              CBD6A85755A85755683030974441974441683030FF00FFFF00FFFF00FFD57172
              E59E9EE09898DA9292683030FFFFFF7D5F5FAF8585C89898EAEBEFE3E5EADDE0
              E6D7DAE1D1D4DDCBCED8A85755A85755683030974441974441683030FF00FFFF
              00FFFF00FFD57172EAA4A5E59E9EE09898683030FFFFFF4232327D5F5FAF8585
              F1F2F5EAEBEFE3E5EADDE0E6D7DAE1D1D4DDA85755A857556830309744419744
              41683030FF00FFFF00FFFF00FFD57172F0AAABEAA4A5E59E9E683030FFFFFF21
              19194232327D5F5FF8F9FAF1F2F5EAEBEFE3E5EADDE0E6D7DAE1A85755A85755
              683030974441974441683030FF00FFFF00FFFF00FFD57172F5B0B1F0AAABEAA4
              A5683030FFFFFF000000000000423232FFFFFFF8F9FAF1F2F5EAEBEFE3E5EADD
              E0E6A85755A857556830309C4A47974441683030FF00FFFF00FFFF00FFD57172
              FAB7B8F5B0B1F0AAAB683030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9
              FAF1F2F5EAEBEFE3E5EAA85755A85755683030A1504D9C4A47683030FF00FFFF
              00FFFF00FFD57172FFBDBEFDBABBF8B4B5683030683030683030683030683030
              683030683030683030683030683030683030683030683030683030A65653A150
              4D683030FF00FFFF00FFFF00FFD57172FFBDBEFFBDBEFDBABBF8B4B5F2ADAEED
              A7A8E8A1A1E29B9BDD9595D88F8ED28988CD8382C97D7CC47776BE716FB96B69
              B46563AE5F5DA95956683030FF00FFFF00FFFF00FFD57172FFBDBEFFBDBEB549
              18B54918B54918B54918B54918B54918B54918B54918B54918B54918B54918B5
              4918B54918B54918B96B69B46563AE5F5D683030FF00FFFF00FFFF00FFD57172
              FFBDBEB54918FCFAF9F9F6F4F7F2F0F4EFECF2EBE8F0E8E4EEE4E0EBE1DBE9DD
              D7E7DAD3E4D6CFE2D2CBE1D1C9E1D1C9B54918B96B69B46563683030FF00FFFF
              00FFFF00FFD57172FFBDBEB54918FEFDFDFCFAF9F9F6F4F7F2F0F4EFECF2EBE8
              F0E8E4EEE4E0EBE1DBEADFD9E8DBD5E5D8D1E3D4CDE1D1C9B54918BE716FB96B
              69683030FF00FFFF00FFFF00FFD57172FFBDBEB54918FFFFFFFEFDFDE4AE88E4
              AE88E4AE88E4AE88E4AE88E4AE88E4AE88E4AE88E4AE88E4AE88E3D4CDE3D4CD
              B54918C47776BE716F683030FF00FFFF00FFFF00FFD57172FFBDBEB54918FFFF
              FFFFFFFFFFFFFFFDFBFBFAF8F6F8F4F2F6F1EEF3EDEAF1E9E6EFE6E2EDE3DEEA
              DFD9E8DBD5E5D8D1B54918C97D7CC47776683030FF00FFFF00FFFF00FFD57172
              FFBDBEB54918FFFFFFFFFFFFFFFFFFFFFFFFFDFBFBFAF8F6F8F4F2F6F1EEF3ED
              EAF1E9E6EFE6E2EDE3DEEADFD9E8DBD5B54918CD8382C97D7C683030FF00FFFF
              00FFFF00FFD57172FFBDBEB54918FFFFFFFFFFFFE4AE88E4AE88E4AE88E4AE88
              E4AE88E4AE88E4AE88E4AE88E4AE88E4AE88EADFD9EADFD9B54918D58C8BD086
              85683030FF00FFFF00FFFF00FFD57172FFBDBEB54918FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFDFBFBFAF8F6F8F4F2F6F1EEF3EDEAF1E9E6EFE6E2EDE3DE
              B54918DA9292D58C8B683030FF00FFFF00FFFF00FFD57172FFBDBEB54918FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFBFAF8F6F8F4F2F6F1EEF3
              EDEAF1E9E6EFE6E2B54918E09898DA9292683030FF00FFFF00FFFF00FFD57172
              FFBDBEB54918FFFFFFFFFFFFE4AE88E4AE88E4AE88E4AE88E4AE88E4AE88E4AE
              88E4AE88E4AE88E4AE88F1E9E6F1E9E6B54918000000000000683030FF00FFFF
              00FFFF00FFD57172FFBDBEB54918FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFBFBFAF8F6F9F6F4F7F2F0F4EFECB54918C0C0C00000
              00683030FF00FFFF00FFFF00FFFB09F3D57172B54918B54918B54918B54918B5
              4918B54918B54918B54918B54918B54918B54918B54918B54918B54918B54918
              B54918D57172D47877FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object CancelBB: TBitBtn
            Left = 106
            Top = 1
            Width = 103
            Height = 30
            Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1087#1088#1080#1093#1086#1076#1086#1084' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
            Caption = #1054#1090#1084#1077#1085#1072
            TabOrder = 1
            OnClick = CancelBBClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000D30F0000D30F00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              9A605D6830307D294DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A
              605D683030683030B07068B07068683030FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A60
              5D683030683030B07068C0756FBE746EBB736CB1706868303068303068303068
              3030683030683030683030683030683030683030FF00FFFF00FFFF00FFFF00FF
              906060683030BE736EC87A75C77974C57872C37771C1756FBE746EB170696830
              30006000006000006000006000026606056B0A016303006000683030FF00FFFF
              00FFFF00FFFF00FF906060CC7B77CE7D79CC7C77CA7B76C87974C57873C37771
              C0756FB271696830300060000060000060000266050976140A7715056C0B0565
              03683030FF00FFFF00FFFF00FFFF00FF906060D07E7AD17F7BCF7E79CC7D78CA
              7B76C77974C57873C27670B3716A6830300062020060000061010A7715118623
              0E811E0A7513186D09683030FF00FFFF00FFFF00FFFF00FF906060D2807BD380
              7CD17F7BCE7E79C97B76C27671BE746FC07570B37169683030046A0901640308
              731117922E179430128A2718751237740C683030FF00FFFF00FFFF00FFFF00FF
              906060D3807CD5817DD4807CCF7E7BC57D79B87B78C07570C07570B16F686830
              3007700E126A091F7F1C1D9D381C9C3718862237740D808511683030FF00FFFF
              00FFFF00FFFF00FF906060D6817ED7827FD5827ED28380D8A9A6DBB7B6B98987
              C07570AE6E676830301472106682206E8D2925932F1E922D1B7612848819F7A1
              1F683030FF00FFFF00FFFF00FFFF00FF906060D8837FDA8480D7827ED58885EA
              C8C6FDF1F1D8B4B3B97A76B06F685B3B2D588122D2A545CBA34074922E2A7C19
              808B22F8A52EF8A326683030FF00FFFF00FFFF00FFFF00FF906060DA8481DC85
              82DA8480D78581DEA3A0E5BFBDD39C99C77B78B4726B5B3C2ECBA64EF5B257F3
              B050E1A945BE9E37EDA83BF8A835F8A62E683030FF00FFFF00FFFF00FFFF00FF
              906060DF8784DE8784DD8682DB8581D8837FD4817DD37F7CD17F7BB8736D6830
              30F5B663F8B55EF8B358F7B151F7AF4AF7AD44F8AB3CF8A835683030FF00FFFF
              00FFFF00FFFF00FF906060E28885E18885DE8784DD8682DB8581D98380D7827E
              D4817DB8746D683030F8BA6EF8B868F7B660F6B35AF3B156F2AE51F5AD46F7AB
              3D683030FF00FFFF00FFFF00FFFF00FF906060E38A87E38986E18885DF8784DD
              8682DB8582D98380D5817EB8756D683030F8BC74F7BA6EEFB66ED1AF7CB2A98F
              A9A792C6A975E7AB53683030FF00FFFF00FFFF00FFFF00FF906060E68B89E58A
              88E48987E18885DF8784DD8683DB8582D8837FB9756D683030F7BE7BEDBA7BB2
              B09D63A5D0409DE93999EF549CD894A3A0683030FF00FFFF00FFFF00FFFF00FF
              906060E98C8BE88C8AE58A88E48987E18885DF8784DD8683DB8580BA756E6830
              30F6C084CBB8975BAED728ACF529A3F72D9BF83098F6459AE5683030FF00FFFF
              00FFFF00FFFF00FF906060EA8D8CEA8D8CE88C8AE58A88E48A88E28986E08885
              DC8682BA756F683030F1C28DA2B7B32EB7F01FBBF724AFF829A4F82E9AF73298
              F5683030FF00FFFF00FFFF00FFFF00FF906060EC8E8DED8F8DEB8E8CE98D8BE6
              8B89E48A88E38986DE8783BB756F683030EFC39490B9C020C3F51AC8F81FBDF8
              24B2F829A4F82E9BF7683030FF00FFFF00FFFF00FFFF00FFB07068906060C47F
              7AEB8E8CEA8D8BE98D8BE68B89E58A88E18885BC766F683030F3C798B1BDB633
              C2ED15D3F719CAF71DC0F824B2F730A5F2683030FF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFB07068906060906060C47F7AE28987E58A88E38987BC76706830
              30906060906060906060906060906060906060906060906060906060FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB07068906060906060
              C47F7AB7736C683030FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFB07068906060683030FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
        end
        object AddBB: TBitBtn
          Left = 522
          Top = 3
          Width = 111
          Height = 30
          Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1087#1088#1080#1093#1086#1076#1086#1084' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 5
          OnClick = AddTransportationDetailMIClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000630B0000630B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF009000006000006000006000006000006000006000FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF0090002CC4460EA6160EA6160EA6160EA616006000FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F8982CC44628C04025BD
            3A0EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F898
            30C84C2CC44628C0400EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF00900060F89834CC5230C84C2CC4460EA616006000FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF00900060F89837CF5734CC5230C84C0EA616006000FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F8983BD35D37CF5734CC
            520EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF00900000600000600000600000600000600000600000600060F898
            3ED6633BD35D37CF570EA6160060000060000060000060000060000060000060
            00006000FF00FFFF00FFFF00FF00900060F8980EA6160EA6160EA6160EA6160E
            A6160EA61648E07244DC6C40D8663CD4600EA6160EA6160EA6160EA6160EA616
            0EA6160EA6160EA616006000FF00FFFF00FFFF00FF00900060F89860F8985EF6
            965BF39057EF8A53EB844FE77E4BE37848E07244DC6C40D8663CD46039D15A36
            CE5532CA4F2EC6492AC24326BE3D0EA616006000FF00FFFF00FFFF00FF009000
            60F89860F89860F8985EF6965BF39057EF8A53EB844FE77E4BE37848E07244DC
            6C40D8663CD46039D15A36CE5532CA4F2EC6492AC2430EA616006000FF00FFFF
            00FFFF00FF00900060F89860F89860F89860F8985EF6965BF39057EF8A53EB84
            4FE77E4BE37848E07244DC6C40D8663CD46039D15A36CE5532CA4F2EC6490EA6
            16006000FF00FFFF00FFFF00FF00900060F89860F89860F89860F89860F89860
            F89860F89860F89853EB844FE77E4BE37848E07260F89860F89860F89860F898
            60F89860F8980EA616006000FF00FFFF00FFFF00FF0090000090000090000090
            0000900000900000900000900060F89857EF8A53EB844FE77E0EA61600600000
            9000009000009000009000009000009000009000FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F8985BF39057EF8A53EB
            840EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F898
            60F8985CF49359F18D0EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF00900060F89860F89860F8985CF4930EA616006000FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF00900060F89860F89860F89860F8980EA616006000FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F89860F89860F89860F8
            980EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00900060F898
            60F89860F89860F8980EA616006000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF009000009000009000009000009000009000009000FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
      end
      object TransDetailTempcxGrid: TcxGrid
        Left = 0
        Top = 35
        Width = 1209
        Height = 623
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfStandard
        object TransDetailTempcxGridDBTV: TcxGridDBTableView
          PopupMenu = TransDetailTempPM
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = TransDetailTempDS
          DataController.KeyFieldNames = 'DRINKKINDID;FROMRACKID'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skCount
              Position = spFooter
              Column = TransDetailTempcxGridDBTVDRINKKINDID
            end
            item
              Kind = skSum
              Position = spFooter
              Column = TransDetailTempcxGridDBTVCOUNTUNIT
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Format = ',0.000;-,0.000'
              Kind = skSum
            end
            item
              Format = ',0.000;-,0.000'
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
              Column = TransDetailTempcxGridDBTVDRINKKINDID
            end
            item
              Kind = skSum
              Column = TransDetailTempcxGridDBTVCOUNTUNIT
            end
            item
              Kind = skSum
              Column = ransDetailTempcxGridDBTVSUMWEIGHT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 15
          object TransDetailTempcxGridDBTVDRINKKINDID: TcxGridDBColumn
            DataBinding.FieldName = 'DRINKKINDID'
            Width = 109
          end
          object TransDetailTempcxGridDBTVDRINKID: TcxGridDBColumn
            DataBinding.FieldName = 'DRINKID'
            Width = 100
          end
          object TransDetailTempcxGridDBTVPRINTMARK: TcxGridDBColumn
            DataBinding.FieldName = 'PRINTMARK'
            Width = 388
          end
          object TransDetailTempcxGridDBTVCOUNTUNIT: TcxGridDBColumn
            DataBinding.FieldName = 'COUNTUNIT'
            Width = 150
          end
          object TransDetailTempcxGridDBTVTOSALEBOXID: TcxGridDBColumn
            DataBinding.FieldName = 'TOSALEBOXID'
            Visible = False
          end
          object TransDetailTempcxGridDBTVTOSALEBOXNAME: TcxGridDBColumn
            DataBinding.FieldName = 'TOSALEBOXNAME'
            Width = 179
          end
          object TransDetailTempcxGridDBTVTOCAPACITYID: TcxGridDBColumn
            DataBinding.FieldName = 'TOCAPACITYID'
            Visible = False
          end
          object TransDetailTempcxGridDBTVTOBUYBOXID: TcxGridDBColumn
            DataBinding.FieldName = 'TOBUYBOXID'
            Visible = False
          end
          object TransDetailTempcxGridDBTVFROMRACKID: TcxGridDBColumn
            DataBinding.FieldName = 'FROMRACKID'
            Visible = False
          end
          object TransDetailTempcxGridDBTVFROMRACKNAME: TcxGridDBColumn
            DataBinding.FieldName = 'FROMRACKNAME'
            Width = 148
          end
          object ransDetailTempcxGridDBTVPRODACTIONDATE: TcxGridDBColumn
            DataBinding.FieldName = 'PRODACTIONDATE'
          end
          object ransDetailTempcxGridDBTVSUMWEIGHT: TcxGridDBColumn
            Caption = #1042#1077#1089
            DataBinding.FieldName = 'SUMWEIGHT'
          end
        end
        object TransDetailTempcxGridLevel: TcxGridLevel
          GridView = TransDetailTempcxGridDBTV
        end
      end
    end
  end
  object TransportationCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SQNNO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Present'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'StorageId'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ToStorageId'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'statusid'
        ParamType = ptInput
      end>
    ProviderName = 'TransportationDSP'
    Left = 220
    Top = 145
    object TransportationCDSTRANSPORTATIONID: TIntegerField
      DisplayLabel = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'TRANSPORTATIONID'
    end
    object TransportationCDSFROMTERMINALID: TIntegerField
      FieldName = 'FROMTERMINALID'
      Visible = False
    end
    object TransportationCDSFROMSTORAGEID: TIntegerField
      FieldName = 'FROMSTORAGEID'
      Visible = False
    end
    object TransportationCDSTOTERMINALID: TIntegerField
      FieldName = 'TOTERMINALID'
      Visible = False
    end
    object TransportationCDSTOSTORAGEID: TIntegerField
      FieldName = 'TOSTORAGEID'
      Visible = False
    end
    object TransportationCDSPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'PRESENT'
    end
    object TransportationCDSSHORTNAME: TStringField
      DisplayLabel = #1050#1090#1086' '#1074#1074#1086#1076#1080#1083
      FieldName = 'SHORTNAME'
      Size = 25
    end
    object TransportationCDSFROMSTORAGENAME: TStringField
      DisplayLabel = #1057#1086' '#1089#1082#1083#1072#1076#1072
      FieldName = 'FROMSTORAGENAME'
      Size = 30
    end
    object TransportationCDSTOSTORAGENAME: TStringField
      DisplayLabel = #1053#1072' '#1089#1082#1083#1072#1076
      FieldName = 'TOSTORAGENAME'
      Size = 30
    end
    object TransportationCDSSTATUSID: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUSID'
    end
    object TransportationCDSNOTFULLTRANSPORTATION: TIntegerField
      FieldName = 'NOTFULLTRANSPORTATION'
      Visible = False
    end
    object TransportationCDSFROMSTORAGETYPEID: TIntegerField
      FieldName = 'FROMSTORAGETYPEID'
    end
    object TransportationCDSTOSTORAGETYPEID: TIntegerField
      FieldName = 'TOSTORAGETYPEID'
    end
    object TransportationCDSFLAGCREATESALE: TIntegerField
      FieldName = 'FLAGCREATESALE'
    end
    object TransportationCDSWHENINSERT: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'WHENINSERT'
    end
    object TransportationCDSFLAGRETAILTRANS: TIntegerField
      FieldName = 'FLAGRETAILTRANS'
    end
    object TransportationCDSEGAISTRANSPORTATIONSTATUSID: TIntegerField
      DisplayLabel = #1045#1043#1040#1048#1057' '#1089#1090#1072#1090#1091#1089
      FieldName = 'EGAISTRANSPORTATIONSTATUSID'
    end
    object TransportationCDSEGAISSENDFLAG: TSmallintField
      FieldName = 'EGAISSENDFLAG'
    end
    object TransportationCDSFLAGCOLLECTED: TIntegerField
      FieldName = 'FLAGCOLLECTED'
      Visible = False
    end
    object TransportationCDSFLAGCHANGEDATE: TIntegerField
      FieldName = 'FLAGCHANGEDATE'
      Visible = False
    end
    object TransportationCDSISCOLLECTED: TSmallintField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'ISCOLLECTED'
    end
    object TransportationCDSFLAGINSIDETRANS: TSmallintField
      FieldName = 'FLAGINSIDETRANS'
      Visible = False
    end
    object TransportationCDSFLAGEGAISRETAILERROR: TSmallintField
      FieldName = 'FLAGEGAISRETAILERROR'
    end
    object TransportationCDSFLAGEXCISESCAN: TSmallintField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103' '#1089' '#1040#1052
      FieldName = 'FLAGEXCISESCAN'
      Visible = False
    end
    object TransportationCDSREPRICEID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1077#1088#1077#1086#1094#1077#1085#1082#1080
      FieldName = 'REPRICEID'
    end
    object TransportationCDSFLAGREMBUY: TIntegerField
      FieldName = 'FLAGREMBUY'
    end
  end
  object TransportationDS: TDataSource
    DataSet = TransportationCDS
    OnDataChange = TransportationDSDataChange
    Left = 216
    Top = 177
  end
  object TransportationDetailCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TransportationId'
        ParamType = ptInput
      end>
    ProviderName = 'TransportationDetailDSP'
    Left = 256
    Top = 144
    object TransportationDetailCDSTRANSPORTATIONDETAILID: TIntegerField
      FieldName = 'TRANSPORTATIONDETAILID'
      Origin = 'DRINKTRANSPORTATION.ID'
      Visible = False
    end
    object TransportationDetailCDSFROMDRINKKINDID: TIntegerField
      DisplayLabel = #1048#1089#1093'. '#1082#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'FROMDRINKKINDID'
      Origin = 'DRINKTRANSPORTATION.DRINKKINDID'
    end
    object TransportationDetailCDSTODRINKKINDID: TIntegerField
      DisplayLabel = #1053#1086#1074#1099#1081' '#1082#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'TODRINKKINDID'
      Origin = 'DRINKTRANSPORTATION.TODRINKKINDID'
    end
    object TransportationDetailCDSBUYBOXNAME: TStringField
      DisplayLabel = #1058#1072#1088#1072' '#1082#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1080
      FieldName = 'BUYBOXNAME'
      Origin = 'BOX.FULLNAME'
      Size = 31
    end
    object TransportationDetailCDSSALEBOXNAME: TStringField
      DisplayLabel = #1058#1072#1088#1072' '#1087#1088#1086#1076#1072#1078#1080
      FieldName = 'SALEBOXNAME'
      Origin = 'BOX.FULLNAME'
      Size = 31
    end
    object TransportationDetailCDSSALEBOXCOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074' '#1090#1072#1088#1077' '#1087#1088#1086#1076#1072#1078#1080
      FieldName = 'SALEBOXCOUNT'
    end
    object TransportationDetailCDSDRINKID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
      FieldName = 'DRINKID'
      Origin = 'DRINK.ID'
    end
    object TransportationDetailCDSPRINTMARK: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldName = 'PRINTMARK'
      Size = 256
    end
    object TransportationDetailCDSCOUNTUNIT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'COUNTUNIT'
    end
    object TransportationDetailCDSPRODACTIONDATE: TStringField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072
      DisplayWidth = 32
      FieldName = 'PRODACTIONDATE'
      Size = 1024
    end
    object TransportationDetailCDSRETAILPRICE: TFloatField
      FieldName = 'RETAILPRICE'
    end
    object TransportationDetailCDSRETAILSUMPRICE: TFloatField
      FieldName = 'RETAILSUMPRICE'
    end
    object TransportationDetailCDSSUMWEIGHT: TFloatField
      FieldName = 'SUMWEIGHT'
    end
  end
  object TransportationDetailDS: TDataSource
    DataSet = TransportationDetailCDS
    Left = 256
    Top = 177
  end
  object TransportaionStatusIL: TImageList
    Left = 24
    Top = 56
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      00000000000000000000000000000000000000000000000000000000FF7BFD46
      FD46DC427E5F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF6FDC42BE6F
      BF6FFF7F5E5B9C367E6700000000000000000000000000000000000000000000
      F75ACF352925AC62A66AA86EB97B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7B5E5B3E57BF6FFF7F
      9F67FF7FFF7F7C2EBD3AFC429E6B000000000000000000000000000000000000
      343A9F63455EA07F257F2F7FA66E0F7300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DF731D4B5E5FDC421D4FFF7B
      9F63FF7FFF7F7C2EDE3E9C321D4F1D4F0000000000007B6F39670000F85E2D21
      5011704A0077E07FA07F487FA26EEA72C86E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000003E539F67FD467E631D4FBF6F
      7F5BDF77DF777C2E7D321A1EDF773D4F000000007B6F75464C258710EE003926
      313AE07AA07F0657A946F021E172E37E82720000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000003E537F63FD42DB3EB0362516
      D2369F67BF6F5C2A3C261B22BF6F3E5300000000B6563E53382A5A2A7E63FF7F
      0F6B464E9409B019162A160156014946A0760000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000005E539F63D43A651AEF42775F
      451A1A4B9F63BC3A3C261B229F633E4F0000DF7B152A5B2E5F5BDF77DF77FF77
      0F6B4F19D30090219619B300D400F500E83D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000001843861ECA2E75574F434E3F
      765F45163E4F7F5B3F53FD427F5B1E4B00007C2E5F57BF6BBF6BBF6BBF6FBF6F
      51732D19F729B07B145F55119200B30025560000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C3FC82A4F472B33C316C316C316
      714BED3A8F263F4B5F533F533F4BB43224169D329F639F639F639F639F639F67
      7C67487FA27FA07FA07FA87F764610112C7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002937282B051F041FE41EE41AE41A
      E41A95578622D8363F4B1F43B42E410E2312BD367F5B7F5B7F5B7F5B7F5B9F5F
      BF6FBE3ACF5A007F407F607F207F247FDB7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F47472F26272523052305230523
      0523272B7353661ADE3AB42E811263169A6BFE3E5F4F5F4F5F535F53BF67DF73
      FF7BDF6F5F57BE36AF56C56E937F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FE7B2A3B472F462B262B26272627
      262726274B3B2D3B8A22A21A841ABA6B0000FE3E3F4B5F539F63BF677F573F4B
      3F4B9F5FBF67BF6B3F4F5C2E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FE7B48376833472F472F472F
      472F472B472B8F47252BC422BA6B000000001F479F639F5F3F4B3F4B3F4B3F4B
      3F4B3F4B3F4BFE42DD3A1D4F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DB6F4733893B68376837
      68336833893B6837E932BA6F0000000000003E53FE3E1F433F4B3F4B3F4B3F4B
      FF42DD36FD425E5FFF7B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B663683BAA3FAA3F
      893F47332C3F955F00000000000000000000000000009F6B3E53FE3EFE3E1E4B
      7E63FF7B00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009153893F693B
      7153DC7700000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F83FFFFF00000000F00FFE0300000000
      C003FE01000000008001C8000000000080018000000000008001800000000000
      8001000000000000800100000000000000000000000000000000000000000000
      000000030000000000010007000000008003000700000000C007000F00000000
      E01FC07F00000000F07FFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object TransportationPM: TPopupMenu
    Images = fMain.MenuIL
    OnPopup = TransportationPMPopup
    Left = 216
    Top = 109
    object AddTransportationMI: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' (INS)'
      ImageIndex = 0
      OnClick = AddTransportationMIClick
    end
    object DeleteTransportationMI: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' (DEL)'
      ImageIndex = 2
      OnClick = DeleteTransportationMIClick
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object PrintTransportationMI: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' (F9)'
      Default = True
      ImageIndex = 3
      OnClick = PrintTransportationMIClick
    end
    object CreateSaleMI: TMenuItem
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1085#1072' '#1074#1085#1091#1090#1088#1080#1093#1086#1083#1076#1080#1085#1075#1086#1074#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      ImageIndex = 10
      OnClick = CreateSaleMIClick
    end
    object RemBuyMI: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000220B0000220B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFCA5313983000983000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEB8141CA5313CA5313CA
        5313983000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFEB8141CA5313EB8141F0A176983000FF00FFFF00FFCA5313CA53
        13A34B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEB8141CA5313FF00FFF0
        A176983000FF00FFCA5313CA5313A34B11A34B11A34B11FF00FFFF00FFFF00FF
        FF00FFFF00FFEB8141F0A176A34B11A34B11983000FF00FFCA5313EB8141F0A1
        76A34B11983000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEB8141F0A176A3
        4B11983000983000CA5313FF00FFEB8141A34B11983000FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFEB81419E410DA14E22983000CA5313A34B119830
        00983000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF72
        6255B7A293A55E39983000983000CA5313FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF726255D2C5BCC8B3A4726255FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF726255DBD0C972
        6255DBC9BF726255FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF726255EDE4DF726255AB9381E8DBD6726255FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAB9381FFFFFF726255FF00FFAB
        9381EDE4DF726255FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFAB9381726255FF00FFFF00FFAB9381F4EEEC726255FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAB9381FF00FFFF00FFFF00FFAB
        9381FFFFFF726255FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFAB9381726255FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAB
        9381FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = #1042#1085#1091#1090#1088#1080#1093#1086#1083#1076#1080#1085#1075#1086#1074#1086#1077' '#1089#1087#1080#1089#1072#1085#1080#1077'/'#1080#1079#1083#1080#1096#1082#1080
      OnClick = RemBuyMIClick
    end
    object PrintInsideTransportationMI: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1075#1086' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      ImageIndex = 3
      OnClick = PrintInsideTransportationMIClick
    end
    object EgaisMI: TMenuItem
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1045#1043#1040#1048#1057
      ImageIndex = 21
      OnClick = EgaisMIClick
    end
    object RePriceMI: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1077#1088#1077#1086#1094#1077#1085#1082#1091
      ImageIndex = 36
      OnClick = RePriceMIClick
    end
    object CollectedMI: TMenuItem
      Caption = #1057#1086#1073#1088#1072#1085#1072
      ImageIndex = 23
      OnClick = CollectedMIClick
    end
    object ChageDateMI: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1076#1072#1090#1091
      ImageIndex = 24
      OnClick = ChageDateMIClick
    end
    object EgaisResultMI: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000230B0000230B00000000000000000000FF00FFFF00FF
        6947316947316947316947316947316947316947316947316947316947316947
        31694731694731FF00FFFF00FFC3AE9FF5F0EDB7A293B7A293B7A293B7A293B7
        A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293694731FF00FFC3AE9F
        F7F4F1F5F0EDF2ECE8EFE8E3EDE4DF0033FF002AD0E4D7D0E2D3CBDFCFC60033
        FF002AD0B7A293694731FF00FFC3AE9FCE9E87983000983000C08366EFE8E3ED
        E4DF0033FF002AD09830000033FF002AD0DCCBC1B7A293694731FF00FFC3AE9F
        FCFAF8DCBAAAAA552DEDDFD8F2ECE8EFE8E3E4D1C70033FF002AD0002AD0E2D3
        CBDFCFC6B7A293694731FF00FFC3AE9FFFFFFFFEFEFDE3C8BBAF5F39F5F0ECF2
        ECE8EFE8E30033FF002AD0002AD0E4D7D0E2D3CBB7A293694731FF00FFC3AE9F
        FFFFFFFFFFFFFEFEFDD2A5919830009830000033FF002AD09830000033FF002A
        D0E4D7D0B7A293694731FF00FFC3AE9FFFFFFFFFFFFFFFFFFFFEFEFDBE7C5E00
        33FF002AD0983000983000EEE6E10033FF002AD0B7A293694731FF00FFC3AE9F
        FFFFFFFFFFFFFFFFFFFFFFFFFBF8F6AE5C37E4CBBF983000983000F1EAE6EEE6
        E1EBE2DDB7A293694731FF00FFC3AE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5
        EBE6AB562F983000983000F3EEEAF1EAE6EEE6E1B7A293694731FF00FFC3AE9F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8D2C69A3304983000F6F2EFF3EE
        EAF1EAE6B7A293694731FF00FFC3AE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD6AE9B983000F9F6F4F6F2EFF3EEEAB7A293694731FF00FFC3AE9F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFAF8
        F6F7F4F1B7A293694731FF00FFC3AE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFAF8F6F7F4F1694731FF00FFFF00FF
        C3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE9FC3AE
        9FC3AE9FC3AE9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1045#1043#1040#1048#1057
      OnClick = EgaisResultMIClick
    end
    object LineEgaisErrorMI: TMenuItem
      Caption = '-'
    end
    object EgaisErrorMI: TMenuItem
      Caption = #1054#1096#1080#1073#1082#1080' '#1088#1086#1079#1085#1080#1095#1085#1086#1075#1086' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      ImageIndex = 22
      OnClick = EgaisErrorMIClick
    end
    object EgaisErrorFixMI: TMenuItem
      Caption = #1055#1086#1074#1090#1086#1088#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1085#1072' 1 '#1088#1077#1075#1080#1089#1090#1088
      ImageIndex = 16
      OnClick = EgaisErrorFixMIClick
    end
  end
  object TransportationDetailPM: TPopupMenu
    Images = fMain.MenuIL
    OnPopup = TransportationDetailPMPopup
    Left = 256
    Top = 113
    object DeleteTransportationDetailMI: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' (DEL)'
      ImageIndex = 2
      OnClick = DeleteTransportationDetailMIClick
    end
    object ReturnTransportationDetailMI: TMenuItem
      Caption = #1042#1099#1095#1077#1088#1082' '#1087#1086' '#1087#1086#1079#1080#1094#1080#1080
      ImageIndex = 15
    end
    object EditPriceTransportationDetailMI: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1094#1077#1085#1091
      ImageIndex = 1
      OnClick = EditPriceTransportationDetailMIClick
    end
    object LineMI: TMenuItem
      Caption = '-'
    end
    object TransExciseMI: TMenuItem
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1072#1082#1094#1080#1079#1085#1099#1077' '#1084#1072#1088#1082#1080' '#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
      ImageIndex = 32
      Visible = False
      OnClick = TransExciseMIClick
    end
    object LineEgaisMI: TMenuItem
      Caption = '-'
    end
    object RemoveDrinkKindEgaisInformMI: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1087#1088#1072#1074#1082#1080' '#1045#1043#1040#1048#1057
      ImageIndex = 15
      OnClick = RemoveDrinkKindEgaisInformMIClick
    end
  end
  object TransDetailTempRxMD: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DRINKKINDID'
        DataType = ftInteger
      end
      item
        Name = 'BOTTLECOUNT'
        DataType = ftInteger
      end
      item
        Name = 'Drink'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'DrinkId'
        DataType = ftInteger
      end
      item
        Name = 'ToBoxId'
        DataType = ftInteger
      end
      item
        Name = 'ToBoxName'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ToCapacityId'
        DataType = ftInteger
      end
      item
        Name = 'ToPlanBoxId'
        DataType = ftInteger
      end
      item
        Name = 'ToPriceContractOrder'
        DataType = ftFloat
      end>
    AfterOpen = TransDetailTempRxMDAfterPost
    AfterInsert = TransDetailTempRxMDAfterPost
    AfterDelete = TransDetailTempRxMDAfterPost
    Left = 296
    Top = 144
    object TransDetailTempRxMDDRINKKINDID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1072#1088#1090#1080#1080
      FieldName = 'DRINKKINDID'
    end
    object TransDetailTempRxMDDRINKID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
      FieldName = 'DRINKID'
    end
    object TransDetailTempRxMDPRINTMARK: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldName = 'PRINTMARK'
      Size = 64
    end
    object TransDetailTempRxMDCOUNTUNIT: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'COUNTUNIT'
    end
    object TransDetailTempRxMDTOSALEBOXID: TIntegerField
      FieldName = 'TOSALEBOXID'
      Visible = False
    end
    object TransDetailTempRxMDTOSALEBOXNAME: TStringField
      DisplayLabel = #1042' '#1090#1072#1088#1091
      FieldName = 'TOSALEBOXNAME'
      Size = 32
    end
    object TransDetailTempRxMDTOBUYBOXID: TIntegerField
      FieldName = 'TOBUYBOXID'
      Visible = False
    end
    object TransDetailTempRxMDFROMRACKID: TIntegerField
      FieldName = 'FROMRACKID'
      Visible = False
    end
    object TransDetailTempRxMDFROMRACKNAME: TStringField
      DisplayLabel = #1048#1079' '#1103#1095#1077#1081#1082#1080
      FieldName = 'FROMRACKNAME'
      Size = 32
    end
    object TransDetailTempRxMDPRODACTIONDATE: TStringField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072
      DisplayWidth = 32
      FieldName = 'PRODACTIONDATE'
      Size = 1024
    end
    object TransDetailTempRxMDSUMWEIGHT: TFloatField
      FieldName = 'SUMWEIGHT'
    end
  end
  object TransDetailTempDS: TDataSource
    DataSet = TransDetailTempRxMD
    Left = 296
    Top = 177
  end
  object TransDetailTempPM: TPopupMenu
    Images = fMain.MenuIL
    Left = 300
    Top = 113
    object AddTransportationDetailMI: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' (INS)'
      Default = True
      ImageIndex = 0
      OnClick = AddTransportationDetailMIClick
    end
    object RemoveTransportationDetailMI: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' (DEL)'
      ImageIndex = 2
      OnClick = RemoveTransportationDetailMIClick
    end
  end
  object TransportationfrxReport: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41410.4969684954
    ReportOptions.LastChange = 41410.4969684954
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        ' if  (<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."FROMSTORAGETYPEID">='#39'1'#39') and (<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."' +
        'TOSTORAGETYPEID"><>'#39'1'#39') then //c '#1103#1095#1077#1080#1089#1090#1086#1075#1086' '#1085#1072' '#1085#1077' '#1103#1095#1077#1080#1089#1090#1099#1081
      '  begin'
      '   TransportationDetailBarCode.Visible:=false;'
      
        '   TransportationRackfrxMV.Text:='#39#1048#1079': '#39'+<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."FROMRACKNA' +
        'ME">;'
      '  end;             '
      ' '
      
        ' if  (<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."FROMSTORAGETYPEID"><>'#39'1'#39') and (<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'.' +
        '"TOSTORAGETYPEID">='#39'1'#39') then //c '#1085#1077' '#1103#1095#1077#1080#1089#1090#1086#1075#1086' '#1085#1072' '#1103#1095#1077#1080#1089#1090#1099#1081
      '  begin            '
      '   TransportationDetailBarCode.Visible:=true;'
      '   TransportationRackfrxMV.Text:='#39#39';'
      '  end;             '
      ''
      
        ' if (<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."FROMSTORAGETYPEID">='#39'1'#39') and (<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."T' +
        'OSTORAGETYPEID">='#39'1'#39') then //'#1080#1079' '#1103#1095#1077#1081#1082#1080' '#1074' '#1103#1095#1077#1081#1082#1091
      '  begin'
      
        '   if (<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."FROMRACKNAME">='#39#39') or (<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."TORACK' +
        'NAME">='#39#39') then'
      '    begin                     '
      '     TransportationDetailBarCode.Visible:=true;'
      '     TransportationRackfrxMV.Text:='#39#39';         '
      '    end            '
      '   else'
      '    begin'
      '     TransportationDetailBarCode.Visible:=false;        '
      
        '     TransportationRackfrxMV.Text:='#39#1048#1079': '#39'+<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."FROMRACK' +
        'NAME">+#10#13+  '
      
        '                                    '#39#1042': '#39'+<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."TORACKNA' +
        'ME">;'
      '    end;                '
      '  end;'
      ''
      
        ' if (<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."FROMSTORAGETYPEID"><>'#39'1'#39') and (<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."' +
        'TOSTORAGETYPEID"><>'#39'1'#39') then '
      '  begin'
      '   TransportationDetailBarCode.Visible:=false;'
      '   TransportationRackfrxMV.Text:='#39#39';'
      '  end;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 256
    Top = 232
    Datasets = <
      item
        DataSet = TransportationfrxDBDataset
        DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      PrintIfEmpty = False
      object MasterData1: TfrxMasterData
        Height = 52.91342
        Top = 192.75603
        Width = 718.1107
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = TransportationfrxDBDataset
        DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
        RowCount = 0
        object TransportationRackfrxMV: TfrxMemoView
          Left = 544.25232
          Width = 173.85838
          Height = 52.91342
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 45.35436
          Height = 34.01577
          ShowHint = False
          DataField = 'DRINKID'
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."DRINKID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 45.35436
          Width = 45.35436
          Height = 34.01577
          ShowHint = False
          DataField = 'TODRINKKINDID'
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."TODRINKKINDID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 90.70872
          Width = 196.53556
          Height = 34.01577
          ShowHint = False
          DataField = 'PRINTMARK'
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          LineSpacing = 0.01
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."PRINTMARK"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 287.24428
          Width = 45.35436
          Height = 52.91342
          ShowHint = False
          DataField = 'BUYBOXNAME'
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."BUYBOXNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 332.59864
          Width = 41.57483
          Height = 52.91342
          ShowHint = False
          DataField = 'BUYBOXCOUNT'
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."BUYBOXCOUNT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 374.17347
          Width = 45.35436
          Height = 52.91342
          ShowHint = False
          DataField = 'SALEBOXNAME'
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."SALEBOXNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 419.52783
          Width = 41.57483
          Height = 52.91342
          ShowHint = False
          DataField = 'SALEBOXCOUNT'
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."SALEBOXCOUNT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 502.67749
          Width = 41.57483
          Height = 52.91342
          ShowHint = False
          DataField = 'COUNTUNIT'
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."COUNTUNIT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 461.10266
          Width = 41.57483
          Height = 26.45671
          ShowHint = False
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."WEIGHT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 90.70872
          Top = 34.01577
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          DataField = 'DATEFACTORY'
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          LineSpacing = 0.01
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."DATEFACTORY"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 34.01577
          Width = 90.70872
          Height = 18.89765
          ShowHint = False
          DataField = 'FROMRACKNAME'
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."FROMRACKNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object TransportationDetailBarCode: TfrxBarCodeView
          Left = 563.14997
          Top = 3.77952999999999
          Width = 134
          Height = 49.13389
          ShowHint = False
          BarType = bcCode128C
          Expression = '<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."TRANSDETAILBARCODE">'
          Rotation = 0
          Text = '000000000000000000'
          WideBarRatio = 2
          Zoom = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo45: TfrxMemoView
          Left = 461.10266
          Top = 26.45671
          Width = 41.57483
          Height = 26.45671
          ShowHint = False
          DataSet = TransportationfrxDBDataset
          DataSetName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."DALL"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 230.55133
        Top = 306.14193
        Width = 718.1107
        object Memo24: TfrxMemoView
          Width = 718.1107
          Height = 26.45671
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            
              #1056#152#1057#8218#1056#1109#1056#1110#1056#1109': [SUM(<'#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."COUNTUNIT">,MasterData' +
              '1)] '#1056#181#1056#1169#1056#1105#1056#1029#1056#1105#1057#8224' [SUM(<'#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."SALEBOXCOUNT">,Ma' +
              'sterData1)] '#1057#1107#1056#1111#1056#176#1056#1108#1056#1109#1056#1030#1056#1109#1056#1108'('#1056#1108#1056#1105')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 26.45671
          Width = 718.1107
          Height = 60.47248
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          LineSpacing = 15
          Memo.UTF8 = (
            
              '1. '#1056#1113#1056#187#1056#176#1056#1169#1056#1109#1056#1030#1057#8240#1056#1105#1056#1108' '#1057#1027' '#1057#1027#1056#1108#1056#187#1056#176#1056#1169#1056#176'___________________'#1057#1027#1056#1169#1056#176#1056#187 +
              '__________________'#1056#181#1056#1169#1056#1105#1056#1029#1056#1105#1057#8224'___________________/______________' +
              '____/'
            
              '2. '#1056#1113#1056#187#1056#176#1056#1169#1056#1109#1056#1030#1057#8240#1056#1105#1056#1108' '#1057#1027' '#1057#1027#1056#1108#1056#187#1056#176#1056#1169#1056#176'_________________'#1056#1111#1057#1026#1056#1105#1056#1029#1057#1039 +
              #1056#187'__________________'#1056#181#1056#1169#1056#1105#1056#1029#1056#1105#1057#8224'___________________/____________' +
              '______/')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 139.84261
          Top = 41.57483
          Width = 75.5906
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1109#1057#8218#1056#1110#1057#1026#1057#1107#1056#182#1056#176#1056#181#1056#1112#1057#8249#1056#8470' '#1057#1027#1056#1108#1056#187#1056#176#1056#1169)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 291.02381
          Top = 41.57483
          Width = 75.5906
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 449.76407
          Top = 41.57483
          Width = 94.48825
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034' '#1056#1108#1056#187#1056#176#1056#1169#1056#1109#1056#1030#1057#8240#1056#1105#1056#1108#1056#176)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 582.04762
          Top = 41.57483
          Width = 94.48825
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#176#1056#1112#1056#1105#1056#187#1056#1105#1057#1039' '#1056#152'.'#1056#1115'.')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 139.84261
          Top = 69.9212598425197
          Width = 75.5906
          Height = 11.33858268
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1056#1108#1056#187#1056#176#1056#1169' '#1056#1111#1056#1109#1057#1027#1057#8218#1057#1107#1056#1111#1056#187#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 291.02381
          Top = 69.9212598425197
          Width = 75.5906
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 449.76407
          Top = 69.9212598425197
          Width = 94.48825
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034' '#1056#1108#1056#187#1056#176#1056#1169#1056#1109#1056#1030#1057#8240#1056#1105#1056#1108#1056#176)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 582.04762
          Top = 69.9212598425197
          Width = 94.48825
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#176#1056#1112#1056#1105#1056#187#1056#1105#1057#1039' '#1056#152'.'#1056#1115'.')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 86.92919
          Width = 362.83488
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1110#1057#1026#1057#1107#1056#183#1056#1105#1056#187)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 362.83488
          Top = 86.92919
          Width = 355.27582
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1056#1029#1057#1039#1056#187)
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Top = 105.82684
          Width = 188.9765
          Height = 60.47248
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 166.29932
          Width = 188.9765
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 188.9765
          Top = 105.82684
          Width = 173.85838
          Height = 60.47248
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 188.9765
          Top = 166.29932
          Width = 173.85838
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 362.83488
          Top = 105.82684
          Width = 181.41744
          Height = 60.47248
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 362.83488
          Top = 166.29932
          Width = 181.41744
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 544.25232
          Top = 105.82684
          Width = 173.85838
          Height = 60.47248
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 544.25232
          Top = 166.29932
          Width = 173.85838
          Height = 64.25201
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 113.3859
        Top = 18.89765
        Width = 718.1107
        object Memo3: TfrxMemoView
          Left = 551.81138
          Width = 166.29932
          Height = 15.11812
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026#1056#176#1056#1029#1056#1105#1057#8224#1056#176' [Page] '#1056#1105#1056#183' [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 71.81107
          Width = 45.35436
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 45.35436
          Top = 71.81107
          Width = 45.35436
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1111#1056#176#1057#1026#1057#8218#1056#1105#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 90.70872
          Top = 71.81107
          Width = 196.53556
          Height = 22.67718
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 90.70872
          Top = 94.48825
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1105#1056#183#1056#1030#1056#1109#1056#1169#1057#1027#1057#8218#1056#1030#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 287.24428
          Top = 71.81107
          Width = 45.35436
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#176#1057#1026#1056#176' '#1056#1111#1057#1026#1056#1105#1057#8230'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 332.59864
          Top = 71.81107
          Width = 41.57483
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1031#1057#8240'-'#1056#1109#1056#1030' '#1056#1030' '#1057#8218#1056#176#1057#1026#1056#181' '#1056#1111#1057#1026#1056#1105#1057#8230'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 374.17347
          Top = 71.81107
          Width = 45.35436
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#176#1057#1026#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 419.52783
          Top = 71.81107
          Width = 41.57483
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1031#1057#8240'-'#1056#1109#1056#1030' '#1056#1030' '#1057#8218#1056#176#1057#1026#1056#181' '#1056#1111#1057#1026#1056#1109#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 502.67749
          Top = 71.81107
          Width = 41.57483
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'. '#1057#8364#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 461.10266
          Top = 71.81107
          Width = 41.57480559
          Height = 22.67718
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'. '#1056#1108#1056#1110'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 544.25232
          Top = 71.81107
          Width = 173.85838
          Height = 41.57483
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1025#1057#8218#1057#1026#1056#1105#1057#8230'-'#1056#1108#1056#1109#1056#1169' '#1056#1111#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object BuyBarCode: TfrxBarCodeView
          Left = 11.33859
          Top = 15.11812
          Width = 134
          Height = 49.13389
          ShowHint = False
          BarType = bcCode128C
          Expression = '<'#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."TRANSBARCODE">'
          Rotation = 0
          Text = '000000000000000000'
          WideBarRatio = 2
          Zoom = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo14: TfrxMemoView
          Left = 158.74026
          Top = 15.11812
          Width = 559.37044
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1116#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#176#1057#1039' '#1056#1029#1056#176' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181' '#1074#8222#8211'['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057 +
              #8240#1056#181#1056#1029#1056#1105#1056#181'."TRANSPORTATIONID"] '#1056#1109#1057#8218' ['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."PRES' +
              'ENT"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 158.74026
          Top = 45.35436
          Width = 559.37044
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              #1056#1038' ['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."FROMSTORAGENAME"] '#1056#1029#1056#176' ['#1056#1119#1056#181#1057#1026#1056#181#1056#1112#1056#181 +
              #1057#8240#1056#181#1056#1029#1056#1105#1056#181'."TOSTORAGENAME"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 461.10266
          Top = 94.48825
          Width = 41.57483
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1056#187#1056#187)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object TransportationPrintCDS: TClientDataSet
    Tag = -1
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TransportationId'
        ParamType = ptInput
      end>
    ProviderName = 'TransportationPrintDSP'
    Left = 216
    Top = 233
    object TransportationPrintCDSTRANSPORTATIONID: TIntegerField
      FieldName = 'TRANSPORTATIONID'
      Origin = 'DRINKTRANSPORTATION.ID'
    end
    object TransportationPrintCDSPRESENT: TDateTimeField
      FieldName = 'PRESENT'
    end
    object TransportationPrintCDSFROMSTORAGENAME: TStringField
      FieldName = 'FROMSTORAGENAME'
      Size = 32
    end
    object TransportationPrintCDSTOSTORAGENAME: TStringField
      FieldName = 'TOSTORAGENAME'
      Size = 32
    end
    object TransportationPrintCDSDRINKTRANSPORTATIONID: TIntegerField
      FieldName = 'DRINKTRANSPORTATIONID'
    end
    object TransportationPrintCDSDRINKID: TIntegerField
      FieldName = 'DRINKID'
    end
    object TransportationPrintCDSPRINTMARK: TStringField
      DisplayWidth = 256
      FieldName = 'PRINTMARK'
      Size = 256
    end
    object TransportationPrintCDSFROMDRINKKINDID: TIntegerField
      FieldName = 'FROMDRINKKINDID'
    end
    object TransportationPrintCDSTODRINKKINDID: TIntegerField
      FieldName = 'TODRINKKINDID'
    end
    object TransportationPrintCDSCOUNTUNIT: TFloatField
      FieldName = 'COUNTUNIT'
    end
    object TransportationPrintCDSBUYBOXNAME: TStringField
      FieldName = 'BUYBOXNAME'
      Size = 32
    end
    object TransportationPrintCDSBUYBOXCOUNT: TFloatField
      FieldName = 'BUYBOXCOUNT'
    end
    object TransportationPrintCDSSALEBOXNAME: TStringField
      FieldName = 'SALEBOXNAME'
      Size = 32
    end
    object TransportationPrintCDSSALEBOXCOUNT: TFloatField
      FieldName = 'SALEBOXCOUNT'
    end
    object TransportationPrintCDSDATEFACTORY: TStringField
      FieldName = 'DATEFACTORY'
      Size = 128
    end
    object TransportationPrintCDSTRANSBARCODE: TStringField
      FieldName = 'TRANSBARCODE'
      Size = 32
    end
    object TransportationPrintCDSTRANSDETAILBARCODE: TStringField
      FieldName = 'TRANSDETAILBARCODE'
      Size = 32
    end
    object TransportationPrintCDSFROMRACKNAME: TStringField
      FieldName = 'FROMRACKNAME'
      Size = 32
    end
    object TransportationPrintCDSTORACKNAME: TStringField
      FieldName = 'TORACKNAME'
      Size = 32
    end
    object TransportationPrintCDSFROMSTORAGETYPEID: TIntegerField
      FieldName = 'FROMSTORAGETYPEID'
    end
    object TransportationPrintCDSTOSTORAGETYPEID: TIntegerField
      FieldName = 'TOSTORAGETYPEID'
    end
    object TransportationPrintCDSWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object TransportationPrintCDSDALL: TFloatField
      FieldName = 'DALL'
    end
  end
  object TransportationfrxDBDataset: TfrxDBDataset
    UserName = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
    CloseDataSource = False
    DataSet = TransportationPrintCDS
    BCDToCurrency = False
    Left = 296
    Top = 232
  end
  object InsideTransportationfrxDBD: TfrxDBDataset
    UserName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
    CloseDataSource = False
    FieldAliases.Strings = (
      'OKUD=OKUD'
      'OKPO=OKPO'
      'ORGANIZATIONNAME=ORGANIZATIONNAME'
      'OPERATIONNUMBER=OPERATIONNUMBER'
      'OPERATIONDATE=OPERATIONDATE'
      'FROMTERMINALNAME=FROMTERMINALNAME'
      'TOTERMINALNAME=TOTERMINALNAME'
      'DRINKID=DRINKID'
      'PRINTMARK=PRINTMARK'
      'UNITNAME=UNITNAME'
      'UNITCODE=UNITCODE'
      'BUYBOXCAPACITY=BUYBOXCAPACITY'
      'COUNTBOX=COUNTBOX'
      'COUNTUNIT=COUNTUNIT'
      'FROMSTORAGENAME=FROMSTORAGENAME'
      'TOSTORAGENAME=TOSTORAGENAME'
      'RETAILPRICE=RETAILPRICE'
      'RETAILSUMPRICE=RETAILSUMPRICE'
      'RETAILSUMPRICETEXT=RETAILSUMPRICETEXT'
      'FLAGPRINTLOADBAND=FLAGPRINTLOADBAND')
    DataSet = InsideTransportationCDS
    BCDToCurrency = False
    Left = 80
    Top = 160
  end
  object InsideTransportationfrxReport: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 41512.4528151852
    ReportOptions.Name = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1085#1072' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
    ReportOptions.LastChange = 41512.4528151852
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<'#1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077'."FLAGPRINTLOADBAND"> = 1) then'
      '   ReportSummary1.Child.Visible := True'
      '  else'
      
        '   ReportSummary1.Child.Visible := False;                       ' +
        ' '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 112
    Top = 160
    Datasets = <
      item
        DataSet = InsideTransportationfrxDBD
        DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object WaybillPage: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297
      PaperHeight = 210
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      object ReportTitle1: TfrxReportTitle
        Height = 226.7718
        Top = 18.89765
        Width = 1046.92981
        object Memo12: TfrxMemoView
          Left = 362.83488
          Top = 79.37013
          Width = 94.48825
          Height = 7.55906
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1109#1057#1026#1056#1110#1056#176#1056#1029#1056#1105#1056#183#1056#176#1057#8224#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 755.906
          Width = 291.02381
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1032#1056#1029#1056#1105#1057#8222#1056#1105#1057#8224#1056#1105#1057#1026#1056#1109#1056#1030#1056#176#1056#1029#1056#1029#1056#176#1057#1039' '#1057#8222#1056#1109#1057#1026#1056#1112#1056#176' '#1074#8222#8211' '#1056#1118#1056#1115#1056#160#1056#8220'-13'
            
              #1056#1032#1057#8218#1056#1030#1056#181#1057#1026#1056#182#1056#1169#1056#181#1056#1029#1056#1029#1056#176#1057#1039' '#1056#1111#1056#1109#1057#1027#1057#8218#1056#176#1056#1029#1056#1109#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1056#181#1056#1112' '#1056#8220#1056#1109#1057#1027#1056#1108#1056#1109 +
              #1056#1112#1057#1027#1057#8218#1056#176#1057#8218#1056#176' '#1056#160#1056#1109#1057#1027#1057#1027#1056#1105#1056#1105' '#1056#1109#1057#8218' 25.12.98 '#1074#8222#8211'132')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 944.8825
          Top = 22.67718
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 944.8825
          Top = 79.37013
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 944.8825
          Top = 98.26778
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 944.8825
          Top = 41.57483
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataSet = InsideTransportationfrxDBD
          DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."OKUD"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 944.8825
          Top = 60.47248
          Width = 102.04731
          Height = 18.89765
          ShowHint = False
          DataField = 'OKPO'
          DataSet = InsideTransportationfrxDBD
          DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."OKPO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 755.906
          Top = 41.57483
          Width = 181.41744
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#164#1056#1109#1057#1026#1056#1112#1056#176' '#1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1032#1056#8221)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 755.906
          Top = 60.47248
          Width = 181.41744
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1119#1056#1115)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 755.906
          Top = 79.37013
          Width = 181.41744
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8217#1056#1105#1056#1169' '#1056#1169#1056#181#1057#1039#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105' '#1056#1111#1056#1109' '#1056#1115#1056#1113#1056#8221#1056#1119)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 755.906
          Top = 98.26778
          Width = 181.41744
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8217#1056#1105#1056#1169' '#1056#1109#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Width = 755.906
          Height = 79.37013
          ShowHint = False
          DataField = 'ORGANIZATIONNAME'
          DataSet = InsideTransportationfrxDBD
          DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."ORGANIZATIONNAME"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo13: TfrxMemoView
          Left = 264.5671
          Top = 98.26778
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1109#1056#1112#1056#181#1057#1026' '#1056#1169#1056#1109#1056#1108#1057#1107#1056#1112#1056#181#1056#1029#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 377.953
          Top = 98.26778
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1057#1027#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 264.5671
          Top = 117.16543
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          DataField = 'OPERATIONNUMBER'
          DataSet = InsideTransportationfrxDBD
          DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."OPERATIONNUMBER"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 377.953
          Top = 117.16543
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          DataSet = InsideTransportationfrxDBD
          DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."OPERATIONDATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 151.1812
          Top = 117.16543
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1106#1056#1113#1056#8250#1056#1106#1056#8221#1056#1116#1056#1106#1056#1031)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 151.1812
          Top = 136.06308
          Width = 340.1577
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1029#1056#176' '#1056#1030#1056#1029#1057#1107#1057#8218#1057#1026#1056#181#1056#1029#1056#1029#1056#181#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181', '#1056#1111#1056#181#1057#1026#1056#181#1056#1169#1056#176#1057#8225 +
              #1057#1107' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#1109#1056#1030', '#1057#8218#1056#176#1057#1026#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 170.07885
          Width = 340.1577
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1111#1057#1026#1056#176#1056#1030#1056#1105#1057#8218#1056#181#1056#187#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 340.1577
          Top = 170.07885
          Width = 340.1577
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#187#1057#1107#1057#8225#1056#176#1057#8218#1056#181#1056#187#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 680.3154
          Top = 170.07885
          Width = 302.3624
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1057#1026#1057#1026#1056#181#1057#1027#1056#1111#1056#1109#1056#1029#1056#1169#1056#1105#1057#1026#1057#1107#1057#1035#1057#8240#1056#1105#1056#8470' '#1057#1027#1057#8225#1056#181#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 982.6778
          Top = 170.07885
          Width = 64.25201
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 188.9765
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#8218#1057#1026#1057#1107#1056#1108#1057#8218#1057#1107#1057#1026#1056#1029#1056#1109#1056#181' '#1056#1111#1056#1109#1056#1169#1057#1026#1056#176#1056#183#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 151.1812
          Top = 188.9765
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1056#1108#1056#187#1056#176#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 340.1577
          Top = 188.9765
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#8218#1057#1026#1057#1107#1056#1108#1057#8218#1057#1107#1057#1026#1056#1029#1056#1109#1056#181' '#1056#1111#1056#1109#1056#1169#1057#1026#1056#176#1056#183#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 491.3389
          Top = 188.9765
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1056#1108#1056#187#1056#176#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 680.3154
          Top = 188.9765
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#8225#1056#181#1057#8218', '#1057#1027#1057#1107#1056#177#1057#1027#1057#8225#1056#181#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 812.59895
          Top = 188.9765
          Width = 170.07885
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1169' '#1056#176#1056#1029#1056#176#1056#187#1056#1105#1057#8218#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1109#1056#1110#1056#1109' '#1057#1107#1057#8225#1056#181#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 982.6778
          Top = 188.9765
          Width = 64.25201
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Top = 207.87415
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."FROMTERMINALNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 151.1812
          Top = 207.87415
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."FROMSTORAGENAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 340.1577
          Top = 207.87415
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."TOTERMINALNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 491.3389
          Top = 207.87415
          Width = 188.9765
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."TOSTORAGENAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 680.3154
          Top = 207.87415
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 812.59895
          Top = 207.87415
          Width = 170.07885
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 982.6778
          Top = 207.87415
          Width = 64.25201
          Height = 18.89765
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 79.37013
        Top = 268.34663
        Width = 1046.92981
        object Memo37: TfrxMemoView
          Width = 1046.92981
          Height = 15.11812
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026#1056#176#1056#1029#1056#1105#1057#8224#1056#176' [Page]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Top = 11.33859
          Width = 377.953
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1109#1056#1030#1056#176#1057#1026', '#1057#8218#1056#176#1057#1026#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 30.23624
          Width = 340.1577
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181', '#1057#8230#1056#176#1057#1026#1056#176#1056#1108#1057#8218#1056#181#1057#1026#1056#1105#1057#1027#1057#8218#1056#1105#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Top = 68.03154
          Width = 340.1577
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 377.953
          Top = 11.33859
          Width = 37.7953
          Height = 56.69295
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1109#1057#1026#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 415.7483
          Top = 11.33859
          Width = 113.3859
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169#1056#1105#1056#1029#1056#1105#1057#8224#1056#176' '#1056#1105#1056#183#1056#1112#1056#181#1057#1026#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 529.1342
          Top = 11.33859
          Width = 321.26005
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1111#1057#1107#1057#8240#1056#181#1056#1029#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 850.39425
          Top = 11.33859
          Width = 196.53556
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#1109' '#1057#1107#1057#8225#1056#181#1057#8218#1056#1029#1057#8249#1056#1112' '#1057#8224#1056#181#1056#1029#1056#176#1056#1112)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 340.1577
          Top = 30.23624
          Width = 37.7953
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 340.1577
          Top = 68.03154
          Width = 37.7953
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 415.7483
          Top = 30.23624
          Width = 56.69295
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#176#1056#1105#1056#1112#1056#181'-'
            #1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 472.44125
          Top = 30.23624
          Width = 56.69295
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1169' '#1056#1111#1056#1109
            #1056#1115#1056#1113#1056#8226#1056#8482)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 529.1342
          Top = 30.23624
          Width = 151.1812
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 680.3154
          Top = 30.23624
          Width = 170.07885
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1114#1056#176#1057#1027#1057#1027#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 850.39425
          Top = 30.23624
          Width = 90.70872
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8224#1056#181#1056#1029#1056#176', '#1057#1026#1057#1107#1056#177'. '#1056#1108#1056#1109#1056#1111'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 941.10297
          Top = 30.23624
          Width = 105.82684
          Height = 37.7953
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#1107#1056#1112#1056#1112#1056#176', '#1057#1026#1057#1107#1056#177'. '#1056#1108#1056#1109#1056#1111'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 529.1342
          Top = 49.13389
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1030' '#1056#1109#1056#1169#1056#1029#1056#1109#1056#1112' '#1056#1112#1056#181#1057#1027#1057#8218#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 604.7248
          Top = 49.13389
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8364#1057#8218#1057#1107#1056#1108'('#1056#1112#1056#181#1057#1027#1057#8218')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 680.3154
          Top = 49.13389
          Width = 75.5906
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#177#1057#1026#1057#1107#1057#8218#1057#8218#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 755.906
          Top = 49.13389
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#8218#1057#8218#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 377.953
          Top = 68.03154
          Width = 37.7953
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 415.7483
          Top = 68.03154
          Width = 56.69295
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 472.44125
          Top = 68.03154
          Width = 56.69295
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 529.1342
          Top = 68.03154
          Width = 75.5906
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 604.7248
          Top = 68.03154
          Width = 75.5906
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 680.3154
          Top = 68.03154
          Width = 75.5906
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 755.906
          Top = 68.03154
          Width = 94.48825
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 850.39425
          Top = 68.03154
          Width = 90.70872
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 941.10297
          Top = 68.03154
          Width = 105.82684
          Height = 11.33859
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.89765
        Top = 408.18924
        Width = 1046.92981
        DataSet = InsideTransportationfrxDBD
        DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
        RowCount = 0
        object Memo38: TfrxMemoView
          Width = 340.1577
          Height = 18.89765
          ShowHint = False
          DataField = 'PRINTMARK'
          DataSet = InsideTransportationfrxDBD
          DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."PRINTMARK"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 340.1577
          Width = 37.7953
          Height = 18.89765
          ShowHint = False
          DataField = 'DRINKID'
          DataSet = InsideTransportationfrxDBD
          DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."DRINKID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 377.953
          Width = 37.7953
          Height = 18.8976378
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 415.7483
          Width = 56.69295
          Height = 18.8976378
          ShowHint = False
          DataField = 'UNITNAME'
          DataSet = InsideTransportationfrxDBD
          DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."UNITNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 472.44125
          Width = 56.69295
          Height = 18.8976378
          ShowHint = False
          DataField = 'UNITCODE'
          DataSet = InsideTransportationfrxDBD
          DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."UNITCODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 529.1342
          Width = 75.5906
          Height = 18.8976378
          ShowHint = False
          DataField = 'BUYBOXCAPACITY'
          DataSet = InsideTransportationfrxDBD
          DataSetName = #1056#1086#1079#1085#1080#1095#1085#1086#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."BUYBOXCAPACITY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 604.7248
          Width = 75.5906
          Height = 18.8976378
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."COUNTUNIT"](['#1056#160#1056#1109#1056#183#1056 +
              #1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."COUNTBOX"])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 680.3154
          Width = 75.5906
          Height = 18.8976378
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 755.906
          Width = 94.48825
          Height = 18.8976378
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 850.39425
          Width = 90.70872
          Height = 18.8976378
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."RETAILPRICE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 941.10297
          Width = 105.82684
          Height = 18.8976378
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."RETAILSUMPRICE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 18.89765
        Top = 449.76407
        Width = 1046.92981
        object Memo77: TfrxMemoView
          Left = 604.7248
          Width = 75.5906
          Height = 18.8976378
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[SUM(<'#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."COUNTUNIT">,Mas' +
              'terData1)]([SUM(<'#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."COUN' +
              'TBOX">,MasterData1)])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 680.3154
          Width = 75.5906
          Height = 18.8976378
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 755.906
          Width = 94.48825
          Height = 18.8976378
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 850.39425
          Width = 90.70872
          Height = 18.8976378
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1168)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 941.10297
          Width = 105.82684
          Height = 18.8976378
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<'#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."RETAILSUMPRICE"' +
              '>,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 510.23655
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 56.69295
        Top = 529.1342
        Width = 1046.92981
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        Child = InsideTransportationfrxReport.Child1
        object Memo83: TfrxMemoView
          Left = 7.55906
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1111#1057#1107#1057#1027#1057#8218#1056#1105#1056#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 7.55906
          Top = 26.45671
          Width = 94.48825
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1029#1056#176' '#1057#1027#1057#1107#1056#1112#1056#1112#1057#1107)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 113.3859
          Width = 226.7718
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 113.3859
          Top = 26.45671
          Width = 933.54391
          Height = 18.89765
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '['#1056#160#1056#1109#1056#183#1056#1029#1056#1105#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1111#1056#181#1057#1026#1056#181#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181'."RETAILSUMPRICETEXT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 359.05535
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 510.23655
          Width = 226.7718
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 755.906
          Width = 291.02381
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            
              #1057#8218#1056#1109#1056#1030#1056#176#1057#1026' '#1056#1105' '#1057#8218#1056#176#1057#1026#1057#1107' '#1056#1111#1056#1109' '#1056#1108#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1057#1107' '#1056#1105' '#1056#1029#1056#176#1056#1169#1056#187#1056#181#1056#182 +
              #1056#176#1057#8240#1056#181#1056#1110#1056#1109' '#1056#1108#1056#176#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#176)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo94: TfrxMemoView
          Left = 177.63791
          Top = 18.89765
          Width = 94.48825
          Height = 7.55906
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 377.953
          Top = 18.89765
          Width = 94.48825
          Height = 7.55906
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 578.26809
          Top = 18.89765
          Width = 94.48825
          Height = 7.55906
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1026#1056#176#1057#1027#1057#8364#1056#1105#1057#8222#1057#1026#1056#1109#1056#1030#1056#1108#1056#176' '#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 298.58287
          Top = 45.35436
          Width = 94.48825
          Height = 7.55906
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1057#1026#1056#1109#1056#1111#1056#1105#1057#1027#1057#1034#1057#1035)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child1: TfrxChild
        Height = 30.23624
        Top = 608.50433
        Width = 1046.92981
        Child = InsideTransportationfrxReport.Child2
        PrintChildIfInvisible = True
        object Memo101: TfrxMemoView
          Left = 7.55906
          Top = 3.77953000000002
          Width = 117.16543
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1056#1029#1057#1039#1056#187' '#1056#1030#1056#1109#1056#1169#1056#1105#1057#8218#1056#181#1056#187#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 139.84261
          Top = 3.77953000000002
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 279.68522
          Top = 3.77953000000002
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 430.86642
          Top = 3.77953000000002
          Width = 56.69295
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1106#1056#8217#1056#1118)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 495.11843
          Top = 3.77953000000002
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 650.07916
          Top = 3.77953000000002
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1111#1056#187#1056#1109#1056#1112#1056#177#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 733.22882
          Top = 3.77953000000002
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child2: TfrxChild
        Height = 37.7953
        Top = 661.41775
        Width = 1046.92981
        object Memo97: TfrxMemoView
          Left = 170.07885
          Top = 22.67718
          Width = 94.48825
          Height = 7.55906
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 370.39394
          Top = 22.67718
          Width = 94.48825
          Height = 7.55906
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 570.70903
          Top = 22.67718
          Width = 94.48825
          Height = 7.55906
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1026#1056#176#1057#1027#1057#8364#1056#1105#1057#8222#1057#1026#1056#1109#1056#1030#1056#1108#1056#176' '#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 7.55906
          Top = 3.77953000000002
          Width = 71.81107
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#187#1057#1107#1057#8225#1056#1105#1056#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 105.82684
          Top = 3.77953000000002
          Width = 226.7718
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 351.49629
          Top = 3.77953000000002
          Width = 132.28355
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 502.67749
          Top = 3.77953000000002
          Width = 226.7718
          Height = 18.89765
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object InsideTransportationCDS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'OPERATIONID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OPERATIONTYPEID'
        ParamType = ptInput
      end>
    Left = 48
    Top = 160
    object InsideTransportationCDSOKUD: TStringField
      FieldName = 'OKUD'
      Size = 16
    end
    object InsideTransportationCDSOKPO: TStringField
      FieldName = 'OKPO'
      Size = 16
    end
    object InsideTransportationCDSORGANIZATIONNAME: TStringField
      FieldName = 'ORGANIZATIONNAME'
      Size = 1024
    end
    object InsideTransportationCDSOPERATIONNUMBER: TStringField
      FieldName = 'OPERATIONNUMBER'
      Size = 16
    end
    object InsideTransportationCDSOPERATIONDATE: TDateTimeField
      FieldName = 'OPERATIONDATE'
    end
    object InsideTransportationCDSFROMTERMINALNAME: TStringField
      FieldName = 'FROMTERMINALNAME'
      Size = 128
    end
    object InsideTransportationCDSTOTERMINALNAME: TStringField
      FieldName = 'TOTERMINALNAME'
      Size = 128
    end
    object InsideTransportationCDSDRINKID: TIntegerField
      FieldName = 'DRINKID'
    end
    object InsideTransportationCDSPRINTMARK: TStringField
      FieldName = 'PRINTMARK'
      Size = 128
    end
    object InsideTransportationCDSUNITNAME: TStringField
      FieldName = 'UNITNAME'
      Size = 16
    end
    object InsideTransportationCDSUNITCODE: TStringField
      FieldName = 'UNITCODE'
      Size = 16
    end
    object InsideTransportationCDSBUYBOXCAPACITY: TIntegerField
      FieldName = 'BUYBOXCAPACITY'
    end
    object InsideTransportationCDSCOUNTBOX: TFloatField
      FieldName = 'COUNTBOX'
    end
    object InsideTransportationCDSCOUNTUNIT: TFloatField
      FieldName = 'COUNTUNIT'
    end
    object InsideTransportationCDSFROMSTORAGENAME: TStringField
      FieldName = 'FROMSTORAGENAME'
      Size = 64
    end
    object InsideTransportationCDSTOSTORAGENAME: TStringField
      FieldName = 'TOSTORAGENAME'
      Size = 64
    end
    object InsideTransportationCDSRETAILPRICE: TFloatField
      FieldName = 'RETAILPRICE'
    end
    object InsideTransportationCDSRETAILSUMPRICE: TFloatField
      FieldName = 'RETAILSUMPRICE'
    end
    object InsideTransportationCDSRETAILSUMPRICETEXT: TStringField
      FieldName = 'RETAILSUMPRICETEXT'
      Size = 128
    end
    object InsideTransportationCDSFLAGPRINTLOADBAND: TSmallintField
      FieldName = 'FLAGPRINTLOADBAND'
    end
  end
  object EgaisIL: TImageList
    Left = 24
    Top = 240
  end
  object CollectedStatusIL: TImageList
    Left = 168
    Top = 112
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000080496B2D6B2D6B2D6B2D6B2D
      6B2D6B2D6B2D6B2D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000080496B2D6B2D6B2D6B2D6B2D
      6B2D6B2D6B2D00000000000000000000000000008049295EE859E755A751864D
      65494445444523416B2D000000000000000000000000000000000000D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000008049075E2A62085AC755A651
      854D444523416B2D00000000000000000000000080494A62295E085AE755C751
      864D65494445234123416B2D0000000000000000000000000000D3001A01D300
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000008049285E6B662A62085AC755
      A651854D234123416B2D0000000000000000000080496B664A62295EE859E755
      A751864D65492341234144456B2D00000000000000000000D3001A017F2E1A01
      D300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000804948628C6A6B662A62095E
      E855A6512341E85923416B2D000000000000000080498C6A6B664A62295E085A
      E859C751864D234143456449854D6B2D000000000000D3001A017F2E1F537F2E
      1901DA2500000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000804948628C6A8C6A6B664A62
      095EE8552341E859295E23416B2D00000000000080498C6A8C6A6B664A62295E
      085AE859C75523416449854DA651C7556B2D0000D3001A017F2E1F539A191F53
      7F2ED30000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000804948628C6A8C6A8C6A6B66
      4A62095E2341C755E755A6516B2D00000000000080498C6A8C6A8C6A6B664A62
      295E085AE85923416549A651C755E8556B2D00009A197F2E1F539A1900009A19
      1F531F16D3000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000008049A551C755C755C755C755
      A751E8552341A651453944456B2D00000000000080498C6A8C6A8C6A8C6A6B66
      4A62295E085A2341854DC755E855085A6B2D000000009A197F2EDA2500000000
      9A191F531F16D300000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022416B2D6B2D6B2D6B2D6B2D6B2D
      6B2D6B2D2341453D2439052D6B2D00000000000080498C6A8C6A8C6A8C6A8C6A
      6B664A62295E2341A651E855085A095E6B2D000000000000DA25000000000000
      00009A191F531F16D30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002241146F997B997B77773573F26E
      AF6A6C626B2D2631A6516545262D00000000000080498C6A8C6A8C6A8C6A8C6A
      8C6A6B664A662341C651085A095E2A626B2D0000000000000000000000000000
      000000009A191F531F16D3000000000000000000000000000000000000000000
      00000000000000000000000000000000000080492241146F787778773673136F
      D16EAE664C5E6B2D2A5E085A65450000000000008049E034E034E034E034E034
      E034E034E034E034C651095E29622A626B2D0000000000000000000000000000
      0000000000009A191F531F16D300000000000000000000000000000000000000
      00000000000000000000000000000000000000008049E03469314A290821A849
      E859C755A64DE034C7512A5E085A6B2D000000004445997BF26AB0662C5A4445
      997B146FD1666E62E034085A2A622A626B2D0000000000000000000000000000
      00000000000000009A191F531F16D30000000000000000000000000000000000
      000000000000000000000000000000000000000000008049E0346A316B2DC849
      E859E859C755A64DE034C751295E085A6B2D000000004445997B3573D26A4C5E
      4445997B5677F36EB066E034085A2A626B2D0000000000000000000000000000
      000000000000000000009A191F539A1900000000000000000000000000000000
      0000000000000000000000000000000000000000000000008049E0346A35C94D
      E859E859E859C755A64DE034C7556B2D00000000000000004445997B3573D26A
      2C5E4445997B5677F36E8F62E034295E6B2D0000000000000000000000000000
      0000000000000000000000009A19000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008049E034E034
      E034E034E034E034E034E034E0340000000000000000000000004445997B3573
      D26A2C5E4445997B5777F36EB066E0346B2D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000004445E034
      E034E034E034E034E034E034E034E034E0340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF801FFFFF0000803F800FFBFF0000
      801F8007F1FF0000800F8003E0FF000080078001C07F000080038000807F0000
      80038000843F000080038000C61F000000038000EF0F000000038000FF870000
      00038000FFC3000080018000FFE10000C000C000FFF10000E001E000FFFB0000
      F003F000FFFF0000FFFFF800FFFF000000000000000000000000000000000000
      000000000000}
  end
end
