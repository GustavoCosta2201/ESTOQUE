unit uFormPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF, Vcl.DBCtrls;

type
  TFrmPesquisa = class(TForm)
    Panel1: TPanel;
    GroupBox47: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    EDNome: TEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    MKInicio: TMaskEdit;
    MaskEdit1: TMaskEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btPesquisa: TBitBtn;
    btTransferir: TBitBtn;
    btImprimir: TBitBtn;
    qrPesquisa: TFDQuery;
    dsPesquisa: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    DBNavigator2: TDBNavigator;
    LbResultado: TLabel;
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vCodigo:Integer;
  end;

var
  FrmPesquisa: TFrmPesquisa;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrmPesquisa.ComboBox1Change(Sender: TObject);
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
      EDNome.Clear;
    end;

      1:begin //Pesquisa pelo Nome
        EDNome.Visible:=true;
        if EDNome.CanFocus then
        EDNome.SetFocus;
        MKInicio.Visible:=False;
        MaskEdit1.Visible:=False;
        GroupBox1.Visible:=true;
        GroupBox1.Caption:='Digite o Nome';
        GroupBox2.Visible:=false;
        GroupBox3.Visible:=false;
        EDNome.Clear;
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
        GroupBox3.Visible:=false;
        MKInicio.Clear;
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
        MaskEdit1.Clear;
        MkInicio.Clear;
    end;

     4:begin  //Pesquisa por Período
        EDNome.Visible:=false;
        MKInicio.Visible:=false;
        MaskEdit1.Visible:=false;
        if MaskEdit1.CanFocus then
        MaskEdit1.SetFocus;
        GroupBox1.Visible:=false;
        GroupBox2.Visible:=false;
        GroupBox3.Visible:=false;
        MaskEdit1.Clear;
        MkInicio.Clear;
  end;

      5:begin //Pesquisa pelo Código
      EDNome.Visible:=true;
      if EDNome.CanFocus then
        EDNome.SetFocus;
      MKInicio.Visible:=False;
      MaskEdit1.Visible:=False;
      GroupBox1.Visible:=true;
      GroupBox1.Caption:='Digite o Código do Fornecedor';
      GroupBox2.Visible:=false;
      GroupBox3.Visible:=false;
      EDNome.Clear;
    end;
  end;
end;

procedure TFrmPesquisa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
    //Realiza a mesma função do tab
  if key=#13 then
    begin
      key:=#0;
      perform(wm_nextDlgCtl,0,0);
    end;
end;

procedure TFrmPesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
qrPesquisa.Close;
end;

procedure TFrmPesquisa.FormDblClick(Sender: TObject);
begin
 btTransferir.Click;
end;

procedure TFrmPesquisa.FormShow(Sender: TObject);
begin
    qrPesquisa.Close;
end;

end.
