unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, System.ImageList, Vcl.ImgList, Vcl.Controls;

type
  TDataModule6 = class(TDataModule)
    MainConnection: TFDConnection;
    trRead: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    ilBtnIcons: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule6: TDataModule6;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Main, sprav_dolzh;

{$R *.dfm}

end.
