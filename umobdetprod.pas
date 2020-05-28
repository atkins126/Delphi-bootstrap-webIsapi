unit umobdetprod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniImage, unimImage, uniLabel, unimLabel;

type
  Tfmobdetprod = class(TUnimForm)
    UnimImage1: TUnimImage;
    edtvalor: TUnimLabel;
    edtnome: TUnimLabel;
    procedure UnimFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobdetprod: Tfmobdetprod;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uconsprodvenda;

function fmobdetprod: Tfmobdetprod;
begin
  Result := Tfmobdetprod(UniMainModule.GetFormInstance(Tfmobdetprod));
end;

procedure Tfmobdetprod.UnimFormShow(Sender: TObject);
var
  xurl : string;
begin
  //http://advsysautomacao.net/imgblends/2951870000015417274.jpg
  xurl := 'http://advsysautomacao.net/imgblends/'+UniMainModule.qempresaCNPJ.AsAnsiString+inttostr(UniMainModule.detprodcodigo)+'.jpg';
  UnimImage1.Url := xurl;
  //UnimImage1.Refresh;
  edtnome.Caption := UniMainModule.detprodnome;
  edtvalor.Caption :=  formatfloat('###,###,##0.00', UniMainModule.detprodvalor);
end;

end.
