object FrmPesquisa: TFrmPesquisa
  Left = 0
  Top = 0
  ClientHeight = 477
  ClientWidth = 1273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnDblClick = FormDblClick
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1273
    Height = 113
    Align = alTop
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object GroupBox47: TGroupBox
      Left = 15
      Top = 32
      Width = 226
      Height = 49
      Caption = 'Op'#231#245'es de Pesquisa'
      TabOrder = 0
      object ComboBox1: TComboBox
        Left = 2
        Top = 20
        Width = 222
        Height = 21
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = ComboBox1Change
        Items.Strings = (
          'C'#211'DIGO'
          'NOME'
          'CADASTRO'
          'PER'#205'ODO'
          'TODOS')
      end
    end
    object GroupBox1: TGroupBox
      Left = 253
      Top = 35
      Width = 258
      Height = 40
      Caption = 'Nome'
      TabOrder = 1
      object EDNome: TEdit
        Left = 2
        Top = 20
        Width = 254
        Height = 18
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        Text = 'EDNome'
      end
    end
    object GroupBox2: TGroupBox
      Left = 517
      Top = 34
      Width = 155
      Height = 46
      Caption = 'In'#237'cio'
      TabOrder = 2
      object MKInicio: TMaskEdit
        Left = 1
        Top = 19
        Width = 151
        Height = 26
        Align = alCustom
        EditMask = '!99/99/0000;0;_'
        MaxLength = 10
        TabOrder = 0
        Text = ''
      end
    end
    object GroupBox3: TGroupBox
      Left = 678
      Top = 34
      Width = 179
      Height = 46
      Caption = 'Fim'
      TabOrder = 3
      object MaskEdit1: TMaskEdit
        Left = 2
        Top = 20
        Width = 175
        Height = 24
        Align = alClient
        EditMask = '!99/99/0000;0;_'
        MaxLength = 10
        TabOrder = 0
        Text = ''
        ExplicitHeight = 26
      end
    end
    object btPesquisa: TBitBtn
      Left = 863
      Top = 35
      Width = 123
      Height = 45
      Caption = '&Pesquisar'
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000009E9E9E25939496E4757678E061616922000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000009E9E9E25A7A8AAE4808183FF44464AFF6B6C6FE1000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00009E9E9E25ABACADE4838586FF46484CFF666769FF808082E2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000009E9E
        9E25B0B0B1E48D8E8FFF494C4FFF666869FF88898AE2A0A0A023000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000009E9E9E25B0B0
        B1E48D8E8FFF494C4FFF656769FF89898AE1A5A5A52200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000A5A5A525B6B7B7E49395
        96FF4A4D50FF656768FF88898AE0A2A2A2210000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000A5A5A525B8B9BAE49A9B9CFF4F51
        54FF646668FF888989E0A2A2A221000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A1A1A126B8B9BAE49A9B9CFF4F5154FF6466
        68FF88898ADF9FA7A72000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A1A1A126BFC0C0E5A3A4A6FF515457FF646667FF8889
        8ADEA4A4A41F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000ACACAC1FBFC0C1E5A6A7A8FF535659FF636567FF88898ADDAAAA
        AA1E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFF02BABBBCC8A6A7A9FF535659FF636567FF88898ADDA1A1AA1E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF017F7F8436888B8D6EA4A4
        A68DAAAAAC949696988178787B579D9D9D150000000000000000000000000000
        0000AAAAAC69B2B3B4FF57595CFF626466FF878889DCA7A7A71D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000CCCCCC059395986DC2C2C3DFD2D3D4FFDBDCDCFFDDDD
        DEFFDEDFDFFFE2E2E3FFE3E4E4FFCCCCCDFAA9A9ACAD79797F2E000000009C9C
        9C27979899EA57595CFF626466FF898A8AC3AAAAAA1800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000008C8C8C26BABABBD1D3D3D4FFC8C9C9FFD7D8D9FFE0E1E1FFDDDD
        DEFFDCDDDDFFDEDFDFFFE0E1E2FFDDDEDEFFE5E6E6FFD4D4D5FB919294B1A3A4
        A5FE4F5255FF606264E490909063FFFFFF020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00008C8C8C31CBCBCCECBFC0C1FFD6D7D7FFD8D9D9FFD1D1D2FFD1D1D2FFD1D1
        D2FFD1D1D2FFD1D1D2FFD0D0D1FFD3D4D4FFDDDEDEFFE0E1E1FFE6E7E7FF7374
        77FF616365FEA1A1A12900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000009B9B
        9B17C7C7C8E6BABABBFFDBDBDCFFD2D2D3FFD2D3D3FFD3D4D4FFD4D4D5FFD5D5
        D6FFD5D5D6FFD4D5D5FFD4D4D5FFD3D3D4FFD1D2D2FFD6D6D7FFDFE0E0FFE6E6
        E6FF8D8D90B40000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000B4B5
        B7AAC3C3C4FFD7D8D8FFD3D3D4FFD4D5D5FFD6D6D7FFD7D8D8FFD8D8D9FFD8D9
        D9FFD8D9D9FFD8D9D9FFD7D8D8FFD6D7D7FFD5D5D6FFD3D3D4FFD5D5D6FFDDDE
        DEFFD4D5D6FC7A7A7F3200000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000009C9C9C31D0D0
        D1FEC0C1C2FFD4D4D5FFD6D6D7FFD8D8D9FFD9DADAFFDADBDBFFDBDCDCFFDCDD
        DDFFDCDDDDFFDCDDDDFFDBDCDCFFDADBDBFFD8D9D9FFD6D7D7FFD4D4D5FFD8D9
        D9FFE1E2E2FFAEAEAFB400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000BCBCBD95BEBF
        C0FFD8D9D9FFD6D7D7FFD9D9DAFFDBDCDCFFDDDEDEFFDEDFDFFFDFE0E0FFE0E1
        E1FFE0E1E1FFE0E1E1FFDFE0E0FFDDDEDEFFDBDCDCFFD9DADAFFD7D8D8FFD4D5
        D5FFD5D6D6FFCDCECFFC848D8D1B000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000D8D9D9DBB5B5
        B6FFD6D7D7FFD9DADAFFDCDDDDFFDEDFDFFFE0E1E1FFE2E3E3FFE3E4E4FFE4E5
        E5FFE4E5E5FFE4E4E5FFE2E3E3FFE1E2E2FFDFE0E0FFDCDDDDFFDADBDBFFD7D8
        D8FFD8D9D9FFE2E2E3FF7C7C7F60000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000D9D9DAFDBABA
        BBFFDADADBFFDBDCDCFFDEDFDFFFE1E2E2FFE4E5E5FFE6E6E7FFE7E8E8FFE8E9
        E9FFE8E9E9FFE7E8E8FFE6E7E7FFE4E5E5FFE2E3E3FFDFE0E0FFDCDDDDFFD9DA
        DAFFDBDBDBFFDEDFDFFF9EA0A28C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000D6D6D7FFC3C3
        C4FFE5E5E5FFE3E4E4FFE2E3E3FFE4E5E5FFE7E8E8FFE9EAEAFFEAEBEBFFEBEC
        ECFFEBECECFFEAEBEBFFE9EAEAFFE7E8E8FFE5E6E6FFE2E3E3FFE1E2E2FFE4E4
        E4FFE3E4E4FFD7D8D8FFB2B2B39F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000D9DADAFFC5C5
        C6FFE8E9E9FFEBEBEBFFEDEDEDFFEDEDEDFFEDEDEDFFECEDEDFFEDEDEDFFEDED
        EDFFEDEEEEFFEDEDEDFFECEDEDFFECEDEDFFECEDEDFFECEDEDFFEBECECFFE9EA
        EAFFE7E7E7FFD7D7D8FFAFAFB099000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E5E6E6F4BCBD
        BEFFEBECECFFEEEEEEFFF0F0F0FFF2F2F2FFF3F4F4FFF4F5F5FFF5F5F5FFF6F6
        F6FFF6F6F6FFF5F5F5FFF4F5F5FFF3F4F4FFF2F3F3FFF0F1F1FFEEEFEFFFECEC
        ECFFECEDEDFFD8D8D8FF9191937B000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E4E5E5BDBFC0
        C1FFEFEFEFFFF0F0F0FFF2F3F3FFF4F4F4FFF5F5F5FFF6F6F6FFF7F7F7FFF7F8
        F8FFF7F8F8FFF7F7F7FFF6F7F7FFF5F6F6FFF4F5F5FFF3F3F3FFF1F1F1FFEEEF
        EFFFE6E6E6FFD1D2D2FF7B7B7F42000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000D3D5D569C7C7
        C8FFEBEBEBFFF2F2F2FFF4F4F4FFF5F6F6FFF6F7F7FFF7F8F8FFF8F8F8FFF9F9
        F9FFF9F9F9FFF8F9F9FFF8F8F8FFF7F7F7FFF6F6F6FFF4F5F5FFF2F3F3FFF1F2
        F2FFCCCCCDFFC4C4C5E8BFBFBF04000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E7E7E70BE9E9
        E9E9BCBCBDFFF6F6F6FFF5F5F5FFF6F7F7FFF7F7F7FFF8F8F8FFF9F9F9FFFAFA
        FAFFFAFAFAFFF9F9F9FFF8F8F8FFF7F8F8FFF6F7F7FFF5F6F6FFF4F4F4FFEDED
        EDFFCFCFCFFF96989A7A00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000DBDB
        DE5ED7D7D8FFD2D2D3FFF8F8F8FFF7F8F8FFF8F8F8FFF9F9F9FFF9F9F9FFFAFA
        FAFFFAFAFAFFFAFAFAFFF9F9F9FFF8F8F8FFF8F8F8FFF6F7F7FFF8F8F8FFC2C2
        C3FFBEBEBFD9BFBFBF0800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000E1E3E39BD0D0D1FFD3D3D4FFFBFBFBFFF9F9F9FFF9F9F9FFFAFAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFF9FAFAFFF9F9F9FFF9F9F9FFF7F7F7FFC1C1C2FFCDCD
        CEF085858A2E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFF03E2E2E29AD6D7D7FFBDBDBFFFF2F2F3FFFCFCFCFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFCFCFFFDFDFDFFD9D9DAFFC5C5C6FFC8C8C9EA8F8F
        8F37000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000DBDBDB5DE8E8E8E9C8C8C9FFC2C3C4FFC7C7C8FFD6D6
        D7FFD7D7D8FFD3D3D4FFC6C6C7FFC4C4C5FFCFCFD0FEB5B6B8B09797971B0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000D0D0D00BD2D2D568E2E2E2BDE5E5E6F3D8D8
        D9FFD3D3D4FFD5D5D6FED6D6D7DDB8B8BA989595993500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 4
    end
    object btTransferir: TBitBtn
      Left = 1009
      Top = 35
      Width = 128
      Height = 45
      Caption = '&Transferir'
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000A5A5A500A5A5A504A5A5A506A5A5A50AA5A5A50EA5A5A510A5A5A516A5A5
        A516A5A5A518A5A5A51EA5A5A524A5A5A524A5A5A524A5A5A524A5A5A524A5A5
        A524A5A5A524A5A5A524A5A5A520A5A5A518A5A5A516A5A5A516A5A5A512A5A5
        A50EA5A5A50AA5A5A506A5A5A504A5A5A500000000000000000000000000A5A5
        A506A5A5A540A5A5A576A5A5A591A5A5A5A5A5A5A5B1A5A5A5B9A5A5A5C7A5A5
        A5C7A5A5A5C7A5A5A5D1A5A5A5D9A5A5A5DBA5A5A5DBA5A5A5DBA5A5A5DBA5A5
        A5DBA5A5A5DBA5A5A5D9A5A5A5D3A5A5A5C9A5A5A5C7A5A5A5C7A5A5A5BBA5A5
        A5B1A5A5A5A5A5A5A593A5A5A578A5A5A540A5A5A5060000000000000000A5A5
        A504A5A5A530A5A5A55CA5A5A574A5A5A587A5A5A597A5A5A59BA5A5A5ADA5A5
        A5B3A5A5A5B3A5A5A5B3A5A5A5B7A5A5A5C5A5A5A5C9A5A5A5C9A5A5A5C9A5A5
        A5C9A5A5A5C5A5A5A5B7A5A5A5B3A5A5A5B3A5A5A5B3A5A5A5ADA5A5A59BA5A5
        A597A5A5A587A5A5A576A5A5A55CA5A5A530A5A5A50400000000000000000000
        0000A5A5A500A5A5A500A5A5A502A5A5A504A5A5A506A5A5A508A5A5A50CA5A5
        A50CA5A5A50CA5A5A50CA5A5A510A5A5A516A5A5A516A5A5A516A5A5A516A5A5
        A516A5A5A516A5A5A510A5A5A50CA5A5A50CA5A5A50CA5A5A50CA5A5A508A5A5
        A506A5A5A504A5A5A502A5A5A500A5A5A5000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000A07C2A040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000A27D2B4EA17D2BE9A17D
        2B42000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A5812F0EA5802E9FA47F2EFFA47F2EFFAB88
        3850000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A8833142A78230E1A78230FFA78230FFA78230FFAF8C
        3C50000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000AC86350AAB853491AA8533FDAA8533FFAA8533FFAA8533FFAA8533FFB18D
        3E6AAC863528AC863528AC863528AC863528AC863528AC863528AC863528AC86
        3528AC863528AC863528AC863528AC8635140000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000AE88
        3736AD8836D7AD8836FFAD8836FFAD8836FFAD8836FFAD8836FFAD8836FFAD88
        36FFAD8836FFAD8836FFAD8836FFAD8836FFAD8836FFAD8836FFAD8836FFAD88
        36FFAD8836FFAD8836FFAD8836FFAD8836F1AE88371200000000000000000000
        00000000000000000000000000000000000000000000B28C3B06B18B3A83B18A
        39FBB18A39FFB18A39FFB18A39FFB18A39FFB18A39FFB18A39FFB18A39FFB18A
        39FFB18A39FFB18A39FFB18A39FFB18A39FFB18A39FFB18A39FFB18A39FFB18A
        39FFB18A39FFB18A39FFB18A39FFB18A39FFB18A393000000000000000000000
        000000000000000000000000000000000000B48E3D2CB48D3CCDB48D3CFFB48D
        3CFFB48D3CFFB48D3CFFB48D3CFFB48D3CFFB48D3CFFB48D3CFFB48D3CFFB48D
        3CFFB48D3CFFB48D3CFFB48D3CFFB48D3CFFB48D3CFFB48D3CFFB48D3CFFB48D
        3CFFB48D3CFFB48D3CFFB48D3CFFB48D3CFFB48D3C3000000000000000000000
        00000000000000000000B8914002B7903F74B7903FF7B7903FFFB7903FFFB790
        3FFFB7903FFFB7903FFFB7903FFFB7903FFFB7903FFFB7903FFFB7903FFFB790
        3FFFB7903FFFB7903FFFB7903FFFB7903FFFB7903FFFB7903FFFB7903FFFB790
        3FFFB7903FFFB7903FFFB7903FFFB7903FFFB7903F3000000000000000000000
        000000000000BB934222BA9242C3BA9242FFBA9242FFBA9242FFBA9242FFBA92
        42FFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFBA92
        42FFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFBA9242FFBA92
        42FFBA9242FFBA9242FFBA9242FFBA9242FFBA92423000000000000000000000
        0000BE964566BD9544F3BD9544FFBD9544FFBD9544FFBD9544FFBD9544FFBD95
        44FFBD9544FFBD9544FFBD9544FFBD9544FFBD9544FFBD9544FFBD9544FFBD95
        44FFBD9544FFBD9544FFBD9544FFBD9544FFBD9544FFBD9544FFBD9544FFBD95
        44FFBD9544FFBD9544FFBD9544FFBD9544FFBD9544300000000000000000C097
        4716CDAA5EFDC09847FFC09847FFC09847FFC09847FFC09847FFC09847FFC098
        47FFC09847FFC09847FFC09847FFC09847FFC09847FFC09847FFC09847FFC098
        47FFC09847FFC09847FFC09847FFC09847FFC09847FFC09847FFC09847FFC098
        47FFC09847FFC09847FFC09847FFC09847FFC098473000000000000000000000
        0000D6B66F40DABB74E1C8A153FFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A
        4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A
        4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A
        4AFFC39A4AFFC39A4AFFC39A4AFFC39A4AFFC39A4A3000000000000000000000
        000000000000C69D4D0EDDBF79A1D4B167FFC69D4DFFC69D4DFFC69D4DFFC69D
        4DFFC69D4DFFC69D4DFFC69D4DFFC69D4DFFC69D4DFFC69D4DFFC69D4DFFC69D
        4DFFC69D4DFFC69D4DFFC69D4DFFC69D4DFFC69D4DFFC69D4DFFC69D4DFFC69D
        4DFFC69D4DFFC69D4DFFC69D4DFFC69D4DFFC69D4D3000000000000000000000
        0000000000000000000000000000D8B76E50DCBC76EBCDA557FFC9A050FFC9A0
        50FFC9A050FFC9A050FFC9A050FFC9A050FFC9A050FFC9A050FFC9A050FFC9A0
        50FFC9A050FFC9A050FFC9A050FFC9A050FFC9A050FFC9A050FFC9A050FFC9A0
        50FFC9A050FFC9A050FFC9A050FFC9A050FFC9A0503000000000000000000000
        000000000000000000000000000000000000CCA35316DFBF79B1D7B46AFFCCA2
        53FFCCA253FFCCA253FFCCA253FFCCA253FFCCA253FFCCA253FFCCA253FFCCA2
        53FFCCA253FFCCA253FFCCA253FFCCA253FFCCA253FFCCA253FFCCA253FFCCA2
        53FFCCA253FFCCA253FFCCA253FFCCA353FFCCA2533000000000000000000000
        00000000000000000000000000000000000000000000CEA45500DBB86F62DFBF
        78F1D2AA5CFFCFA555FFCFA555FFCFA555FFCFA555FFCFA555FFCFA555FFCFA5
        55FFCFA555FFCFA555FFCFA555FFCFA555FFCFA555FFCFA555FFCFA555FFCFA5
        55FFCFA555FFCFA555FFCFA555FFD7B267FFCFA5552800000000000000000000
        000000000000000000000000000000000000000000000000000000000000D2A8
        5A20E1C17AC1DBB76DFFD2A858FFD2A858FFD2A858FFD2A858FFD2A858FFE1C0
        79C1E7CA87A7E7CA87A7E7CA87A7E7CA87A7E7CA87A7E7CA87A7E7CA87A7E7CA
        87A7E7CA87A7E7CA87A7E7CA87A7DDB97083D1A7570000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000D5AA5A02DEBA7174E2C17AF7D8AE60FFD5AA5BFFD5AA5BFFD5AA5BFFD9B0
        6348000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000D8AE602CE4C37CCFE0BB71FFD8AD5EFFD8AD5EFFDCB3
        6648000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000DAAF6006E2BD7487E6C47DFBDDB365FFE1BB
        7148000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000DEB3653AE7C57ED3E6C2
        7B34000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ModalResult = 1
      TabOrder = 5
    end
    object btImprimir: TBitBtn
      Left = 1156
      Top = 35
      Width = 113
      Height = 45
      Caption = 'Imprimir'
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000100000001C0000001E0000
        001E000000200000002200000022000000220000002400000022000000220000
        0022000000240000002A0000002A0000002A0000002A0000002C000000220000
        0010000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000E14100EA1221D1AC9221D1AC9221D
        1AC9221D1AC9201C19CD1E1B19CD221C19CD1E1A18CD1D1918CD1D1A18D11E1B
        19D1211B19D1211B18D1211B19D1211B19D1211B19D1211B19D1211C1ACF0B0A
        097E000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000001637302BFD756053FF8D6F5EFF9074
        62FF8C7160FF8F7262FF917363FF927463FF8D7260FF8B6F5FFF8A6D5BFF8C6F
        5DFF8E7160FF8D705FFF8C6F5FFF886D5CFF866B5AFF816859FF60524AFF221D
        1AB7000000020000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000C65544AF1735C50FF8B6E5DFF7860
        54FF7A6054FF846859FF86695BFF886C5BFF8A6C5AFF8C6E5BFF95735EFF9674
        5EFF8F6F5DFF846859FF826757FF7F6658FF7F6557FF8B6F5FFF766055FF201B
        179D000000000000000000000000000000000000000000000000000000000000
        00020000000600000008000000080000000E5B4B41D3705C50FF908982FF8997
        96FF8D9998FF919B9AFF919C9BFF949F9EFF929E9CFF939F9DFF909E9DFF8F9B
        9AFF8C9998FF8F9B99FF8F9C9AFF889493FFA9B2B2FF816C5FFF7B675AFF0807
        077A000000140000001200000012000000100000000600000000000000020000
        001E0B0B0B520B0B0A5A0808085E07070762362B24C77B6456FF9C918BFF6075
        72FF627673FF637A77FF667C7AFF687E7CFF6A807EFF6B817FFF6B807FFF697F
        7DFF677D7AFF647A78FF627875FF617471FF9DACAAFF7C6657FF5A4B42FF0707
        07970606067206060678060606720404045E0000002600000002000000041818
        18585F5F5FFF707070FF757676FF777777FF393735FF826A5AFF887D75FF6E85
        82FF657B79FF6A7F7DFF6D8582FF6F8885FF708A87FF728D89FF718C88FF6E83
        81FF6B807EFF6C8280FF677D7BFF637A77FF95A3A3FF6C5648FF40342EFF4D4F
        4FFF6A6A69FF686869FF676767FF4A4A4AFD1717175800000004000000022928
        2770A6A7A8FFB4B5B5FFB4B5B5FFB5B6B6FF3E3E3EFF735D50FF756A62FF8195
        94FF6B827FFF6E8885FF738E8BFF779290FF799592FF7B9794FF728A88FF5C70
        8CFF5B6F97FF6C8686FF6D8582FF687D7BFF939D9CFF614F43FF3E3530FF7172
        72FFACACACFFADADADFFACACACFF8D8D8CFF232323640000000400000000403F
        3F99B4B5B5FFB4B5B5FFB4B5B5FFB5B6B6FF40403FFF59473DFF665A51FF889E
        9EFF6F8986FF76918EFF809090FF768E92FF859C9BFF6F8397FF5F6C84FF7081
        9EFF617892FF718A88FF6B827FFF647876FF828381FF5F4E42FF3A3735FF7171
        72FFADADADFFADADADFFADADADFFA4A5A5FF3737377E00000000000000005858
        58C5B4B5B5FFB4B5B5FFB4B5B5FFAFB0B0FF464647FF4A3B32FF53463EFF707A
        7AFF5E6D6BFF627471FF5E6E6DFF787E7FFF6B6E70FF465A79FF44577DFF6869
        6AFF5A696CFF5D6B69FF596664FF57605FFF6A625DFF544841FF3A3A3AFF6F6F
        70FFABABABFFADADADFFADADADFFABABABFF434444AB000000004F5151046666
        66F5B1B2B4FFB4B5B5FFB2B3B4FF9A9C9CFF373839FF403731FF34302EFF4E4F
        4EFF505150FF505453FF505655FF4A4C4CFF515151FF4F4E4DFF4E4F51FF4D50
        54FF494D50FF4C4F4EFF4B4E4EFF4E5254FF4E4844FF413A36FF343535FF6061
        63FFA7A7A6FFADADADFFADADADFFADADADFF535454D3000000003A3A3A1C7373
        73FFAEB0B2FFB2B5B5FFACAFB3FFA5A7A9FF78797BFF7C7D7EFF818385FF7F80
        80FF7D7E7FFF7E7E7FFF7C7C7CFF7C7C7CFF7C7C7CFF7B7B7AFF7B7C7AFF7E7F
        7DFF818180FF81807FFF7F7F7EFF7D7E7CFF7A7D7CFF78797BFF7A7A7BFF9090
        90FFA6A6A5FFACACABFFACACACFFACACACFF636362F56E727604363636388383
        84FFACADADFFB0B2B3FFACAEB1FFACADADFFADADADFFACACACFFABACA8FFAAAB
        A7FFA6A6A5FFA5A5A5FFA5A5A5FFA5A5A5FFA6A6A5FFA7A8A6FFABACA8FFABAC
        A8FFABACA8FFABACA8FFABACA8FFABACA8FFABACA8FFAAABA8FFAAABA8FFA5A5
        A5FFA7A7A7FFAEAFAFFFAAAAAAFFABACA9FF70706FFF41424320363636568A8B
        8AFFA3A4A3FFA7A9AAFFAAACAEFFA9ACB0FFAAAAABFFA9AAA9FFA8A8A6FFA7A8
        A5FFA6A7A5FFA6A7A4FFA1A1A1FFA0A1A1FFA0A1A1FFA3A3A4FFA5A5A5FFA5A6
        A5FFA6A7A6FFA7A8A6FFA7A9A7FFA8AAA8FFA9AAA7FFA9AAA7FFA8A9A6FFA3A4
        A3FF9FA3A3FFB1C4BFFFA4A7A7FFA1A3A2FF777878FF3939394836363640B3B4
        B5FFF1F2F3FFEBEEF0FFE7EAEDFFE8EBEBFFE9EDEDFFE7E9EAFFE4E7E9FFDCE0
        E3FFD2D5D9FFD2D6D9FFDBDFE2FFD8DBDFFFDADEE0FFD3D9DCFFDBDFE0FFD8DE
        E0FFD8DEE2FFD8DDE2FFD5DBDEFFDDE3E4FFE3E7E9FFE5E7E8FFE7E9E9FFE7E8
        E9FFB7BABAFFA8ACADFFA1A3A4FFECECECFF9C9C9CFF3A3B3B22424243068E8E
        8EEBE4E7ECFFDEE2E7FFDEE1E7FFE2E6ECFFE6EBEEFFE8EDEFFFE7EBEEFFE5EA
        EDFFDCE2E7FFDCE4E7FFDEE4E7FFDFE3E7FFDFE2E6FFDFE1E7FFDFE2E6FFE0E3
        E7FFE5E6E8FFE3E6EAFFE4E6EBFFEBEFF0FFEFF0F1FFEEF1F3FFEBEFF2FFE9ED
        F0FFB4B5B7FFA5A8AAFFAFB3B4FFFBFBFCFF808181D700000000000000005050
        509FDCE2E6FFD9DEE4FFDCDFE5FFDDE3E7FFE3E6ECFFE4E7EDFFE4E7EDFFE4E7
        EDFFD7DFE2FFD5DDDFFFD7DCDEFFDADDDEFFDBDFE2FFDBDFE4FFDCDEE5FFDEE0
        E6FFE1E4E6FFE4E6E8FFE4E8EDFFEAEFF0FFEFF0F1FFE7EEEFFFE2E6EBFFDEE4
        E8FFD9DFE2FFDADFE3FFE1E7ECFFE5E7EAFF4242429700000000000000003737
        3746B3B7B9FFD4DBDDFFD6DCE0FFDADFE4FFE0E4E8FFE1E4E9FFE2E4EAFFE1E4
        EBFFDEE3E9FFDCE1E5FFDDE0E5FFDEE0E5FFDDE1E3FFDEE3E7FFDFE6E9FFE2E6
        EAFFE5E7E9FFE3E8EAFFE2E8EBFFE6E9ECFFE8ECEEFFE4E9ECFFE0E5EBFFDDE0
        E6FFDDE2E6FFDDE3E7FFDFE5ECFFAAACAEFF4242434C00000000000000004242
        4204838587DDCED4DBFFD0D5DCFFD0D6DCFFCBD2D7FF858686FF757270FFA5AD
        AEFFA7ADAEFF9DA4A7FF9DA3A7FF9CA3A7FF99A1A4FF989FA2FF969EA0FF7071
        71FF6F6F70FF727272FF797979FFA7ADB0FF808181FF707170FFA7ABADFFDAE1
        E5FFDDDFE6FFDDE0E6FFE0E5E9FF717170EB686C6C0800000000000000000000
        00005454557CC8CDD3FFCCD2D9FFCCD1D9FFC8CDD4FF5B5D5EFF69584EFFD4E2
        E6FFCEDCDFFFCEDBDEFFCCDADDFFCCD7DBFFCAD5DAFFCDD9DDFFCCD8DBFF5C5E
        5DFF4F4F4FFF4E4E4EFF505050FFC9D5D9FF817E7AFF584E47FFA8ABAFFFD4DC
        E1FFD8DEE4FFD7DEE4FFCBD0D2FF3E3D3D8F0000000000000000000000000000
        00003C3C3D1A9A9EA1F9C8CFD5FFC8CED4FFC4CACEFF5F6061FF685951FFE5F2
        F5FFD9E7EAFFD6E4E6FFD6E3E6FFD8E8EBFFD9E9EBFFD8E7EBFFD7E7EBFF9FA7
        A9FF9DA4A5FFA3A9AAFFABB3B4FFCCDBDDFF8C8883FF5C5048FFB1B7BAFFD3D9
        DDFFD5DEDFFFD5DEDFFF8D8F8FFD4C4D4E200000000000000000000000000000
        000000000000727474AFC1C8CCFFC1C9CDFFBDC3C7FF626365FF6C625BFFE0F0
        F2FFDAEAECFFDAEAEDFFE0EFF2FFE3F0F3FFE2F0F2FFDDEFF0FFDDEEEFFFD9E9
        EDFFDAEBEEFFD8E7EBFFD5E4E8FFD3E1E5FF8D8A87FF5B4E45FFB1B9BDFFC8CF
        D5FFCFD5DBFFD2D9DCFF4F5050A7000000000000000000000000000000000000
        0000000000005456563075787AD5797D7FDB7A7B7BE5484746F3736962FFDBEC
        EEFFDDEEEFFFE1EFF2FFE6F4F6FFE6F5F7FFE6F4F6FFE1F0F4FFDDEFF2FFDDEE
        F0FFDDEEEFFFDCEDEFFFD8E8EDFFD7E6E9FF92928FFF50453EFB767A7CE56C6F
        72E36D7072DD5D5F60D93A3A3A30000000000000000000000000000000000000
        0000000000000000000000000000000000000000000027211D85776F6AFFDEEE
        EFFFE3F0F3FFE6F3F5FFE8F7F9FFECF8FCFFE9F7FAFFE6F5F7FFE4F1F4FFDEEF
        F3FFDDEFF1FFDEEFF0FFDBEBEEFFD7E5E9FF8E908EFF50463FEB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000352E2A998A8985FFDEEF
        F0FFE6F2F5FFE9F7FAFFEFFCFEFFEFFEFFFFEFFBFEFFE9F7FAFFE6F4F7FFE4F1
        F4FFDFEFF3FFDDEFF2FFDBECEFFFD8E8EDFF909393FF51463FFB737682060000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003D3530AB8B8E8CFFDEEF
        F0FFE5F1F4FFEAF7FAFFEFFDFEFFEFFEFFFFEFFCFEFFEAF8FBFFE6F3F6FFE6F2
        F5FFE1F0F3FFDDEFF3FFDBEDF0FFD7E7ECFFA0A3A2FF53463DFF4040440C0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000423B37BD8A8C8CFFDDEF
        F0FFDFEFF0FFE7F4F7FFEBF8FBFFECF9FCFFEFFAFEFFEDF9FCFFE6F6F8FFE5F1
        F4FFDFEFF0FFDDEFF0FFD9EAEDFFD7E6E9FFA5A9A8FF5D4B41FF1C1C1C1E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000473E38CD92918DFFD7DD
        DEFFD6DCDEFFD2DADBFFD8DDDEFFDAE0E1FFD9E0E1FFDAE0E3FFD9DFE0FFD6DD
        DEFFD3DBDCFFD2DADCFFD0D7D9FFCBD4D6FF999793FF665348FF1414142C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000054473FD98F7666FF9177
        67FF947868FF937767FF957867FF967866FF977866FF997966FF997A67FF9A7D
        6BFF987B69FF967A68FF957766FF937666FF977969FF6D594EFF1412122E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000544944EF988071FF997E
        6EFF987D6DFF998071FF9B8172FFA18574FFA38573FFA58673FFA28370FFA282
        6EFF9E7F6BFFA1826EFFA88A77FFA68A7AFFA18777FF736156FF0F0E0D300000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000A090846050404520505
        0552050404520807065206050552040403520505055205050552050404520403
        0352040403520907045203030352040303520303035208070660131313120000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 113
    Width = 1273
    Height = 311
    Align = alClient
    DataSource = dsPesquisa
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
  end
  object Panel2: TPanel
    Left = 0
    Top = 424
    Width = 1273
    Height = 53
    Align = alBottom
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 2
  end
  object qrPesquisa: TFDQuery
    Connection = DM.Conexao
    Left = 16
    Top = 272
  end
  object dsPesquisa: TDataSource
    DataSet = qrPesquisa
    Left = 16
    Top = 328
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 88
    Top = 360
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 104
    Top = 280
  end
end
