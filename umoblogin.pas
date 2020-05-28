unit umoblogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniEdit, uniGUIBaseClasses, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, unimEdit, unimSelect, unimDBSelect, uniLabel, unimLabel,
  uniButton, unimButton, Vcl.Imaging.jpeg, uniImage, unimImage, uniTreeView,
  uniTreeMenu;

type
  TUnimLoginForm1 = class(TUnimLoginForm)
    UnimButton1: TUnimButton;
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    UnimDBSelect1: TUnimDBSelect;
    edtsenha: TUnimEdit;
    UnimImage1: TUnimImage;
    procedure UnimLoginFormCreate(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
    Function Criptografia(mStr, mChave: String): String;
  public
    { Public declarations }
  end;

function UnimLoginForm1: TUnimLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function UnimLoginForm1: TUnimLoginForm1;
begin
  Result := TUnimLoginForm1(UniMainModule.GetFormInstance(TUnimLoginForm1));
end;

function TUnimLoginForm1.Criptografia(mStr, mChave: String): String;
Var
  i, TamanhoString, pos, PosLetra, TamanhoChave: Integer;
Begin
  Result := mStr;
  TamanhoString := Length(mStr);
  TamanhoChave := Length(mChave);
  For i := 1 To TamanhoString Do
  Begin
    pos := (i Mod TamanhoChave);
    If pos = 0 Then
      pos := TamanhoChave;
    posLetra := ord(Result[i]) Xor ord(mChave[pos]);
    If posLetra = 0 Then
      posLetra := ord(Result[i]);
    Result[i] := chr(posLetra);
  End;
End;

procedure TUnimLoginForm1.UnimButton1Click(Sender: TObject);
var
  xsenha : string;
begin
  if (edtsenha.Text = '') or (UnimDBSelect1.Text = '') then
  begin
    ShowMessage('Usuario ou senha incorreta');
    Abort;
  end;
  xsenha := UnimDBSelect1.Items[UnimDBSelect1.ItemIndex];
  xsenha := copy(xsenha,1,pos('-',xsenha)-1);
  with UniMainModule.qaux do
  begin
    close;
    sql.clear;
    sql.Add('select senha from vendedor');
    sql.Add('where codigo = :c');
    ParamByName('c').Value := strtoint(xsenha);
    open;
  end;
  if edtsenha.Text = UniMainModule.qaux.FieldByName('senha').AsAnsiString then
  begin
  //Criptografia(UniMainModule.qaux.FieldByName('senha').AsAnsiString,'MOCAIS') then
    with UniMainModule.qusuario do
    begin
      close;
      sql.Clear;
      sql.Add('select * from vendedor');
      sql.Add('where codigo = :c');
      ParamByName('c').Value := strtoint(xsenha);
      open;
    end;
    UniMainModule.logausuario(strtoint(xsenha));
    ModalResult := mrOk;
  end else
    ShowMessage('Senha incorreta');
end;

procedure TUnimLoginForm1.UnimLoginFormCreate(Sender: TObject);
begin
  with UniMainModule.qusuario do
  begin
    close;
    open;
    first;
    while not eof do
    begin
      UnimDBSelect1.Items.Add(FieldByName('codigo').AsAnsiString+'-'+FieldByName('nome').AsAnsiString);
      Next;
    end;
  end;
end;

initialization
  RegisterAppFormClass(TUnimLoginForm1);

end.
