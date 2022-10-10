inherited FrmVenda: TFrmVenda
  Caption = 'Cadastro de Vendas'
  Position = poScreenCenter
  ExplicitTop = -29
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited DBNavigator1: TDBNavigator
      Left = 631
      Top = 6
      Hints.Strings = ()
      ExplicitLeft = 631
      ExplicitTop = 6
    end
  end
  inherited Panel3: TPanel
    ExplicitTop = 58
    object Label1: TLabel
      Left = 56
      Top = 0
      Width = 50
      Height = 13
      Caption = 'ID_VENDA'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 56
      Top = 42
      Width = 58
      Height = 13
      Caption = 'ID_CLIENTE'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 56
      Top = 88
      Width = 86
      Height = 13
      Caption = 'ID_FORMA_PGTO'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 204
      Top = 1
      Width = 46
      Height = 14
      Caption = 'USUARIO'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 16
      Width = 134
      Height = 21
      DataField = 'ID_VENDA'
      DataSource = dsPadrao
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 56
      Top = 58
      Width = 134
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = dsPadrao
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 56
      Top = 104
      Width = 134
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = dsPadrao
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 204
      Top = 16
      Width = 1304
      Height = 21
      DataField = 'USUARIO'
      DataSource = dsPadrao
      TabOrder = 3
    end
  end
  inherited PageControl1: TPageControl
    ActivePage = TabProduto
    ExplicitTop = 187
    inherited TabProduto: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1100
      ExplicitHeight = 256
    end
    inherited TabContasPagar: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1100
      ExplicitHeight = 256
    end
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      'ID_VENDA,'
      'ID_CLIENTE,'
      'ID_FORMA_PGTO,'
      'USUARIO,'
      'VALOR,'
      'CADASTRO'
      ' FROM VENDA'
      'ORDER BY ID_VENDA'
      '')
    object Q_padraoID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
      Precision = 18
      Size = 2
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
