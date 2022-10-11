inherited FrmVenda: TFrmVenda
  Caption = 'Cadastro de Vendas'
  ClientHeight = 622
  Position = poScreenCenter
  ExplicitHeight = 651
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btNovo: TBitBtn
      Top = 9
      ExplicitTop = 9
    end
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 562
    ExplicitTop = 562
    inherited DBNavigator1: TDBNavigator
      Left = 631
      Top = 6
      Hints.Strings = ()
      ExplicitLeft = 631
      ExplicitTop = 6
    end
    inherited BitBtn2: TBitBtn
      OnClick = BitBtn2Click
    end
    inherited BitBtn3: TBitBtn
      OnClick = BitBtn3Click
    end
    inherited BitBtn4: TBitBtn
      OnClick = BitBtn4Click
    end
  end
  inherited Panel3: TPanel
    Caption = 'SUBTOTAL'
    object Label1: TLabel
      Left = 56
      Top = 3
      Width = 56
      Height = 13
      Caption = 'ID_VENDA'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 56
      Top = 45
      Width = 64
      Height = 13
      Caption = 'ID_CLIENTE'
      FocusControl = DBID_CLIENTE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 56
      Top = 91
      Width = 97
      Height = 13
      Caption = 'ID_FORMA_PGTO'
      FocusControl = DBID_FormaPgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 204
      Top = 4
      Width = 52
      Height = 13
      Caption = 'USUARIO'
      FocusControl = DBUsuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 615
      Top = 3
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = DBCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 615
      Top = 50
      Width = 37
      Height = 13
      Caption = 'VALOR'
      FocusControl = DBValor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 204
      Top = 45
      Width = 44
      Height = 13
      Caption = 'CLIENTE'
      FocusControl = DBLookupComboBox1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 204
      Top = 94
      Width = 64
      Height = 13
      Caption = 'DESCRICAO'
      FocusControl = DBLookupComboBox2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 615
      Top = 93
      Width = 50
      Height = 13
      Caption = 'PARCELA'
      FocusControl = DBParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 19
      Width = 134
      Height = 21
      DataField = 'ID_VENDA'
      DataSource = dsPadrao
      TabOrder = 0
    end
    object DBID_CLIENTE: TDBEdit
      Left = 56
      Top = 61
      Width = 134
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = dsPadrao
      TabOrder = 1
      OnExit = DBID_CLIENTEExit
    end
    object DBID_FormaPgto: TDBEdit
      Left = 56
      Top = 107
      Width = 134
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = dsPadrao
      TabOrder = 2
      OnExit = DBID_FormaPgtoExit
    end
    object DBUsuario: TDBEdit
      Left = 204
      Top = 16
      Width = 400
      Height = 21
      DataField = 'USUARIO'
      DataSource = dsPadrao
      Enabled = False
      TabOrder = 3
    end
    object DBCadastro: TDBEdit
      Left = 615
      Top = 19
      Width = 150
      Height = 21
      DataField = 'CADASTRO'
      DataSource = dsPadrao
      Enabled = False
      TabOrder = 4
    end
    object DBValor: TDBEdit
      Left = 615
      Top = 66
      Width = 150
      Height = 21
      DataField = 'VALOR'
      DataSource = dsPadrao
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 204
      Top = 61
      Width = 400
      Height = 21
      DataField = 'CLIENTE'
      DataSource = dsPadrao
      TabOrder = 6
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 204
      Top = 109
      Width = 405
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = dsPadrao
      TabOrder = 7
    end
    object DBParcela: TDBEdit
      Left = 615
      Top = 109
      Width = 150
      Height = 21
      DataField = 'PARCELA'
      DataSource = dsPadrao
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 771
      Top = 66
      Width = 150
      Height = 21
      DataField = 'SUBTOTAL'
      DataSource = dsPadraoItem
      TabOrder = 9
      Visible = False
    end
  end
  inherited Panel4: TPanel
    Top = 479
    ExplicitTop = 479
    object Label10: TLabel
      Left = 32
      Top = 24
      Width = 74
      Height = 13
      Caption = 'ID_PRODUTO'
      FocusControl = DBIDProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 179
      Top = 24
      Width = 29
      Height = 13
      Caption = 'QTDE'
      FocusControl = DBQtde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 317
      Top = 21
      Width = 56
      Height = 13
      Caption = 'VL_VENDA'
      FocusControl = DBCusto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 478
      Top = 24
      Width = 58
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = DBDesconto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 645
      Top = 24
      Width = 71
      Height = 13
      Caption = 'TOTAL_ITEM'
      FocusControl = DBTotal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBIDProduto: TDBEdit
      Left = 32
      Top = 40
      Width = 134
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = dsPadraoItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = DBIDProdutoExit
    end
    object DBQtde: TDBEdit
      Left = 179
      Top = 40
      Width = 117
      Height = 21
      DataField = 'QTDE'
      DataSource = dsPadraoItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBCusto: TDBEdit
      Left = 309
      Top = 40
      Width = 153
      Height = 21
      DataField = 'VL_VENDA'
      DataSource = dsPadraoItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBDesconto: TDBEdit
      Left = 478
      Top = 40
      Width = 153
      Height = 21
      DataField = 'DESCONTO'
      DataSource = dsPadraoItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBTotal: TDBEdit
      Left = 645
      Top = 40
      Width = 180
      Height = 21
      DataField = 'TOTAL_ITEM'
      DataSource = dsPadraoItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited PageControl1: TPageControl
    Height = 286
    ExplicitHeight = 286
    inherited TabProduto: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1100
      ExplicitHeight = 258
      inherited DBGrid1: TDBGrid
        Height = 258
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Visible = True
          end>
      end
    end
    inherited TabContasPagar: TTabSheet
      Caption = 'Contas a Receber'
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1100
      ExplicitHeight = 258
      inherited DBGrid3: TDBGrid
        Height = 258
        DataSource = dsContaReceber
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_PARCELA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_VENCIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_PAGAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATRASO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JUROS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_JUROS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_PAGAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = True
          end>
      end
    end
  end
  inherited Q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_VENDA'
    UpdateOptions.AutoIncFields = 'ID_VENDA'
    SQL.Strings = (
      'SELECT '
      'ID_VENDA,'
      'ID_CLIENTE,'
      'ID_FORMA_PGTO,'
      'USUARIO,'
      'VALOR,'
      'CADASTRO,'
      'PARCELA,'
      'TROCO,'
      'DINHEIRO'
      ' FROM VENDA'
      'ORDER BY ID_VENDA'
      '')
    Left = 1024
    Top = 240
    object Q_padraoID_VENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = qrCliente
      LookupKeyFields = 'ID_CLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = qrFormaPgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
    object Q_padraoPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object Q_padraoTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  inherited dsPadrao: TDataSource
    Left = 1032
    Top = 288
  end
  inherited qrPadraoItem: TFDQuery
    Active = True
    IndexFieldNames = 'ID_VENDA'
    AggregatesActive = True
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    SQL.Strings = (
      'SELECT '
      'ID_SEQUENCIA,'
      'ID_VENDA,'
      'ID_PRODUTO,'
      'QTDE,'
      'VL_VENDA,'
      'DESCONTO,'
      'TOTAL_ITEM'
      ' FROM  ITEM_VENDA'
      'WHERE ID_VENDA= :ID_VENDA'
      'ORDER BY ID_SEQUENCIA')
    Left = 928
    Top = 240
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 4
      end>
    object qrPadraoItemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrPadraoItemID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrPadraoItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qrPadraoItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qrPadraoItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrPadraoItemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qrPadraoItemVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qrPadraoItemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  inherited dsPadraoItem: TDataSource
    Left = 928
    Top = 295
  end
  object qrCliente: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      'ID_CLIENTE,'
      'NOME'
      'FROM CLIENTE'
      'ORDER BY ID_CLIENTE')
    Left = 828
    Top = 241
    object qrClienteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrClienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object qrFormaPgto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      'ID_FORMA_PGTO,'
      'DESCRICAO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 748
    Top = 249
    object qrFormaPgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrFormaPgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dsCliente: TDataSource
    DataSet = qrCliente
    Left = 828
    Top = 297
  end
  object dsFormaPgto: TDataSource
    DataSet = qrFormaPgto
    Left = 748
    Top = 297
  end
  object qrProduto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      'ID_PRODUTO,'
      'DESCRICAO,'
      'ESTOQUE,'
      'ESTOQUE_MIN,'
      'VL_VENDA'
      'FROM PRODUTO'
      'ORDER BY ID_PRODUTO')
    Left = 684
    Top = 249
    object qrProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qrProdutoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qrProdutoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object qrProdutoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dsProduto: TDataSource
    DataSet = qrProduto
    Left = 684
    Top = 305
  end
  object qrContaReceber: TFDQuery
    IndexFieldNames = 'ID_VENDA'
    MasterSource = dsPadrao
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      'ID_SEQUENCIA,'
      'ID_VENDA,'
      'VALOR_PARCELA,'
      'DT_VENCIMENTO,'
      'DT_PAGAMENTO,'
      'ATRASO,'
      'JUROS,'
      'VL_JUROS,'
      'TOTAL_PAGAR,'
      'STATUS'
      ''
      'FROM CONTAS_RECEBER'
      'WHERE ID_VENDA = :ID_VENDA'
      'ORDER BY ID_SEQUENCIA')
    Left = 1036
    Top = 369
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 4
      end>
    object qrContaReceberID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrContaReceberID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrContaReceberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object qrContaReceberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object qrContaReceberATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object qrContaReceberJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object qrContaReceberVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      Precision = 18
      Size = 2
    end
    object qrContaReceberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      Precision = 18
      Size = 2
    end
    object qrContaReceberSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
    object qrContaReceberVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsContaReceber: TDataSource
    DataSet = qrContaReceber
    Left = 1036
    Top = 417
  end
end
