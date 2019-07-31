object BuyTrRDM: TBuyTrRDM
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  OnDestroy = RemoteDataModuleDestroy
  Left = 210
  Top = 110
  Height = 206
  Width = 358
  object AnyCommandDSP: TDataSetProvider
    DataSet = AnyCommandIBQuery
    Constraints = True
    Options = [poAllowCommandText]
    Left = 240
    Top = 68
  end
  object ReadIBTransaction: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase
    DefaultAction = TARollback
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saRollback
    Left = 256
    Top = 8
  end
  object AnyCommandIBQuery: TIBQuery
    Database = IBDatabase
    Transaction = ReadIBTransaction
    AfterOpen = IBQueryAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    Left = 248
    Top = 72
  end
  object InUpDelDSP: TDataSetProvider
    DataSet = InUpDelIBQuery
    Constraints = True
    Options = [poAllowCommandText]
    Left = 136
    Top = 64
  end
  object InUpDelIBTransaction: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase
    DefaultAction = TARollback
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 144
    Top = 8
  end
  object InUpDelIBQuery: TIBQuery
    Database = IBDatabase
    Transaction = InUpDelIBTransaction
    AfterOpen = IBQueryAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    Left = 144
    Top = 72
  end
  object IBDatabase: TIBDatabase
    Params.Strings = (
      'user_name=sysdba'
      'password=userkey')
    LoginPrompt = False
    DefaultTransaction = ReadIBTransaction
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 32
    Top = 8
  end
end
