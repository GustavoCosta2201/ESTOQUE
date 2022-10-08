unit ReportBuilderTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ppEndUsr, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache,
  ppDesignLayer, ppParameter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Bde.DBTables, Sqlexpr,
  FireDAC.Stan.StorageBin, FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageXML,
  Vcl.ExtDlgs, ppArchiv, frxClass, frxDBSet;

type
  TReportBuilder = class(TForm)
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppDesigner1: TppDesigner;
    ppParameterList1: TppParameterList;
    qrReport: TFDQuery;
    dsReport: TDataSource;
    PanelTop: TPanel;
    PanelLeft: TPanel;
    Grid: TDBGrid;
    qrReportID_CLIENTE: TIntegerField;
    qrReportENDERECO: TStringField;
    qrReportNUMERO: TIntegerField;
    qrReportBAIRRO: TStringField;
    qrReportCIDADE: TStringField;
    qrReportCEP: TStringField;
    qrReportTELEFONE: TStringField;
    qrReportCPF: TStringField;
    qrReportEMAIL: TStringField;
    qrReportUF: TStringField;
    qrReportARQUIVO: TBlobField;
    BitBtn1: TBitBtn;
    FDQuery1: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    BlobField1: TBlobField;
    BitBtn2: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    PanelRight: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    qrRel: TFDQuery;
    qrReportNOME: TStringField;
    qrReportREPORT: TMemoField;
    qrReportCADASTRO: TDateField;
    dsRelatorio: TfrxDBDataset;
    Relatorio: TfrxReport;
    qrReportSTREAM: TBlobField;
    qrGar: TFDQuery;
    qrGarID_CLIENTE: TIntegerField;
    qrGarNOME: TStringField;
    qrGarENDERECO: TStringField;
    qrGarNUMERO: TIntegerField;
    qrGarBAIRRO: TStringField;
    qrGarCIDADE: TStringField;
    qrGarCEP: TStringField;
    qrGarTELEFONE: TStringField;
    qrGarCPF: TStringField;
    qrGarEMAIL: TStringField;
    qrGarCADASTRO: TDateField;
    qrGarUF: TStringField;
    qrGarARQUIVO: TBlobField;
    qrGarREPORT: TMemoField;
    qrGarSTREAM: TBlobField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);

  private
    { Private declarations }
    procedure GetBlobField();
  public
    { Public declarations }
  end;

var
  ReportBuilder: TReportBuilder;

implementation

{$R *.dfm}

uses U_DM;


{ TReportBuilder }
///////////////////////////////////////////////////////////////////////////////

//procedure aaaTReportBuilder.BitBtn1Click(Sender: TObject);
//var blob: TStream;
//    TempStrm: TMemoryStream;
//begin
//
//  try
//    qrReport.Open;
//    qrReport.Edit;
//    blob := qrReport.CreateBlobStream(qrReport.FieldByName('ARQUIVO'), bmWrite);
//    blob.seek(0, soFromBeginning);
//    TempStrm:= TMemoryStream.Create;
//    qrReport.LoadFromFile('C:\ESTOQUE\ReportBuilderTest\rBuilder.rtm');
//    qrReport.SaveToStream(TempStrm);
//    TempStrm.Position:= 0;
//    qrReport.Post;
//
//    try
//      blob.CopyFrom(TempStrm, TempStrm.Size)
//    finally
//      TempStrm.Free
//    end;
//  finally
//     blob.Free;
//  end;
//end;

procedure TReportBuilder.BitBtn1Click(Sender: TObject);
begin
 GetBlobField;
end;

procedure TReportBuilder.BitBtn2Click(Sender: TObject);      //ReportBuilder   IMPRIMIR
 var stream: TMemoryStream;
begin

   stream := TMemoryStream.Create();
   //TBlobField(qrReport.FieldByName('ARQUIVO')).SaveToFile('C:\ESTOQUE\ReportBuilderTest\teste31.rtm');
   TBlobField(qrReport.FieldByName('ARQUIVO')).SaveToStream(stream);
   ppReport1.Template.LoadFromStream(stream);
   ppReport1.DeviceType:= 'Screen';
   ppReport1.Print;
end;

procedure TReportBuilder.GetBlobField;
var  stream: TStringStream;                                    //REPORTBUILDER    REPORT

begin
  Stream:= TStringStream.Create();
  ppReport1.Template.SaveToStream(Stream);
  Stream.Seek(soFromBeginning, 0);

  FDQuery1.Close;
  FDQuery1.ParamByName('PARQUIVO').LoadFromStream(Stream, ftBlob);
  FDQuery1.ParamByName('PID').AsInteger := qrReport.Fields[0].AsInteger;
  FDQuery1.ExecSql;

end;

procedure TReportBuilder.BitBtn3Click(Sender: TObject);
var  stream: TStringStream;                                 //fastreport FAST

begin
  BitBtn3.Font.Color:=clred;
  Application.ProcessMessages;
  Stream:= TStringStream.Create();
  Relatorio.SaveToStream(Stream);
  Stream.Seek(soFromBeginning, 0);

  qrRel.Close;
  qrRel.ParamByName('PSTREAM').LoadFromStream(Stream, ftBlob);
  qrRel.ParamByName('PID').AsInteger := qrReport.Fields[0].AsInteger;
  qrRel.ExecSql;
end;


procedure TReportBuilder.BitBtn4Click(Sender: TObject);                //FastReport BOTÃO Imprimir
 var stream: TStringStream;
      vBlob: TBlobField;
 begin
   stream:= TStringStream.Create;
//   vBlob:= TBlobStream.Create(vBlob);
 try
    BitBtn4.Font.Color:=clred;
    Application.ProcessMessages;
    qrReport.Open;
    vBlob:= TBlobField(qrReport.FieldByName('STREAM'));
    vBlob.SaveToStream(stream);
    qrReport.Close;
    Relatorio.PrepareReport(true);
    Relatorio.ShowReport;

 finally
    Stream.Free;
    BitBtn4.Font.Color:=cldefault;
 end;
end;
end.
