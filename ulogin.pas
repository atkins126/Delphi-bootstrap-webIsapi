unit ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniEdit, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniGUIBaseClasses, uniLabel,
  Data.DB, uniButton, uniBitBtn, uniSpeedButton, Vcl.Imaging.pngimage, uniImage;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    lookuser: TUniDBLookupComboBox;
    edtsenha: TUniEdit;
    UniSpeedButton1: TUniSpeedButton;
    UniImage1: TUniImage;
    procedure UniSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    Function Criptografia(mStr, mChave: String): String;
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

function TUniLoginForm1.Criptografia(mStr, mChave: String): String;
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
procedure TUniLoginForm1.UniSpeedButton1Click(Sender: TObject);
var
  xsenha : string;
begin
  if (edtsenha.Text = '') or (lookuser.Text = '') then
  begin
    ShowMessage('Usuario ou senha incorreta');
    Abort;
  end;
 // xsenha := lookuser.Items[lookuser.ItemIndex];
 // xsenha := copy(xsenha,1,pos('-',xsenha)-1);
  xsenha := inttostr(lookuser.KeyValue);
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

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
