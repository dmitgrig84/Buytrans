object fEgaisBuy: TfEgaisBuy
  Left = 416
  Top = 171
  Width = 1024
  Height = 699
  Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1080#1079' '#1045#1043#1040#1048#1057
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
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 35
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel20: TPanel
      Left = 464
      Top = 2
      Width = 550
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object RxLabel4: TRxLabel
        Left = 381
        Top = 10
        Width = 5
        Height = 13
        Caption = '-'
      end
      object BegincxDE: TcxDateEdit
        Left = 258
        Top = 4
        ParentFont = False
        Properties.ButtonGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000630B0000630B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFABACAC69473169473169473169473169473169473169
          4731764529A95821BF5E19BE5812B7520C9A461273472B694731ABACACF9F6F4
          B7A293B7A293B7A293B7A293B7A293B3876CCB7434D1854CC79877C0997FD59C
          72C05E18B2511472472BABACACFCFBF9F9F6F4F6F2EFF3EDE9F0E8E4E7D8D0D1
          824DDE9E6AFEE5BDFFD89EFFD294FFDBADEDCFB2C260199A4813ABACACFFFFFF
          808080808080808080808080937362DA8C53FCDEB4FFE0ABFEDBA3F4CD96FFD1
          94FFDFB6D29261BA550FABACACFFFFFF808080FFFFFF808080FFFFFFA67D65B6
          7B54E6DFCCFFECC04E4E4D4E4E4D4E4E4D4E4E4DA67359C6651EABACACFFFFFF
          8080808080808080808080809D7763DDA175FEFDF2FFFAE5F5DFB14E4E4DAF99
          75FEE1B3DAA478C76924ABACACFFFFFF808080FFFFFF808080FFFFFF86746CDF
          9F6EECDAC8FFFFF3FFFAE2FEEFC64E4E4DB5A086D89158AD5E26ABACACFFFFFF
          808080808080808080808080807F7FA9795FE2B28DE7CFBDEAE2D7E4DAC6EEC5
          9BD69867D9894B76462AABACACFFFFFFFFFFFFFFFFFF808080FFFFFF808080F9
          F3F1A87C65E6C3A8D8AC8BD49A6CE9A66CDA915BB3876D694731ABACACFFFFFF
          FFFFFFFFFFFF808080808080808080808080807F7F86736B9D7A67A67F669374
          63E8DAD2B7A293694731ABACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFDFCFBF9F7F7F4F1F4EFECF1EBE7B7A293694731CD7621CD7621
          CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD76
          21CD7621CD7621694731CD7621FBC39FFBC39FFBC39FFBC39FFBBE98FAB38AF8
          A77BF79C6DF6935FF68953F57F46F47539F46B2DF46B2D694731CD7621FBC39F
          FBC39FFBC39FFBC39FFBC39FFBBE98FAB38AF8A77BF79C6DF6935FF68E59F584
          4CF57A40F47033694731CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD
          7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621}
        Properties.OnChange = BegincxDEPropertiesChange
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 119
      end
      object EndcxDE: TcxDateEdit
        Left = 390
        Top = 4
        ParentFont = False
        Properties.ButtonGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000630B0000630B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFABACAC69473169473169473169473169473169473169
          4731764529A95821BF5E19BE5812B7520C9A461273472B694731ABACACF9F6F4
          B7A293B7A293B7A293B7A293B7A293B3876CCB7434D1854CC79877C0997FD59C
          72C05E18B2511472472BABACACFCFBF9F9F6F4F6F2EFF3EDE9F0E8E4E7D8D0D1
          824DDE9E6AFEE5BDFFD89EFFD294FFDBADEDCFB2C260199A4813ABACACFFFFFF
          808080808080808080808080937362DA8C53FCDEB4FFE0ABFEDBA3F4CD96FFD1
          94FFDFB6D29261BA550FABACACFFFFFF808080FFFFFF808080FFFFFFA67D65B6
          7B54E6DFCCFFECC04E4E4D4E4E4D4E4E4D4E4E4DA67359C6651EABACACFFFFFF
          8080808080808080808080809D7763DDA175FEFDF2FFFAE5F5DFB14E4E4DAF99
          75FEE1B3DAA478C76924ABACACFFFFFF808080FFFFFF808080FFFFFF86746CDF
          9F6EECDAC8FFFFF3FFFAE2FEEFC64E4E4DB5A086D89158AD5E26ABACACFFFFFF
          808080808080808080808080807F7FA9795FE2B28DE7CFBDEAE2D7E4DAC6EEC5
          9BD69867D9894B76462AABACACFFFFFFFFFFFFFFFFFF808080FFFFFF808080F9
          F3F1A87C65E6C3A8D8AC8BD49A6CE9A66CDA915BB3876D694731ABACACFFFFFF
          FFFFFFFFFFFF808080808080808080808080807F7F86736B9D7A67A67F669374
          63E8DAD2B7A293694731ABACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFEFDFCFBF9F7F7F4F1F4EFECF1EBE7B7A293694731CD7621CD7621
          CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD76
          21CD7621CD7621694731CD7621FBC39FFBC39FFBC39FFBC39FFBBE98FAB38AF8
          A77BF79C6DF6935FF68953F57F46F47539F46B2DF46B2D694731CD7621FBC39F
          FBC39FFBC39FFBC39FFBC39FFBBE98FAB38AF8A77BF79C6DF6935FF68E59F584
          4CF57A40F47033694731CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD
          7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621CD7621}
        Properties.OnChange = EndcxDEPropertiesChange
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 119
      end
      object RefreshcxButton: TcxButton
        Left = 514
        Top = 2
        Width = 30
        Height = 27
        Hint = #1055#1077#1095#1072#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = RefreshcxButtonClick
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
        LookAndFeel.Kind = lfFlat
      end
      object StoragecxLCB: TcxLookupComboBox
        Left = 7
        Top = 4
        Hint = #1047#1072#1076#1072#1081#1090#1077' '#1089#1082#1083#1072#1076', '#1085#1072' '#1082#1086#1090#1086#1088#1099#1081' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1083#1089#1103' '#1087#1088#1080#1093#1086#1076' '#1090#1086#1074#1072#1088#1072
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownAutoSize = True
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
        ShowHint = True
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 242
      end
    end
    object ResendDocPanel: TPanel
      Left = 72
      Top = 2
      Width = 145
      Height = 31
      BevelOuter = bvNone
      TabOrder = 1
      object ResendDoccxButton: TcxButton
        Left = 115
        Top = 2
        Width = 30
        Height = 27
        Hint = #1055#1077#1095#1072#1090#1100
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = ResendDoccxButtonClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000920B0000920B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFC8B3A46947316947316947316947316947316947316947
          3169473169473169473169473169473169473169473169473169473169473169
          4731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4EDE5E0B7A293B7A293B7A293
          B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A2
          93B7A293B7A293694731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4EFE8E3ED
          E5E0ECE2DEEBE0DBE9DDD7E7DAD4E5D7D1E4D6CFE2D3CCE0D1C8DECEC5DCCBC2
          DBC9BFDBC9BFDBC9BFDBC9BFB7A293694731FF00FFFF00FFFF00FFFF00FFFF00
          FFC8B3A4F2ECE8F0E9E5EEE6E2EDE4DFEBE1DCEADED9E8DBD6E6D9D2E4D6CFE2
          D3CCE0D1C8DECEC5DCCBC2DBC9BFDBC9BFDBC9BFB7A293694731FF00FFFF00FF
          FF00FFFF00FFFF00FFC8B3A4F4EEECF2ECE8F0E9E5EEE6E2EDE4DFEBE1DCEADE
          D9E8DBD6E6D9D2E4D6CFE2D3CCE0D1C8DECEC5DCCBC2DBC9BFDBC9BFB7A29369
          4731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4F6F1EFF4EEECF2ECE8F0E9E5
          EEE6E2EDE4DFEBE1DCEADED9E8DBD6E6D9D2E4D6CF9B3506E0D1C8DECEC5DCCB
          C2DBC9BFB7A293694731FF00FFFF00FFFF00FFFF00FFFF00FFC8B3A4F8F4F2F6
          F1EFF4EEECF2ECE8F0E9E5EEE6E2EDE4DFEBE1DCEADED9E8DBD69C3809B45E2F
          9D3B0DE0D1C8DECEC5DCCBC2B7A293694731FF00FFFF00FFFF00FFFF00FFFF00
          FFC8B3A4FAF6F6F8F4F2F6F1EFF4EEECF2ECE8F0E9E5EEE6E2EDE4DFEBE1DC9C
          380AE3A481CA7E55B45E2F9D3B0DE0D1C8DECEC5B7A293694731B7A293694731
          6947316947316947316947316947316947316947316947316947316947316947
          31EEE6E29D390CE3A481CA7E55C37348C37348B45D2E9F3F12E0D1C8B7A29369
          4731B7A293EEE6E1B7A293B7A293B7A293B7A293B7A293B7A293B7A293B7A293
          B7A293B7A2936947319B3506E4A582E4A582E4A582C37348C37348C37348B45D
          2E9F3E12B7A293694731B7A293F1EAE6EEE6E1EBE2DDE9DED8E6D9D3E3D5CEE0
          D1C9DDCDC4DBC9BFDBC9BFB7A2939B35069B35069A34049A3404E4A582C37348
          B35C2DA040149A34049A3404B7A293694731B7A293F4EEEBF1EAE6EEE6E1EBE2
          DDE9DED8E6D9D3E3D5CEE0D1C9DDCDC4DBC9BFB7A293694731F5F0EDD4AB99A0
          4013D69069B45E2F9D3A0DD7B5A6E9DDD7E7DAD4B7A293694731B7A293F6F2F0
          D89840D89840D89840D89840D89840D89840D89840D89840DDCDC4B7A2936947
          31F7F2F1B66B48A24114D69069A03E11B7704FECE2DEEBE0DBE9DDD7B7A29369
          4731B7A293F9F6F5F6F2F0F4EEEBF1EAE6EEE6E1EBE2DDE9DED8E6D9D3E3D5CE
          E0D1C9B7A293694731BF7C5DA24215D69069B45D2EA4471CE5CFC4EDE5E0ECE2
          DEEBE0DBB7A293694731B7A293FCFBFAF9F6F5F6F2F0F4EEEBF1EAE6EEE6E1EB
          E2DDE9DED8E6D9D3E3D5CEB7A293A84D23A54518D69069B45E2F9E3C0ED7B09E
          F1EAE7EFE8E3EDE5E0ECE2DEB7A293694731B7A293FFFFFFD89840D89840D898
          40D89840D89840D89840EBE2DDDC8020B3633E993202983000A03D109F3F12B0
          5F3AD9B5A3F5F0EDF3EDEAF1EAE7EFE8E3EDE5E0B7A293694731B7A293FFFFFF
          FFFFFFFDFDFDFBF9F8F8F4F3F5F0EEF2ECE9EFE8E4D17623A94F26923B11C282
          64DAB4A2EEDCD4FBF8F7F9F5F4F7F2F1F5F0EDD5BFB1CAB5A6B7A293B7A29369
          4731B7A293FFFFFFFFFFFFFFFFFFFDFDFDFBF9F8F8F4F3F5F0EEF2ECE9EFE8E4
          EDE4DFB7A293694731FFFFFFFEFDFEFDFBFBFBF8F7FAF6F6C8B3A46947316947
          31694731694731694731B7A293FFFFFFD89840D89840D89840D89840D89840D8
          9840F5F0EEF2ECE9B7A293B7A293694731FFFFFFFFFFFFFFFFFFFDFCFCFCF9F9
          C8B3A4F3EBE6EFE6E0E8DCD4DBC9BF694731B7A293FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFDFDFDFBF9F8F8F4F3B7A293694731694731694731FFFFFFFFFFFFFF
          FFFFFFFFFFFDFCFCC8B3A4EFE6E0E8DCD4DBC9BF694731FF00FFB7A293FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBF9F8B7A293F3EBE6DBC9BF6947
          31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B3A4E8DCD4DBC9BF694731FF00FFFF
          00FFB7A293FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDB7A293
          DBC9BF694731FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B3A4DBC9BF6947
          31FF00FFFF00FFFF00FFB7A293FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFB7A293694731C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4C8B3A4
          C8B3A4694731FF00FFFF00FFFF00FFFF00FFB7A293B7A293B7A293B7A293B7A2
          93B7A293B7A293B7A293B7A293B7A293FF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.Kind = lfFlat
      end
      object ResendDoccxME: TcxMaskEdit
        Left = 0
        Top = 4
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 113
      end
    end
  end
  object ViewcxGrid: TcxGrid
    Left = 0
    Top = 35
    Width = 1016
    Height = 437
    Hint = #1044#1074#1086#1081#1085#1086#1077' '#1085#1072#1078#1072#1090#1080#1077' '#1084#1099#1096#1080' '#1087#1088#1080#1074#1086#1076#1080#1090' '#13#10#1074' '#1088#1077#1078#1080#1084' '#1087#1088#1086#1089#1084#1086#1090#1088#1072'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object ViewcxGridDBTV: TcxGridDBTableView
      PopupMenu = PM
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = ViewcxGridDBTVCustomDrawCell
      DataController.DataSource = EgaisBuyDS
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = ViewcxGridDBTVIDENTITY
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
      OnCustomDrawColumnHeader = ViewcxGridDBTVCustomDrawColumnHeader
      object ViewcxGridDBTVID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object ViewcxGridDBTVIDENTITY: TcxGridDBColumn
        DataBinding.FieldName = 'IDENTITY'
        Width = 129
      end
      object ViewcxGridDBTVNUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'NUMBER'
        Width = 128
      end
      object ViewcxGridDBTVWBREGID: TcxGridDBColumn
        DataBinding.FieldName = 'WBREGID'
        Visible = False
      end
      object ViewcxGridDBTVEGAISFIXNUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'EGAISFIXNUMBER'
        Visible = False
      end
      object ViewcxGridDBTVPRESENT: TcxGridDBColumn
        DataBinding.FieldName = 'PRESENT'
        Width = 109
      end
      object ViewcxGridDBTVSHIPPINGPRESENT: TcxGridDBColumn
        DataBinding.FieldName = 'SHIPPINGPRESENT'
        Width = 96
      end
      object ViewcxGridDBTVHTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'HTYPE'
        Visible = False
      end
      object ViewcxGridDBTVUNITTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'UNITTYPE'
        Visible = False
      end
      object ViewcxGridDBTVCLIENTREGID: TcxGridDBColumn
        DataBinding.FieldName = 'CLIENTREGID'
        Width = 87
      end
      object ViewcxGridDBTVHOSTFIRMID: TcxGridDBColumn
        DataBinding.FieldName = 'HOSTFIRMID'
        Width = 68
      end
      object ViewcxGridDBTVDISTRIBUTIONID: TcxGridDBColumn
        DataBinding.FieldName = 'DISTRIBUTIONID'
        Visible = False
      end
      object ViewcxGridDBTVADDRESS: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS'
        Visible = False
      end
      object ViewcxGridDBTVFIRMNAME: TcxGridDBColumn
        DataBinding.FieldName = 'FIRMNAME'
        Width = 134
      end
      object ViewcxGridDBTVINN: TcxGridDBColumn
        DataBinding.FieldName = 'INN'
        Width = 96
      end
      object ViewcxGridDBTVKPP: TcxGridDBColumn
        DataBinding.FieldName = 'KPP'
        Width = 82
      end
      object ViewcxGridDBTVEGAISBUYSTATUSID: TcxGridDBColumn
        DataBinding.FieldName = 'EGAISBUYSTATUSID'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = EgaisIL
        Properties.Items = <
          item
            Description = #1047#1072#1075#1088#1091#1078#1077#1085#1072' '#1080#1079' '#1045#1043#1040#1048#1057
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #1044#1086#1089#1090#1091#1087#1085#1086' '#1082' '#1089#1086#1079#1076#1072#1085#1080#1102' '#1074' HOST'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1089#1086#1079#1076#1072#1085#1072' '#1074' HOST'
            ImageIndex = 2
            Value = 2
          end
          item
            Description = #1054#1090#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1072' '#1074' HOST'
            ImageIndex = 3
            Value = 3
          end
          item
            Description = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1072' '#1074' '#1045#1043#1040#1048#1057
            ImageIndex = 4
            Value = 4
          end
          item
            Description = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1074' '#1045#1043#1040#1048#1057
            ImageIndex = 5
            Value = 5
          end
          item
            Description = #1054#1090#1082#1083#1086#1085#1077#1085#1072' '#1074' '#1045#1043#1040#1048#1057
            ImageIndex = 6
            Value = 6
          end>
        Properties.ShowDescriptions = False
        Width = 70
      end
      object ViewcxGridDBTVISRETURN: TcxGridDBColumn
        DataBinding.FieldName = 'ISRETURN'
        Visible = False
      end
      object ViewcxGridDBTVEXCISEFLAG: TcxGridDBColumn
        DataBinding.FieldName = 'EXCISEFLAG'
        Visible = False
      end
    end
    object ViewcxGL: TcxGridLevel
      GridView = ViewcxGridDBTV
    end
  end
  object DetailcxGrid: TcxGrid
    Left = 0
    Top = 480
    Width = 1016
    Height = 192
    Hint = #1044#1074#1086#1081#1085#1086#1077' '#1085#1072#1078#1072#1090#1080#1077' '#1084#1099#1096#1080' '#1087#1088#1080#1074#1086#1076#1080#1090' '#13#10#1074' '#1088#1077#1078#1080#1084' '#1087#1088#1086#1089#1084#1086#1090#1088#1072'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
    Align = alBottom
    TabOrder = 2
    LookAndFeel.Kind = lfFlat
    object DetailcxGridDBTV: TcxGridDBTableView
      PopupMenu = DetailPM
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = DetailcxGridDBTVCustomDrawCell
      DataController.DataSource = EgaisBuyDetailDS
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = DetailcxGridDBTVEGAISDRINKNAME
        end
        item
          Kind = skSum
          Column = DetailcxGridDBTVQUANTITY
        end
        item
          Kind = skSum
          Column = DetailcxGridDBTVDELTACOUNT
        end
        item
          Kind = skSum
          Column = DetailcxGridDBTVDRINKCOUNT
        end
        item
          Kind = skSum
          Column = DetailcxGridDBTVEXCISECOUNT
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Column = DetailcxGridDBTVSUMPRICE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsSelection.CellMultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      object DetailcxGridDBTVID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object DetailcxGridDBTVIDENTITY: TcxGridDBColumn
        DataBinding.FieldName = 'IDENTITY'
        Visible = False
        Width = 79
      end
      object DetailcxGridDBTVEGAISDRINKNAME: TcxGridDBColumn
        DataBinding.FieldName = 'EGAISDRINKNAME'
        Width = 121
      end
      object DetailcxGridDBTVALCCODE: TcxGridDBColumn
        DataBinding.FieldName = 'ALCCODE'
        Width = 87
      end
      object DetailcxGridDBTVPROVIDERINN: TcxGridDBColumn
        DataBinding.FieldName = 'PROVIDERINN'
        Visible = False
      end
      object DetailcxGridDBTVPROVIDERKPP: TcxGridDBColumn
        DataBinding.FieldName = 'PROVIDERKPP'
        Visible = False
      end
      object DetailcxGridDBTVPROVIDERNAME: TcxGridDBColumn
        DataBinding.FieldName = 'PROVIDERNAME'
        Visible = False
      end
      object DetailcxGridDBTVIMPORTERINN: TcxGridDBColumn
        DataBinding.FieldName = 'IMPORTERINN'
        Visible = False
      end
      object DetailcxGridDBTVIMPORTERKPP: TcxGridDBColumn
        DataBinding.FieldName = 'IMPORTERKPP'
        Visible = False
      end
      object DetailcxGridDBTVIMPORTERNAME: TcxGridDBColumn
        DataBinding.FieldName = 'IMPORTERNAME'
        Visible = False
      end
      object DetailcxGridDBTVPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Width = 54
      end
      object DetailcxGridDBTVSUMPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'SUMPRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
      end
      object DetailcxGridDBTVBOTTLINGDATE: TcxGridDBColumn
        DataBinding.FieldName = 'BOTTLINGDATE'
        Width = 79
      end
      object DetailcxGridDBTVQUANTITY: TcxGridDBColumn
        DataBinding.FieldName = 'QUANTITY'
        Width = 83
      end
      object DetailcxGridDBTVINFORMA_REGID: TcxGridDBColumn
        DataBinding.FieldName = 'INFORMA_REGID'
        Width = 131
      end
      object DetailcxGridDBTVINFORMB_REGID: TcxGridDBColumn
        DataBinding.FieldName = 'INFORMB_REGID'
        Width = 113
      end
      object DetailcxGridDBTVDRINKID: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKID'
        Width = 85
      end
      object DetailcxGridDBTVDRINKNAME: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKNAME'
        Width = 127
      end
      object DetailcxGridDBTVDRINKCOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'DRINKCOUNT'
        Width = 58
      end
      object DetailcxGridDBTVDELTACOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'DELTACOUNT'
        Width = 61
      end
      object DetailcxGridDBTVEXCISECOUNT: TcxGridDBColumn
        Caption = #1040#1082#1094#1080#1079#1085#1099#1093' '#1084#1072#1088#1086#1082', '#1096#1090'.'
        DataBinding.FieldName = 'EXCISECOUNT'
        Visible = False
      end
      object DetailcxGridDBTVSCANPERCENT: TcxGridDBColumn
        DataBinding.FieldName = 'SCANPERCENT'
        Visible = False
      end
      object DetailcxGridDBTVCOUNTERRORUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'COUNTERRORUNIT'
        Visible = False
      end
      object DetailcxGridDBTVFLAGRETURNRESOLUTION: TcxGridDBColumn
        DataBinding.FieldName = 'FLAGRETURNRESOLUTION'
        Visible = False
      end
    end
    object DetailcxGridL: TcxGridLevel
      GridView = DetailcxGridDBTV
    end
  end
  object cxSplitter: TcxSplitter
    Left = 0
    Top = 472
    Width = 1016
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salBottom
    Control = DetailcxGrid
  end
  object EgaisBuyCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = EgaisBuyCDSBeforeOpen
    Left = 64
    Top = 88
    object EgaisBuyCDSID: TIntegerField
      DisplayLabel = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#1082#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object EgaisBuyCDSIDENTITY: TStringField
      DisplayLabel = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
      FieldName = 'IDENTITY'
      Size = 32
    end
    object EgaisBuyCDSNUMBER: TStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      FieldName = 'NUMBER'
      Size = 32
    end
    object EgaisBuyCDSPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1074' '#1045#1043#1040#1048#1057
      FieldName = 'PRESENT'
    end
    object EgaisBuyCDSSHIPPINGPRESENT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1058#1058#1053
      FieldName = 'SHIPPINGPRESENT'
    end
    object EgaisBuyCDSHTYPE: TStringField
      FieldName = 'HTYPE'
      Visible = False
    end
    object EgaisBuyCDSUNITTYPE: TStringField
      FieldName = 'UNITTYPE'
      Visible = False
      Size = 32
    end
    object EgaisBuyCDSFIRMNAME: TStringField
      DisplayLabel = #1055#1086#1089#1090#1072#1074#1097#1080#1082' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1045#1043#1040#1048#1057
      FieldName = 'FIRMNAME'
      Size = 64
    end
    object EgaisBuyCDSINN: TStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'INN'
      Size = 16
    end
    object EgaisBuyCDSKPP: TStringField
      DisplayLabel = #1050#1055#1055
      FieldName = 'KPP'
      Size = 16
    end
    object EgaisBuyCDSHOSTFIRMID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072' HOST'
      FieldName = 'HOSTFIRMID'
    end
    object EgaisBuyCDSCLIENTREGID: TStringField
      DisplayLabel = #1050#1086#1076' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072' '#1045#1043#1040#1048#1057
      DisplayWidth = 16
      FieldName = 'CLIENTREGID'
      Size = 16
    end
    object EgaisBuyCDSFLAGBUYCREATE: TSmallintField
      FieldName = 'FLAGBUYCREATE'
    end
    object EgaisBuyCDSFLAGBUYACCEPT: TSmallintField
      FieldName = 'FLAGBUYACCEPT'
    end
    object EgaisBuyCDSEGAISBUYSTATUSID: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'EGAISBUYSTATUSID'
    end
    object EgaisBuyCDSISRETURN: TSmallintField
      DisplayLabel = #1060#1083#1072#1075' '#1074#1086#1079#1074#1088#1072#1090#1072
      FieldName = 'ISRETURN'
    end
    object EgaisBuyCDSWBREGID: TStringField
      DisplayLabel = #8470' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1058#1058#1053
      FieldName = 'WBREGID'
      Size = 32
    end
    object EgaisBuyCDSEGAISFIXNUMBER: TStringField
      DisplayLabel = #8470' '#1060#1080#1082#1089#1072#1094#1080#1080' '#1058#1058#1053
      FieldName = 'EGAISFIXNUMBER'
      Size = 32
    end
    object EgaisBuyCDSEXCISEFLAG: TSmallintField
      DisplayLabel = #1040#1082#1094#1080#1079#1085#1099#1077' '#1084#1072#1088#1082#1080
      FieldName = 'EXCISEFLAG'
    end
    object EgaisBuyCDSDISTRIBUTIONID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1058#1058
      FieldName = 'DISTRIBUTIONID'
      Visible = False
    end
    object EgaisBuyCDSADDRESS: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089' '#1058#1058
      DisplayWidth = 128
      FieldName = 'ADDRESS'
      Visible = False
      Size = 512
    end
    object EgaisBuyCDSREPEALFLAG: TSmallintField
      FieldName = 'REPEALFLAG'
    end
  end
  object EgaisBuyDS: TDataSource
    DataSet = EgaisBuyCDS
    OnDataChange = EgaisBuyDSDataChange
    Left = 96
    Top = 88
  end
  object EgaisBuyDetailCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = EgaisBuyDetailCDSBeforeOpen
    Left = 48
    Top = 408
    object EgaisBuyDetailCDSID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1087#1080#1089#1080
      FieldName = 'ID'
      Visible = False
    end
    object EgaisBuyDetailCDSIDENTITY: TStringField
      DisplayLabel = #1055#1086#1088#1103#1076#1082#1086#1074#1099#1081' '#1085#1086#1084#1077#1088
      FieldName = 'IDENTITY'
      Visible = False
      Size = 32
    end
    object EgaisBuyDetailCDSALCCODE: TStringField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072' '#1045#1043#1040#1048#1057
      FieldName = 'ALCCODE'
      Size = 32
    end
    object EgaisBuyDetailCDSPROVIDERINN: TStringField
      DisplayLabel = #1048#1053#1053' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1103
      FieldName = 'PROVIDERINN'
      Size = 16
    end
    object EgaisBuyDetailCDSPROVIDERKPP: TStringField
      DisplayLabel = #1050#1055#1055' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1103
      FieldName = 'PROVIDERKPP'
      Size = 16
    end
    object EgaisBuyDetailCDSPROVIDERNAME: TStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
      FieldName = 'PROVIDERNAME'
      Size = 128
    end
    object EgaisBuyDetailCDSIMPORTERINN: TStringField
      DisplayLabel = #1048#1053#1053' '#1080#1084#1087#1086#1088#1090#1077#1088#1072
      FieldName = 'IMPORTERINN'
      Size = 16
    end
    object EgaisBuyDetailCDSIMPORTERKPP: TStringField
      DisplayLabel = #1050#1055#1055' '#1080#1084#1087#1086#1088#1090#1077#1088#1072
      FieldName = 'IMPORTERKPP'
      Size = 16
    end
    object EgaisBuyDetailCDSIMPORTERNAME: TStringField
      DisplayLabel = #1048#1084#1087#1086#1088#1090#1077#1088
      FieldName = 'IMPORTERNAME'
      Size = 128
    end
    object EgaisBuyDetailCDSEGAISDRINKNAME: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088' '#1045#1043#1040#1048#1057
      FieldName = 'EGAISDRINKNAME'
      Size = 512
    end
    object EgaisBuyDetailCDSPRICE: TBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      Size = 2
    end
    object EgaisBuyDetailCDSQUANTITY: TIntegerField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1045#1043#1040#1048#1057
      FieldName = 'QUANTITY'
    end
    object EgaisBuyDetailCDSDRINKID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072' HOST'
      FieldName = 'DRINKID'
    end
    object EgaisBuyDetailCDSDRINKNAME: TStringField
      DisplayLabel = #1058#1086#1074#1072#1088' HOST'
      FieldName = 'DRINKNAME'
      Size = 512
    end
    object EgaisBuyDetailCDSINFORMA_REGID: TStringField
      DisplayLabel = #1057#1087#1088#1072#1074#1082#1072' '#1040
      FieldName = 'INFORMA_REGID'
      Visible = False
      Size = 32
    end
    object EgaisBuyDetailCDSINFORMB_REGID: TStringField
      DisplayLabel = #1057#1087#1088#1072#1074#1082#1072' '#1041
      FieldName = 'INFORMB_REGID'
      Visible = False
      Size = 32
    end
    object EgaisBuyDetailCDSDRINKCOUNT: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' HOST'
      FieldName = 'DRINKCOUNT'
    end
    object EgaisBuyDetailCDSDELTACOUNT: TIntegerField
      DisplayLabel = #1056#1072#1079#1085#1080#1094#1072
      FieldName = 'DELTACOUNT'
    end
    object EgaisBuyDetailCDSBOTTLINGDATE: TStringField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1079#1083#1080#1074#1072
      DisplayWidth = 8
      FieldName = 'BOTTLINGDATE'
      Size = 128
    end
    object EgaisBuyDetailCDSSCANPERCENT: TFloatField
      DisplayLabel = '% '#1087#1088#1086#1074#1077#1088#1082#1080
      FieldName = 'SCANPERCENT'
      Visible = False
    end
    object EgaisBuyDetailCDSCOUNTERRORUNIT: TIntegerField
      DisplayLabel = #1054#1096#1080#1073#1086#1082' '#1087#1088#1080' '#1087#1088#1086#1074#1077#1088#1082#1077
      FieldName = 'COUNTERRORUNIT'
      Visible = False
    end
    object EgaisBuyDetailCDSFLAGRETURNRESOLUTION: TIntegerField
      DisplayLabel = #1055#1088#1086#1076#1072#1074#1072#1083#1080
      FieldName = 'FLAGRETURNRESOLUTION'
    end
    object EgaisBuyDetailCDSEXCISECOUNT: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1072#1082#1094#1080#1079#1085#1099#1093' '#1084#1072#1088#1086#1082', '#1096#1090'.'
      FieldName = 'EXCISECOUNT'
      Visible = False
    end
    object EgaisBuyDetailCDSSUMPRICE: TBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMPRICE'
      Size = 2
    end
  end
  object EgaisBuyDetailDS: TDataSource
    DataSet = EgaisBuyDetailCDS
    Left = 80
    Top = 408
  end
  object PM: TPopupMenu
    Images = IL
    OnPopup = PMPopup
    Left = 88
    Top = 184
    object BuyCreateMI: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1074' HOST'
      ImageIndex = 0
      OnClick = BuyCreateMIClick
    end
    object AcceptMI: TMenuItem
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1074' '#1045#1043#1040#1048#1057
      ImageIndex = 1
      OnClick = AcceptMIClick
    end
    object LineMI: TMenuItem
      Caption = '-'
    end
    object IsReturnMI: TMenuItem
      Caption = #1042#1086#1079#1074#1088#1072#1090
      ImageIndex = 2
      OnClick = IsReturnMIClick
    end
    object RequestRepealMI: TMenuItem
      Caption = #1047#1072#1087#1088#1086#1089' '#1085#1072' '#1088#1072#1089#1087#1088#1086#1074#1077#1076#1077#1085#1080#1077' '#1072#1082#1090#1072' '#1058#1058#1053
      ImageIndex = 4
      OnClick = RequestRepealMIClick
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
  end
  object EgaisIL: TImageList
    Left = 64
    Top = 120
  end
  object DetailPM: TPopupMenu
    OnPopup = DetailPMPopup
    Left = 112
    Top = 408
    object DetailDrinkMI: TMenuItem
      Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1090#1086#1074#1072#1088' '#1074' '#1088#1091#1095#1085#1091#1102
      OnClick = DetailDrinkMIClick
    end
    object AlcCodeMI: TMenuItem
      Caption = #1047#1072#1087#1088#1086#1089' '#1087#1086' '#1072#1083#1082#1086#1082#1086#1076#1091
      OnClick = AlcCodeMIClick
    end
    object CopyToClipboardMI: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1073#1091#1092#1077#1088
      OnClick = CopyToClipboardMIClick
    end
  end
  object IL: TImageList
    Left = 56
    Top = 184
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001000000000000018
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CE396B2D4A294A29
      4A294A296B2DCE39000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A29D262586F5673136B
      CF668B5E2952A6414A2900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E64D7677DD7FBC7B7873346F
      F06AAD62695E2656C349CE390000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74DB97BDD7FBC7B7873346F
      F06AAD62695E2656C34D4A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74D5473146BD166D0628D5E
      6B5A485626560556C34D4A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74D346FBB779A777873346F
      F06AAD62495A2656C24D4A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74DB97BDD7FBC7B7873346F
      F06AAD62695E2656C34D4A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74DB97BDD7F566FD0628D5E
      6B5A495A485A2656C34D4A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74DD066F266346F7873346F
      F06AAC6226560452C24D4A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74D987BDD7FBC7B7873346F
      F06AAD62695E2656C34D4A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74DB97BDD7FBA77566F126B
      CF668C62695E2656C34D4A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74D336F6C5E6C5E6C5E6C5E
      6C5E6C5E055AE451C34D4A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74D4956FE7FDB7F977B747B
      30770D77604CC148004C004C004C004C004C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E74D146BFF7FFE7FDB7F977B
      747B5177004C507E507E0D7E887DC07C004C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000752146BBB77BC7B9A7B
      76773273004C004C004C004C004C004C004C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000049560752E74DA641
      A641E74D07524956000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9520D190D190D190D19
      0D190D190D190D190D190D190D190D1900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A227B2E9B369B369B36
      9B369B369B367B327B323A26F9150000000000000000D9529D738049964A964A
      964A964A964A964A964A964A964A0D1900000000000080498049804980498049
      8049804980498049804980490000000000000000CD18CD180000000000000000
      000000000000000000000000000000000000000000007B32FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F5A260000000000000000D952BE73B05E80497D6F
      7C6B5C675C673B633B5F3B5F964A0D19000000004066737F4066406640664066
      406640664066406640664066804900000000000093311A42CD18000000000000
      00000000000000000000000000000000000000000000BC3EFF7FFF7FFF7BFF7B
      DF77DF77DF73DF73BF73FF7B9B360000000000000000D952BE77BE73B05E8049
      7D6F7C6B5C675C673B633B5F964A0D19000000004066BA7F2F7B2E7B2D7B4A56
      0821084EE97AC876C87640668049000000000000000093311A42CD1800000000
      08210821082100000000000000000000000000000000DC42FF7FDF7BDF77DF77
      DF73DF73BF6FBF6FBF6BFF7B9B3A0000000000000000D952DE7BBE77B05EDA7F
      80497D6F7C6B5C675C673B63964A0D19000000004066BA7F507F4F7B2E7B2E7B
      08210C7B0B7BEA7AE97A406680490000000000000000000093311A42CD180040
      80548054805408210000000000000000000000000000DC42FF7FDF73DF73BF6F
      BF6FBF6BBF6B9F679F67FF7BBC3A0000000000000000D952DF7BDE7BBE77B05E
      527F80497D6F7C6B5C675C67964A0D19000000004066BA7F517F507F4F7B0821
      082108210C7B0B7BEA7A4066804900000000000000000000000093310040A160
      A16CA168805408210000000000000000000000000000FD46FF7BBF6FBF6FBF6B
      BF6B9F679F679F639F63DF77BC3E0000000000000000D952FF7FDF7BDE7BB05E
      DA7F207F80497D6F7C6B5C67964A0D19000000004066BA7F717F517F507FAC5E
      0821AC5E2D7B0C7B0B7B40668049000000000000000000000000004026714575
      2475E370A16808210000000000000000000000000000FD46FF7BBF6B9F679F67
      9F639F637F5F7F5F7F5FDF77DC3E0000000000000000D9528049804980498049
      FF7FDA7F207F80497D6F7C6B964A0D19000000004066BA7F727F717F517F507F
      4F7B2E7B2E7B2D7B0C7B40668049000000000000000000006044CB7DAA7D4675
      45752475C26C082100000000000000000000C4646775E758BE775E63E75CA070
      60607F5F7F5B7F5B5F57DF77DC420000000000000000D952FF7FB05E207F207F
      207FFF7FDA7F207F80499D6F964A0D19000000004066737FBA7FBA7FBA7FBA7F
      BA7FBA7FBA7FBA7FBA7F737F8049000000000000000000006044F57EF57EAA7D
      667545758054815808210000000000000000C468C97D877928650861E278C07C
      A3605F575F575F575F53DF77FC420000000000000000D952FF7FB05EDA7FFF7F
      FF7F207F207F207F207F8049964A0D1900000000000040664066406640664066
      40664066406640664066406600000000000000000000000060442D7E7A7F2D7E
      AA7D80544575E27081580821082108210000A368056DA87D66792479027DC464
      DA565F535F533F4F3F4FDF73FD460000000000000000D952FF7FFF7FB05EFF7F
      FF7F207F8049804980498049964A0D1900000000000000004066BA7F80490000
      0000000040662C7F804900000000000000000000000000000000604460446044
      6044F57EAA7D45758054A1688054805408210000E46C0571A77D657DC46C555A
      3F4F3F4F3F4F3F4F3F4FDF73FD460000000000000000D952FF7FFF7FB05EDA7F
      FF7F987F207F8049D9520D190D190D1900000000000000004066BA7F80490000
      0000000040662C7F804900000000000000000000000000000000000000000000
      00000040F57E805445750371C2708054082125752675C87DA77D657D247D066D
      DA523F4FFF7FFF7FFF7FDF7BFD420000000000000000D952FF7FFF7FFF7FB05E
      FF7FFE7FB77F207F8049BE733B5F0D1900000000000000004066BA7F737F8049
      804980492C7F2C7F804900000000000000000000000000000000000000000000
      000000000040CB7D67754575E270E4580821677DC97DC87DAB758A6D447D027D
      26713F4FFF7FFF7FFF7B1D4BDD3A0000000000000000D952FF7FFF7FFF7FB05E
      A04980498049804980493B5F0D190000000000000000000000004066BA7FBA7F
      BA7FBA7F2C7F8049000000000000000000000000000000000000000000000000
      000000000040F57ECB7D887DC25CAA7D0040877DA87DCB75BE731E4FAB71247D
      25793F4FFF7FFF7B1D4BFD3E00000000000000000000D952FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FD9520D190000000000000000000000000000000040664066
      4066406640660000000000000000000000000000000000000000000000000000
      0000000000407A7FF57E2D7EAA7D00400000000000005E57FF7FDF73DF73DF73
      DF73DF73FF7F3E4FFD42000000000000000000000000D952D952D952D952D952
      D952D952D952D952D95200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000004000400040004000000000000000003E4F5E577E5B7E5B5E57
      5E575E571E471E4700000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E01F000000000000C00F000000000000
      8007000000000000800700000000000080070000000000008007000000000000
      8007000000000000800700000000000080070000000000008007000000000000
      8007000000000000800700000000000080000000000000008000000000000000
      C000000000000000E01F000000000000C001FFFFFFFFC003C001C0079FFFC003
      C00180038FFFC003C0018003C63FC003C0018003E01FC003C0018003F01FC003
      C0018003F01FC003C0018003E01F0003C0018003E00F0003C001C007E0010003
      C001E38FF0008003C001E38FFF000003C001E00FFF800003C003F01FFF800007
      C007F83FFF81C00FC00FFFFFFFC3C01F00000000000000000000000000000000
      000000000000}
  end
end
