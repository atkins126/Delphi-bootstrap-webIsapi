unit uconsproduto_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniLabel, uniEdit, uniGUIBaseClasses,
  uniPanel, uniBasicGrid, uniDBGrid;

type
  Tfconsproduto_venda = class(TUniForm)
    UniSimplePanel1: TUniSimplePanel;
    edtqtd: TUniNumberEdit;
    UniLabel1: TUniLabel;
    UniButton1: TUniButton;
    UniDBGrid1: TUniDBGrid;
    edtnome: TUniEdit;
    UniLabel2: TUniLabel;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure edtnomeChange(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);

  private
    { Private declarations }
    procedure DCallBack1(Sender: TComponent; Res: Integer);
  public
    { Public declarations }
  end;

function fconsproduto_venda: Tfconsproduto_venda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main, udetprod;

function fconsproduto_venda: Tfconsproduto_venda;
begin
  Result := Tfconsproduto_venda(UniMainModule.GetFormInstance(Tfconsproduto_venda));
end;

procedure Tfconsproduto_venda.UniButton1Click(Sender: TObject);
var
  xinsert : Boolean;
begin
  xinserindo := false;
  try
    xinsert := UniMainModule.insereprodvenda('N');
  Except on e: Exception do

    begin
      ShowMessage(e.Message);
    end;

  end;
  if xinsert then
  begin
    ShowMessage('Produto inserido')
  end
  else
  begin
    CloseModal;
    ShowMessage('Erro ao inserir produto');
  end;
end;

procedure Tfconsproduto_venda.UniButton2Click(Sender: TObject);
begin
  close;
end;

procedure Tfconsproduto_venda.UniDBGrid1DblClick(Sender: TObject);
begin
  MessageDlg('Ver detalhes', mtWarning , [ mbOK,mbNo ],DCallBack1);
end;

procedure Tfconsproduto_venda.DCallBack1(Sender: TComponent; Res: Integer);
begin
  //ShowMessage(IntToStr(Res));
  if res = 1 then
  begin
    fdetprod.ShowModal();
  end;
end;

procedure Tfconsproduto_venda.edtnomeChange(Sender: TObject);
begin
  if edtnome.Text = '' then
    UniMainModule.abreprodutos
  else
  begin
    UniMainModule.changeproduto(edtnome.Text);
  end;
end;

end.
