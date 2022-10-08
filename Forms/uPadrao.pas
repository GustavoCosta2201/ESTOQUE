unit uPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls;

type
  TfrmPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btNovo: TBitBtn;
    btDeletar: TBitBtn;
    btEditar: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btAtualizar: TBitBtn;
    DBNavigator1: TDBNavigator;
    btPesquisar: TBitBtn;
    qrPadrao: TFDQuery;
    dsPadrao: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btNovoClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure TrataBotoes();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmPadrao.btAtualizarClick(Sender: TObject);
begin
  Tratabotoes;
  qrPadrao.Refresh;
  Messagedlg('Registro atualizado com sucesso!',mtInformation,[mbOk],0);
end;

procedure TfrmPadrao.btCancelarClick(Sender: TObject);
begin
  Tratabotoes;
  qrPadrao.Cancel;
  Messagedlg('Ação cancelada pelo usuário.',mtInformation,[mbOk],0);
end;

procedure TfrmPadrao.btDeletarClick(Sender: TObject);
begin
  Tratabotoes;
  if messagedlg('Deseja deletar esse registro?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
  begin
    qrPadrao.Delete;
    Messagedlg('Registro deletado com sucesso!',mtInformation,[mbOk],0);
    Tratabotoes;
  end
  else
  begin
    Tratabotoes;
    abort;
  end;
end;

procedure TfrmPadrao.btEditarClick(Sender: TObject);
begin
  Tratabotoes;
  if messagedlg('Deseja editar esse registro?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
  begin
    qrPadrao.Edit;
  end
  else
  begin
    Tratabotoes;
    abort;
  end;
end;

procedure TfrmPadrao.btGravarClick(Sender: TObject);
begin
  Tratabotoes;
  qrPadrao.Post;
  Messagedlg('Registro salvo com sucesso!',mtInformation,[mbOk],0);
end;

procedure TfrmPadrao.btNovoClick(Sender: TObject);
begin
  qrPadrao.Open;
  TrataBotoes;
  qrPadrao.Append;
end;

procedure TfrmPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrPadrao.Close;
end;

procedure TfrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
// enter faz a função da tecla tab
  if key=#13 then
    begin
      Key:= #0;
      Perform(wm_nextDlgCtl,0,0);
    end;
end;

procedure TfrmPadrao.TrataBotoes;
begin
  btNovo.Enabled := not btNovo.Enabled;
  btDeletar.Enabled := not btDeletar.Enabled;
  btEditar.Enabled := not btEditar.Enabled;
  btGravar.Enabled := not btGravar.Enabled;
  btAtualizar.Enabled := not btAtualizar.Enabled;
end;

end.
