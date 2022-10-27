inherited FrmPesqCompraFormaPgto: TFrmPesqCompraFormaPgto
  Caption = 'Pesquisa Compras por Forma de Pagamento'
  ExplicitTop = -50
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited GroupBox47: TGroupBox
      Visible = False
      inherited ComboBox1: TComboBox
        Visible = False
      end
    end
    inherited GroupBox1: TGroupBox
      Visible = False
      inherited EDNome: TEdit
        Visible = False
      end
    end
    inherited GroupBox2: TGroupBox
      Left = 13
      ExplicitLeft = 13
      inherited MKInicio: TMaskEdit
        Top = 17
        ExplicitTop = 17
      end
    end
    inherited GroupBox3: TGroupBox
      Left = 174
      ExplicitLeft = 174
    end
    inherited btPesquisa: TBitBtn
      Left = 359
      OnClick = btPesquisaClick
      ExplicitLeft = 359
    end
    inherited btTransferir: TBitBtn
      Left = 505
      Visible = False
      ExplicitLeft = 505
    end
    inherited btImprimir: TBitBtn
      Left = 652
      ExplicitLeft = 652
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'QTD_COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_COMPRA'
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
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    object LbValorCompra: TLabel [1]
      Left = 338
      Top = 16
      Width = 109
      Height = 21
      Caption = 'Valor Compra:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Leelawadee UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited DBNavigator2: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qrPesquisa: TFDQuery
    SQL.Strings = (
      'SELECT '
      ' COUNT(A.ID_COMPRA) AS QTD_COMPRA,'
      ' SUM(A.VALOR) AS VALOR_COMPRA,'
      ' A.ID_FORMA_PGTO,'
      ' B.DESCRICAO '
      'FROM COMPRA A '
      'INNER JOIN FORMA_PGTO B ON B.ID_FORMA_PGTO = A.ID_FORMA_PGTO'
      'GROUP BY A.ID_FORMA_PGTO, B.DESCRICAO'
      'ORDER BY A.ID_FORMA_PGTO, B.DESCRICAO')
    object qrPesquisaQTD_COMPRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_COMPRA'
      Origin = 'QTD_COMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrPesquisaVALOR_COMPRA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
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
  end
end
