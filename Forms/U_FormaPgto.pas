unit U_FormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmFormasPgto = class(TFrmPadrao)
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBForma: TDBEdit;
    Label2: TLabel;
    DBDescricao: TDBEdit;
    Label3: TLabel;
    DBCadastro: TDBEdit;
    DBNavigator2: TDBNavigator;
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormasPgto: TFrmFormasPgto;

implementation

{$R *.dfm}

procedure TFrmFormasPgto.btNovoClick(Sender: TObject);
begin
  inherited;
  DBCadastro.Text:=datetostr(now);
  DBDescricao.SetFocus;
end;

end.
