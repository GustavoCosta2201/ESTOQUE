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
  case RGOpcao.ItemIndex of
  0:begin
    qrCompra.Close;
    qrCompra.SQL.Add('');
    qrCompra.Params.Clear;
    qrCompra.SQL.Clear;
    qrCompra.SQL.Add('SELECT EXTRACT(MONTH FROM A.CADASTRO) AS MES,   '
                    + 'EXTRACT(YEAR FROM A.CADASTRO) AS ANO,  '
                    + 'SUM(A.VALOR) AS VALOR_COMPRA,  '
                    + 'FROM COMPRA A  ');
    qrCompra.SQL.Add('WHERE A.CADASTRO BETWEEN :PDATAINI AND :PDATAFIM  ');
    qrCompra.ParamByName('PDATAINI').AsDate := StrToDate(MKInicio.Text);
    qrCompra.ParamByName('PDATAFIM').AsDate := StrToDate(MaskEdit1.Text);
    qrCompra.SQL.Add('GROUP BY EXTRACT(MONTH FROM A.CADASTRO), EXTRACT(YEAR FROM A.CADASTRO)  ') ;
    qrCompra.SQL.Add('ORDER BY EXTRACT(MONTH FROM A.CADASTRO)  ');
    qrCompra.Open;
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
