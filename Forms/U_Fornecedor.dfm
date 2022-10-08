inherited FrmFornecedor: TFrmFornecedor
  Caption = 'Fornecedores'
  ClientHeight = 461
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 64
    Top = 88
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = DBIDFornecedor
  end
  object Label2: TLabel [1]
    Left = 64
    Top = 128
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBNome
  end
  object Label3: TLabel [2]
    Left = 64
    Top = 168
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 536
    Top = 171
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 64
    Top = 208
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 64
    Top = 248
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 624
    Top = 214
    Width = 40
    Height = 13
    Caption = 'ESTADO'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 64
    Top = 296
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 292
    Top = 296
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 64
    Top = 344
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 221
    Top = 88
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DBCadastro
  end
  object Label12: TLabel [11]
    Left = 570
    Top = 296
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit1
  end
  inherited Panel1: TPanel
    TabOrder = 1
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 412
    TabOrder = 13
    ExplicitTop = 412
    inherited DBNavigator1: TDBNavigator
      Left = 264
      Top = 408
      Hints.Strings = ()
      ExplicitLeft = 264
      ExplicitTop = 408
    end
  end
  object DBIDFornecedor: TDBEdit [14]
    Left = 64
    Top = 107
    Width = 134
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsPadrao
    TabOrder = 0
  end
  object DBNome: TDBEdit [15]
    Left = 64
    Top = 144
    Width = 600
    Height = 21
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [16]
    Left = 64
    Top = 184
    Width = 449
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [17]
    Left = 536
    Top = 187
    Width = 128
    Height = 21
    DataField = 'NUMERO'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [18]
    Left = 64
    Top = 224
    Width = 545
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [19]
    Left = 64
    Top = 264
    Width = 600
    Height = 21
    DataField = 'CIDADE'
    DataSource = dsPadrao
    TabOrder = 8
  end
  object DBEdit7: TDBEdit [20]
    Left = 624
    Top = 230
    Width = 30
    Height = 21
    DataField = 'ESTADO'
    DataSource = dsPadrao
    TabOrder = 7
  end
  object DBEdit8: TDBEdit [21]
    Left = 64
    Top = 312
    Width = 212
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dsPadrao
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [22]
    Left = 292
    Top = 312
    Width = 264
    Height = 21
    DataField = 'CNPJ'
    DataSource = dsPadrao
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [23]
    Left = 64
    Top = 363
    Width = 600
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsPadrao
    TabOrder = 12
  end
  object DBCadastro: TDBEdit [24]
    Left = 221
    Top = 107
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 2
  end
  object DBEdit1: TDBEdit [25]
    Left = 570
    Top = 310
    Width = 212
    Height = 21
    DataField = 'CEP'
    DataSource = dsPadrao
    TabOrder = 11
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT '
      ' ID_FORNECEDOR,'
      ' NOME,'
      ' ENDERECO,'
      ' NUMERO,'
      ' BAIRRO,'
      ' CIDADE,'
      ' ESTADO,'
      ' TELEFONE,'
      ' CNPJ,'
      ' EMAIL,'
      ' CEP,'
      ' CADASTRO'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    Left = 792
    Top = 144
    object Q_padraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
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
    object Q_padraoESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
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
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;0;_'
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
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-000;1;_'
      Size = 16
    end
  end
  inherited dsPadrao: TDataSource
    Left = 792
    Top = 184
  end
end
