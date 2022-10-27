unit uPesqCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, Vcl.DBCtrls;

type
  TFrmPesqCliente = class(TFrmPesquisa)
    qrPesquisaID_CLIENTE: TIntegerField;
    qrPesquisaNOME: TStringField;
    qrPesquisaENDERECO: TStringField;
    qrPesquisaNUMERO: TIntegerField;
    qrPesquisaBAIRRO: TStringField;
    qrPesquisaCIDADE: TStringField;
    qrPesquisaUF: TStringField;
    qrPesquisaTELEFONE: TStringField;
    qrPesquisaCPF: TStringField;
    qrPesquisaCEP: TStringField;
    qrPesquisaEMAIL: TStringField;
    qrPesquisaCADASTRO: TDateField;
    RelPesqPadrao: TfrxReport;
    procedure btPesquisaClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqCliente: TFrmPesqCliente;

implementation

{$R *.dfm}

procedure TFrmPesqCliente.btImprimirClick(Sender: TObject);
  var vCaminho: string;
begin
//Abre o Relatório
 vCaminho:= 'C:\ESTOQUE\EXE\RelClientes.fr3';
  if FrmPesqCliente.RelPesqPadrao.LoadFromFile(vCaminho) then
    begin
      RelPesqPadrao.Clear;
      RelPesqPadrao.LoadFromFile(vCaminho);
      RelPesqPadrao.PrepareReport(true);
      RelPesqPadrao.ShowPreparedReport;
    end
      else
    Messagedlg('Relatório não Encontrado',mtError, [mbOk],0);

end;

procedure TFrmPesqCliente.btPesquisaClick(Sender: TObject);
begin
  qrPesquisa.Close;  //Fecha a Query
  qrPesquisa.SQL.Add(''); //Limpa o SQL
  qrPesquisa.Params.Clear; //Limpa os Parâmetros
  qrPesquisa.SQL.Clear; //Limpa o SQL
  qrPesquisa.SQL.Add('SELECT ID_CLIENTE, '
  + ' NOME, '
  + ' ENDERECO,'
  + ' NUMERO,'
  + ' BAIRRO,'
  + ' CIDADE,'
  + ' UF,'
  + ' CEP,'
  + ' TELEFONE,'
  + ' CPF,'
  + ' CADASTRO,'
  + ' EMAIL '
  + ' FROM CLIENTE'); //Adiciona o SQL

    case ComboBox1.ItemIndex of
  0:begin  //Pesquisa por código
      qrPesquisa.SQL.Add('WHERE ID_CLIENTE=:PID_CLIENTE'); //Cria o Parâmetro
      qrPesquisa.ParamByName('PID_CLIENTE').AsString:=EDNome.Text; // Aponta para o campo do parâmetro
    end;

    1:begin //Pesquisa por Nome
      qrPesquisa.SQL.Add('WHERE NOME LIKE :PNOME'); //Cria o Parâmetro
      qrPesquisa.ParamByName('PNOME').AsString:= '%' + AnsiUpperCase(EDNome.Text) + '%'; // Aponta para o campo do parâmetro
    end;

    2:begin //Pesquisa por Data
      if Length(trim(MKInicio.Text)) = 10 then
      begin
        qrPesquisa.SQL.Add('WHERE CADASTRO :PCADASTRO'); //Cria o Parâmetro
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
      qrPesquisa.SQL.Add('ORDER BY ID_CLIENTE')
    end;
end;

  qrPesquisa.Open; //Abre a query e mostra o resultado
     //Mostra a Quantidade de Registros Encontrados
    LbResultado.Caption :='Total de Registros encontrados: ' + IntToStr(qrPesquisa.RecordCount);

    if qrPesquisa.IsEmpty then
      begin
        messagedlg('Registro não Encontrado',mtInformation,[mbOk],0); //Se estiver vázio/não encontrado mostra a mensagem
      end
       else
      abort;

end;

procedure TFrmPesqCliente.btTransferirClick(Sender: TObject);
begin

  if qrPesquisa.RecordCount > 0 then
    begin
      vCodigo:=qrPesquisaID_CLIENTE.AsInteger;
    end
    else
    abort;
end;

procedure TFrmPesqCliente.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
    btTransferir.Click;
end;

end.
