program ControleEstoque;

uses
  Vcl.Forms,
  uPesqUsuarios in '..\Forms\uPesqUsuarios.pas' {FrmPesqUsuarios},
  U_Clientes in '..\Forms\U_Clientes.pas' {FrmCliente},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_Empresa in '..\Forms\U_Empresa.pas' {FrmEmpresa},
  U_FormaPgto in '..\Forms\U_FormaPgto.pas' {FrmFormasPgto},
  U_Fornecedor in '..\Forms\U_Fornecedor.pas' {FrmFornecedor},
  U_Padrao in '..\Forms\U_Padrao.pas' {frmPadrao},
  U_Principal in '..\Forms\U_Principal.pas' {Frm_Principal},
  U_Produto in '..\Forms\U_Produto.pas' {FrmProduto},
  U_Usuario in '..\Forms\U_Usuario.pas' {frmUsuario},
  uPesqCliente in '..\Forms\uPesqCliente.pas' {FrmPesqCliente},
  uFormPesquisa in '..\Forms\uFormPesquisa.pas' {FrmPesquisa},
  uPesqFornecedor in '..\Forms\uPesqFornecedor.pas' {FrmPesqFornecedor},
  uPesqProduto in '..\Forms\uPesqProduto.pas' {FrmPesqProduto},
  uMovimentoPadrao in '..\Forms\uMovimentoPadrao.pas' {FrmPadraoMovimento},
  uCompra01 in '..\Forms\uCompra01.pas' {FrmCompra01},
  uPesqCompra in '..\Forms\uPesqCompra.pas' {FrmPesqCompra},
  ReportBuilderTest in '..\ReportBuilder Test\ReportBuilderTest.pas' {ReportBuilder},
  uAbout in '..\Forms\uAbout.pas' {FrmAboutBox},
  uLogin in '..\Forms\uLogin.pas' {FrmLogin},
  uTrocarSenha in '..\Forms\uTrocarSenha.pas' {FrmTrocaSenha},
  uVenda in '..\Forms\uVenda.pas' {FrmVenda},
  uPesqVendas in '..\Forms\uPesqVendas.pas' {FrmPesqVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
