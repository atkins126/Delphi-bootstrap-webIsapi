unit umobfechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniEdit, unimEdit, uniGUIBaseClasses, uniLabel, unimLabel, uniButton,
  uniBitBtn, unimBitBtn;

type
  Tfmobfechamento = class(TUnimForm)
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    UnimLabel3: TUnimLabel;
    UnimLabel4: TUnimLabel;
    UnimBitBtn1: TUnimBitBtn;
    edtdescperc: TUnimNumberEdit;
    edtdescrvlr: TUnimNumberEdit;
    edttotbruto: TUnimNumberEdit;
    edttotliquido: TUnimNumberEdit;
    procedure UnimFormShow(Sender: TObject);
    procedure edtdescpercChange(Sender: TObject);
    procedure edtdescrvlrChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobfechamento: Tfmobfechamento;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fmobfechamento: Tfmobfechamento;
begin
  Result := Tfmobfechamento(UniMainModule.GetFormInstance(Tfmobfechamento));
end;

procedure Tfmobfechamento.edtdescpercChange(Sender: TObject);
begin
  if edtdescperc.Value > 0 then
  begin
    edtdescrvlr.Value := (edtdescrvlr.Value / 100) * edttotbruto.Value;
  end;
end;

procedure Tfmobfechamento.edtdescrvlrChange(Sender: TObject);
begin
  edttotliquido.Value := edttotbruto.Value - edtdescrvlr.Value;
end;

procedure Tfmobfechamento.UnimFormShow(Sender: TObject);
begin
//  edttotbruto.Value := (UniMainModule.qmonvendaTOTAL_VENDA.Value);
end;

end.
