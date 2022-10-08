unit uCompra01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uMovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, frxClass, frxDBSet, Vcl.ComCtrls;

type
  TFrmCompra01 = class(TFrmPadraoMovimento)
    Q_padraoID_COMPRA: TFDAutoIncField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoVALOR: TFMTBCDField;
    Label1: TLabel;
    DBIDCompra: TDBEdit;
    Label2: TLabel;
    DBIDFornecedor: TDBEdit;
    Label3: TLabel;
    DBIDFormaPgto: TDBEdit;
    Label4: TLabel;
    DBCadastro: TDBEdit;
    Label5: TLabel;
    DBUsuario: TDBEdit;
    Label6: TLabel;
    DBValor: TDBEdit;
    qrFornecedor: TFDQuery;
    qrFormaPgto: TFDQuery;
    dsFornecedor: TDataSource;
    dsFormaPgto: TDataSource;
    qrFornecedorID_FORNECEDOR: TIntegerField;
    qrFornecedorNOME: TStringField;
    qrFormaPgtoID_FORMA_PGTO: TIntegerField;
    qrFormaPgtoDESCRICAO: TStringField;
    Q_padraoNOME: TStringField;
    Q_padraoDSECRICAO: TStringField;
    Label7: TLabel;
    DBNome: TDBLookupComboBox;
    Label8: TLabel;
    DBDescricao: TDBLookupComboBox;
    qrPadraoItemID_SEQUENCIA: TIntegerField;
    qrPadraoItemID_COMPRA: TIntegerField;
    qrPadraoItemID_PRODUTO: TIntegerField;
    qrPadraoItemQTDE: TFMTBCDField;
    qrPadraoItemVL_CUSTO: TFMTBCDField;
    qrPadraoItemTOTAL_ITEM: TFMTBCDField;
    Label9: TLabel;
    DBIDProduto: TDBEdit;
    Label10: TLabel;
    DBQtde: TDBEdit;
    Label11: TLabel;
    DBCusto: TDBEdit;
    qrPadraoItemDESCONTO: TFMTBCDField;
    Label12: TLabel;
    DBDesconto: TDBEdit;
    Label13: TLabel;
    DBTotal: TDBEdit;
    qrProduto: TFDQuery;
    qrPadraoItemDESCRICAO: TStringField;
    qrPadraoItemSUBTOTAL: TAggregateField;
    DBEdit1: TDBEdit;
    RelReciboCompra: TfrxReport;
    dsReciboCompra: TfrxDBDataset;
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
    qrEmpresaCEP: TStringField;
    qrEmpresaTELEFONE: TStringField;
    qrEmpresaCNPJ: TStringField;
    qrEmpresaEMAIL: TStringField;
    qrEmpresaLOGO: TBlobField;
    qrEmpresaCADASTRO: TDateField;
    dsRelEmpresa: TfrxDBDataset;
    dsItem: TfrxDBDataset;
    Q_padraoCOND_PGTO: TIntegerField;
    Q_padraoDESCRICAO: TStringField;
    Label14: TLabel;
    DBCondPgto: TDBEdit;
    qrContasPagar: TFDQuery;
    dsContasPagar: TDataSource;
    qrContasPagarID_SEQUENCIA: TIntegerField;
    qrContasPagarID_COMPRA: TIntegerField;
    qrContasPagarVL_PARCELA: TFMTBCDField;
    qrContasPagarDT_VENCIMENTO: TDateField;
    qrContasPagarDT_PAGAMENTO: TDateField;
    qrContasPagarATRASO: TIntegerField;
    qrContasPagarJUROS: TFMTBCDField;
    qrContasPagarVL_JUROS: TFMTBCDField;
    qrContasPagarTOTAL_PAGAR: TFMTBCDField;
    qrContasPagarSTATUS: TStringField;
    DBGrid2: TDBGrid;
    procedure btNovoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBIDProdutoExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBIDFormaPgtoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCompra01: TFrmCompra01;

implementation

{$R *.dfm}

uses U_Padrao, U_DM, uPesqCompra;

procedure TFrmCompra01.BitBtn2Click(Sender: TObject);
   var vProx: Integer;
begin
  //INSERE OS ITENS NA TABELA DE ITENS COMPRAS
  qrPadraoItem.Open; //abre a query
  qrPadraoItem.Edit;
  qrPadraoItem.Last; //vai para o último registro
  vProx:=qrPadraoItemID_SEQUENCIA.AsInteger + 1;  //recebe o valor do campo id_sequencia + 1
  qrPadraoItem.Append;  //abre uma nova linha na tabela para inserção de registros
  qrPadraoItemID_SEQUENCIA.AsInteger:=vProx;     //Campo ID Sequencia recebe o conteúdo da variável vProx
  DBIDProduto.SetFocus;    //O foco vai para o campo ID PRODUTO

end;

procedure TFrmCompra01.BitBtn3Click(Sender: TObject);
  var vParcela: Integer;
      vDif: Real;
      vSoma: Real;
begin
  Q_padrao.Edit;  //Abre para edição o cabeçalho
  //Insere o valor total dos itens
  Q_padraoVALOR.AsFloat:=qrPadraoItem.AggFields.FieldByName('SUBTOTAL').Value;
  Q_padrao.Post; //Salvar o cabeçalho

  //Aliemnta o Estoque
       //Abre para edição
  qrPadraoItem.First;  //qrProduto vai para o primeiro campo
  while not qrPadraoItem.Eof do
    begin
    if qrProduto.Locate('ID_PRODUTO', qrPadraoItemID_PRODUTO.AsInteger, []) then
    begin
      qrProduto.Edit;
      qrProduto.FieldByName('ESTOQUE').AsFloat:= qrProduto.FieldByName('ESTOQUE').AsFloat + qrPadraoItemQTDE.AsFloat;
      qrPadraoItem.Next;
    end;
      qrProduto.Refresh;

   end;
     Messagedlg('Estoque atualizado com sucesso', mtInformation,[mbOk],0);

     //Insere o Contas a Pagar
     qrContasPagar.Open;
   vParcela :=1;
//   qrContasPagarID_SEQUENCIA.AsInteger:=vParcela;
   if (Q_padraoID_FORMA_PGTO.Value = 1) or (Q_padraoID_FORMA_PGTO.Value = 2) then
      begin
        while vParcela <= Q_padraoCOND_PGTO.AsInteger do
         begin
          qrContasPagar.Insert;        //Abre para Inserção
          qrContasPagarID_SEQUENCIA.AsInteger:=vParcela;
          qrContasPagar.FieldByName('valor_parcela').AsFloat:= Q_padraoVALOR.AsFloat/Q_padraoCOND_PGTO.Value;   //Recebe a divisão total do Cond_pgto
          qrContasPagar.FieldByName('dt_vencimento').Value:=date;   //Insere data de vencimento e pagamento
          qrContasPagar.FieldByName('dt_pagamento').Value:=date;
          qrContasPagar.FieldByName('juros').AsFloat:=0;     //Zera juros e Atraso
          qrContasPagar.FieldByName('Atraso').AsFloat:=0;
          qrContasPagar.FieldByName('vl_juros').AsFloat:=0;
          qrContasPagar.FieldByName('total_pagar').AsFloat:= qrContasPagar.FieldByName('valor_parcela').AsFloat; //Total a pagar recebe o valor total da Parcela
          qrContasPagar.FieldByName('status').AsString:='RECEBIDO';
          qrContasPagar.Post;
          inc(vParcela);      //Auto Incrementa a Parcela

      end;
    end
    else
        qrContasPagar.First;
        while vParcela <= Q_padraoCOND_PGTO.AsInteger do            //Se for a Crédito ou a Prazo, Nota Promissória
          begin
            qrContasPagar.Insert;
            qrContasPagarID_SEQUENCIA.AsInteger:=vParcela;
            qrContasPagar.FieldByName('valor_parcela').AsFloat:= Q_padraoVALOR.AsFloat/Q_padraoCOND_PGTO.Value;
            qrContasPagar.FieldByName('dt_vencimento').Value:= Date  + (vParcela * 30);                                   //TESTE DE COMMIT
            qrContasPagar.FieldByName('juros').AsFloat:=0;
            qrContasPagar.FieldByName('Atraso').AsFloat:=0;
            qrContasPagar.FieldByName('vl_juros').AsFloat:=0;
            qrContasPagar.FieldByName('total_pagar').AsFloat:= qrContasPagar.FieldByName('valor_parcela').AsFloat;
            qrContasPagar.FieldByName('Status').AsString:='EM ABERTO';
            qrContasPagar.Post;
            inc(vParcela);
            qrContasPagar.Next;            //TESTE DE COMMIT

          end;
            //Cria o Procedimento para Tratar A Diferença das Parcelas
            vSoma:= vSoma + Q_padraoCOND_PGTO.Value * qrContasPagar.FieldByName('valor_parcela').AsFloat;
            if vSoma > Q_padraoVALOR.AsFloat then
              begin
                vDif:=vSoma - Q_padraoVALOR.AsFloat;
                qrContasPagar.Last;
                qrContasPagar.Edit;
                qrContasPagar.FieldByName('valor_parcela').AsFloat := qrContasPagar.FieldByName('valor_parcela').AsFloat - vDif;
                qrContasPagar.Refresh;
              end;

            Messagedlg('Parcelas Geradas com Sucesso', mtInformation, [mbOk], 0);
end;

procedure TFrmCompra01.BitBtn4Click(Sender: TObject);
begin
  //Exclui Item do Detalhe de Compra
   if Messagedlg('Deseja Excluir este Item?', mtConfirmation,[mbOK,mbNo], 0 ) = mrOk then
    begin
      if qrProduto.Locate('ID_PRODUTO',qrPadraoItemID_PRODUTO.AsInteger, []) then
        begin
          qrProduto.Edit;
          qrProduto.FieldByName('ESTOQUE').AsFloat :=  qrProduto.FieldByName('ESTOQUE').AsFloat  - qrPadraoItemQTDE.AsFloat;
          qrProduto.Refresh;
          qrPadraoItem.Delete;
          Messagedlg('Item Excluido com Sucesso', mtinformation, [MbOk], 0);
        end
          else
          abort;
    end;

end;

procedure TFrmCompra01.BitBtn5Click(Sender: TObject);
 var vCaminho: String;
     vCompra: Integer;
begin
  vCompra:=qrPadraoItemID_COMPRA.AsInteger;
   Q_padrao.Close;
   qrPadraoItem.Close;
   Q_padrao.SQL.Add('');
   Q_padrao.SQL.Clear;
   Q_padrao.Params.Clear;
   Q_padrao.SQL.Clear;
   Q_padrao.SQL.Add('SELECT A.ID_COMPRA,  '
                    +'  A.ID_FORNECEDOR,  '
                    +'  B.NOME,           '
                    +'  A.ID_FORMA_PGTO,  '
                    +'  A.COND_PGTO,      '
                    +'  C.DESCRICAO,      '
                    +'  A.USUARIO,        '
                    +'  A.VALOR,          '
                    +'  A.CADASTRO        '
  +'  FROM COMPRA A, FORNECEDOR B, FORMA_PGTO C   '
  +'  WHERE A.ID_FORNECEDOR=B.ID_FORNECEDOR AND C.ID_FORMA_PGTO = A.ID_FORMA_PGTO  ');

  Q_padrao.SQL.Add('AND  A.ID_COMPRA = :ID_COMPRA');
  Q_padrao.ParamByName('ID_COMPRA').AsInteger:= vCompra;

  Q_padrao.Open;
  qrPadraoItem.Open;
  FrmCompra01.Close;

  //Imprime o Recibo de Compra
  vCaminho:='C:\ESTOQUE\EXE\RelReciboCompra.fr3';
    if FrmCompra01.RelReciboCompra.LoadFromFile(vCaminho) then
      begin
      RelReciboCompra.Clear;
      RelReciboCompra.LoadFromFile(vCaminho);
      RelReciboCompra.PrepareReport(true);
      RelReciboCompra.ShowPreparedReport;
      end;

  end;

procedure TFrmCompra01.btDeletarClick(Sender: TObject);
begin
   if Messagedlg('Deseja Excluir Todo o Registro?', mtConfirmation,[mbOK,mbNo], 0 ) = mrOk then
    begin
      qrPadraoItem.First;
      while qrPadraoItem.RecordCount > 0 do
        begin
          if qrProduto.Locate('ID_PRODUTO', qrPadraoItemID_PRODUTO.AsInteger, []) then
            begin
              qrProduto.Edit;
              qrProduto.FieldByName('ESTOQUE').AsFloat:= qrProduto.FieldByName('ESTOQUE').AsFloat - qrPadraoItemQTDE.AsFloat;
              qrProduto.Refresh;
              qrPadraoItem.Delete;
              qrPadraoitem.Next;
            end;
        end;
          inherited;
    end
    else
      abort;
end;

procedure TFrmCompra01.btNovoClick(Sender: TObject);
begin
  //Carga, abre uma nova linha
  inherited;
   Q_padraoCADASTRO.AsDateTime:=date;
   Q_padraoUSUARIO.AsString:= dm.vUsuario;
   Q_padraoVALOR.AsCurrency:=0;
   DBIDFornecedor.SetFocus;

end;

procedure TFrmCompra01.bt_PesquisarClick(Sender: TObject);
begin
  FrmPesqCompra:=TfrmPesqCompra.Create(Self);
  FrmPesqCompra.ShowModal;

  try
  if FrmPesqCompra.vCodigo > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('ID_COMPRA',FrmPesqCompra.vCodigo, []);
    end;


  finally
  FrmPesqCompra.Free;
  FrmPesqCompra:=nil;

  end;
end;

procedure TFrmCompra01.DBIDFormaPgtoExit(Sender: TObject);
begin
 //INSERE DADOS NA CONDIÇÃO DE PAGAMENTOS
 //Se for avista, ou cartão de crédito
 if (DBIDFormaPgto.Text = Inttostr(1)) or (DBIDFormaPgto.Text = InttoStr(2)) then
   begin
     DBCondPgto.Text:= InttoStr(1);
    end
    else
    DBCondPgto.SetFocus;
end;

procedure TFrmCompra01.DBIDProdutoExit(Sender: TObject);
begin
  if qrPadraoItemID_PRODUTO.AsInteger > 0 then
    if qrProduto.Locate('ID_PRODUTO', qrPadraoItem.FieldByName('ID_PRODUTO').AsInteger, []) then

   begin
     qrPadraoItemQTDE.AsFloat:=1;
     qrPadraoItemDESCONTO.AsFloat:=0;
     //Pega o valor do Produto
     qrPadraoItemVL_CUSTO.AsFloat:= qrProduto.FieldByName('VL_CUSTO').AsFloat;
     //soma a quantidade dos Itens
     qrPadraoItemTOTAL_ITEM.AsFloat:=(qrPadraoItemQTDE.AsFloat * qrPadraoItemVL_CUSTO.AsFloat)-(qrPadraoItemDESCONTO.AsFloat);
     qrPadraoItem.Post;
     BitBtn2.SetFocus;
   end
     else
       Messagedlg('Produto não Encontrado',mtInformation, [mbOk], 0);
       qrPadraoItem.Cancel;
       BitBtn2.SetFocus;
  end;

procedure TFrmCompra01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  //Fecha as Querys
  qrFornecedor.Close;
  qrFormaPgto.Close;
  qrContasPagar.Close;
  qrPadraoItem.Close;
  Q_Padrao.Close;
end;

end.
