unit ufechavenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniMultiItem,
  uniComboBox, uniEdit, uniLabel, uniBasicGrid, uniDBGrid, math;

type
  Tffechavenda = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniLabel1: TUniLabel;
    edtrestante: TUniEdit;
    UniLabel2: TUniLabel;
    edttotparcs: TUniEdit;
    UniLabel3: TUniLabel;
    UniComboBox1: TUniComboBox;
    UniDBGrid1: TUniDBGrid;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ffechavenda: Tffechavenda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ufechamento_venda;

function ffechavenda: Tffechavenda;
begin
  Result := Tffechavenda(UniMainModule.GetFormInstance(Tffechavenda));
end;

procedure Tffechavenda.UniButton1Click(Sender: TObject);
var
  xtot1 : Currency;
begin
  xtot1 := 0;

  with UniMainModule do
  begin
    if qparcs.RecordCount <=0 then
    begin
      ShowMessage('Insira uma forma de pagamento');
      exit;
    end;
    qparcs.First;
    while not qparcs.Eof do
    begin
      xtot1 := xtot1 + qparcsValor.Value;
      qparcs.Next;
    end;
    xtot1 := RoundTo(xtot1, -2);
    if xtot1 <> qmonvendaTOTAL_VENDA.Value then
    begin
      ShowMessage('Total das parcelas difere do total da venda');
      ShowMessage('Total parcs:'+currtostr(xtot1)+'--'+'Tota venda:'+edtrestante.Text);
      exit;
    end;
  end;
  ffechamento_venda.ShowModal();
  close;

end;

procedure Tffechavenda.UniButton2Click(Sender: TObject);
var
  xparcs : integer;
  xcodforma : string;
  xvle : Currency;
begin
  if UniComboBox1.Text = '' then
  begin
    ShowMessage('Selecione uma forma de pagamento');
    exit;
  end;
  xcodforma := UniComboBox1.Items[UniComboBox1.ItemIndex];
  xcodforma := copy(xcodforma,1,pos('-',xcodforma)-1);
  with UniMainModule.qaux do
  begin
    close;
    sql.Clear;
    sql.Add('select pacela from forma_pagamento');
    sql.Add('where codigo = :c');
    ParamByName('c').Value := strtoint(xcodforma);
    open;
  end;
  xparcs := UniMainModule.qaux.FieldByName('pacela').Value;
  if xrestante > 0 then
    xvle := xrestante
  else
    xvle := xtot; //strtocurr(edttotparcs.Text);
  if xvle =0 then
  begin
    ShowMessage('O valor total foi atingido');
    exit;
  end;
  if xvle <0 then
  begin
    ShowMessage('O valor total foi ultrapassado');
    exit;
  end;
  xehmobile := 'N';
  UniMainModule.gravaformatemp(xvle,xparcs,strtoint(xcodforma));
end;
procedure Tffechavenda.UniButton3Click(Sender: TObject);
begin
  xehmobile := 'N';
  UniMainModule.limpaparcs;
end;

procedure Tffechavenda.UniFormShow(Sender: TObject);
begin
  UniMainModule.abreformaspgto2;
  edtrestante.Text := formatfloat('###,###,##0.00', UniMainModule.qmonvendaTOTAL_VENDA.value);
  edttotparcs.Text := edtrestante.Text;
end;

end.
