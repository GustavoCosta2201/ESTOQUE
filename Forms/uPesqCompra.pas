unit uPesqCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmPesqCompra = class(TFrmPesquisa)
    qrPesquisaID_COMPRA: TIntegerField;
    qrPesquisaID_FORNECEDOR: TIntegerField;
    qrPesquisaNOME: TStringField;
    qrPesquisaID_FORMA_PGTO: TIntegerField;
    qrPesquisaDESCRICAO: TStringField;
    qrPesquisaUSUARIO: TStringField;
    qrPesquisaCADASTRO: TDateField;
    qrPesquisaVALOR: TFMTBCDField;
    RelCompra: TfrxReport;
    procedure btPesquisaClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqCompra: TFrmPesqCompra;

implementation

{$R *.dfm}

procedure TFrmPesqCompra.btImprimirClick(Sender: TObject);
 var vCaminho: String;
begin
  vCaminho :='C:\ESTOQUE\EXE\RelCompras.fr3';
  if FrmPesqCompra.RelCompra.LoadFromFile(vCaminho) then
    begin
      RelCompra.Clear;
      RelCompra.LoadFromFile(vCaminho);
      RelCompra.PrepareReport(true);
      RelCompra.ShowPreparedReport;
    end
  else
   Messagedlg('Relatório não encontrado', mtError,[mbOk],0);
end;

procedure TFrmPesqCompra.btPesquisaClick(Sender: TObject);
begin

  qrPesquisa.Close;
  qrPesquisa.SQL.Add('');
  qrPesquisa.Params.Clear;
  qrPesquisa.SQL.Clear;
  qrPesquisa.SQL.Add('SELECT A.ID_COMPRA,'
  + 'A.ID_FORNECEDOR, '
  + 'B.NOME, '
  + 'A.ID_FORMA_PGTO, '
  + 'C.DESCRICAO, '
  + 'A.USUARIO, '
  + 'A.CADASTRO, '
  + 'A.VALOR '
  + 'FROM COMPRA A  '
  + 'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR  '
  + 'INNER JOIN FORMA_PGTO C ON C.ID_FORMA_PGTO = A.ID_FORMA_PGTO  ');

  //Opções de Pesquisa
  case ComboBox1.ItemIndex of
  0:begin         //PESQUISA POR CÓDIGO
    qrPesquisa.SQL.Add('WHERE A.ID_COMPRA =:PID_PRODUTO');      //Cria o Parâmetro
    qrPesquisa.ParamByName('PID_PRODUTO').AsString:=EDNome.Text;  //Aponta para o campo do Parâmetro
  end;

  1:begin   //PESQUISA POR NOME
    qrPesquisa.SQL.Add('WHERE A.USUARIO LIKE :PUSUARIO') ;
    qrPesquisa.ParamByName('PUSUARIO').AsString:= '%' + EDNome.Text + '%';
  end;

  2:begin
    qrPesquisa.SQL.Add('WHERE B.ID_FORNECEDOR =:PID_FORNECEDOR');
    qrPesquisa.ParamByName('PID_FORNECEDOR').AsString:=EDNome.Text;
  end;

  3:begin
    qrPesquisa.SQL.Add('WHERE A.ID_FORMA_PGTO=:PID_FORMA_PGTO');
    qrPesquisa.ParamByName('PID_FORMA_PGTO').AsString:=EDNome.Text;
  end;

  4:begin
      qrPesquisa.SQL.Add('WHERE A.CADASTRO =:PCADASTRO');
      qrPesquisa.ParamByName('PCADASTRO').AsDate:=StrToDate(MKInicio.Text);
  end;

  5:begin
     qrPesquisa.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
     qrPesquisa.ParamByName('PINICIO').Asdate:=StrTodate(MKInicio.Text);
     qrPesquisa.ParamByName('PFIM').AsDate:=StrtoDate(MaskEdit1.Text);
  end;

  6:begin
    qrPesquisa.SQL.Add('ORDER BY A.ID_COMPRA');
  end;

 end;

 //ABRE A QUERY E MOSTRA O RESULTADO
 qrPesquisa.Open;

 if qrPesquisa.IsEmpty then
  begin
    Messagedlg('Registro não Encontrado!', mtInformation, [mbOk], 0);
  end
  else
  abort;

end;

procedure TFrmPesqCompra.btTransferirClick(Sender: TObject);
begin
  inherited;
    if qrPesquisa.RecordCount > 0 then
      begin
        vCodigo:=qrPesquisaID_COMPRA.AsInteger;
      end
      else
      abort;
end;

procedure TFrmPesqCompra.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:begin //Pesquisa pelo Código
      EDNome.Visible:=true;
      if EDNome.CanFocus then
        EDNome.SetFocus;
      MKInicio.Visible:=False;
      MaskEdit1.Visible:=False;
      GroupBox1.Visible:=true;
      GroupBox1.Caption:='Digite o Código da Compra';
      GroupBox2.Visible:=false;
      GroupBox3.Visible:=false;
      EDNome.Clear;
    end;

      1:begin //Pesquisa pelo Nome do Usuário
        EDNome.Visible:=true;
        if EDNome.CanFocus then
        EDNome.SetFocus;
        MKInicio.Visible:=False;
        MaskEdit1.Visible:=False;
        GroupBox1.Visible:=true;
        GroupBox1.Caption:='Digite o Nome do Usuário';
        GroupBox2.Visible:=false;
        GroupBox3.Visible:=false;
        EDNome.Clear;
    end;

      2:begin     //Pelo Código do Fornecedor
        EDNome.Visible:=true;
        MKInicio.Visible:=false;
        if EDNome.CanFocus then
        EDNome.SetFocus;
        MaskEdit1.Visible:=false;
        GroupBox1.Visible:=true;
        GroupBox2.Visible:=false;
        GroupBox3.Visible:=false;
        GroupBox1.Caption:='Digite o Código do Fornecedor';
      end;

      3:begin  //Pesquisa pela Forma de Pagamento
        EDNome.Visible:=true;
        MKInicio.Visible:=false;
        if EDNome.CanFocus then
        EDNome.SetFocus;
        MaskEdit1.Visible:=false;
        GroupBox1.Visible:=true;
        GroupBox2.Visible:=false;
        GroupBox3.Visible:=false;
        GroupBox1.Caption:='Digite o Código da Forma Do Pagamento';
    end;

     4:begin  //Pesquisa por cadastro
        EDNome.Visible:=false;
        MKInicio.Visible:=true;
        MaskEdit1.Visible:=false;
        if MKInicio.CanFocus then
        MKInicio.SetFocus;
        GroupBox1.Visible:=false;
        GroupBox2.Visible:=true;
        GroupBox3.Visible:=false;
        MkInicio.Clear;
        GroupBox2.Caption:='Digite a data';
  end;
    5:begin //Pesquisa pelo Período
      EDNome.Visible:=false;
      if MKInicio.CanFocus then
      MKInicio.SetFocus;
      MKInicio.Visible:=true;
      MaskEdit1.Visible:=true;
      GroupBox1.Visible:=false;
      GroupBox2.Visible:=true;
      GroupBox3.Visible:=true;
      MKInicio.Clear;
      MaskEdit1.Clear;
      Groupbox2.Caption:='Digite O Período';
    end;

    6:begin //Pesquisa tudo
      EDNome.Visible:=true;
      if EDNome.CanFocus then
      EDNome.SetFocus;
      MKInicio.Visible:=False;
      MaskEdit1.Visible:=False;
      GroupBox1.Visible:=true;
      GroupBox1.Caption:='Pesquisando Todos os Cadastros';
      EDNome.Text:='TODOS';
      GroupBox2.Visible:=false;
      GroupBox3.Visible:=false;
      EDNome.Clear;
    end;
  end;
end;

end.
