inherited FrmPesqVendaFormaPgto: TFrmPesqVendaFormaPgto
  Caption = 'Pesquisa de Vendas por Forma de Pagamento'
  ExplicitTop = -50
  ExplicitWidth = 1289
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited GroupBox47: TGroupBox
      Left = 799
      Top = 30
      Visible = False
      ExplicitLeft = 799
      ExplicitTop = 30
      inherited ComboBox1: TComboBox
        Visible = False
      end
    end
    inherited GroupBox1: TGroupBox
      Left = 1029
      Top = 30
      Visible = False
      ExplicitLeft = 1029
      ExplicitTop = 30
      inherited EDNome: TEdit
        Visible = False
      end
    end
    inherited GroupBox2: TGroupBox
      Left = 21
      Top = 35
      ExplicitLeft = 21
      ExplicitTop = 35
      inherited MKInicio: TMaskEdit
        Top = 17
        ExplicitTop = 17
      end
    end
    inherited GroupBox3: TGroupBox
      Left = 182
      Top = 35
      ExplicitLeft = 182
      ExplicitTop = 35
    end
    inherited btPesquisa: TBitBtn
      Left = 367
      Top = 36
      OnClick = btPesquisaClick
      ExplicitLeft = 367
      ExplicitTop = 36
    end
    inherited btTransferir: TBitBtn
      Visible = False
    end
    inherited btImprimir: TBitBtn
      Left = 660
      Top = 36
      OnClick = btImprimirClick
      ExplicitLeft = 660
      ExplicitTop = 36
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'QTDE_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_VENDA'
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
    object LbValorVenda: TLabel [1]
      Left = 338
      Top = 16
      Width = 98
      Height = 21
      Caption = 'Valor Venda:'
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
    Active = True
    SQL.Strings = (
      
        'select count(A.id_venda)as qtde_venda,sum(A.valor)as valor_venda' +
        ', '
      'A.id_forma_pgto,b.descricao'
      'from venda A'
      'inner join FORMA_PGTO b on b.ID_FORMA_PGTO=a.ID_FORMA_PGTO'
      'group by A.id_forma_pgto,b.DESCRICAO')
    object qrPesquisaQTDE_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE_VENDA'
      Origin = 'QTDE_VENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrPesquisaVALOR_VENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qrPesquisaID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
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
  inherited frxDBDataset1: TfrxDBDataset
    DataSet = qrPesquisa
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44862.408141111100000000
    ReportOptions.LastChange = 44862.483041504630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 184
    Top = 288
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Data'
        Value = Null
      end
      item
        Name = 'DataIni'
        Value = Null
      end
      item
        Name = 'DataFim'
        Value = Null
      end
      item
        Name = 'Nome'
        Value = Null
      end
      item
        Name = 'Quantidade'
        Value = Null
      end
      item
        Name = 'ValorVenda'
        Value = Null
      end>
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
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDAS AGRUPADAS POR FORMA DE PAGAMENTO')
          ParentFont = False
        end
        object DataIni: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataIni]')
          ParentFont = False
        end
        object DataFim: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DataFim]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 34.015770000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No Per'#237'odo de:')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 702.992580000000000000
          Height = 86.929190000000000000
          Frame.Typ = []
          Shape = skRoundRectangle
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QUANTIDADE:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALORES:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORMAS DE PAGAMENTO:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1QTD_COMPRA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE_VENDA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."QTDE_VENDA"]')
        end
        object frxDBDataset1VALOR_COMPRA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_VENDA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_VENDA"]')
        end
        object frxDBDataset1ID_FORMA_PGTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_FORMA_PGTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ID_FORMA_PGTO"]')
        end
        object frxDBDataset1DESCRICAO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRICAO"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 105.826840000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        object Quantidade: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Quantidade]')
          ParentFont = False
        end
        object ValorCompra: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 11.338590000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[ValorVenda]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 60.472480000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMITIDO POR:')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 64.252010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 64.252010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 60.472480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Nome]')
          ParentFont = False
        end
      end
      object Chart1: TfrxChartView
        AllowVectorExport = True
        Left = 26.456710000000000000
        Top = 453.543600000000000000
        Width = 612.283860000000000000
        Height = 207.874150000000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080B4178697356697369626C65080D4672616D652E5669736962
          6C6508175669657733444F7074696F6E732E456C65766174696F6E033B011856
          69657733444F7074696F6E732E4F7274686F676F6E616C08195669657733444F
          7074696F6E732E50657273706563746976650200165669657733444F7074696F
          6E732E526F746174696F6E0368010B56696577334457616C6C73080A42657665
          6C4F75746572070662764E6F6E6505436F6C6F720707636C57686974650D4465
          6661756C7443616E766173060E54474449506C757343616E76617311436F6C6F
          7250616C65747465496E646578020D000A545069655365726965730753657269
          657331114D61726B732E466F6E742E48656967687402F70D4D61726B732E5669
          7369626C6508144D61726B732E43616C6C6F75742E4C656E67746802000D5856
          616C7565732E4F72646572070B6C6F417363656E64696E670C5956616C756573
          2E4E616D6506035069650D5956616C7565732E4F7264657207066C6F4E6F6E65
          1A4672616D652E496E6E657242727573682E4261636B436F6C6F720705636C52
          6564224672616D652E496E6E657242727573682E4772616469656E742E456E64
          436F6C6F720706636C47726179224672616D652E496E6E657242727573682E47
          72616469656E742E4D6964436F6C6F720707636C5768697465244672616D652E
          496E6E657242727573682E4772616469656E742E5374617274436F6C6F720440
          404000214672616D652E496E6E657242727573682E4772616469656E742E5669
          7369626C65091B4672616D652E4D6964646C6542727573682E4261636B436F6C
          6F720708636C59656C6C6F77234672616D652E4D6964646C6542727573682E47
          72616469656E742E456E64436F6C6F720482828200234672616D652E4D696464
          6C6542727573682E4772616469656E742E4D6964436F6C6F720707636C576869
          7465254672616D652E4D6964646C6542727573682E4772616469656E742E5374
          617274436F6C6F720706636C47726179224672616D652E4D6964646C65427275
          73682E4772616469656E742E56697369626C65091A4672616D652E4F75746572
          42727573682E4261636B436F6C6F720707636C477265656E224672616D652E4F
          7574657242727573682E4772616469656E742E456E64436F6C6F720440404000
          224672616D652E4F7574657242727573682E4772616469656E742E4D6964436F
          6C6F720707636C5768697465244672616D652E4F7574657242727573682E4772
          616469656E742E5374617274436F6C6F720708636C53696C766572214672616D
          652E4F7574657242727573682E4772616469656E742E56697369626C65090B46
          72616D652E57696474680204114772616469656E742E456E64436F6C6F72042B
          406B00134772616469656E742E5374617274436F6C6F72042B406B00194F7468
          6572536C6963652E4C6567656E642E56697369626C6508000000}
        ChartElevation = 315
        SeriesData = <
          item
            DataType = dtDBData
            DataBand = frxReport1.MasterData1
            DataSet = frxDBDataset1
            DataSetName = 'frxDBDataset1'
            SortOrder = soDescending
            TopN = 8
            XType = xtText
            Source1 = 'frxDBDataset1."DESCRICAO"'
            Source2 = 'frxDBDataset1."VALOR_VENDA"'
            XSource = 'frxDBDataset1."DESCRICAO"'
            YSource = 'frxDBDataset1."VALOR_VENDA"'
          end>
      end
    end
  end
  object frxChartObject1: TfrxChartObject
    Left = 248
    Top = 296
  end
end
