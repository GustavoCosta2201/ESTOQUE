unit U_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmProduto = class(TfrmPadrao)
    Q_padraoDESCRICAO: TStringField;
    Q_padraoVL_CUSTO: TFMTBCDField;
    Q_padraoVL_VENDA: TFMTBCDField;
    Q_padraoESTOQUE: TFMTBCDField;
    Q_padraoESTOQUE_MIN: TFMTBCDField;
    Q_padraoUNIDADE: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoNOME: TStringField;
    Label1: TLabel;
    DBIDProduto: TDBEdit;
    Label2: TLabel;
    DBDescricao: TDBEdit;
    Label3: TLabel;
    DBVLCusto: TDBEdit;
    Label4: TLabel;
    DBVLVenda: TDBEdit;
    Label5: TLabel;
    DBEstoque: TDBEdit;
    Label6: TLabel;
    DBEstoqueMin: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBCadastro: TDBEdit;
    DBCUnidade: TDBComboBox;
    Q_padraoID_PRODUTO: TIntegerField;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    DBIDFornecedor: TDBEdit;
    Label10: TLabel;
    DBNome: TDBEdit;
   procedure btNovoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

uses uPesqProduto, U_Fornecedor;

procedure TFrmProduto.btGravarClick(Sender: TObject);
begin
 DBIDProduto.SetFocus;
  inherited;

end;

procedure TFrmProduto.btNovoClick(Sender: TObject);
begin
  inherited;
  DBCadastro.Text:=datetostr(now);
  DBDescricao.SetFocus;
end;

procedure TFrmProduto.bt_PesquisarClick(Sender: TObject);
begin
  inherited;
  FrmPesqProduto:=TFrmPesqProduto.create(self);
  FrmPesqProduto.ShowModal;

  try
     if FrmPesqProduto.vCodigo > 0 then
       begin
         Q_padrao.Open;
         Q_padrao.Locate('ID_PRODUTO',FrmPesqProduto.vCodigo, []);
       end;
  finally

  FrmPesqProduto.free;
  FrmPesqProduto:=nil;

  end;

end;

procedure TFrmProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 Q_padrao.Close;
end;

end.
