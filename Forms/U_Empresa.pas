unit U_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmEmpresa = class(TFrmPadrao)
    Q_padraoID_EMPRESA: TIntegerField;
    Q_padraoN_FANTASIA: TStringField;
    Q_padraoENDERECO: TStringField;
    Q_padraoNUMERO: TIntegerField;
    Q_padraoCIDADE: TStringField;
    Q_padraoUF: TStringField;
    Q_padraoCEP: TStringField;
    Q_padraoTELEFONE: TStringField;
    Q_padraoCNPJ: TStringField;
    Q_padraoEMAIL: TStringField;
    Q_padraoLOGO: TBlobField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBImage1: TDBImage;
    Label13: TLabel;
    DBCadastro: TDBEdit;
    Label14: TLabel;
    DBRazaoSocial: TDBEdit;
    BtFoto: TBitBtn;
    BtClear: TBitBtn;
    OpenDialog1: TOpenDialog;
    Q_padraoRAZAO_SOCIAL: TStringField;
    Q_padraoBAIRRO: TStringField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBNavigator2: TDBNavigator;
    procedure BtFotoClick(Sender: TObject);
    procedure BtClearClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpresa: TFrmEmpresa;

implementation

{$R *.dfm}

procedure TFrmEmpresa.BtClearClick(Sender: TObject);
begin
 //Limpa a Imagem
  Q_padrao.Open;
  Q_padrao.Edit;
  Q_padraoLOGO.AsVariant:=null;
  Q_padrao.Refresh;
  messagedlg('Imagem Deletada com Sucesso!', mtInformation,[mbOk],0);

end;

procedure TFrmEmpresa.BtFotoClick(Sender: TObject);
begin
 //Insere Foto
   Q_padrao.Edit;
   opendialog1.Execute;
   dbimage1.Picture.LoadFromFile(opendialog1.FileName);
   Q_padrao.Refresh;
   Messagedlg('Imagem Inserida com Sucesso!!', mtInformation,[mbOk],0);

  end;
procedure TFrmEmpresa.btNovoClick(Sender: TObject);
begin
    inherited;
  DBCadastro.Text:=datetostr(now);
  DBRazaoSocial.SetFocus;

end;
end.
