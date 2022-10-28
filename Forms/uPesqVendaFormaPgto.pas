unit uPesqVendaFormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPesquisa, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, frxChart;

type
  TFrmPesqVendaFormaPgto = class(TFrmPesquisa)
    qrPesquisaQTDE_VENDA: TIntegerField;
    qrPesquisaVALOR_VENDA: TFMTBCDField;
    qrPesquisaID_FORMA_PGTO: TIntegerField;
    qrPesquisaDESCRICAO: TStringField;
    LbValorVenda: TLabel;
    frxReport1: TfrxReport;
    frxChartObject1: TfrxChartObject;
    procedure btPesquisaClick(Sender: TObject);
    procedure SomaVenda ();
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqVendaFormaPgto: TFrmPesqVendaFormaPgto;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrmPesqVendaFormaPgto.btImprimirClick(Sender: TObject);
var vCaminho: String;
begin
  vCaminho := 'C:\ESTOQUE\EXE\RelVendaFormaPgto.fr3';
  if FrmPesqVendaFormaPgto.frxReport1.LoadFromFile(vCaminho) then
    begin
      frxReport1.Clear;
      frxReport1.LoadFromFile(vCaminho);
      frxReport1.Variables['DataIni'] := QuotedStr(MKInicio.Text);
      frxReport1.Variables['DataFim'] := QuotedStr(MaskEdit1.Text);
      frxReport1.Variables['Quantidade'] := QuotedStr(LbResultado.Caption);
      frxReport1.Variables['ValorVenda'] := QuotedStr(LbValorVenda.Caption);
      frxReport1.Variables['Nome'] := QuotedStr(dm.vUsuario);
      frxReport1.PrepareReport(true);
      frxReport1.ShowPreparedReport;
    end;


end;

procedure TFrmPesqVendaFormaPgto.btPesquisaClick(Sender: TObject);
begin
  qrPesquisa.Close;
  qrPesquisa.SQL.Add('');
  qrPesquisa.Params.Clear;
  qrPesquisa.SQL.Clear;
  qrPesquisa.SQL.Add('SELECT COUNT(A.ID_VENDA) AS qtde_venda,  '
                   + '  SUM(A.VALOR) AS VALOR_VENDA, '
                   + '  A.ID_FORMA_PGTO, '
                   + '  B.DESCRICAO  '
                   + '  FROM VENDA A  ');
qrPesquisa.SQL.Add(' INNER JOIN FORMA_PGTO B ON B.ID_FORMA_PGTO = A.ID_FORMA_PGTO  ' );
if Length(trim(MKInicio.Text)) = 20 then
begin
qrPesquisa.SQL.Add('WHERE A.CADASTRO BETWEEN :PDATAINI AND :PDATAFIM ');
qrPesquisa.ParamByName('PDATAINI').AsDate := StrtoDate(MKInicio.Text);
qrPesquisa.ParamByName('PDATAFIM').AsDate :=StrtoDate(MaskEdit1.Text);
end;
qrPesquisa.SQL.Add('GROUP BY A.ID_FORMA_PGTO, B.DESCRICAO ');
qrPesquisa.SQL.Add('ORDER BY A.ID_FORMA_PGTO, B.DESCRICAO') ;

qrPesquisa.open;
    //Mostra a Quantidade de Registros Encontrados
    LbResultado.Caption :='Total de Registros : ' + IntToStr(qrPesquisa.RecordCount);
    SomaVenda;

if qrPesquisa.IsEmpty then
  begin
    Messagedlg('Nenhum Registro Encontrado',mtInformation,[MbOk],0);
    abort;
  end;
end;

procedure TFrmPesqVendaFormaPgto.SomaVenda;
var vSoma: Currency;
begin
vSoma:=0;
 //soma a quantidade de compras
 qrPesquisa.First;
 while not qrPesquisa.Eof do
  begin
    vSoma := vSoma + qrPesquisaVALOR_Venda.AsCurrency;
    qrPesquisa.Next;
  end;
   LbValorVenda.Caption := 'Valor da Soma: ' + FormatFloat('R$ ##,##0.00',(vSoma));
end;
end.
