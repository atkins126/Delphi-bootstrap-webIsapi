unit uconscliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniLabel, uniEdit,
  uniButton, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid;

type
  Tfconscliente = class(TUniForm)
    UniSimplePanel1: TUniSimplePanel;
    UniButton1: TUniButton;
    edt_cliente: TUniEdit;
    UniLabel1: TUniLabel;
    UniButton2: TUniButton;
    UnimDBGrid1: TUnimDBGrid;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fconscliente: Tfconscliente;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fconscliente: Tfconscliente;
begin
  Result := Tfconscliente(UniMainModule.GetFormInstance(Tfconscliente));
end;

procedure Tfconscliente.UniButton1Click(Sender: TObject);
begin
  UniMainModule.changecliente(edt_cliente.Text);
end;

procedure Tfconscliente.UniButton2Click(Sender: TObject);
begin
  close;
end;

end.
