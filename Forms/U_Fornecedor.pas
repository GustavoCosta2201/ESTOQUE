unit U_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmFornecedor = class(TFrmPadrao)
    Q_padraoID_FORNECEDOR: TFDAutoIncField;
    Q_padraoNOME: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoBAIRRO: TStringField;
    Q_padraoCIDADE: TStringField;
    Q_padraoESTADO: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBIDFornecedor: TDBEdit;
    Label2: TLabel;
    DBNome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBCadastro: TDBEdit;
    Q_padraoCEP: TStringField;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    procedure bt_NovoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedor: TFrmFornecedor;

implementation

{$R *.dfm}

uses uPesqFornecedor, U_Produto;

procedure TFrmFornecedor.btNovoClick(Sender: TObject);
begin
  inherited;
  DBCadastro.Text:=datetostr(now);
  DBNome.SetFocus
end;

procedure TFrmFornecedor.bt_NovoClick(Sender: TObject);
begin
  inherited;
  DBCadastro.Text:=datetostr(now);
  DBNome.SetFocus
end;

procedure TFrmFornecedor.bt_PesquisarClick(Sender: TObject);
begin
  inherited;
  FrmPesqFornecedor:=TFrmPesqFornecedor.Create(self);
  FrmPesqFornecedor.ShowModal;

  try
    if FrmPesqFornecedor.vCodigo > 0 then
      begin
        Q_padrao.Open;
        Q_padrao.Locate('ID_FORNECEDOR', FrmPesqFornecedor.vCodigo, []);
      end;

  finally
  FrmPesqFornecedor.Free;
  FrmPesqFornecedor:=Nil;

  end;
end;

end.
