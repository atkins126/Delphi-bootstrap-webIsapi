unit uconsprodvenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniEdit, unimEdit, uniGUIBaseClasses, uniLabel, unimLabel, uniButton,
  uniBitBtn, unimBitBtn, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid,
  uniImage, unimImage;

type
  Tfconsprodvenda = class(TUnimForm)
    UnimLabel1: TUnimLabel;
    edtnome: TUnimEdit;
    btnconfirmar: TUnimBitBtn;
    edtqtd: TUnimEdit;
    UnimLabel2: TUnimLabel;
    UnimDBGrid1: TUnimDBGrid;
    UnimImage1: TUnimImage;
    procedure edtnomeChange(Sender: TObject);
    procedure btnconfirmarClick(Sender: TObject);
    procedure UnimDBGrid1ClickHold(Sender: TObject);
  private
    { Private declarations }
    procedure DCallBack1(Sender: TComponent; Res: Integer);
  public
    { Public declarations }
  end;

function fconsprodvenda: Tfconsprodvenda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Mainm, umobdetprod;

function fconsprodvenda: Tfconsprodvenda;
begin
  Result := Tfconsprodvenda(UniMainModule.GetFormInstance(Tfconsprodvenda));
end;

procedure Tfconsprodvenda.btnconfirmarClick(Sender: TObject);
var
  xinsert : Boolean;
begin
  xinserindo := false;
  if not MainmForm.IsNum(edtqtd.Text) then
  begin
    ShowMessage('Quantidade invalida');
    abort;
  end;
  xinsert := UniMainModule.insereprodvenda('S');
  if xinsert then
    ShowMessage('Produto inserido')
  else
  begin
    CloseModal;
    ShowMessage('Erro ao inserir produto');
  end;
end;

procedure Tfconsprodvenda.DCallBack1(Sender: TComponent; Res: Integer);
begin
  //ShowMessage(IntToStr(Res));
  if res = 1 then
  begin
    fmobdetprod.ShowModal();
  end;
end;

procedure Tfconsprodvenda.edtnomeChange(Sender: TObject);
begin
  if edtnome.Text = '' then
    UniMainModule.abreprodutos
  else
  begin
    UniMainModule.changeproduto(edtnome.Text);
  end;
end;



procedure Tfconsprodvenda.UnimDBGrid1ClickHold(Sender: TObject);
begin
  MessageDlg('Ver detalhes', mtWarning , [ mbOK,mbNo ], DCallBack1);
end;

end.
