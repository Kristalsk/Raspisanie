object DataModule6: TDataModule6
  OldCreateOrder = False
  Height = 217
  Width = 275
  object MainConnection: TFDConnection
    ConnectionName = 'FBConnection'
    Params.Strings = (
      'DriverID=FB'
      'User_Name=SYSDBA'
      'Database=DataB'
      'Protocol=TCPIP'
      'Port=3050'
      'Password=masterkey')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object trRead: TFDTransaction
    Options.ReadOnly = True
    Connection = MainConnection
    Left = 32
    Top = 136
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    DriverID = 'FB'
    Left = 40
    Top = 80
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 192
    Top = 152
  end
end
