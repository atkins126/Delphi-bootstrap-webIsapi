unit umobitensvenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid;

type
  Tfmobitensvenda = class(TUnimForm)
    UnimDBGrid1: TUnimDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobitensvenda: Tfmobitensvenda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fmobitensvenda: Tfmobitensvenda;
begin
  Result := Tfmobitensvenda(UniMainModule.GetFormInstance(Tfmobitensvenda));
end;


end.
