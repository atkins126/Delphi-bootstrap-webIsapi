unit umobfechamento_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniEdit, unimEdit, uniLabel, unimLabel, uniGUIBaseClasses, uniButton,
  uniBitBtn, unimBitBtn;

type
  Tfmobfechamento_venda = class(TUnimForm)
    UnimBitBtn1: TUnimBitBtn;
    UnimLabel1: TUnimLabel;
    edttotbruto: TUnimNumberEdit;
    UnimLabel2: TUnimLabel;
    edtdescperc: TUnimNumberEdit;
    UnimLabel3: TUnimLabel;
    edtdescrvlr: TUnimNumberEdit;
    UnimLabel4: TUnimLabel;
    edttotliquido: TUnimNumberEdit;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure edtdescrvlrChange(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure edtdescpercExit(Sender: TObject);
    procedure edtdescpercChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobfechamento_venda: Tfmobfechamento_venda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, umobclie_fechavenda, umobvenda;

function fmobfechamento_venda: Tfmobfechamento_venda;
begin
  Result := Tfmobfechamento_venda(UniMainModule.GetFormInstance(Tfmobfechamento_venda));
end;

procedure Tfmobfechamento_venda.edtdescpercChange(Sender: TObject);
begin
  edtdescrvlr.Value := (edtdescperc.Value / 100) * edttotbruto.Value;
  edtdescrvlr.Refresh;
end;

procedure Tfmobfechamento_venda.edtdescpercExit(Sender: TObject);
var
  xvlr : Real;
begin
  {xvlr := 0;
  xvlr := (edtdescperc.Value / 100);
  xvlr := xvlr * edttotbruto.Value;
  edttotliquido.Value := edttotbruto.Value - xvlr;  }
end;

procedure Tfmobfechamento_venda.edtdescrvlrChange(Sender: TObject);
begin
  edtdescperc.Value := 0;
  edttotliquido.Value := edttotbruto.Value - edtdescrvlr.Value;
end;

procedure Tfmobfechamento_venda.UnimBitBtn1Click(Sender: TObject);
begin
  UniMainModule.fechavenda;
  fmobcli_fechavenda.Close;
  fmobvenda.Close;
  close;
  ShowMessage('Venda Enviada para o servidor');
end;

procedure Tfmobfechamento_venda.UnimFormShow(Sender: TObject);
begin
  edttotbruto.Value := UniMainModule.qmonvendaTOTAL_VENDA.Value + UniMainModule.qmonvendaDESCONTO.Value;
  edtdescrvlr.Value := UniMainModule.qmonvendaDESCONTO.Value;
  edttotliquido.Value := UniMainModule.qmonvendaTOTAL_VENDA.Value;
end;

end.
