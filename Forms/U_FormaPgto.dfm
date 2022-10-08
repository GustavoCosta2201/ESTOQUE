inherited FrmFormasPgto: TFrmFormasPgto
  Caption = 'Cadastro de Forma de Pagamento'
  ClientHeight = 314
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 112
    Top = 104
    Width = 86
    Height = 13
    Caption = 'ID_FORMA_PGTO'
    FocusControl = DBForma
  end
  object Label2: TLabel [1]
    Left = 112
    Top = 144
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DBDescricao
  end
  object Label3: TLabel [2]
    Left = 268
    Top = 104
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DBCadastro
  end
  inherited Panel2: TPanel
    Top = 265
    ExplicitTop = 254
    inherited DBNavigator1: TDBNavigator
      Left = 318
      Top = 264
      Hints.Strings = ()
      ExplicitLeft = 318
      ExplicitTop = 264
    end
  end
  object DBForma: TDBEdit [5]
    Left = 112
    Top = 120
    Width = 134
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    TabOrder = 2
  end
  object DBDescricao: TDBEdit [6]
    Left = 112
    Top = 160
    Width = 600
    Height = 21
    DataField = 'DESCRICAO'
    TabOrder = 4
  end
  object DBCadastro: TDBEdit [7]
    Left = 268
    Top = 120
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    Enabled = False
    TabOrder = 3
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT '
      'ID_FORMA_PGTO,'
      'DESCRICAO,'
      'CADASTRO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 1016
    Top = 176
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
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
    Left = 1016
    Top = 128
  end
end
