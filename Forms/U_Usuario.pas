unit U_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, U_Padrao;

type
  TfrmUsuario = class(TfrmPadrao)
    qrPadraoID_USUARIO: TIntegerField;
    qrPadraoNOME: TStringField;
    qrPadraoSENHA: TStringField;
    qrPadraoTIPO: TStringField;
    qrPadraoCADASTRO: TDateField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    dbeSenha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    dbeCadastro: TDBEdit;
    cbxTipo: TDBComboBox;
    procedure bt_PesquisarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

{$R *.dfm}

uses uPesqUsuarios;



procedure TfrmUsuario.btNovoClick(Sender: TObject);
begin
  inherited;
  dbeCadastro.Text:=datetostr(now);
  DBENome.SetFocus;
end;

procedure TfrmUsuario.bt_PesquisarClick(Sender: TObject);
begin
  FrmPesqUsuarios:=TfrmPesqUsuarios.Create(self);    //chama a tela
  FrmPesqUsuarios.ShowModal;
  try
   if FrmPesqUsuarios.vCodigo > 0 then
     begin
       Q_padrao.Open;
       Q_padrao.Locate('ID_USUARIO', FrmPesqUsuarios.vCodigo, []); //LOCALIZA E DIRECIONA PARA A TELA DE CADASTRO PARA VISUALIZAR
     end;

  finally
    FrmPesqUsuarios.Free;
    FrmPesqUsuarios:=Nil;
  end;

end;

end.
