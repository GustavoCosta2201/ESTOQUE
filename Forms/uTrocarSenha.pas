unit uTrocarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  dxGDIPlusClasses;

type
  TFrmTrocaSenha = class(TForm)
    Bevel1: TBevel;
    DBNome: TEdit;
    DBSenha: TEdit;
    btCancelar: TBitBtn;
    btTrocarSenha: TBitBtn;
    DBNovaSenha: TEdit;
    DBConfirmar: TEdit;
    Image1: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelarClick(Sender: TObject);
    procedure btTrocarSenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTrocaSenha: TFrmTrocaSenha;

implementation

{$R *.dfm}

uses U_DM, uLogin;

procedure TFrmTrocaSenha.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTrocaSenha.btTrocarSenhaClick(Sender: TObject);
begin
  dm.qrLogin.Open;
  if DBNome.Text = '' then
    begin
      Messagedlg('O Campo novo está Vazio!', mtInformation, [mbOk],0);
      DBNome.SetFocus;
      abort;
    end
    else
    if DBSenha.Text = '' then
      begin
        Messagedlg('O Campo Senha está Vazio!', mtInformation,[MbOk], 0);
        DBSenha.SetFocus;
        abort;
      end
      else
          if DBNovaSenha.Text = '' then
      begin
        Messagedlg('O Campo Nova Senha está Vazio!', mtInformation,[MbOk], 0);
        DBNovaSenha.SetFocus;
        abort;
      end
      else
          if DBConfirmar.Text = '' then
      begin
        Messagedlg('O Campo Confirmar Senha está Vazio!', mtInformation,[MbOk], 0);
        DBConfirmar.SetFocus;
        abort;
      end
      else
        if DBNovaSenha.Text <> DBConfirmar.Text then
      begin
        Messagedlg('As Senhas são Diferentes!', mtInformation,[MbOk], 0);
        DBConfirmar.SetFocus;
        abort;
      end
      else
  dm.qrLogin.Close;      //A Busca do Usuário
  dm.qrLogin.SQL.Add('');
  dm.qrLogin.Params.Clear;
  dm.qrLogin.SQL.Clear;
  dm.qrLogin.SQL.Add('SELECT * FROM USUARIO');
  dm.qrLogin.SQL.Add('WHERE NOME = :PNOME AND SENHA = :PSENHA');
  dm.qrLogin.ParamByName('PNOME').AsString:= DBNome.Text;
  dm.qrLogin.ParamByName('PSENHA').AsString:= DBSENHA.Text;
  dm.qrLogin.Open;

  if dm.qrLogin.RecordCount > 0 then  //Se Retornar
    begin  ////Se For Localizado
    dm.qrLogin.Edit;
       dm.qrLogin.FieldByName('senha').AsString:=DBConfirmar.Text;
       dm.qrLogin.Refresh;
       Messagedlg('Senha Atualizada com Sucesso',mtInformation,[mbOk],0);
       FrmTrocaSenha.Close;
       FrmLogin.DBNome.SetFocus;
    end
    else
      Messagedlg('Nome e Senha Incorretos, Verifique!!! ', mtInformation, [mbOk], 0);
        DBNome.SetFocus;
end;

procedure TFrmTrocaSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
    //Fazer o Enter tem a função do tab
    if key = #13 then
      begin
        key:=#0;
        Perform(wm_nextdlgCtl,0,0);
      end;
end;

end.
