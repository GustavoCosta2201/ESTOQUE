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
unit uPesqVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrmPesqVendas = class(TFrmPesquisa)
    qrPesquisaID_VENDA: TIntegerField;
    qrPesquisaID_CLIENTE: TIntegerField;
    qrPesquisaNOME: TStringField;
    qrPesquisaID_FORMA_PGTO: TIntegerField;
    qrPesquisaDESCRICAO: TStringField;
    qrPesquisaUSUARIO: TStringField;
    qrPesquisaCADASTRO: TDateField;
    qrPesquisaVALOR: TFMTBCDField;
    RelVenda: TfrxReport;
    LbVenda: TLabel;
    procedure ComboBox1Change(Sender: TObject);
    procedure btPesquisaClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure SomaVenda();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqVendas: TFrmPesqVendas;

implementation

{$R *.dfm}

procedure TFrmPesqVendas.btImprimirClick(Sender: TObject);
var vCaminho: String;
begin
  vCaminho:= 'C:\ESTOQUE\EXE\RelVendas.fr3';
  if FrmPesqVendas.RelVenda.LoadFromFile(vCaminho) then
    begin
      RelVenda.Clear;
      RelVenda.LoadFromFile(vCaminho);
      RelVenda.PrepareReport(true);
      RelVenda.ShowPreparedReport;
    end
    else
    Messagedlg('Relatório não encontrado', mtError, [MbOk],0);
end;

procedure TFrmPesqVendas.btPesquisaClick(Sender: TObject);
begin
 qrPesquisa.close;
 qrPesquisa.SQL.Add('');
 qrPesquisa.Params.Clear;
 qrPesquisa.SQL.Clear;
 qrPesquisa.SQL.Add('SELECT A.ID_VENDA,'
  + 'A.ID_CLIENTE, '
  + 'B.NOME, '
  + 'A.ID_FORMA_PGTO, '
  + 'C.DESCRICAO, '
  + 'A.USUARIO, '
  + 'A.CADASTRO, '
  + 'A.VALOR '
  + 'FROM VENDA A  '
  + 'INNER JOIN CLIENTE B ON B.ID_CLIENTE = A.ID_CLIENTE  '
  + 'INNER JOIN FORMA_PGTO C ON C.ID_FORMA_PGTO = A.ID_FORMA_PGTO  ');
    //Opções de Pesquisa
    case ComboBox1.ItemIndex of
      0:begin
        qrPesquisa.SQL.Add('WHERE A.ID_VENDA = :PID_VENDA');
        qrPesquisa.ParamByName('PID_VENDA').AsString:= EDNome.Text;
        end;

        1:begin
          qrPesquisa.SQL.Add('WHERE  A.USUARIO LIKE :PUSUARIO ');
          qrPesquisa.ParamByName('PUSUARIO').AsString:= '%' + EDNome.Text + '%';
        end;

        2:begin
          qrPesquisa.SQL.Add('WHERE A.ID_CLIENTE = :PCLIENTE') ;
          qrPesquisa.ParamByName('PCLIENTE').AsString:=EDNome.Text;
        end;

        3:begin
          qrPesquisa.SQL.Add('WHERE A.ID_FORMA_PGTO = :PFORMA');
          qrPesquisa.ParamByName('PFORMA').AsString:=EDNome.Text;
        end;

        4:begin
        if Length(trim(MKInicio.Text)) = 20 then
          begin
          qrPesquisa.SQL.Add('WHERE CADASTRO = :PCADASTRO');
          qrPesquisa.ParamByName('PCADASTRO').AsDate:= StrtoDate(EDNome.Text);
          end;
        end;

        6:begin
        if Length(trim(MKInicio.Text)) = 20 then
        begin
           qrPesquisa.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
           qrPesquisa.ParamByName('PINICIO').AsDate:=StrToDate(MKInicio.Text);
           qrPesquisa.ParamByName('PFIM').AsDate:=StrtoDate(MaskEdit1.Text);
        end;

        end;

        5:begin
          qrPesquisa.SQL.Add('ORDER BY ID A.ID_VENDA');
        end;
    end;
       qrPesquisa.Open;
          //Mostra a Quantidade de Registros Encontrados
    LbResultado.Caption :='Total de Registros encontrados: ' + IntToStr(qrPesquisa.RecordCount);
    SomaVenda;

       if qrPesquisa.IsEmpty then
          begin
            Messagedlg('Registro não Encontrado', mtInformation, [MbOk], 0);
          end
          else
            abort;
end;
procedure TFrmPesqVendas.btTransferirClick(Sender: TObject);
begin
  inherited;
  if qrPesquisa.RecordCount > 0 then
    begin
      vCodigo:=qrPesquisaID_VENDA.AsInteger;
    end
    else
    abort;

end;

procedure TFrmPesqVendas.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:begin //Pesquisa pelo Código
      EDNome.Visible:=true;
      if EDNome.CanFocus then
        EDNome.SetFocus;
      MKInicio.Visible:=False;
      MaskEdit1.Visible:=False;
      GroupBox1.Visible:=true;
      GroupBox1.Caption:='Digite o Código ';
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
        GroupBox1.Caption:='Digite o Código do Cliente';
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

procedure TFrmPesqVendas.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btTransferir.Click;
end;

procedure TFrmPesqVendas.SomaVenda;
var vSomaVenda: Currency;
begin
  vSomaVenda:= 0;
  qrPesquisa.First;
  While not qrPesquisa.Eof do
    begin
      vSomaVenda := vSomaVenda + qrPesquisaVALOR.AsCurrency;
      qrPesquisa.Next;
    end;
    LbVenda.Caption := 'Valor total das vendas: ' + FormatFloat('R$ ##,##0.00',(vSomaVenda));
end;

end.
