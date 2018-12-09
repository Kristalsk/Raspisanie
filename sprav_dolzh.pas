unit sprav_dolzh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tsprav_dolzhn = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    qryMain: TFDQuery;
    DataSource1: TDataSource;
    btnClose: TButton;
    trWrite: TFDTransaction;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Доб: TButton;
    qryTemp: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure ДобClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sprav_dolzhn: Tsprav_dolzhn;

implementation

{$R *.dfm}

uses DataModule, Main;

procedure Tsprav_dolzhn.btnCloseClick(Sender: TObject);
begin
close;
end;

procedure Tsprav_dolzhn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
qryMain.close;
MainForm.N1.Enabled:= true;
Action := caFree;
end;

procedure Tsprav_dolzhn.FormCreate(Sender: TObject);
begin
qryMain.Open();
MainForm.N1.Enabled:= false;
end;

procedure Tsprav_dolzhn.ДобClick(Sender: TObject);
var
tID: integer;
begin
qryTemp.Close;
qryTemp.SQL.Text:='Insert into dolzhnost (kod,name) values (0, ''введіть навчальний заклад'') returning id';
qryTemp.Open();
tID := qryTemp.FieldByName('ID').value;
qryTemp.Close;
qryMain.Refresh;
qryMain.Locate('ID', tID );

end;

end.
