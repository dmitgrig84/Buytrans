object ServerForm: TServerForm
  Left = 288
  Top = 147
  Width = 763
  Height = 574
  Caption = #1057#1077#1088#1074#1077#1088' '#1087#1088#1080#1093#1086#1076#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMinimized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object UserPanel: TPanel
    Left = 0
    Top = 30
    Width = 755
    Height = 487
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'UserPanel'
    TabOrder = 0
    object UserListView: TListView
      Left = 1
      Top = 1
      Width = 753
      Height = 485
      Align = alClient
      Columns = <
        item
          Caption = 'Thread'
        end
        item
          Caption = 'Interface'
          Width = 80
        end
        item
          Alignment = taCenter
          AutoSize = True
          Caption = 'Host'
        end
        item
          Alignment = taCenter
          AutoSize = True
          Caption = 'IPAddress'
        end
        item
          Alignment = taCenter
          AutoSize = True
          Caption = 'ClientVersion'
        end
        item
          Alignment = taCenter
          AutoSize = True
          Caption = 'UserName'
        end
        item
          Alignment = taCenter
          AutoSize = True
          Caption = 'Connected'
        end
        item
          Alignment = taCenter
          AutoSize = True
          Caption = 'LastActivity'
        end>
      MultiSelect = True
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object InfoPanel: TPanel
    Left = 0
    Top = 517
    Width = 755
    Height = 30
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   InfoPanel'
    TabOrder = 1
  end
  object ServerPanel: TPanel
    Left = 0
    Top = 0
    Width = 755
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = '   BuyTransportation Server: Version - '
    TabOrder = 2
    object ButtonPanel: TPanel
      Left = 512
      Top = 0
      Width = 243
      Height = 30
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object ConnectButton: TButton
        Left = 96
        Top = 3
        Width = 145
        Height = 25
        Caption = 'ConnectButton'
        TabOrder = 0
        OnClick = ConnectButtonClick
      end
    end
  end
  object FormIBDatabase: TIBDatabase
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    AfterConnect = FormIBDatabaseAfterConnect
    AfterDisconnect = FormIBDatabaseAfterDisconnect
    Left = 208
    Top = 16
  end
end
