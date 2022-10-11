inherited FrmProduto: TFrmProduto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 376
  ExplicitHeight = 405
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 128
    Top = 88
    Width = 66
    Height = 13
    Caption = 'ID_PRODUTO'
    FocusControl = DBIDProduto
  end
  object Label2: TLabel [1]
    Left = 128
    Top = 128
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DBDescricao
  end
  object Label3: TLabel [2]
    Left = 128
    Top = 168
    Width = 51
    Height = 13
    Caption = 'VL_CUSTO'
    FocusControl = DBVLCusto
  end
  object Label4: TLabel [3]
    Left = 284
    Top = 168
    Width = 50
    Height = 13
    Caption = 'VL_VENDA'
    FocusControl = DBVLVenda
  end
  object Label5: TLabel [4]
    Left = 445
    Top = 166
    Width = 47
    Height = 13
    Caption = 'ESTOQUE'
    FocusControl = DBEstoque
  end
  object Label6: TLabel [5]
    Left = 596
    Top = 168
    Width = 72
    Height = 13
    Caption = 'ESTOQUE_MIN'
    FocusControl = DBEstoqueMin
  end
  object Label7: TLabel [6]
    Left = 124
    Top = 216
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
  end
  object Label8: TLabel [7]
    Left = 268
    Top = 88
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DBCadastro
  end
  object Label11: TLabel [8]
    Left = 58
    Top = 42
    Width = 92
    Height = 13
    Caption = 'ID_FORNECEDOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel [9]
    Left = 198
    Top = 42
    Width = 31
    Height = 13
    Caption = 'NOME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [10]
    Left = 350
    Top = 219
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit1
  end
  object Label10: TLabel [11]
    Left = 198
    Top = 219
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = DBEdit2
  end
  inherited Panel1: TPanel
    TabOrder = 8
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 327
    TabOrder = 9
    ExplicitTop = 327
    inherited DBNavigator1: TDBNavigator
      Left = 208
      Top = 325
      Width = 652
      Align = alCustom
      Hints.Strings = ()
      ExplicitLeft = 208
      ExplicitTop = 325
      ExplicitWidth = 652
    end
  end
  object DBIDProduto: TDBEdit [14]
    Left = 128
    Top = 104
    Width = 134
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = dsPadrao
    TabOrder = 0
  end
  object DBDescricao: TDBEdit [15]
    Left = 128
    Top = 144
    Width = 618
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object DBVLCusto: TDBEdit [16]
    Left = 128
    Top = 184
    Width = 150
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object DBVLVenda: TDBEdit [17]
    Left = 284
    Top = 184
    Width = 150
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object DBEstoque: TDBEdit [18]
    Left = 440
    Top = 184
    Width = 150
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object DBEstoqueMin: TDBEdit [19]
    Left = 596
    Top = 184
    Width = 150
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object DBCadastro: TDBEdit [20]
    Left = 268
    Top = 104
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 1
  end
  object DBCUnidade: TDBComboBox [21]
    Left = 124
    Top = 235
    Width = 45
    Height = 21
    DataField = 'UNIDADE'
    DataSource = dsPadrao
    Items.Strings = (
      'KG'
      'ML'
      'PCT'
      'P'#199
      'LT'
      'UN')
    TabOrder = 7
  end
  object DBEdit1: TDBEdit [22]
    Left = 350
    Top = 235
    Width = 400
    Height = 21
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 10
  end
  object DBEdit2: TDBEdit [23]
    Left = 198
    Top = 235
    Width = 134
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsPadrao
    TabOrder = 11
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    SQL.Strings = (
      'SELECT A.ID_PRODUTO ,'
      '       A.DESCRICAO ,'
      '       A.VL_CUSTO ,'
      '       A.VL_VENDA ,'
      '       A.ESTOQUE ,'
      '       A.ESTOQUE_MIN ,'
      '       A.UNIDADE ,'
      '       A.ID_FORNECEDOR ,      '
      '       A.CADASTRO ,'
      '       B.NOME'
      ''
      'FROM PRODUTO A, FORNECEDOR B'
      'WHERE A.ID_FORNECEDOR = B.ID_FORNECEDOR'
      '')
    Left = 888
    Top = 128
    object Q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere]
      Required = True
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoFORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = qrFornecedorProduto
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
  end
  inherited dsPadrao: TDataSource
    Left = 888
    Top = 184
  end
  object qrFornecedorProduto: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      'ID_FORNECEDOR,'
      'NOME'
      ' FROM FORNECEDOR')
    Left = 968
    Top = 120
    object qrFornecedorProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrFornecedorProdutoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object dsFornecedorProduto: TDataSource
    DataSet = qrFornecedorProduto
    Left = 968
    Top = 176
  end
end
