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
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RGFormasPgtoClick(Sender: TObject);
    procedure DBVLPagoExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
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

procedure TFrmRecebimento.BitBtn3Click(Sender: TObject);
var vParcela: Integer;
    vDif: Real;
    vSoma: Real;
begin
//     //Insere o Contas Receber
   FrmVenda.Q_padrao.Refresh;
   FrmVenda.qrContaReceber.Open;
   vParcela :=1;
   if (DBID_FormaPgto.Text = IntToStr(2)) or (DBID_FormaPgto.Text = IntToStr(5)) then
      begin
        while vParcela <= FrmVenda.Q_padraoParcela.AsInteger do
         begin
           FrmVenda.qrContaReceber.Insert;        //Abre para Inserção
           FrmVenda.qrContaReceberID_SEQUENCIA.AsInteger:=vParcela;
           FrmVenda.qrContaReceber.FieldByName('valor_parcela').AsFloat:= FrmVenda.Q_padraoVALOR.AsFloat;   //Recebe a divisão total do Cond_pgto
           FrmVenda.qrContaReceber.FieldByName('dt_vencimento').Value:=date;   //Insere data de vencimento e pagamento
           FrmVenda.qrContaReceber.FieldByName('dt_pagamento').Value:=date;
           FrmVenda.qrContaReceber.FieldByName('juros').AsFloat:=0;     //Zera juros e Atraso
           FrmVenda.qrContaReceber.FieldByName('Atraso').AsFloat:=0;
           FrmVenda.qrContaReceber.FieldByName('vl_juros').AsFloat:=0;
           FrmVenda.qrContaReceber.FieldByName('total_pagar').AsFloat:=  FrmVenda.qrContaReceber.FieldByName('valor_parcela').AsFloat; //Total a pagar recebe o valor total da Parcela
           FrmVenda.qrContaReceber.FieldByName('status').AsString:='RECEBIDO';
           FrmVenda.qrContaReceber.Post;
           Messagedlg('Parcelas Geradas com Sucesso!', mtInformation, [mbOk], 0);
           FrmVenda.BitBtn5.Click;
           FrmRecebimento.Close;
           abort;
      end;
      abort;
    end
    else
      if (DBID_FormaPgto.Text = IntToStr(4)) then    //Se for a Crédito
      begin
        FrmVenda.qrContaReceber.First;
        while vParcela <= FrmVenda.Q_padraoParcela.AsInteger do
          begin
             FrmVenda.qrContaReceber.Insert;
             FrmVenda.qrContaReceberID_SEQUENCIA.AsInteger:=vParcela;
             FrmVenda.qrContaReceber.FieldByName('valor_parcela').AsFloat:= FrmVenda.Q_padraoVALOR.AsCurrency/FrmVenda.Q_padraoParcela.Value;
             FrmVenda.qrContaReceber.FieldByName('dt_vencimento').Value:= Date  + (vParcela * 30);                                   //TESTE DE COMMIT
             FrmVenda.qrContaReceber.FieldByName('dt_pagamento').Value:= Date + 1;
             FrmVenda.qrContaReceber.FieldByName('juros').AsFloat:=0;
             FrmVenda.qrContaReceber.FieldByName('Atraso').AsFloat:=0;
             FrmVenda.qrContaReceber.FieldByName('vl_juros').AsFloat:=0;
             FrmVenda.qrContaReceber.FieldByName('total_pagar').AsFloat:=  FrmVenda.qrContaReceber.FieldByName('valor_parcela').AsFloat;
             FrmVenda.qrContaReceber.FieldByName('Status').AsString:='RECEBIDO';
             FrmVenda.qrContaReceber.Post;
            inc(vParcela);
             FrmVenda.qrContaReceber.Next;
          end;
           Messagedlg('Parcelas Geradas com Sucesso!', mtInformation, [mbOk], 0);
           FrmVenda.BitBtn5.Click;
           FrmRecebimento.Close;
           abort;
        end
          else
        FrmVenda.qrContaReceber.First;
        while vParcela <= FrmVenda.Q_padraoParcela.AsInteger do //Se for a Crédito ou a Prazo, Nota Promissória , cheque
          begin
             FrmVenda.qrContaReceber.Insert;
             FrmVenda.qrContaReceberID_SEQUENCIA.AsInteger:=vParcela;
             FrmVenda.qrContaReceber.FieldByName('valor_parcela').AsFloat:= FrmVenda.Q_padraoVALOR.AsFloat/FrmVenda.Q_padraoParcela.Value;
             FrmVenda.qrContaReceber.FieldByName('dt_vencimento').Value:= Date  + (vParcela * 30);                                   //TESTE DE COMMIT
             FrmVenda.qrContaReceber.FieldByName('juros').AsFloat:=0;
             FrmVenda.qrContaReceber.FieldByName('Atraso').AsFloat:=0;
             FrmVenda.qrContaReceber.FieldByName('vl_juros').AsFloat:=0;
             FrmVenda.qrContaReceber.FieldByName('total_pagar').AsFloat:=  FrmVenda.qrContaReceber.FieldByName('valor_parcela').AsFloat;
             FrmVenda.qrContaReceber.FieldByName('Status').AsString:='EM ABERTO';
             FrmVenda.qrContaReceber.Post;
             inc(vParcela);
             FrmVenda.qrContaReceber.Next;            //TESTE DE COMMIT
          end;
            //Cria o Procedimento para Tratar A Diferença das Parcelas
            vSoma:= vSoma + FrmVenda.Q_padraoParcela.Value *  FrmVenda.qrContaReceber.FieldByName('valor_parcela').AsFloat;
            if vSoma > FrmVenda.Q_padraoVALOR.AsFloat then
              begin
                vDif:=vSoma - FrmVenda.Q_padraoVALOR.AsFloat;
                FrmVenda.qrContaReceber.Last;
                FrmVenda.qrContaReceber.Edit;
                FrmVenda.qrContaReceber.FieldByName('valor_parcela').AsFloat :=  FrmVenda.qrContaReceber.FieldByName('valor_parcela').AsFloat - vDif;
                FrmVenda.qrContaReceber.Refresh;
              end;
           Messagedlg('Parcelas Geradas com Sucesso!', mtInformation, [mbOk], 0);
           FrmVenda.BitBtn5.Click;
           FrmRecebimento.Close;
end;

procedure TFrmRecebimento.DBVLPagoExit(Sender: TObject);
begin
  FrmVenda.Q_padraoTROCO.AsFloat:= FrmVenda.Q_padraoDINHEIRO.AsCurrency - FrmVenda.Q_padraoVALOR.AsCurrency;
end;

procedure TFrmRecebimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
// if key = #13 then
//  key:=#0;
//  Perform(wm_nextdlgCtl,0,0);
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
      FrmVenda.Q_padraoID_FORMA_PGTO.AsInteger:=4;
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
