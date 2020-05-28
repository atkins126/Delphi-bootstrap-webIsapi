unit uprodutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniSpeedButton, uniLabel,
  uniEdit, uniGUIBaseClasses, uniPanel, uniBasicGrid, uniDBGrid;

type
  Tfprodutos = class(TUniForm)
    UniSimplePanel1: TUniSimplePanel;
    edtpesq: TUniEdit;
    UniLabel1: TUniLabel;
    UniSpeedButton1: TUniSpeedButton;
    UniDBGrid1: TUniDBGrid;
    procedure UniSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fprodutos: Tfprodutos;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fprodutos: Tfprodutos;
begin
  Result := Tfprodutos(UniMainModule.GetFormInstance(Tfprodutos));
end;

procedure Tfprodutos.UniSpeedButton1Click(Sender: TObject);
begin
  if edtpesq.Text = '' then
    UniMainModule.abreprodutos
  else
  begin
    UniMainModule.changeproduto(edtpesq.Text);
  end;
end;

end.
