unit uPesqUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TFrmPesqUsuarios = class(TFrmPesquisa)
    qrPesquisaID_USUARIO: TIntegerField;
    qrPesquisaNOME: TStringField;
    qrPesquisaTIPO: TStringField;
    qrPesquisaCADASTRO: TDateField;
    RelPesqPadrao: TfrxReport;
    procedure btPesquisaClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqUsuarios: TFrmPesqUsuarios;

implementation

{$R *.dfm}

procedure TFrmPesqUsuarios.btImprimirClick(Sender: TObject);
 var vCaminho: string;
begin
  //Abre Relatório
  vCaminho:='C:\ESTOQUE\EXE\RelUsuario.FR3';
  if FrmPesqUsuarios.RelPesqPadrao.LoadFromFile(vCaminho) then
    begin
      RelPesqPadrao.Clear; //Limpa Relatório
      RelPesqPadrao.LoadFromFile(vCaminho);
      RelPesqPadrao.PrepareReport(true);
      RelPesqPadrao.ShowPreparedReport;
      end
    else
    Messagedlg('Relatório não encontrado',mtError,[mbOk],0);
end;

procedure TFrmPesqUsuarios.btPesquisaClick(Sender: TObject);
begin

  qrPesquisa.Close;  //Fecha a Query
  qrPesquisa.SQL.Add(''); //Limpa o SQL
  qrPesquisa.Params.Clear; //Limpa os Parâmetros
  qrPesquisa.SQL.Clear; //Limpa o SQL
  qrPesquisa.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO FROM USUARIO'); //Adiciona o SQL

    case ComboBox1.ItemIndex of
    0:begin  //Pesquisa por código
      qrPesquisa.SQL.Add('WHERE ID_USUARIO=:PID_USUARIO'); //Cria o Parâmetro
      qrPesquisa.ParamByName('PID_USUARIO').AsString:=EDNome.Text; // Aponta para o campo do parâmetro
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
      qrPesquisa.SQL.Add('ORDER BY ID_USUARIO')
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

procedure TFrmPesqUsuarios.btTransferirClick(Sender: TObject);
begin
  if qrPesquisa.RecordCount > 0 then
    begin
      vCodigo:=qrPesquisaID_USUARIO.AsInteger;
    end
    else
    abort;
end;

procedure TFrmPesqUsuarios.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:begin //Pesquisa pelo Código
      EDNome.Visible:=true;
      if EDNome.CanFocus then
        EDNome.SetFocus;
      MKInicio.Visible:=False;
      MaskEdit1.Visible:=False;
      GroupBox1.Visible:=true;
      GroupBox1.Caption:='Digite o Código';
      GroupBox2.Visible:=false;
      GroupBox3.Visible:=false;
    end;

      1:begin //Pesquisa pelo Nome
        EDNome.Visible:=true;
        if EDNome.CanFocus then
        EDNome.SetFocus;
        MKInicio.Visible:=False;
        MaskEdit1.Visible:=False;
        GroupBox1.Visible:=true;
        GroupBox1.Caption:='Digite o Nome';
    end;

      2:begin     //Pesquisa por data
        EDNome.Visible:=false;
        MKInicio.Visible:=true;
        if MKInicio.CanFocus then
        MKInicio.SetFocus;
        MaskEdit1.Visible:=false;
        GroupBox1.Visible:=false;
        GroupBox2.Visible:=True;
        GroupBox2.Caption:='Digite a Data';
      end;

      3:begin  //Pesquisa por Período
        EDNome.Visible:=false;
        MKInicio.Visible:=true;
        MaskEdit1.Visible:=true;
        if MaskEdit1.CanFocus then
        MaskEdit1.SetFocus;
        GroupBox1.Visible:=false;
        GroupBox2.Visible:=true;
        GroupBox3.Visible:=true;
        GroupBox2.Caption:='Digite o Período';
    end;

    4:begin  //Pesquisa por Período
        EDNome.Visible:=true;
        MKInicio.Visible:=true;
        MaskEdit1.Visible:=false;
        if MaskEdit1.CanFocus then
        MaskEdit1.SetFocus;
        GroupBox1.Visible:=true;
        GroupBox2.Visible:=false;
        GroupBox3.Visible:=false;
        EDNome.Text:='TODOS';
    end;
   end;
end;

procedure TFrmPesqUsuarios.DBGrid1DblClick(Sender: TObject);
begin
 btTransferir.click;

end;

end.
