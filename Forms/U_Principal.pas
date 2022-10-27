unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, dxGDIPlusClasses;

type
  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    bt_Usuarios: TSpeedButton;
    btEmpresa: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usuario1: TMenuItem;
    Empresa1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    FormasdePgto1: TMenuItem;
    Movimento1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    ListaUsuarios: TMenuItem;
    ListadeFornecedores1: TMenuItem;
    ListadeClientes1: TMenuItem;
    ListadeProdutos1: TMenuItem;
    ListadeCompras1: TMenuItem;
    ListadeVendas1: TMenuItem;
    SobreoSistema1: TMenuItem;
    SpeedButton10: TSpeedButton;
    btFechar: TSpeedButton;
    Informaes1: TMenuItem;
    Fechar1: TMenuItem;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    ComprasFormasdePagamento1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure bt_UsuariosClick(Sender: TObject);
    procedure AbrirTelaUsuario();
    procedure btEmpresaClick(Sender: TObject);
    procedure AbrirTelaEmpresa();
    procedure Usuario1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure AbrirTelaCliente();
    procedure Cliente1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure AbrirTelaFornecedor();
    procedure Fornecedores1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure AbrirTelaProduto();
    procedure Produtos1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure AbrirTelaFormaPagamento;
    procedure AbrirTelaCompra01();
    procedure SpeedButton7Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    Procedure AbrirTelaReport();
    procedure SpeedButton9Click(Sender: TObject);
    procedure ListaUsuariosClick(Sender: TObject);
    procedure ListadeFornecedores1Click(Sender: TObject);
    procedure ListadeClientes1Click(Sender: TObject);
    procedure ListadeProdutos1Click(Sender: TObject);
    procedure ListadeCompras1Click(Sender: TObject);
    procedure FormasdePgto1Click(Sender: TObject);
    procedure Informaes1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure AbrirPesqVenda();
    procedure ListadeVendas1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure ComprasFormasdePagamento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses U_Usuario, U_Empresa, U_Clientes, U_Fornecedor, U_Produto, U_FormaPgto,
  uCompra01, ReportBuilderTest, uPesqUsuarios, uPesqFornecedor, uPesqCliente,
  uPesqProduto, uPesqCompra, uAbout, U_DM, uLogin, uVenda, uPesqVendas, uPesqCompraFormaPgto;

procedure TFrm_Principal.AbrirTelaUsuario;
begin
  FrmUsuario:=TfrmUsuario.Create(self);
  FrmUsuario.ShowModal;
  try
  
  finally
    FrmUsuario.Free;
    FrmUsuario:= nil;
  end;
end;

procedure TFrm_Principal.AbrirPesqVenda;
begin
 FrmPesqVendas:=TfrmPesqVendas.Create(self);
 FrmPesqVendas.ShowModal;
 try


 finally
  FreeAndNil(FrmPesqVendas);

 end;
end;

procedure TFrm_Principal.AbrirTelaCliente;
begin
  FrmCliente:=TfrmCliente.Create(self);
  FrmCliente.ShowModal;

  try

  finally
  FrmCliente.Free;
  FrmCliente:=Nil;
  end;
end;

procedure TFrm_Principal.AbrirTelaCompra01;
begin
  FrmCompra01:=TfrmCompra01.Create(self);
  FrmCompra01.ShowModal;

  try

  finally
    FrmCompra01.Free;
    FrmCompra01:=nil;
  end;
end;

procedure TFrm_Principal.AbrirTelaEmpresa;
begin
  FrmEmpresa:=TfrmEmpresa.Create(self);
  FrmEmpresa.ShowModal;
  try

  finally
   FrmEmpresa:=nil;
   FrmEmpresa.Free;
  end;

end;

procedure TFrm_Principal.AbrirTelaFormaPagamento;
 begin
  FrmFormasPgto:=TfrmFormasPgto.Create(self);
  FrmFormasPgto.ShowModal;
  try

  finally
  FrmFormasPgto.free;
  FrmFormasPgto:=nil;

  end;
end;

procedure TFrm_Principal.AbrirTelaFornecedor;
begin
  FrmFornecedor:= TfrmFornecedor.Create(self);
  FrmFornecedor.ShowModal;
  try

  finally
    FrmFornecedor:=nil;
    FrmFornecedor.Free;
  end;
end;

procedure TFrm_Principal.AbrirTelaProduto;
begin
  FrmProduto:=TfrmProduto.Create(self);
  FrmProduto.ShowModal;
  try

  finally
  FrmProduto.Free;
  FrmProduto:=nil;
  end;
end;

procedure TFrm_Principal.AbrirTelaReport;
begin
  ReportBuilder:=TReportBuilder.Create(self);
  ReportBuilder.ShowModal;

  try

  finally
    ReportBuilder.Free;
    ReportBuilder:=Nil;

  end;
end;

procedure TFrm_Principal.bt_UsuariosClick(Sender: TObject);
begin
  AbrirTelaUsuario;
end;

procedure TFrm_Principal.Cliente1Click(Sender: TObject);
begin
    AbrirTelaCliente;
end;

procedure TFrm_Principal.Compras1Click(Sender: TObject);
begin
    AbrirTelaCompra01;
end;

procedure TFrm_Principal.ComprasFormasdePagamento1Click(Sender: TObject);
begin
  FrmPesqCompraFormaPgto :=  TFrmPesqCompraFormaPgto.create(self);
  FrmPesqCompraFormaPgto.ShowModal;
  try

  finally
    FreeAndNil(FrmPesqCompraFormaPgto);

  end;
end;

procedure TFrm_Principal.Empresa1Click(Sender: TObject);
begin
    AbrirTelaEmpresa;
end;

procedure TFrm_Principal.Fechar1Click(Sender: TObject);
begin
 btFechar.Click;
end;

procedure TFrm_Principal.FormasdePgto1Click(Sender: TObject);
begin
    AbrirTelaFormaPagamento;
end;

procedure TFrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//     DM.Conexao.Close;
//     FrmLogin.Close;
end;

procedure TFrm_Principal.FormShow(Sender: TObject);
begin
if dm.vTipo = 'APOIO' then
  begin
    bt_Usuarios.Enabled:=false;
    btEmpresa.Enabled:=false;
    Empresa1.Enabled:=false;
    Usuario1. Enabled:=false;
    ListaUsuarios.Enabled:=false;
  end;
end;

procedure TFrm_Principal.Fornecedores1Click(Sender: TObject);
begin
  AbrirTelaFornecedor;
end;

procedure TFrm_Principal.Informaes1Click(Sender: TObject);
begin
 FrmAboutBox:= TfrmAboutBox.Create(Self);
 FrmAboutBox.ShowModal;
 try

 finally
  FreeAndNil(FrmAboutBox);

 end;
end;

procedure TFrm_Principal.ListadeClientes1Click(Sender: TObject);
begin
  FrmPesqCliente:=TfrmPesqCliente.Create(self);
  FrmPesqCliente.ShowModal;
  try

  finally
    FreeAndNil(FrmPesqCliente);

  end;
end;

procedure TFrm_Principal.ListadeCompras1Click(Sender: TObject);
begin
    FrmPesqCompra:=TfrmPesqCompra.Create(self);
    FrmPesqCompra.ShowModal;
    try

    finally
      FreeAndNil(FrmPesqCompra);

    end;
end;

procedure TFrm_Principal.ListadeFornecedores1Click(Sender: TObject);
begin
    FrmPesqFornecedor:=TfrmPesqFornecedor.Create(Self);
    FrmPesqFornecedor.ShowModal;
    try

    finally
      FreeAndNil(FrmPesqFornecedor);

    end;
end;

procedure TFrm_Principal.ListadeProdutos1Click(Sender: TObject);
begin
    FrmPesqProduto:=TfrmPesqProduto.Create(self);
    FrmPesqProduto.ShowModal;
    try

    finally
      FreeAndNil(FrmPesqProduto);

    end;
end;

procedure TFrm_Principal.ListadeVendas1Click(Sender: TObject);
begin
  AbrirPesqVenda;
end;

procedure TFrm_Principal.ListaUsuariosClick(Sender: TObject);
begin
    FrmPesqUsuarios:=TfrmPesqUsuarios.Create(self);
    FrmPesqUsuarios.ShowModal;
    try

    finally
      FreeAndNil(FrmPesqUsuarios);

    end;
end;

procedure TFrm_Principal.Produtos1Click(Sender: TObject);
begin
   AbrirTelaProduto;
end;

procedure TFrm_Principal.SpeedButton10Click(Sender: TObject);
begin
  
   if Messagedlg('Deseja Sair do Sistema?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
     begin
        application.Terminate;
     end
     else
      abort;
   close;
end;

procedure TFrm_Principal.btEmpresaClick(Sender: TObject);
begin
  AbrirTelaEmpresa;
end;

procedure TFrm_Principal.SpeedButton3Click(Sender: TObject);
begin
  AbrirTelaCliente;
end;

procedure TFrm_Principal.SpeedButton4Click(Sender: TObject);
begin
    AbrirTelaFornecedor;
end;

procedure TFrm_Principal.SpeedButton5Click(Sender: TObject);
begin
  AbrirTelaProduto;
end;

procedure TFrm_Principal.SpeedButton6Click(Sender: TObject);
begin
  AbrirTelaFormaPagamento;
end;

procedure TFrm_Principal.SpeedButton7Click(Sender: TObject);
begin
  AbrirTelaCompra01;
end;

procedure TFrm_Principal.SpeedButton8Click(Sender: TObject);
begin
  FrmVenda:= TFrmVenda.create(self);
  FrmVenda.ShowModal;
  try

  finally
    FreeAndNil(FrmVenda);

  end;
end;

procedure TFrm_Principal.SpeedButton9Click(Sender: TObject);
begin
 //Faz a troca de Usuário
 Frm_Principal.Hide;
 FrmLogin.DBNome.Clear;
 FrmLogin.DBSenha.Clear;
 FrmLogin.DBNome.SetFocus;
 FrmLogin.DBTipo.ClearSelection;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
  //Insere dados na statusbar
  Statusbar1.Panels[0].Text:=Datetostr(now);
  Statusbar1.Panels[1].Text:=Timetostr(now);
  Statusbar1.Panels[2].Text:='SEJA BEM VINDO AO SISTEMA SR(A):  ' + dm.vUsuario;
  Statusbar1.Panels[3].Text:='Tipo de Usuário:  ' + dm.vTipo;
end;

procedure TFrm_Principal.Usuario1Click(Sender: TObject);
begin
    AbrirTelaUsuario;
end;

procedure TFrm_Principal.Vendas1Click(Sender: TObject);
begin
  FrmVenda:= TFrmVenda.create(self);
  FrmVenda.ShowModal;
  try

  finally
    FreeAndNil(FrmVenda);

  end;
end;

end.
