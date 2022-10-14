inherited FrmCliente: TFrmCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 441
  Position = poScreenCenter
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 160
    Top = 64
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 160
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBNome
  end
  object Label3: TLabel [2]
    Left = 160
    Top = 144
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 626
    Top = 184
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 160
    Top = 184
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 160
    Top = 224
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 730
    Top = 227
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 350
    Top = 280
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 578
    Top = 280
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit9
  end
  object Label11: TLabel [9]
    Left = 160
    Top = 280
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [10]
    Left = 160
    Top = 320
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [11]
    Left = 324
    Top = 64
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DBCadastro
  end
  inherited Panel1: TPanel
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 392
    ExplicitTop = 392
    inherited DBNavigator1: TDBNavigator
      Left = 326
      Top = 392
      Hints.Strings = ()
      ExplicitLeft = 326
      ExplicitTop = 392
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 160
    Top = 80
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object DBNome: TDBEdit [15]
    Left = 160
    Top = 120
    Width = 600
    Height = 21
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [16]
    Left = 160
    Top = 160
    Width = 600
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [17]
    Left = 626
    Top = 200
    Width = 126
    Height = 21
    DataField = 'NUMERO'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [18]
    Left = 160
    Top = 200
    Width = 442
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [19]
    Left = 160
    Top = 243
    Width = 553
    Height = 21
    DataField = 'CIDADE'
    DataSource = dsPadrao
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [20]
    Left = 730
    Top = 243
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = dsPadrao
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [21]
    Left = 350
    Top = 296
    Width = 212
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dsPadrao
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [22]
    Left = 578
    Top = 296
    Width = 182
    Height = 21
    DataField = 'CPF'
    DataSource = dsPadrao
    TabOrder = 10
  end
  object DBEdit11: TDBEdit [23]
    Left = 160
    Top = 296
    Width = 169
    Height = 21
    DataField = 'CEP'
    DataSource = dsPadrao
    TabOrder = 11
  end
  object DBEdit12: TDBEdit [24]
    Left = 160
    Top = 336
    Width = 600
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsPadrao
    TabOrder = 13
  end
  object DBCadastro: TDBEdit [25]
    Left = 324
    Top = 83
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 12
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT '
      ' ID_CLIENTE,'
      ' NOME,'
      ' ENDERECO,'
      ' NUMERO,'
      ' BAIRRO,'
      ' CIDADE,'
      ' UF,'
      ' TELEFONE,'
      ' CPF,'
      ' CEP,'
      ' EMAIL,'
      ' CADASTRO'
      'FROM CLIENTE'
      'ORDER BY ID_CLIENTE')
    Left = 864
    Top = 208
    object Q_padraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 16
    end
    object Q_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000\.000\.000\-00;0;_'
      Size = 16
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;1;_'
      Size = 16
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPadrao: TDataSource
    Left = 872
    Top = 264
  end
end
