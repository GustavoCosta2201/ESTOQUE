inherited FrmPesqVendas: TFrmPesqVendas
  Caption = 'Formul'#225'rio de Pesquisas de Vendas'
  ExplicitWidth = 1289
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited GroupBox47: TGroupBox
      inherited ComboBox1: TComboBox
        Items.Strings = (
          'C'#211'DIGO'
          'USU'#193'RIO'
          'C'#211'DIGO DO FORNECEDOR'
          'C'#211'DIGO DA FORMA DE PAGAMENTO'
          'CADASTRO'
          'PER'#205'ODO'
          'TODOS')
        ExplicitLeft = 1
        ExplicitTop = 25
      end
    end
    inherited btPesquisa: TBitBtn
      OnClick = btPesquisaClick
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
  inherited qrPesquisa: TFDQuery
    SQL.Strings = (
      'SELECT '
      'A.ID_VENDA,'
      'A.ID_CLIENTE,'
      'B.NOME,'
      'A.ID_FORMA_PGTO,'
      'C.DESCRICAO,'
      'A.USUARIO,'
      'A.CADASTRO,'
      'A.VALOR'
      'FROM VENDA A, CLIENTE B, FORMA_PGTO C'
      'WHERE A.ID_CLIENTE = B.ID_CLIENTE'
      'AND C.ID_FORMA_PGTO = A.ID_FORMA_PGTO'
      'ORDER BY A.ID_VENDA'
      ' ')
    object qrPesquisaID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrPesquisaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object qrPesquisaNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qrPesquisaID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object qrPesquisaDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qrPesquisaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object qrPesquisaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qrPesquisaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
end
