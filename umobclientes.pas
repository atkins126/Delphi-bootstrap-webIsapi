unit umobclientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniEdit, unimEdit, uniGUIBaseClasses, uniLabel, unimLabel, uniBasicGrid,
  uniDBGrid, unimDBListGrid, unimDBGrid, uniButton, uniBitBtn, unimBitBtn;

type
  Tfmobclientes = class(TUnimForm)
    UnimLabel1: TUnimLabel;
    edtnome: TUnimEdit;
    UnimDBGrid1: TUnimDBGrid;
    UnimBitBtn1: TUnimBitBtn;
    procedure edtnomeChange(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobclientes: Tfmobclientes;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, umobcadcliente;

function fmobclientes: Tfmobclientes;
begin
  Result := Tfmobclientes(UniMainModule.GetFormInstance(Tfmobclientes));
end;

procedure Tfmobclientes.edtnomeChange(Sender: TObject);
begin
  UniMainModule.changecliente(edtnome.Text);
end;

procedure Tfmobclientes.UnimBitBtn1Click(Sender: TObject);
begin
  UniMainModule.abrecidades;
  fmobcadcliente.ShowModal();
end;

end.
