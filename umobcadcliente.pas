unit umobcadcliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, Data.DB,
  uniEdit, unimEdit, uniGUIBaseClasses, uniLabel, unimLabel, uniPanel,
  uniPageControl, unimTabPanel, uniMultiItem, unimSelect, unimDBSelect,
  uniBasicGrid, uniDBGrid, unimDBListGrid, unimDBGrid, uniButton, uniBitBtn,
  unimBitBtn, uniDateTimePicker, unimDatePicker;

type
  Tfmobcadcliente = class(TUnimForm)
    UnimTabPanel1: TUnimTabPanel;
    UnimTabSheet1: TUnimTabSheet;
    UnimTabSheet2: TUnimTabSheet;
    UnimLabel1: TUnimLabel;
    edtnome: TUnimEdit;
    UnimLabel2: TUnimLabel;
    UnimLabel3: TUnimLabel;
    edtrg: TUnimNumberEdit;
    UnimLabel4: TUnimLabel;
    edtendereco: TUnimEdit;
    UnimLabel5: TUnimLabel;
    edtbairro: TUnimEdit;
    UnimLabel6: TUnimLabel;
    UnimDBGrid1: TUnimDBGrid;
    UnimBitBtn1: TUnimBitBtn;
    edtcidade: TUnimEdit;
    edtcpf: TUnimEdit;
    UnimTabSheet3: TUnimTabSheet;
    UnimLabel7: TUnimLabel;
    edtcep: TUnimEdit;
    UnimLabel8: TUnimLabel;
    edttelefone: TUnimEdit;
    UnimLabel9: TUnimLabel;
    edtdatanascimento: TUnimDatePicker;
    procedure edtcidadeChange(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fmobcadcliente: Tfmobcadcliente;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fmobcadcliente: Tfmobcadcliente;
begin
  Result := Tfmobcadcliente(UniMainModule.GetFormInstance(Tfmobcadcliente));
end;

procedure Tfmobcadcliente.edtcidadeChange(Sender: TObject);
begin
  UniMainModule.changecidades(edtcidade.Text);
end;

procedure Tfmobcadcliente.UnimBitBtn1Click(Sender: TObject);
var
  xsalvo : Boolean;
begin
  xsalvo := false;
  if (edtcpf.Text = '') or (Length(edtcpf.Text) <> 11)
  then
    begin
      ShowMessage('Preencha o cpf');
      abort;
    end;
  try
    xsalvo := UniMainModule.salvacliente;
  Except on e: exception do
    begin
      ShowMessage(e.Message);
    end;
  end;
  if not xsalvo then
    ShowMessage('Erro ao salvar cliente verifique, todos os campos por favor')
  else
  begin
    close;
    ShowMessage('Cliente salvo com sucesso');
  end;
end;

end.
