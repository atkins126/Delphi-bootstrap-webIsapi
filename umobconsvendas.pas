unit umobconsvendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, uniGUIBaseClasses, uniDateTimePicker, unimDatePicker,
  uniButton, uniBitBtn, unimBitBtn, uniBasicGrid, uniDBGrid, unimDBListGrid,
  unimDBGrid, uniRadioButton, unimRadio;

type
  Tfmobconsvendas = class(TUnimForm)
    UnimDatePicker1: TUnimDatePicker;
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    UnimDatePicker2: TUnimDatePicker;
    UnimBitBtn1: TUnimBitBtn;
    UnimRadio1: TUnimRadio;
    UnimRadio2: TUnimRadio;
    UnimDBGrid1: TUnimDBGrid;
    UnimBitBtn2: TUnimBitBtn;
    UnimDBGrid2: TUnimDBGrid;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimRadio1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UnimRadio2AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobconsvendas: Tfmobconsvendas;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, umobitensvenda;

function fmobconsvendas: Tfmobconsvendas;
begin
  Result := Tfmobconsvendas(UniMainModule.GetFormInstance(Tfmobconsvendas));
end;

procedure Tfmobconsvendas.UnimBitBtn1Click(Sender: TObject);
var
  status : string;
begin
  if (not UnimRadio1.Checked) and ( not UnimRadio2.Checked) then
  begin
    ShowMessage('Selecione pendente ou aceitas');
    exit;
  end;
  if UnimDatePicker2.Date > UnimDatePicker2.Date then
  begin
    ShowMessage('Data final não pode ser maior que inicial');
    exit;
  end;
  if UnimDBGrid1.Visible = false then
  begin
    UnimDBGrid1.Controls[0].BringToFront;
    UnimDBGrid2.Controls[0].SendToBack;
  end;
  if UnimRadio1.Checked then
     status := 'S';
  if UnimRadio2.Checked then
    status := 'N';
  with UniMainModule do
  begin
    consvenda(UnimDatePicker1.Date,UnimDatePicker2.Date,qusuariocodigo.Value,status);
  end;
end;

procedure Tfmobconsvendas.UnimBitBtn2Click(Sender: TObject);
var
  xretorno : Boolean;
begin
  xretorno := UniMainModule.consitensvenda(0);
  if xretorno then
  begin
    UnimDBGrid1.Controls[0].SendToBack;
    UnimDBGrid2.Controls[0].BringToFront;
  end else
  begin
    ShowMessage('Erro ao consultar itens, tente novamente');
  end;
end;

procedure Tfmobconsvendas.UnimFormCreate(Sender: TObject);
begin
  UniMainModule.fechatabelas;
end;

procedure Tfmobconsvendas.UnimRadio1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if UnimRadio2.Checked then
  begin
    UnimRadio1.Checked := true;
    UnimRadio2.Checked := false;
  end;
end;

procedure Tfmobconsvendas.UnimRadio2AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if UnimRadio1.Checked then
  begin
    UnimRadio2.Checked := true;
    UnimRadio1.Checked := false;
  end;
end;

end.
