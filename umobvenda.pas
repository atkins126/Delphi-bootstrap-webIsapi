unit umobvenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, uniBitBtn, unimBitBtn, uniBasicGrid, uniDBGrid,
  unimDBListGrid, unimDBGrid, unimMenu, uniLabel, unimLabel, uniEdit, unimEdit;

type
  Tfmobvenda = class(TUnimForm)
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    UnimDBGrid1: TUnimDBGrid;
    UnimLabel1: TUnimLabel;
    edttotalvenda: TUnimLabel;
    UnimBitBtn3: TUnimBitBtn;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimBitBtn3Click(Sender: TObject);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UnimDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobvenda: Tfmobvenda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uconsprodvenda, umobclie_fechavenda;

function fmobvenda: Tfmobvenda;
begin
  Result := Tfmobvenda(UniMainModule.GetFormInstance(Tfmobvenda));
end;

procedure Tfmobvenda.UnimBitBtn1Click(Sender: TObject);
begin
  fconsprodvenda.ShowModal();
end;

procedure Tfmobvenda.UnimBitBtn2Click(Sender: TObject);
begin
  try
    if UniMainModule.qprodvenda.RecordCount = 0 then
    begin
      ShowMessage('Venda sem produtos');
      abort;
    end;
    fmobcli_fechavenda.ShowModal();
  finally
    //close;
  end;
end;

procedure Tfmobvenda.UnimBitBtn3Click(Sender: TObject);
begin
  if UniMainModule.qprodvendaCodigo.AsAnsiString = '' then
  begin
    ShowMessage('Selecione um item');
    abort;
  end;
  UniMainModule.qprodvenda.Delete;
  UniMainModule.totalizaitens('S');
end;

procedure Tfmobvenda.UnimDBGrid1DblClick(Sender: TObject);
begin
  xinserindo := true;
end;

end.
