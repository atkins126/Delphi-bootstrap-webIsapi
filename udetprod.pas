unit udetprod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniLabel, uniPanel, uniGUIBaseClasses,
  uniImage;

type
  Tfdetprod = class(TUniForm)
    UniImage1: TUniImage;
    UniSimplePanel1: TUniSimplePanel;
    labelnome: TUniLabel;
    UniEdit1: TUniEdit;
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fdetprod: Tfdetprod;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fdetprod: Tfdetprod;
begin
  Result := Tfdetprod(UniMainModule.GetFormInstance(Tfdetprod));
end;

procedure Tfdetprod.UniFormShow(Sender: TObject);
var
  xurl : string;
begin
  //http://advsysautomacao.net/imgblends/2951870000015417274.jpg
  xurl := 'http://advsysautomacao.net/imgblends/'+UniMainModule.qempresaCNPJ.AsAnsiString+inttostr(UniMainModule.qprodutosCODIGO.Value)+'.jpg';
  UniImage1.Url := xurl;
  //UnimImage1.Refresh;
  labelnome.Caption := UniMainModule.qprodutosNOME.AsAnsiString;
  UniEdit1.Text :=  formatfloat('###,###,##0.00', UniMainModule.qprodutosVENDA.AsCurrency);
end;

end.
