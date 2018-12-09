unit Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrModal = class(TForm)
    dbetMirrorEt: TDBEdit;
    btnOK: TButton;
    etName: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frModal: TfrModal;

implementation

{$R *.dfm}

uses DataModule, sprav_dolzh;

end.
