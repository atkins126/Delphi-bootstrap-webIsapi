unit umobfechavenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, uniBitBtn, unimBitBtn, uniLabel, unimLabel,
  uniMultiItem, unimSelect, uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid,
  uniEdit, unimEdit;

type
  Tfmobfechavenda = class(TUnimForm)
    UnimBitBtn1: TUnimBitBtn;
    UnimLabel1: TUnimLabel;
    UnimSelect1: TUnimSelect;
    UnimDBGrid1: TUnimDBGrid;
    UnimLabel2: TUnimLabel;
    edtrestante: TUnimEdit;
    UnimBitBtn2: TUnimBitBtn;
    UnimLabel3: TUnimLabel;
    edttotparcs: TUnimEdit;
    UnimBitBtn3: TUnimBitBtn;
    UnimLabel4: TUnimLabel;
    edtdesconto: TUnimEdit;
    procedure UnimFormShow(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UnimDBGrid1ColumnSummaryResult(Column: TunimDBGridColumn;
      var Result: string);
    procedure UnimDBGrid1ClickHold(Sender: TObject);
    procedure UnimBitBtn3Click(Sender: TObject);
    procedure UnimFormBeforeShow(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure edtdescontoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobfechavenda: Tfmobfechavenda;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, umobvenda, umobfechamento,
  umobfechamento_venda, umobclientes;

function fmobfechavenda: Tfmobfechavenda;
begin
  Result := Tfmobfechavenda(UniMainModule.GetFormInstance(Tfmobfechavenda));
end;



procedure Tfmobfechavenda.UnimBitBtn1Click(Sender: TObject);
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
    if xtot1 <> xtot then
    begin
      ShowMessage('Total das parcelas difere do total da venda');
      ShowMessage('Total parcs:'+currtostr(xtot1)+'--'+'Tota venda:'+edtrestante.Text);
      exit;
    end;
  end;
  close;
  fmobfechamento_venda.ShowModal();


end;

procedure Tfmobfechavenda.UnimBitBtn2Click(Sender: TObject);
var
  xparcs : integer;
  xcodforma : string;
  xvle : Currency;
begin
  if UnimSelect1.Text = '' then
  begin
    ShowMessage('Selecione uma forma de pagamento');
    exit;
  end;
  xcodforma := UnimSelect1.Items[UnimSelect1.ItemIndex];
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
  xehmobile := 'S';
  UniMainModule.gravaformatemp(xvle,xparcs,strtoint(xcodforma));
end;

procedure Tfmobfechavenda.UnimBitBtn3Click(Sender: TObject);
begin
  xehmobile := 'S';
  UniMainModule.limpaparcs;
end;

procedure Tfmobfechavenda.UnimDBGrid1ClickHold(Sender: TObject);
begin
  if MessageDlg('Deseja excluir parcela?', mtConfirmation , mbYesNo ) = mrYes then
  begin
    UniMainModule.qparcs.Delete;
    ShowMessage('Parcela Excluida');
  end;
end;

procedure Tfmobfechavenda.UnimDBGrid1ColumnSummaryResult(
  Column: TunimDBGridColumn; var Result: string);
var
  xtot : currency;
begin
 
end;

procedure Tfmobfechavenda.UnimFormBeforeShow(Sender: TObject);
begin
  UniMainModule.abreformaspgto;
end;

procedure Tfmobfechavenda.UnimFormCreate(Sender: TObject);
begin
  xehmobile := 'S';
  UniMainModule.limpaparcs;
end;

procedure Tfmobfechavenda.UnimFormShow(Sender: TObject);
begin
  UniMainModule.abreformaspgto;
  edtrestante.Text := formatfloat('###,###,##0.00', UniMainModule.qmonvendaTOTAL_VENDA.value);
  edttotparcs.Text := edtrestante.Text;
end;

procedure Tfmobfechavenda.edtdescontoExit(Sender: TObject);
var
  xtot5 : Currency;
begin
  xtot5 := strtocurr(edtrestante.Text);
  if strtocurr(edtdesconto.Text) > 0 then
  begin
    if not UniMainModule.qparcs.IsEmpty then
    begin
      ShowMessage('Limpe as parcelas para aplicar um desconto');
    end else
    begin
      edttotparcs.Text := currtostr(xtot5 - strtocurr(edtdesconto.Text));
      edtrestante.Text := edttotparcs.Text;
    end;
    xtot := strtocurr(edttotparcs.Text);
    UniMainModule.qmonvenda.Edit;
    UniMainModule.qmonvendaTOTAL_VENDA.Value := xtot;
    UniMainModule.qmonvendadesconto.value := StrToCurr(edtdesconto.Text);
  end else
  begin
    edtrestante.Text := formatfloat('###,###,##0.00', UniMainModule.qmonvendaTOTAL_VENDA.value);
    edttotparcs.Text := edtrestante.Text;
  end;
end;


end.
