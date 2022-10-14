inherited frmUsuario: TfrmUsuario
  Caption = 'Cadastro de Usu'#225'rios'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 39
    Top = 64
    Width = 63
    Height = 13
    Caption = 'ID_USUARIO'
    FocusControl = dbeCodigo
  end
  object Label2: TLabel [1]
    Left = 39
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = dbeNome
  end
  object Label3: TLabel [2]
    Left = 39
    Top = 144
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = dbeSenha
  end
  object Label4: TLabel [3]
    Left = 245
    Top = 144
    Width = 24
    Height = 13
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 446
    Top = 144
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = dbeCadastro
  end
  inherited Panel1: TPanel
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object dbeCodigo: TDBEdit [7]
    Left = 39
    Top = 80
    Width = 134
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object dbeNome: TDBEdit [8]
    Left = 39
    Top = 117
    Width = 541
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object dbeSenha: TDBEdit [9]
    Left = 39
    Top = 160
    Width = 200
    Height = 21
    DataField = 'SENHA'
    DataSource = dsPadrao
    PasswordChar = '*'
    TabOrder = 4
  end
  object dbeCadastro: TDBEdit [10]
    Left = 446
    Top = 160
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 5
  end
  object cbxTipo: TDBComboBox [11]
    Left = 245
    Top = 160
    Width = 195
    Height = 21
    AutoComplete = False
    DataField = 'TIPO'
    DataSource = dsPadrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 6
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    SQL.Strings = (
      'Select ID_USUARIO,'
      '       NOME,'
      '       SENHA,'
      '       TIPO,'
      '       CADASTRO'
      'From USUARIO'
      'Order By ID_USUARIO')
    object qrPadraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qrPadraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object qrPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qrPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
