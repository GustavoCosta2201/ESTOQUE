unit uVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uMovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, frxClass, frxDBSet;

type
  TFrmVenda = class(TFrmPadraoMovimento)
    Q_padraoID_VENDA: TIntegerField;
    Q_padraoID_CLIENTE: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoVALOR: TFMTBCDField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBID_CLIENTE: TDBEdit;
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
    Q_padraoPARCELA: TIntegerField;
    Q_padraoTROCO: TFMTBCDField;
    Q_padraoDINHEIRO: TFMTBCDField;
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
    btCheck: TBitBtn;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    qrEmpresa: TFDQuery;
    dsEmpresa: TDataSource;
    qrEmpresaID_EMPRESA: TIntegerField;
    qrEmpresaRAZAO_SOCIAL: TStringField;
    qrEmpresaN_FANTASIA: TStringField;
    qrEmpresaENDERECO: TStringField;
    qrEmpresaNUMERO: TIntegerField;
    qrEmpresaBAIRRO: TStringField;
    qrEmpresaCIDADE: TStringField;
    qrEmpresaUF: TStringField;
    qrEmpresaTELEFONE: TStringField;
    qrEmpresaCNPJ: TStringField;
    qrEmpresaEMAIL: TStringField;
    qrEmpresaLOGO: TBlobField;
    qrEmpresaCADASTRO: TDateField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    procedure btNovoClick(Sender: TObject);
    procedure DBID_CLIENTEExit(Sender: TObject);
    procedure DBID_FormaPgtoExit(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBIDProdutoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btDeletarClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
    procedure DBDescontoClick(Sender: TObject);
    procedure DBDescontoExit(Sender: TObject);
    procedure DBQtdeClick(Sender: TObject);
    procedure DBQtdeExit(Sender: TObject);
    procedure qrPadraoItemQTDEValidate(Sender: TField);
    procedure btItemClick(Sender: TObject);
    procedure btBuscaClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}

uses U_DM, uPesqVendas, uPesqCliente, uRecebimento;

procedure TFrmVenda.btBuscaClick(Sender: TObject);
begin
//  if Q_Padrao.State in [dsEdit, dsInsert] then
//    begin
//     FrmPesqFormaPgto:=TfrmPesqFormaPgto.Create(self);
//     FrmPesqFormaPgto.ShowModal;
//     try
//       if FrmPesqFormaPgto.vCodigo > 0 then
//         begin
//           Q_padraoID_FORMA_PGTO.AsInteger:= FrmPesqFormaPgto.vCodigo;
//         end;
//     Finally
//      FreeAndNil(FrmPesqFormaPgto);                                                 //FAZEERRR
//    end;
//  end;
end;

procedure TFrmVenda.btCheckClick(Sender: TObject);
begin
  if Q_Padrao.State in[dsedit, dsinsert] then
    begin
      FrmPesqCliente:=TfrmPesqCliente.Create(self);
      FrmPesqCliente.ShowModal;
    try
      if FrmPesqCliente.vCodigo > 0 then
        begin
          Q_padraoID_CLIENTE.AsInteger:= FrmPesqCliente.vCodigo;
        end;
         finally
           FreeAndNil(FrmPesqCliente);
          end;
    end;

end;

procedure TFrmVenda.BitBtn3Click(Sender: TObject);
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

        //abre A Tela de recebimento
        FrmRecebimento:=TfrmRecebimento.create(self);
        FrmRecebimento.ShowModal;
        try

        finally
         FreeAndNil(FrmRecebimento);
        end;
end;



procedure TFrmVenda.BitBtn4Click(Sender: TObject);
begin
  //Exclui Item do Detalhe de Venda
   if Messagedlg('Deseja Excluir este Item?', mtConfirmation,[mbOK,mbNo], 0 ) = mrOk then
    begin
      if qrProduto.Locate('ID_PRODUTO',qrPadraoItemID_PRODUTO.AsInteger, []) then
        begin
          qrPadraoItem.Delete;
          Messagedlg('Item Excluido com Sucesso', mtinformation, [MbOk], 0);
        end
          else
          abort;
    end;

end;

procedure TFrmVenda.BitBtn5Click(Sender: TObject);
var vCaminho: String;
begin
  vCaminho:='C:\ESTOQUE\EXE\RelReciboVenda.fr3';
 if FrmVenda.frxReport1.LoadFromFile(vCaminho)then
  begin
    FrxReport1.Clear;
    frxReport1.LoadFromFile(vCaminho);
    FrxReport1.PrepareReport(true);
    FrxReport1.ShowPreparedReport;
  end
  else
    Messagedlg('Relatório não encontrado', mtInformation, [mbok], 0);
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

procedure TFrmVenda.btGravarClick(Sender: TObject);
begin
  inherited;
 btItem.Click;
end;

procedure TFrmVenda.btItemClick(Sender: TObject);
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

procedure TFrmVenda.btNovoClick(Sender: TObject);
begin
  inherited;
 DBCadastro.Text:=datetostr(now);
 qrCLiente.Open;
 qrFormaPgto.Open;
 qrProduto.Open;
 DBUsuario.Text:= dm.vUsuario;
 DBValor.Text:=InttoStr(0);
// DBParcela.Text:=IntToStr(0);
 DBID_Cliente.SetFocus;

end;

procedure TFrmVenda.bt_PesquisarClick(Sender: TObject);
begin
 FrmPesqVendas:=TfrmPesqVendas.Create(self);
 FrmPesqVendas.ShowModal;
 try
   if FrmPesqVendas.vCodigo > 0 then
    begin
      Q_Padrao.Open;
      Q_Padrao.Locate('ID_VENDA', FrmPesqVendas.vCodigo, []);
    end;

 finally
  FreeAndNil(FrmPesqVendas);

 end;

end;

procedure TFrmVenda.DBID_FormaPgtoExit(Sender: TObject);
begin
    //Validar o forma pgto
//  if not  qrFormaPgto.Locate('ID_FORMA_PGTO', Q_padrao.fieldbyName('ID_FORMA_PGTO').AsInteger, []) then
//    begin
//      Messagedlg('A Forma de Pagamento não foi Encontrada!', mtInformation, [mbOk], 0);
//      DBID_FORMAPGTO.SetFocus;
//      abort;
//    end;
    //Valida as qtds de Parcelas
//  if (DBID_FormaPgto.Text = IntToStr(2)) or (DBID_FormaPgto.Text = IntToStr(5)) then
//    begin
//      DBParcela.Text:= IntToStr(1);
//    end
//    else
//    DBParcela.SetFocus;
end;

procedure TFrmVenda.DBQtdeClick(Sender: TObject);
begin
  inherited;
   qrPadraoItem.Edit;
end;

procedure TFrmVenda.DBQtdeExit(Sender: TObject);
begin
  if qrPadraoItemQTDE.AsFloat > qrProdutoESTOQUE.AsFloat then
    begin
      ShowMessage('A Quantidade é maior que o Estoque!' +
      qrProdutoESTOQUE.AsString + '');
      abort;
      DBQtde.SetFocus;
    end
    else
     qrPadraoItemTOTAL_ITEM.AsFloat:=(qrPadraoItemQTDE.AsFloat * qrPadraoItemVL_VENDA.AsFloat) - (qrPadraoItemDESCONTO.AsFloat);
     qrPadraoItem.Refresh;
end;

procedure TFrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    qrCliente.Close;
    qrFormaPgto.Close;
    qrProduto.Close;
end;

procedure TFrmVenda.qrPadraoItemQTDEValidate(Sender: TField);
begin
  if qrProdutoESTOQUE.AsFloat = 0 then
    begin
      Messagedlg('Não possui Produto no Estoque', MtInformation, [MBOK], 0);
      btItem.SetFocus;
      qrPadraoItem.Delete;
      abort;
    end
    else
      if qrProdutoESTOQUE.AsFloat < qrProdutoESTOQUE_MIN.AsFloat then
        begin
           ShowMessage('Produto Abaixo do Estoque Min!' +
           qrProdutoESTOQUE.AsString + '');
           btItem.SetFocus;
        end;

end;

procedure TFrmVenda.DBDescontoClick(Sender: TObject);
begin
  inherited;
  qrPadraoitem.Edit;
end;

procedure TFrmVenda.DBDescontoExit(Sender: TObject);
begin
  qrPadraoItemTOTAL_ITEM.AsFloat:= (qrPadraoItemQTDE.AsFloat * qrPadraoItemVL_VENDA.AsFloat) - (qrPadraoItemDESCONTO.AsFloat);
  qrPadraoItem.Refresh;

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
     btItem.SetFocus;
   end
     else
       Messagedlg('Produto não Encontrado',mtInformation, [mbOk], 0);
       qrPadraoItem.Cancel;
       btItem.SetFocus;

end;

procedure TFrmVenda.DBID_CLIENTEExit(Sender: TObject);
begin
//  Validar o Cliente

if Q_Padrao.State in [dsEdit, dsInsert] then
    begin
  if not  qrCliente.Locate('ID_CLIENTE', Q_padrao.fieldbyName('id_cliente').AsInteger, []) then
    begin
      Messagedlg('Cliente não Encontrado!', mtInformation, [mbOk], 0);
      DBID_Cliente.SetFocus;
      abort;
    end
    else
      btGravar.Click;
  end
    else
     abort;
 end;
end.
