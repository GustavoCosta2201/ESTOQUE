unit uPesqProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, frxServerClient;

type
  TFrmPesqProduto = class(TFrmPesquisa)
    qrPesquisaID_PRODUTO: TIntegerField;
    qrPesquisaDESCRICAO: TStringField;
    qrPesquisaVL_CUSTO: TFMTBCDField;
    qrPesquisaVL_VENDA: TFMTBCDField;
    qrPesquisaESTOQUE: TFMTBCDField;
    qrPesquisaESTOQUE_MIN: TFMTBCDField;
    qrPesquisaUNIDADE: TStringField;
    qrPesquisaID_FORNECEDOR: TIntegerField;
    qrPesquisaNOME: TStringField;
    qrPesquisaCADASTRO: TDateField;
    RelPesqPadrao: TfrxReport;
    procedure btPesquisaClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqProduto: TFrmPesqProduto;

implementation

{$R *.dfm}

uses uPesqFornecedor, U_Fornecedor;

procedure TFrmPesqProduto.btImprimirClick(Sender: TObject);
  var vCaminho: String;
begin
   //Abre o relatório
      vCaminho:='C:\ESTOQUE\EXE\RelProduto.fr3';
      if FrmPesqProduto.RelPesqPadrao.LoadFromFile(vCaminho) then
         begin
           RelPesqPadrao.Clear;
           RelPesqPadrao.LoadFromFile(vCaminho);
           RelPesqPadrao.PrepareReport(true);
           RelPesqPadrao.ShowPreparedReport;
         end;

end;

procedure TFrmPesqProduto.btPesquisaClick(Sender: TObject);
begin
  inherited;
qrPesquisa.Close;  //Fecha a Query
  qrPesquisa.SQL.Add(''); //Limpa o SQL
  qrPesquisa.Params.Clear; //Limpa os Parâmetros
  qrPesquisa.SQL.Clear; //Limpa o SQL
  qrPesquisa.SQL.Add('SELECT ID_PRODUTO, '
  + ' A.DESCRICAO, '
  + ' A.VL_CUSTO,'
  + ' A.VL_VENDA,'
  + ' A.ESTOQUE,'
  + ' A.ESTOQUE_MIN,'
  + ' A.UNIDADE,'
  + ' A.ID_FORNECEDOR,'
  + ' B.NOME,'
  + ' A.CADASTRO'
  + ' FROM PRODUTO A  '
  + ' INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR'); //Adiciona o SQL

    case ComboBox1.ItemIndex of
  0:begin  //Pesquisa por código
      qrPesquisa.SQL.Add('WHERE A.ID_PRODUTO=:PID_PRODUTO'); //Cria o Parâmetro
      qrPesquisa.ParamByName('PID_PRODUTO').AsString:=EDNome.Text; // Aponta para o campo do parâmetro
    end;

    1:begin //Pesquisa por Nome
      qrPesquisa.SQL.Add('WHERE A.DESCRICAO LIKE :PDESCRICAO'); //Cria o Parâmetro
      qrPesquisa.ParamByName('PDESCRICAO').AsString:= '%' + AnsiUpperCase(EDNome.Text) + '%'; // Aponta para o campo do parâmetro
    end;

    2:begin //Pesquisa por Data
      if Length(trim(MKInicio.Text)) = 10 then
      begin
        qrPesquisa.SQL.Add('WHERE A.CADASTRO :PCADASTRO'); //Cria o Parâmetro
        qrPesquisa.ParamByName('PCADASTRO').AsDate:= strtodate(Mkinicio.Text); // Aponta para o campo do parâmetro
      end
    end;

    3:begin   // Pesquisa por Período
    if Length(trim(MKInicio.Text)) = 20 then
      begin
      qrPesquisa.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM' ); //Cria o Parâmetro
      qrPesquisa.ParamByName('PINICIO').AsDate:= strtodate(Mkinicio.Text);
      qrPesquisa.ParamByName('PFIM').AsDate:= strtodate(MaskEdit1.Text); // Aponta para o campo do parâmetro
    end;
  end;

  4:begin
      qrPesquisa.SQL.Add('ORDER BY A.ID_PRODUTO');
    end;

    5:begin
      qrPesquisa.SQL.Add('WHERE A.ID_FORNECEDOR=:PID_FORNECEDOR'); //Cria o Parâmetro
      qrPesquisa.ParamByName('PID_FORNECEDOR').AsString:=EDNome.Text; // Aponta para o campo do parâmetro
    end;
end;

  qrPesquisa.Open; //Abre a query e mostra o resultado

    if qrPesquisa.IsEmpty then
      begin
        messagedlg('Registro não Encontrado',mtInformation,[mbOk],0); //Se estiver vázio/não encontrado mostra a mensagem
      end
       else
      abort;
end;

procedure TFrmPesqProduto.btTransferirClick(Sender: TObject);
begin
 if qrPesquisa.RecordCount > 0 then
    begin
     vCodigo:=qrPesquisaID_PRODUTO.AsInteger;
    end
 else
  abort;
end;

end.
