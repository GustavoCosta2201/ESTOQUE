unit uVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uMovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmVenda = class(TFrmPadraoMovimento)
    Q_padraoID_VENDA: TIntegerField;
    Q_padraoID_CLIENTE: TIntegerField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoVALOR: TFMTBCDField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBID_CLIENTE: TDBEdit;
    Label3: TLabel;
    DBID_FormaPgto: TDBEdit;
    Label4: TLabel;
    DBUsuario: TDBEdit;
    Label5: TLabel;
    DBCadastro: TDBEdit;
    Label6: TLabel;
    DBValor: TDBEdit;
    qrCliente: TFDQuery;
    qrFormaPgto: TFDQuery;
    dsCliente: TDataSource;
    dsFormaPgto: TDataSource;
    qrClienteID_CLIENTE: TIntegerField;
    qrClienteNOME: TStringField;
    qrFormaPgtoID_FORMA_PGTO: TIntegerField;
    qrFormaPgtoDESCRICAO: TStringField;
    Q_padraoCLIENTE: TStringField;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Q_padraoDESCRICAO: TStringField;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Q_padraoPARCELA: TIntegerField;
    Q_padraoTROCO: TFMTBCDField;
    Q_padraoDINHEIRO: TFMTBCDField;
    Label9: TLabel;
    DBParcela: TDBEdit;
    qrPadraoItemID_SEQUENCIA: TIntegerField;
    qrPadraoItemID_VENDA: TIntegerField;
    qrPadraoItemID_PRODUTO: TIntegerField;
    qrPadraoItemQTDE: TFMTBCDField;
    qrPadraoItemDESCONTO: TFMTBCDField;
    qrPadraoItemTOTAL_ITEM: TFMTBCDField;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBIDProduto: TDBEdit;
    DBQtde: TDBEdit;
    DBCusto: TDBEdit;
    DBDesconto: TDBEdit;
    DBTotal: TDBEdit;
    qrPadraoItemVL_VENDA: TFMTBCDField;
    qrProduto: TFDQuery;
    dsProduto: TDataSource;
    qrProdutoID_PRODUTO: TIntegerField;
    qrProdutoDESCRICAO: TStringField;
    qrProdutoESTOQUE: TFMTBCDField;
    qrProdutoESTOQUE_MIN: TFMTBCDField;
    qrProdutoVL_VENDA: TFMTBCDField;
    qrPadraoItemSUBTOTAL: TAggregateField;
    DBEdit2: TDBEdit;
    qrContaReceber: TFDQuery;
    dsContaReceber: TDataSource;
    qrContaReceberID_SEQUENCIA: TIntegerField;
    qrContaReceberID_VENDA: TIntegerField;
    qrContaReceberDT_VENCIMENTO: TDateField;
    qrContaReceberDT_PAGAMENTO: TDateField;
    qrContaReceberATRASO: TIntegerField;
    qrContaReceberJUROS: TFMTBCDField;
    qrContaReceberVL_JUROS: TFMTBCDField;
    qrContaReceberTOTAL_PAGAR: TFMTBCDField;
    qrContaReceberSTATUS: TStringField;
    qrContaReceberVALOR_PARCELA: TFMTBCDField;
    procedure btNovoClick(Sender: TObject);
    procedure DBID_CLIENTEExit(Sender: TObject);
    procedure DBID_FormaPgtoExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBIDProdutoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrmVenda.BitBtn2Click(Sender: TObject);
  var vProx: Integer;
begin
  //Insere os Itens na Tabela de Itens De Venda
  qrPadraoItem.Open;
  qrProduto.Open;
  qrPadraoItem.Last;
  vProx:= qrPadraoItemID_SEQUENCIA.AsInteger +1;
  qrPadraoItem.Append;
  qrPadraoItemID_SEQUENCIA.AsInteger:=vProx;
  DBIDProduto.SetFocus;


end;

procedure TFrmVenda.BitBtn3Click(Sender: TObject);
var vParcela: Integer;
    vDif: Real;
    vSoma: Real;
begin
  Q_padrao.Edit;  //Abre para edição o cabeçalho
  //Insere o valor total dos itens
  Q_padraoVALOR.AsFloat:=qrPadraoItem.AggFields.FieldByName('SUBTOTAL').Value;
  Q_padrao.Refresh; //Salvar o cabeçalho

  //Aliemnta o Estoque
       //Abre para edição
  qrPadraoItem.First;  //qrProduto vai para o primeiro campo
  while not qrPadraoItem.Eof do
    begin
    if qrProduto.Locate('ID_PRODUTO', qrPadraoItemID_PRODUTO.AsInteger, []) then
    begin
      qrProduto.Edit;
      qrProduto.FieldByName('ESTOQUE').AsFloat:= qrProduto.FieldByName('ESTOQUE').AsFloat - qrPadraoItemQTDE.AsFloat;
      qrPadraoItem.Next;
    end;

   end;
      qrProduto.Refresh;
     Messagedlg('Dado baixa do Estoque com sucesso', mtInformation,[mbOk],0);

     //Insere o Contas Receber
   qrContaReceber.Open;
   vParcela :=1;
   if (DBID_FormaPgto.Text = IntToStr(2)) or (DBID_FormaPgto.Text = IntToStr(5)) then
      begin
        while vParcela <= Q_padraoParcela.AsInteger do
         begin
           qrContaReceber.Insert;        //Abre para Inserção
           qrContaReceberID_SEQUENCIA.AsInteger:=vParcela;
           qrContaReceber.FieldByName('valor_parcela').AsFloat:= Q_padraoVALOR.AsFloat;   //Recebe a divisão total do Cond_pgto
           qrContaReceber.FieldByName('dt_vencimento').Value:=date;   //Insere data de vencimento e pagamento
           qrContaReceber.FieldByName('dt_pagamento').Value:=date;
           qrContaReceber.FieldByName('juros').AsFloat:=0;     //Zera juros e Atraso
           qrContaReceber.FieldByName('Atraso').AsFloat:=0;
           qrContaReceber.FieldByName('vl_juros').AsFloat:=0;
           qrContaReceber.FieldByName('total_pagar').AsFloat:=  qrContaReceber.FieldByName('valor_parcela').AsFloat; //Total a pagar recebe o valor total da Parcela
           qrContaReceber.FieldByName('status').AsString:='RECEBIDO';
           qrContaReceber.Post;
           Messagedlg('Parcelas Geradas com Sucesso!', mtInformation, [mbOk], 0);
           abort;
      end;
    end
    else
        qrContaReceber.First;
        while vParcela <= Q_padraoParcela.AsInteger do            //Se for a Crédito ou a Prazo, Nota Promissória , cheque
          begin
            qrContaReceber.Insert;
            qrContaReceberID_SEQUENCIA.AsInteger:=vParcela;
             qrContaReceber.FieldByName('valor_parcela').AsFloat:= Q_padraoVALOR.AsFloat/Q_padraoParcela.Value;
             qrContaReceber.FieldByName('dt_vencimento').Value:= Date  + (vParcela * 30);                                   //TESTE DE COMMIT
             qrContaReceber.FieldByName('juros').AsFloat:=0;
             qrContaReceber.FieldByName('Atraso').AsFloat:=0;
             qrContaReceber.FieldByName('vl_juros').AsFloat:=0;
             qrContaReceber.FieldByName('total_pagar').AsFloat:=  qrContaReceber.FieldByName('valor_parcela').AsFloat;
             qrContaReceber.FieldByName('Status').AsString:='EM ABERTO';
             qrContaReceber.Post;
            inc(vParcela);
             qrContaReceber.Next;            //TESTE DE COMMIT

          end;
            //Cria o Procedimento para Tratar A Diferença das Parcelas
            vSoma:= vSoma + Q_padraoParcela.Value *  qrContaReceber.FieldByName('valor_parcela').AsFloat;
            if vSoma > Q_padraoVALOR.AsFloat then
              begin
                vDif:=vSoma - Q_padraoVALOR.AsFloat;
                qrContaReceber.Last;
                qrContaReceber.Edit;
                qrContaReceber.FieldByName('valor_parcela').AsFloat :=  qrContaReceber.FieldByName('valor_parcela').AsFloat - vDif;
                qrContaReceber.Refresh;
              end;

            Messagedlg('Parcelas Geradas com Sucesso', mtInformation, [mbOk], 0);
end;



procedure TFrmVenda.BitBtn4Click(Sender: TObject);
begin
  //Exclui Item do Detalhe de Venda
   if Messagedlg('Deseja Excluir este Item?', mtConfirmation,[mbOK,mbNo], 0 ) = mrOk then
    begin
      if qrProduto.Locate('ID_PRODUTO',qrPadraoItemID_PRODUTO.AsInteger, []) then
        begin
          qrProduto.Edit;
          qrProduto.FieldByName('ESTOQUE').AsFloat :=  qrProduto.FieldByName('ESTOQUE').AsFloat  + qrPadraoItemQTDE.AsFloat;
          qrProduto.Refresh;
          qrPadraoItem.Delete;
          Messagedlg('Item Excluido com Sucesso', mtinformation, [MbOk], 0);
        end
          else
          abort;
    end;

end;

procedure TFrmVenda.btDeletarClick(Sender: TObject);
begin
//Exclui os itens de venda
   if Messagedlg('Deseja Excluir Todo o Registro?', mtConfirmation,[mbOK,mbNo], 0 ) = mrOk then
    begin
    //Exclui as Parcelas
    qrContaReceber.open;
    qrContaReceber.First;
     while not qrContaReceber.Eof do
        begin
          qrContaReceber.Delete;
          qrContaReceber.Next;
        end;
      qrPadraoItem.First;
      while qrPadraoItem.RecordCount > 0 do
        begin
          if qrProduto.Locate('ID_PRODUTO', qrPadraoItemID_PRODUTO.AsInteger, []) then
            begin
              qrProduto.Edit;
              qrProduto.FieldByName('ESTOQUE').AsFloat:= qrProduto.FieldByName('ESTOQUE').AsFloat + qrPadraoItemQTDE.AsFloat;
              qrProduto.Refresh;
              qrPadraoItem.Delete;
              qrPadraoitem.Next;
            end;
        end;
        //Exclui o Cabeçalho
          inherited;
    end
    else
      abort;

end;

procedure TFrmVenda.btNovoClick(Sender: TObject);
begin
  inherited;
 DBCadastro.Text:=datetostr(now);
 qrCLiente.Open;
 qrFormaPgto.Open;
 qrProduto.Open;
 DBUsuario.Text:= dm.vUsuario;
 DBValor.Text:=InttoStr(0);
 DBParcela.Text:=IntToStr(0);
 DBID_Cliente.SetFocus;

end;

procedure TFrmVenda.DBID_FormaPgtoExit(Sender: TObject);
begin
    //Validar o forma pgto
  if not  qrFormaPgto.Locate('ID_FORMA_PGTO', Q_padrao.fieldbyName('ID_FORMA_PGTO').AsInteger, []) then
    begin
      Messagedlg('A Forma de Pagamento não foi Encontrada!', mtInformation, [mbOk], 0);
      DBID_FORMAPGTO.SetFocus;
      abort;
    end;
    //Valida as qtds de Parcelas
  if (DBID_FormaPgto.Text = IntToStr(2)) or (DBID_FormaPgto.Text = IntToStr(5)) then
    begin
      DBParcela.Text:= IntToStr(1);
    end
    else
    DBParcela.SetFocus;
end;

procedure TFrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    qrCliente.Close;
    qrFormaPgto.Close;
    qrProduto.Close;
end;

procedure TFrmVenda.DBIDProdutoExit(Sender: TObject);
begin
  if qrPadraoItemID_PRODUTO.AsInteger > 0 then
    if qrProduto.Locate('ID_PRODUTO', qrPadraoItem.FieldByName('ID_PRODUTO').AsInteger, []) then

   begin
     qrPadraoItemQTDE.AsFloat:=1;
     qrPadraoItemDESCONTO.AsFloat:=0;
     //Pega o valor do Produto
     qrPadraoItemVL_VENDA.AsFloat:= qrProduto.FieldByName('VL_VENDA').AsFloat;
     //soma a quantidade dos Itens
     qrPadraoItemTOTAL_ITEM.AsFloat:=(qrPadraoItemQTDE.AsFloat * qrPadraoItemVL_VENDA.AsFloat) -(qrPadraoItemDESCONTO.AsFloat);
     qrPadraoItem.Post;
     BitBtn2.SetFocus;
   end
     else
       Messagedlg('Produto não Encontrado',mtInformation, [mbOk], 0);
       qrPadraoItem.Cancel;
       BitBtn2.SetFocus;

end;

procedure TFrmVenda.DBID_CLIENTEExit(Sender: TObject);
begin
  //Validar o Cliente
  if not  qrCliente.Locate('ID_CLIENTE', Q_padrao.fieldbyName('id_cliente').AsInteger, []) then
    begin
      Messagedlg('Cliente não Encontrado!', mtInformation, [mbOk], 0);
      DBID_Cliente.SetFocus;
      abort;
    end;

end;

end.
