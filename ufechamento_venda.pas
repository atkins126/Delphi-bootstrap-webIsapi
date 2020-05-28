unit ufechamento_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniLabel, uniGUIBaseClasses, uniButton,
  unimLabel, unimEdit;

type
  Tffechamento_venda = class(TUniForm)
    UniButton1: TUniButton;
    edttotbruto: TUniNumberEdit;
    edtdescrvlr: TUnimNumberEdit;
    UnimLabel3: TUnimLabel;
    UnimLabel4: TUnimLabel;
    edttotliquido: TUnimNumberEdit;
    UnimLabel1: TUnimLabel;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ffechamento_venda: Tffechamento_venda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ufechavenda, ucli_fechavenda;

function ffechamento_venda: Tffechamento_venda;
begin
  Result := Tffechamento_venda(UniMainModule.GetFormInstance(Tffechamento_venda));
end;

procedure Tffechamento_venda.UniButton1Click(Sender: TObject);
begin
  UniMainModule.fechavenda;
  ffechavenda.Close;
  close;
  ShowMessage('Venda Enviada para o servidor');
  fcli_fechavenda.Close;
  UniMainModule.qprodvenda.EmptyDataSet;
end;

procedure Tffechamento_venda.UniFormCreate(Sender: TObject);
begin
  edttotbruto.Text := CurrToStr( UniMainModule.qmonvendaTOTAL_VENDA.Value);
end;

end.
