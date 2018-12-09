unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
    TClassFrom = class of TForm;
    TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure CreateMDIChildForm(AFormType: TClassFrom);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses sprav_dolzh, DataModule;

procedure TMainForm.CreateMDIChildForm(AFormType: TClassFrom);
var
  xMDIForm: TForm;
begin
  xMDIForm := AFormType.Create(Self);
  with xMDIForm do
  begin
    BorderStyle := bsNone;
    BorderIcons := [];
    FormStyle := fsMDIChild;
    WindowState := wsMaximized;
  end;

end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  CreateMDIChildForm(Tsprav_dolzhn);
end;

end.
