unit ucli_fechavenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniLabel, uniEdit, uniGUIBaseClasses,
  uniPanel, uniBasicGrid, uniDBGrid;

type
  Tfcli_fechavenda = class(TUniForm)
    UniSimplePanel1: TUniSimplePanel;
    edtnome: TUniEdit;
    UniLabel1: TUniLabel;
    UniButton1: TUniButton;
    UniDBGrid1: TUniDBGrid;
    procedure edtnomeChange(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fcli_fechavenda: Tfcli_fechavenda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ufechavenda;

function fcli_fechavenda: Tfcli_fechavenda;
begin
  Result := Tfcli_fechavenda(UniMainModule.GetFormInstance(Tfcli_fechavenda));
end;

procedure Tfcli_fechavenda.edtnomeChange(Sender: TObject);
begin
  UniMainModule.changecliente(edtnome.Text);
end;

procedure Tfcli_fechavenda.UniButton1Click(Sender: TObject);
var
  xgravou : Boolean;
begin
  xgravou := false;
  try
   xgravou := UniMainModule.gravaclitemp;
   if xgravou = false then
   begin
     ShowMessage('Selecione um cliente');
     exit;
   end;
   ffechavenda.ShowModal();
  finally
  //  close;
  end;
end;

end.
