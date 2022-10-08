object DM: TDM
  OldCreateOrder = False
  Height = 250
  Width = 579
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\ESTOQUE\EXE\BANCO\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 24
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 72
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Componente\firebird25\bin\fbclient.dll'
    Left = 160
    Top = 24
  end
  object qrLogin: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT '
      'ID_USUARIO,'
      'NOME,'
      'SENHA,'
      'TIPO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO')
    Left = 48
    Top = 144
    object qrLoginID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrLoginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qrLoginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object qrLoginTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
  end
  object dsLogin: TDataSource
    DataSet = qrLogin
    Left = 104
    Top = 152
  end
end
