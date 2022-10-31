{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit uPesqGeralMes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TFrmPesqGeralMes = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    MKInicio: TMaskEdit;
    GroupBox3: TGroupBox;
    MaskEdit1: TMaskEdit;
    btPesquisa: TBitBtn;
    btImprimir: TBitBtn;
    RGOpcao: TRadioGroup;
    qrCompra: TFDQuery;
    qrVenda: TFDQuery;
    qrContaPagar: TFDQuery;
    qrContaReceber: TFDQuery;
    qrContasPagarAPagar: TFDQuery;
    dsCompra: TDataSource;
    dsVenda: TDataSource;
    dsContaPagar: TDataSource;
    dsContaReceber: TDataSource;
    dsContasPagarAPagar: TDataSource;
    dsContaReceberAReceber: TDataSource;
    qrContaReceberAReceber: TFDQuery;
    RelatórioGeral: TfrxReport;
    frxCompra: TfrxDBDataset;
    frxVenda: TfrxDBDataset;
    frxContaPagar: TfrxDBDataset;
    frxContaReceber: TfrxDBDataset;
    frxContaPagarAPagar: TfrxDBDataset;
    frxContaReceberAReceber: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    BitBtn1: TBitBtn;
    qrCompraMES: TSmallintField;
    qrCompraANO: TSmallintField;
    qrCompraVALOR_COMPRA: TFMTBCDField;
    qrVendaMES: TSmallintField;
    qrVendaANO: TSmallintField;
    qrVendaVALOR_VENDA: TFMTBCDField;
    qrContaPagarMES: TSmallintField;
    qrContaPagarANO: TSmallintField;
    qrContaPagarTOTAL_PAGO: TFMTBCDField;
    qrContaReceberMES: TSmallintField;
    qrContaReceberANO: TSmallintField;
    qrContaReceberTOTAL_RECEBIDO: TFMTBCDField;
    qrContasPagarAPagarMES: TSmallintField;
    qrContasPagarAPagarANO: TSmallintField;
    qrContasPagarAPagarVALOR_PAGAR: TFMTBCDField;
    qrContaReceberAReceberMES: TSmallintField;
    qrContaReceberAReceberANO: TSmallintField;
    qrContaReceberAReceberTOTAL_PARCELA: TFMTBCDField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqGeralMes: TFrmPesqGeralMes;

implementation

{$R *.dfm}

uses U_DM;


procedure TFrmPesqGeralMes.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPesqGeralMes.btPesquisaClick(Sender: TObject);
begin
  case RGOpcao.ItemIndex of     //compra e vendas por mês
  0:begin
    qrCompra.Close;
    qrCompra.SQL.Add('');
    qrCompra.Params.Clear;
    qrCompra.SQL.Clear;
    qrCompra.SQL.Add('SELECT EXTRACT(MONTH FROM A.CADASTRO) AS MES,      '
                    + 'EXTRACT(YEAR FROM A.CADASTRO) AS ANO,     '
                    + 'SUM(A.VALOR) AS VALOR_COMPRA,     '
                    + '  FROM COMPRA A  ');
  if Length(trim(MKInicio.Text)) = 20 then
   begin
    qrCompra.SQL.Add('WHERE A.CADASTRO BETWEEN :PDATAINI AND :PDATAFIM   ');
    qrCompra.ParamByName('PDATAINI').AsDate := StrToDate(MKInicio.Text);
    qrCompra.ParamByName('PDATAFIM').AsDate := StrToDate(MaskEdit1.Text);
   end;
    qrCompra.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.CADASTRO), EXTRACT(YEAR FROM A.CADASTRO)  ') ;
    qrCompra.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.CADASTRO)  ');
    //qrCompra.Open;

    qrVenda.Close;                                               
    qrVenda.SQL.Add('');
    qrVenda.Params.Clear;
    qrVenda.SQL.Clear;
    qrVenda.SQL.Add('SELECT EXTRACT(MONTH FROM A.CADASTRO) AS MES,   '
                    + 'EXTRACT(YEAR FROM A.CADASTRO) AS ANO,  '
                    + 'SUM(A.VALOR) AS VALOR_VENDA,       '
                    + '   FROM VENDA A  ');
   if Length(trim(MKInicio.Text)) = 20 then
    begin
    qrVenda.SQL.Add('WHERE A.CADASTRO BETWEEN :PDATAINI AND :PDATAFIM  ');
    qrVenda.ParamByName('PDATAINI').AsDate := StrToDate(MKInicio.Text);
    qrVenda.ParamByName('PDATAFIM').AsDate := StrToDate(MaskEdit1.Text);
    end;
    qrVenda.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.CADASTRO), EXTRACT(YEAR FROM A.CADASTRO)  ') ;
    qrVenda.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.CADASTRO)  ');
    qrVenda.Open;
   end;
   
   1:begin
     qrContaPagar.Close;
     qrContaPagar.SQL.Add('');
     qrContaPagar.Params.Clear;
     qrContaPagar.SQL.Clear;
     qrContaPagar.SQL.Add('SELECT EXTRACT(MONTH FROM A.DT_PAGAMENTO) AS MES,   '
                    + 'EXTRACT(YEAR FROM A.DT_PAGAMENTO) AS ANO,  '
                    + 'SUM(A.TOTAL_PAGAR) AS TOTAL_PAGO,   '
                    + '  FROM CONTAS_PAGAR A   ');
  if Length(trim(MKInicio.Text)) = 20 then
   begin
    qrContaPagar.SQL.Add('WHERE A.DT_PAGAMENTO BETWEEN :PDATAINI AND :PDATAFIM   ');
    qrContaPagar.ParamByName('PDATAINI').AsDate := StrToDate(MKInicio.Text);
    qrContaPagar.ParamByName('PDATAFIM').AsDate := StrToDate(MaskEdit1.Text);
   end;
    qrContaPagar.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.DT_PAGAMENTO), EXTRACT(YEAR FROM A.DT_PAGAMENTO)  ') ;
    qrContaPagar.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.DT_PAGAMENTO)  ');
    qrContaPagar.Open;

    qrContaReceber.Close;
    qrContaReceber.SQL.Add('');
    qrContaReceber.Params.Clear;
    qrContaReceber.SQL.Clear;
    qrContaReceber.SQL.Add('SELECT EXTRACT(MONTH FROM A.DT_PAGAMENTO) AS MES,    '
                    + 'EXTRACT(YEAR FROM A.DT_PAGAMENTO) AS ANO,  '
                    + 'SUM(A.TOTAL_PAGAR) AS  TOTAL_RECEBIDO,  '
                    + '  FROM CONTAS_RECEBER A  ');
  if Length(trim(MKInicio.Text))= 20 then
   begin
    qrContaReceber.SQL.Add('WHERE A.DT_PAGAMENTO BETWEEN :PDATAINI AND :PDATAFIM  ');
    qrContaReceber.ParamByName('PDATAINI').AsDate := StrToDate(MKInicio.Text);
    qrContaReceber.ParamByName('PDATAFIM').AsDate := StrToDate(MaskEdit1.Text);
   end;
    qrContaReceber.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.DT_PAGAMENTO), EXTRACT(YEAR FROM A.DT_PAGAMENTO)  ') ;
    qrContaReceber.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.DT_PAGAMENTO)  ');
    qrContaReceber.Open;
   end;
  
   2:begin
     qrContasPagarAPagar.Close;
     qrContasPagarAPagar.SQL.Add('');
     qrContasPagarAPagar.Params.Clear;
     qrContasPagarAPagar.SQL.Clear;
     qrContasPagarAPagar.SQL.Add('SELECT EXTRACT(MONTH FROM A.DT_VENCIMENTO) AS MES,   '
                    + 'EXTRACT(YEAR FROM A.DT_VENCIMENTO) AS ANO,  '
                    + 'SUM(A.VL_PARCELA) AS VALOR_PAGAR,  '
                    + '  FROM CONTAS_PAGAR A  ');
  if Length(trim(MKInicio.Text)) = 20 then
   begin
    qrContasPagarAPagar.SQL.Add('WHERE A.DT_VENCIMENTO BETWEEN :PDATAINI AND :PDATAFIM  ');
    qrContasPagarAPagar.ParamByName('PDATAINI').AsDate := StrToDate(MKInicio.Text);
    qrContasPagarAPagar.ParamByName('PDATAFIM').AsDate := StrToDate(MaskEdit1.Text);
   end;
    qrContasPagarAPagar.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.DT_VENCIMENTO), EXTRACT(YEAR FROM A.DT_VENCIMENTO)  ') ;
    qrContasPagarAPagar.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.DT_VENCIMENTO)  ');
    qrContasPagarAPagar.Open;

    qrContaReceberAReceber.Close;
    qrContaReceberAReceber.SQL.Add('');
    qrContaReceberAReceber.Params.Clear;
    qrContaReceberAReceber.SQL.Clear;
    qrContaReceberAReceber.SQL.Add('SELECT EXTRACT(MONTH FROM A.DT_VENCIMENTO) AS MES,   '
                    + 'EXTRACT(YEAR FROM A.DT_VENCIMENTO) AS ANO,  '
                    + 'SUM(A.VALOR_PARCELA) AS  TOTAL_PARCELA,  '
                    + '  FROM CONTAS_RECEBER A  ');
  if Length(trim(MKInicio.Text)) = 20 then
   begin
    qrContaReceberAReceber.SQL.Add('WHERE A.DT_VENCIMENTO BETWEEN :PDATAINI AND :PDATAFIM  ');
    qrContaReceberAReceber.ParamByName('PDATAINI').AsDate := StrToDate(MKInicio.Text);
    qrContaReceberAReceber.ParamByName('PDATAFIM').AsDate := StrToDate(MaskEdit1.Text);
   end;
    qrContaReceberAReceber.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.DT_VENCIMENTO), EXTRACT(YEAR FROM A.DT_VENCIMENTO)  ') ;
    qrContaReceberAReceber.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.DT_VENCIMENTO)  ');
    qrContaReceberAReceber.Open;   
 end;
end;
end;

procedure TFrmPesqGeralMes.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  begin
    key := #0;
    Perform(wm_nextDlgCtl,0,0);
  end;
end;

end.
