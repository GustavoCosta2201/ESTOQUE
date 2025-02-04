inherited FrmCompra01: TFrmCompra01
  Caption = 'Cadastro de Compras'
  ClientWidth = 1193
  Position = poDesktopCenter
  ExplicitWidth = 1199
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1193
    ExplicitWidth = 1193
    inherited btAtualizar: TBitBtn
      Top = 6
      ExplicitTop = 6
    end
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Width = 1193
    ExplicitWidth = 1193
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited btItem: TBitBtn
      OnClick = BitBtn2Click
    end
    inherited BitBtn3: TBitBtn
      OnClick = BitBtn3Click
    end
    inherited BitBtn4: TBitBtn
      OnClick = BitBtn4Click
    end
    inherited BitBtn5: TBitBtn
      OnClick = BitBtn5Click
    end
  end
  inherited Panel3: TPanel
    Width = 1193
    ExplicitWidth = 1193
    object Label1: TLabel
      Left = 58
      Top = 1
      Width = 68
      Height = 13
      Caption = 'ID_COMPRA'
      FocusControl = DBIDCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 58
      Top = 42
      Width = 92
      Height = 13
      Caption = 'ID_FORNECEDOR'
      FocusControl = DBIDFornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 198
      Top = 1
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = DBCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 364
      Top = 1
      Width = 52
      Height = 13
      Caption = 'USUARIO'
      FocusControl = DBUsuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 632
      Top = 1
      Width = 37
      Height = 13
      Caption = 'VALOR'
      FocusControl = DBValor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 198
      Top = 42
      Width = 31
      Height = 13
      Caption = 'NOME'
      FocusControl = DBNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 58
      Top = 88
      Width = 97
      Height = 13
      Caption = 'ID_FORMA_PGTO'
      FocusControl = DBIDFormaPgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 198
      Top = 88
      Width = 64
      Height = 13
      Caption = 'DSECRICAO'
      FocusControl = DBDescricao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBIDCompra: TDBEdit
      Left = 58
      Top = 17
      Width = 134
      Height = 21
      DataField = 'ID_COMPRA'
      DataSource = dsPadrao
      TabOrder = 0
    end
    object DBIDFornecedor: TDBEdit
      Left = 58
      Top = 58
      Width = 134
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = dsPadrao
      TabOrder = 4
    end
    object DBCadastro: TDBEdit
      Left = 198
      Top = 17
      Width = 134
      Height = 21
      DataField = 'CADASTRO'
      DataSource = dsPadrao
      TabOrder = 1
    end
    object DBUsuario: TDBEdit
      Left = 364
      Top = 17
      Width = 250
      Height = 21
      DataField = 'USUARIO'
      DataSource = dsPadrao
      Enabled = False
      TabOrder = 2
    end
    object DBValor: TDBEdit
      Left = 632
      Top = 17
      Width = 150
      Height = 21
      DataField = 'VALOR'
      DataSource = dsPadrao
      TabOrder = 3
    end
    object DBNome: TDBLookupComboBox
      Left = 198
      Top = 58
      Width = 590
      Height = 21
      DataField = 'NOME'
      DataSource = dsPadrao
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 632
      Top = 17
      Width = 150
      Height = 21
      DataField = 'SUBTOTAL'
      DataSource = dsPadraoItem
      TabOrder = 6
    end
    object btCheck: TBitBtn
      Left = 816
      Top = 52
      Width = 75
      Height = 33
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000170000004C0000
        007F000000B3000000E6000000E6000000B3000000800000004C000000170000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000600000084000000FB000000FF0000
        00FF000000FF000000F5000000F5000000FF000000FF000000FF000000FB0000
        0084000000060000000000000000000000000000000000000000000000000000
        0000000000000000000000000031000000D1000000FF000000EE000000920000
        005E0000002C00000003000000030000002C0000005E00000092000000EE0000
        00FF000000D10000003100000000000000000000000000000000000000000000
        0000000000000000006B000000FA000000FF000000B70000001A000000000000
        00000000000000000000000000000000000000000000000000000000001A0000
        00B7000000FF000000FA0000006B000000000000000000000000000000000000
        000000000031000000FA000000F5000000650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000065000000F5000000FA000000310000000000000000000000000000
        0006000000D1000000FF00000065000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000065000000FF000000D10000000600000000000000000000
        0084000000FF000000B700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000B7000000FF0000008400000000000000170000
        00FB000000EE0000001A00000000000000000000000000000000000000000000
        0000000000050000000000000000000000000000000000000000000000000000
        000000000000000000000000001A000000EE000000FB000000170000004C0000
        00FF000000920000000000000000000000000000000000000000000000020000
        0098000000F40000005400000000000000000000000000000000000000000000
        000000000000000000000000000000000092000000FF0000004C000000800000
        00FF0000005E00000000000000000000000000000000000000020000009E0000
        00FF000000FF000000FB00000055000000000000000000000000000000000000
        00000000000000000000000000000000005E000000FF0000007F000000B30000
        00FF0000002C000000000000000000000000000000020000009E000000FF0000
        00E300000076000000FC000000FB000000570000000000000000000000000000
        00000000000000000000000000000000002C000000FF000000B3000000E60000
        00F5000000030000000000000000000000000000006D000000FF000000E30000
        0024000000000000005B000000FC000000FC0000005800000000000000000000
        000000000000000000000000000000000003000000F5000000E6000000E60000
        00F5000000030000000000000000000000000000003B000000AA000000240000
        000000000000000000000000005B000000FC000000FC00000059000000000000
        000000000000000000000000000000000003000000F5000000E6000000B30000
        00FF0000002C0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000005B000000FC000000FC0000005A0000
        00000000000000000000000000000000002C000000FF000000B3000000800000
        00FF0000005E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000005B000000FC000000FC0000
        00450000000000000000000000000000005E000000FF0000007F0000004C0000
        00FF000000920000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000005B000000F50000
        006700000000000000000000000000000092000000FF0000004C000000170000
        00FB000000EE0000001A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000050000
        000000000000000000000000001A000000EE000000FB00000017000000000000
        0084000000FF000000B700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000B7000000FF0000008400000000000000000000
        0006000000D1000000FF00000065000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000065000000FF000000D10000000600000000000000000000
        000000000031000000FA000000F5000000650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000065000000F5000000FA000000310000000000000000000000000000
        0000000000000000006B000000FA000000FF000000B70000001A000000000000
        00000000000000000000000000000000000000000000000000000000001A0000
        00B7000000FF000000FA0000006B000000000000000000000000000000000000
        0000000000000000000000000031000000D1000000FF000000EE000000920000
        005E0000002C00000003000000030000002C0000005E00000092000000EE0000
        00FF000000D10000003100000000000000000000000000000000000000000000
        00000000000000000000000000000000000600000084000000FB000000FF0000
        00FF000000FF000000F5000000F5000000FF000000FF000000FF000000FB0000
        0084000000060000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000170000004C0000
        007F000000B3000000E6000000E6000000B3000000800000004C000000170000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 7
      OnClick = btCheckClick
    end
    object DBIDFormaPgto: TDBEdit
      Left = 58
      Top = 104
      Width = 134
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = dsPadrao
      TabOrder = 8
      OnExit = DBIDFormaPgtoExit
    end
    object DBDescricao: TDBLookupComboBox
      Left = 198
      Top = 104
      Width = 590
      Height = 21
      DataField = 'DSECRICAO'
      DataSource = dsPadrao
      TabOrder = 9
    end
    object DBCondPgto: TDBEdit
      Left = 794
      Top = 104
      Width = 134
      Height = 21
      DataField = 'COND_PGTO'
      DataSource = dsPadrao
      TabOrder = 10
    end
    object btBusca: TBitBtn
      Left = 944
      Top = 99
      Width = 75
      Height = 31
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000170000004C0000
        007F000000B3000000E6000000E6000000B3000000800000004C000000170000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000600000084000000FB000000FF0000
        00FF000000FF000000F5000000F5000000FF000000FF000000FF000000FB0000
        0084000000060000000000000000000000000000000000000000000000000000
        0000000000000000000000000031000000D1000000FF000000EE000000920000
        005E0000002C00000003000000030000002C0000005E00000092000000EE0000
        00FF000000D10000003100000000000000000000000000000000000000000000
        0000000000000000006B000000FA000000FF000000B70000001A000000000000
        00000000000000000000000000000000000000000000000000000000001A0000
        00B7000000FF000000FA0000006B000000000000000000000000000000000000
        000000000031000000FA000000F5000000650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000065000000F5000000FA000000310000000000000000000000000000
        0006000000D1000000FF00000065000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000065000000FF000000D10000000600000000000000000000
        0084000000FF000000B700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000B7000000FF0000008400000000000000170000
        00FB000000EE0000001A00000000000000000000000000000000000000000000
        0000000000050000000000000000000000000000000000000000000000000000
        000000000000000000000000001A000000EE000000FB000000170000004C0000
        00FF000000920000000000000000000000000000000000000000000000020000
        0098000000F40000005400000000000000000000000000000000000000000000
        000000000000000000000000000000000092000000FF0000004C000000800000
        00FF0000005E00000000000000000000000000000000000000020000009E0000
        00FF000000FF000000FB00000055000000000000000000000000000000000000
        00000000000000000000000000000000005E000000FF0000007F000000B30000
        00FF0000002C000000000000000000000000000000020000009E000000FF0000
        00E300000076000000FC000000FB000000570000000000000000000000000000
        00000000000000000000000000000000002C000000FF000000B3000000E60000
        00F5000000030000000000000000000000000000006D000000FF000000E30000
        0024000000000000005B000000FC000000FC0000005800000000000000000000
        000000000000000000000000000000000003000000F5000000E6000000E60000
        00F5000000030000000000000000000000000000003B000000AA000000240000
        000000000000000000000000005B000000FC000000FC00000059000000000000
        000000000000000000000000000000000003000000F5000000E6000000B30000
        00FF0000002C0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000005B000000FC000000FC0000005A0000
        00000000000000000000000000000000002C000000FF000000B3000000800000
        00FF0000005E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000005B000000FC000000FC0000
        00450000000000000000000000000000005E000000FF0000007F0000004C0000
        00FF000000920000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000005B000000F50000
        006700000000000000000000000000000092000000FF0000004C000000170000
        00FB000000EE0000001A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000050000
        000000000000000000000000001A000000EE000000FB00000017000000000000
        0084000000FF000000B700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000B7000000FF0000008400000000000000000000
        0006000000D1000000FF00000065000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000065000000FF000000D10000000600000000000000000000
        000000000031000000FA000000F5000000650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000065000000F5000000FA000000310000000000000000000000000000
        0000000000000000006B000000FA000000FF000000B70000001A000000000000
        00000000000000000000000000000000000000000000000000000000001A0000
        00B7000000FF000000FA0000006B000000000000000000000000000000000000
        0000000000000000000000000031000000D1000000FF000000EE000000920000
        005E0000002C00000003000000030000002C0000005E00000092000000EE0000
        00FF000000D10000003100000000000000000000000000000000000000000000
        00000000000000000000000000000000000600000084000000FB000000FF0000
        00FF000000FF000000F5000000F5000000FF000000FF000000FF000000FB0000
        0084000000060000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000170000004C0000
        007F000000B3000000E6000000E6000000B3000000800000004C000000170000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 11
    end
  end
  inherited Panel4: TPanel
    Width = 1193
    Font.Color = clWhite
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 1193
    object Label9: TLabel
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
    object Label10: TLabel
      Left = 179
      Top = 24
      Width = 29
      Height = 13
      Caption = 'QTDE'
      FocusControl = DBQtde
    end
    object Label11: TLabel
      Left = 317
      Top = 21
      Width = 57
      Height = 13
      Caption = 'VL_CUSTO'
      FocusControl = DBCusto
    end
    object Label12: TLabel
      Left = 478
      Top = 24
      Width = 58
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = DBDesconto
    end
    object Label13: TLabel
      Left = 645
      Top = 24
      Width = 71
      Height = 13
      Caption = 'TOTAL_ITEM'
      FocusControl = DBTotal
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
      OnClick = DBQtdeClick
      OnExit = DBQtdeExit
    end
    object DBCusto: TDBEdit
      Left = 309
      Top = 40
      Width = 153
      Height = 21
      DataField = 'VL_CUSTO'
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
      OnClick = DBDescontoClick
      OnExit = DBDescontoExit
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
    Width = 1193
    ActivePage = TabProduto
    ExplicitWidth = 1193
    inherited TabProduto: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1185
      ExplicitHeight = 256
      inherited DBGrid1: TDBGrid
        Width = 1185
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
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 380
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_CUSTO'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_ITEM'
            Visible = True
          end>
      end
    end
    inherited TabContasPagar: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1185
      ExplicitHeight = 256
      object DBGrid2: TDBGrid [0]
        Left = 0
        Top = 0
        Width = 1185
        Height = 256
        Align = alClient
        DataSource = dsContasPagar
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      inherited DBGrid3: TDBGrid
        Width = 1185
        DataSource = dsContasPagar
        TabOrder = 1
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
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT'
      'A.ID_COMPRA,'
      'A.ID_FORNECEDOR,'
      'B.NOME,'
      'A.ID_FORMA_PGTO,'
      'A.COND_PGTO,'
      'C.DESCRICAO,'
      'A.USUARIO,'
      'A.CADASTRO,'
      'A.VALOR'
      ' FROM COMPRA A, FORNECEDOR B, FORMA_PGTO C'
      'WHERE A.ID_FORNECEDOR = B.ID_FORNECEDOR'
      'AND C.ID_FORMA_PGTO = A.ID_FORMA_PGTO'
      'ORDER BY A.ID_COMPRA')
    Left = 1032
    Top = 276
    object Q_padraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = qrFornecedor
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object Q_padraoDSECRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DSECRICAO'
      LookupDataSet = qrFormaPgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 60
      Lookup = True
    end
    object Q_padraoCOND_PGTO: TIntegerField
      FieldName = 'COND_PGTO'
      Origin = 'COND_PGTO'
    end
    object Q_padraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
  end
  inherited dsPadrao: TDataSource
    Left = 1024
    Top = 336
  end
  inherited qrPadraoItem: TFDQuery
    Active = True
    IndexFieldNames = 'ID_COMPRA'
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT ID_SEQUENCIA,'
      '       ID_COMPRA,'
      '       ID_PRODUTO,'
      '       QTDE,'
      '       VL_CUSTO,'
      '       TOTAL_ITEM,'
      '       DESCONTO'
      ' FROM ITEM_COMPRA'
      'WHERE ID_COMPRA =:ID_COMPRA')
    Left = 962
    Top = 277
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 3
      end>
    object qrPadraoItemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrPadraoItemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
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
    object qrPadraoItemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
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
    object qrPadraoItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object qrPadraoItemDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = qrProduto
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
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
    Left = 960
    Top = 335
  end
  object qrFornecedor: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_FORNECEDOR,'
      '       NOME'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    Left = 888
    Top = 279
    object qrFornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrFornecedorNOME: TStringField
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
      '  ID_FORMA_PGTO,'
      '  DESCRICAO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 816
    Top = 280
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
  object dsFornecedor: TDataSource
    DataSet = qrFornecedor
    Left = 888
    Top = 336
  end
  object dsFormaPgto: TDataSource
    DataSet = qrFormaPgto
    Left = 808
    Top = 336
  end
  object qrProduto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  ID_PRODUTO,'
      '  DESCRICAO,'
      '  ESTOQUE,'
      '  ESTOQUE_MIN,'
      '  VL_CUSTO'
      'FROM PRODUTO'
      'ORDER BY ID_PRODUTO')
    Left = 688
    Top = 280
  end
  object RelReciboCompra: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44840.443463877300000000
    ReportOptions.LastChange = 44840.502004919000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 256
    Datasets = <
      item
        DataSet = dsRelEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = dsItem
        DataSetName = 'frxDBItem'
      end
      item
        DataSet = dsReciboCompra
        DataSetName = 'frxDBReciboCompra'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 207.874150000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxDBEmpresaENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 50.456710000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = dsRelEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."ENDERECO"]')
          ParentFont = False
        end
        object frxDBEmpresaNUMERO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 54.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = dsRelEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NUMERO"]')
        end
        object frxDBEmpresaBAIRRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 77.472480000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = dsRelEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."BAIRRO"]')
          ParentFont = False
        end
        object frxDBEmpresaCIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 101.606370000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = dsRelEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CIDADE"]')
          ParentFont = False
        end
        object frxDBEmpresaUF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 101.606370000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = dsRelEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."UF"]')
        end
        object frxDBEmpresaCEP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 123.842610000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = dsRelEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CEP"]')
          ParentFont = False
        end
        object frxDBEmpresaTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 123.842610000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = dsRelEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."TELEFONE"]')
        end
        object frxDBEmpresaEMAIL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 148.740260000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'EMAIL'
          DataSet = dsRelEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."EMAIL"]')
        end
        object frxDBEmpresaN_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 20.220470000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'N_FANTASIA'
          DataSet = dsRelEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBEmpresa."N_FANTASIA"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 12.661410000000000000
          Width = 102.047310000000000000
          Height = 147.401596770000000000
          DataField = 'LOGO'
          DataSet = dsRelEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 20.220470000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 54.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 77.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 101.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 123.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 148.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 123.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 54.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 101.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 714.331170000000000000
          Height = 200.315090000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
      end
      object Mestre: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        DataSet = dsReciboCompra
        DataSetName = 'frxDBReciboCompra'
        RowCount = 0
        object frxDBReciboCompraID_COMPRA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_COMPRA'
          DataSet = dsReciboCompra
          DataSetName = 'frxDBReciboCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReciboCompra."ID_COMPRA"]')
          ParentFont = False
        end
        object frxDBReciboCompraNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = dsReciboCompra
          DataSetName = 'frxDBReciboCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReciboCompra."NOME"]')
          ParentFont = False
        end
        object frxDBReciboCompraVALOR: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 423.307360000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = dsReciboCompra
          DataSetName = 'frxDBReciboCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReciboCompra."VALOR"]')
          ParentFont = False
        end
        object frxDBReciboCompraCADASTRO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = dsReciboCompra
          DataSetName = 'frxDBReciboCompra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReciboCompra."CADASTRO"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 423.307360000000000000
        Width = 718.110700000000000000
        DataSet = dsItem
        DataSetName = 'frxDBItem'
        RowCount = 0
        object frxDBItemID_SEQUENCIA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = dsItem
          DataSetName = 'frxDBItem'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItem."ID_SEQUENCIA"]')
        end
        object frxDBItemID_PRODUTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_PRODUTO'
          DataSet = dsItem
          DataSetName = 'frxDBItem'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItem."ID_PRODUTO"]')
        end
        object frxDBItemDESCRICAO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = dsItem
          DataSetName = 'frxDBItem'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItem."DESCRICAO"]')
        end
        object frxDBItemQTDE: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 347.716760000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE'
          DataSet = dsItem
          DataSetName = 'frxDBItem'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItem."QTDE"]')
        end
        object frxDBItemVL_CUSTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 423.307360000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'VL_CUSTO'
          DataSet = dsItem
          DataSetName = 'frxDBItem'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItem."VL_CUSTO"]')
        end
        object frxDBItemTOTAL_ITEM: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_ITEM'
          DataSet = dsItem
          DataSetName = 'frxDBItem'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBItem."TOTAL_ITEM"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome do Fornecedor:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object dsReciboCompra: TfrxDBDataset
    UserName = 'frxDBReciboCompra'
    CloseDataSource = False
    DataSet = Q_padrao
    BCDToCurrency = False
    Left = 48
    Top = 312
  end
  object qrEmpresa: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      'ID_EMPRESA,'
      'RAZAO_SOCIAL,'
      'N_FANTASIA,'
      'ENDERECO,'
      'NUMERO,'
      'BAIRRO,'
      'CIDADE,'
      'UF,'
      'CEP,'
      'TELEFONE,'
      'CNPJ,'
      'EMAIL,'
      'LOGO,'
      'CADASTRO'
      ''
      ' FROM EMPRESA')
    Left = 752
    Top = 280
    object qrEmpresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrEmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object qrEmpresaN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object qrEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object qrEmpresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object qrEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object qrEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object qrEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qrEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 14
    end
    object qrEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object qrEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object qrEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object qrEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object qrEmpresaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object dsEmpresa: TDataSource
    DataSet = qrEmpresa
    Left = 744
    Top = 336
  end
  object dsRelEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    DataSet = qrEmpresa
    BCDToCurrency = False
    Left = 128
    Top = 312
  end
  object dsItem: TfrxDBDataset
    UserName = 'frxDBItem'
    CloseDataSource = False
    DataSet = qrPadraoItem
    BCDToCurrency = False
    Left = 200
    Top = 312
  end
  object qrContasPagar: TFDQuery
    Active = True
    IndexFieldNames = 'ID_COMPRA'
    MasterSource = dsPadrao
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT '
      'ID_SEQUENCIA,'
      'ID_COMPRA,'
      'VL_PARCELA,'
      'DT_VENCIMENTO,'
      'DT_PAGAMENTO,'
      'ATRASO,'
      'JUROS,'
      'VL_JUROS,'
      'TOTAL_PAGAR,'
      'STATUS'
      ''
      'FROM CONTAS_PAGAR'
      'WHERE ID_COMPRA = :ID_COMPRA')
    Left = 620
    Top = 281
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 3
      end>
    object qrContasPagarID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrContasPagarID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrContasPagarVL_PARCELA: TFMTBCDField
      FieldName = 'VL_PARCELA'
      Origin = 'VL_PARCELA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qrContasPagarDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object qrContasPagarDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object qrContasPagarATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object qrContasPagarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object qrContasPagarVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      Precision = 18
      Size = 2
    end
    object qrContasPagarTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      Precision = 18
      Size = 2
    end
    object qrContasPagarSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object dsContasPagar: TDataSource
    DataSet = qrContasPagar
    Left = 620
    Top = 337
  end
end
