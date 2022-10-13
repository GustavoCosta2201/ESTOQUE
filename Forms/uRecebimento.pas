unit uRecebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons;

type
  TFrmRecebimento = class(TForm)
    Panel1: TPanel;
    RGFormasPgto: TRadioGroup;
    DBID_FormaPgto: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBParcela: TDBEdit;
    DBValor: TDBEdit;
    DBVLPago: TDBEdit;
    DBTroco: TDBEdit;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RGFormasPgtoClick(Sender: TObject);
    procedure DBVLPagoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecebimento: TFrmRecebimento;

implementation

{$R *.dfm}

uses uVenda;

procedure TFrmRecebimento.DBVLPagoExit(Sender: TObject);
begin
  FrmVenda.Q_padraoTROCO.AsFloat:= FrmVenda.Q_padraoVALOR.AsFloat - FrmVenda.Q_padraoDINHEIRO.AsFloat;
  FrmVenda.Q_padrao.Refresh;
end;

procedure TFrmRecebimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  key:=#0;
  Perform(wm_nextdlgCtl,0,0);
end;

procedure TFrmRecebimento.RGFormasPgtoClick(Sender: TObject);
begin
  FrmVenda.Q_padrao.Edit;
  case RGFormasPgto.ItemIndex of
    0:begin  //Venda á vista
      FrmVenda.Q_padraoID_FORMA_PGTO.AsInteger:= 2;
      FrmVenda.Q_padraoPARCELA.AsInteger:=1;
    end;

    1:begin  //Cartão de Crédito
      FrmVenda.Q_padraoID_FORMA_PGTO.AsInteger:=3;
      DBParcela.SetFocus;
      FrmVenda.Q_padraoDINHEIRO.AsFloat:=
      FrmVenda.Q_padraoVALOR.AsFloat;
      FrmVenda.Q_padraoTROCO.AsFloat:=0;
    end;

    2: begin  //cartão de débito
      FrmVenda.Q_padraoID_FORMA_PGTO.AsInteger:=5;
      FrmVenda.Q_padraoPARCELA.AsInteger:=1;
      FrmVenda.Q_padraoDINHEIRO.AsFloat:= FrmVenda.Q_padraoVALOR.AsFloat;
      FrmVenda.Q_padraoTROCO.AsFloat:=0;
    end;

    3: begin  //Nota Promissória
      FrmVenda.Q_padraoID_FORMA_PGTO.AsInteger:=6;
      DBParcela.SetFocus;
      FrmVenda.Q_padraoDINHEIRO.AsFloat:= 0;
      FrmVenda.Q_padraoTROCO.AsFloat:=0;
    end;

    4: begin  //cheque
      FrmVenda.Q_padraoID_FORMA_PGTO.AsInteger:=7;
      DBParcela.SetFocus;
      FrmVenda.Q_padraoDINHEIRO.AsFloat:=FrmVenda.Q_padraoVALOR.AsFloat;
      FrmVenda.Q_padraoTROCO.AsFloat:=0;
    end;
  end;
end;

end.
