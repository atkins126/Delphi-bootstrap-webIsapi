unit umobclie_fechavenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, uniBitBtn, unimBitBtn, uniEdit, unimEdit,
  uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid, uniLabel, unimLabel;

type
  Tfmobcli_fechavenda = class(TUnimForm)
    UnimBitBtn1: TUnimBitBtn;
    UnimLabel1: TUnimLabel;
    UnimDBGrid1: TUnimDBGrid;
    edtcliente: TUnimEdit;
    procedure edtclienteChange(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobcli_fechavenda: Tfmobcli_fechavenda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, umobfechavenda;

function fmobcli_fechavenda: Tfmobcli_fechavenda;
begin
  Result := Tfmobcli_fechavenda(UniMainModule.GetFormInstance(Tfmobcli_fechavenda));
end;

procedure Tfmobcli_fechavenda.edtclienteChange(Sender: TObject);
begin
  UniMainModule.changecliente(edtcliente.Text);
end;

procedure Tfmobcli_fechavenda.UnimBitBtn1Click(Sender: TObject);
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
   fmobfechavenda.ShowModal();
  finally
  //  close;
  end;
end;

procedure Tfmobcli_fechavenda.UnimFormShow(Sender: TObject);
begin
  UniMainModule.changecliente(edtcliente.Text);
  if UniMainModule.Tag = 10 then
    close;
end;

end.
