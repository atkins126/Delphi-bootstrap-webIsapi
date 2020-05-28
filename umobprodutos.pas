unit umobprodutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, uniGUIBaseClasses, uniEdit, unimEdit, uniBasicGrid,
  uniDBGrid, unimDBListGrid, unimDBGrid;

type
  Tfmobprodutos = class(TUnimForm)
    edtnome: TUnimEdit;
    UnimLabel1: TUnimLabel;
    UnimDBGrid1: TUnimDBGrid;
    procedure UnimFormCreate(Sender: TObject);
    procedure edtnomeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobprodutos: Tfmobprodutos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fmobprodutos: Tfmobprodutos;
begin
  Result := Tfmobprodutos(UniMainModule.GetFormInstance(Tfmobprodutos));
end;

procedure Tfmobprodutos.edtnomeChange(Sender: TObject);
begin
  if edtnome.Text = '' then
    UniMainModule.abreprodutos
  else
  begin
    UniMainModule.changeproduto(edtnome.Text);
  end;
end;

procedure Tfmobprodutos.UnimFormCreate(Sender: TObject);
begin
  UniMainModule.abreprodutos;
end;

end.
