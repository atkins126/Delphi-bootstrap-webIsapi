unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, uniBitBtn, unimBitBtn, Vcl.Imaging.pngimage,
  uniImage, unimImage, Vcl.Imaging.jpeg;

type
  TMainmForm = class(TUnimForm)
    btnprodutos: TUnimBitBtn;
    btnclientes: TUnimBitBtn;
    btnvenda: TUnimBitBtn;
    UnimBitBtn1: TUnimBitBtn;
    UnimImage1: TUnimImage;
    procedure btnprodutosClick(Sender: TObject);
    procedure btnclientesClick(Sender: TObject);
    procedure btnvendaClick(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function IsNum(S:String): Boolean;
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, umobprodutos, umobclientes,
  umobvenda, umobconsvendas;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.btnclientesClick(Sender: TObject);
begin
  fmobclientes.ShowModal();
end;

procedure TMainmForm.btnprodutosClick(Sender: TObject);
begin
  fmobprodutos.ShowModal();
end;

procedure TMainmForm.btnvendaClick(Sender: TObject);
begin
  if UniMainModule.qprodvenda.Active then
  begin
    if UniMainModule.qprodvenda.RecordCount >0 then
      UniMainModule.qprodvenda.EmptyDataSet;
  end;
  try
    fmobvenda.ShowModal();
  finally
  //  close;
  end;

end;

function TMainmForm.IsNum(S: String): Boolean;
var
OutVar: Integer;
begin
  Result := TryStrToInt(s,OutVar);
end;



procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
begin
  fmobconsvendas.ShowModal();
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  xehmobile := 'S';
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
