unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBitBtn,
  uniSpeedButton, uniGUIBaseClasses, uniPanel, uniBasicGrid, uniDBGrid,
  uniLabel, uniEdit, uniTabControl, uniPageControl, Vcl.Imaging.jpeg, uniImage,
  unimImage, unimEdit, unimLabel, unimDBListGrid, unimDBGrid, uniDateTimePicker,
  uniScrollBox;

type
  TMainForm = class(TUniForm)
    UniSimplePanel1: TUniSimplePanel;
    UniPanel1: TUniPanel;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    UniSimplePanel2: TUniSimplePanel;
    edtpesqprod: TUniEdit;
    UniLabel1: TUniLabel;
    UniSpeedButton4: TUniSpeedButton;
    UniImage1: TUniImage;
    UniSimplePanel3: TUniSimplePanel;
    edtpesqcli: TUniEdit;
    UniLabel3: TUniLabel;
    UniSpeedButton5: TUniSpeedButton;
    UniDBGrid2: TUniDBGrid;
    UniTabSheet3: TUniTabSheet;
    UniSpeedButton6: TUniSpeedButton;
    UniPanel3: TUniPanel;
    UniLabel2: TUniLabel;
    UniSimplePanel4: TUniSimplePanel;
    UniScrollBox1: TUniScrollBox;
    UniPanel2: TUniPanel;
    UniLabel6: TUniLabel;
    edtnome: TUniEdit;
    UniLabel7: TUniLabel;
    edtcpf: TUniEdit;
    UniLabel8: TUniLabel;
    edtrg: TUniEdit;
    UniLabel5: TUniLabel;
    edtbairro: TUniEdit;
    edtendereco: TUniEdit;
    UniLabel4: TUniLabel;
    UniLabel9: TUniLabel;
    edtcep: TUniEdit;
    UniLabel10: TUniLabel;
    edttelefone: TUniEdit;
    UniLabel11: TUniLabel;
    edtdatanascimento: TUniDateTimePicker;
    edtcidade: TUniEdit;
    UniLabel12: TUniLabel;
    UniDBGrid3: TUniDBGrid;
    UniTabSheet4: TUniTabSheet;
    UniSimplePanel6: TUniSimplePanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniSimplePanel7: TUniSimplePanel;
    UniButton3: TUniButton;
    UniLabel14: TUniLabel;
    labtotal: TUniLabel;
    UniSpeedButton7: TUniSpeedButton;
    UniButton4: TUniButton;
    UniDBGrid4: TUniDBGrid;
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniSpeedButton4Click(Sender: TObject);
    procedure UniSpeedButton2Click(Sender: TObject);
    procedure UniSpeedButton5Click(Sender: TObject);
    procedure UniSpeedButton6Click(Sender: TObject);
    procedure UniSpeedButton3Click(Sender: TObject);
    procedure edtcidadeChange(Sender: TObject);
    procedure UniSpeedButton7Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function IsNum(S:String): Boolean;
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uprodutos, uconscliente,
  uconsproduto_venda, ucli_fechavenda;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.edtcidadeChange(Sender: TObject);
begin
  UniMainModule.changecidades(edtcidade.Text);
end;

function TMainForm.IsNum(S: String): Boolean;
var
  OutVar: Integer;
begin
  Result := TryStrToInt(s,OutVar);
end;


procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  try
    if UniMainModule.qprodvenda.RecordCount = 0 then
    begin
      ShowMessage('Venda sem produtos');
      abort;
    end;
    fcli_fechavenda.ShowModal();
  finally
    //close;
  end;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  fconsproduto_venda.ShowModal();
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  if UniMainModule.qprodvendaCodigo.AsAnsiString = '' then
  begin
    ShowMessage('Selecione um item');
    abort;
  end;
  UniMainModule.qprodvenda.Delete;
  UniMainModule.totalizaitens('N');
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
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
end;

procedure TMainForm.UniButton6Click(Sender: TObject);
begin
  UniLabel2.Caption := UniSpeedButton3.Caption;
  UniTabSheet2.TabVisible := false;
  UniTabSheet2.Enabled := false;
  UniPageControl1.TabIndex := 3;
  UniTabSheet1.TabVisible := false;
  UniTabSheet1.Enabled := false;
  UniTabSheet3.TabVisible := false;
  UniTabSheet4.TabVisible := true;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniSpeedButton1Click(sender);
  xehmobile := 'N';
end;

procedure TMainForm.UniSpeedButton1Click(Sender: TObject);
begin
  UniLabel2.Caption := UniSpeedButton1.Caption;
  UniTabSheet1.TabVisible := true;
  UniTabSheet1.Enabled := true;
  UniSimplePanel2.Visible := true;
  UniTabSheet4.TabVisible := false;
  if UniPageControl1.TabIndex > 0 then
  begin
    UniTabSheet2.TabVisible := false;
    UniTabSheet3.TabVisible := false;
    UniPageControl1.TabIndex := 0;
  end;
  UniMainModule.abreprodutos;
end;

procedure TMainForm.UniSpeedButton2Click(Sender: TObject);
begin
  UniLabel2.Caption := UniSpeedButton2.Caption;
  UniTabSheet2.TabVisible := true;
  UniTabSheet2.Enabled := true;
  UniTabSheet2.visible := true;
  UniPageControl1.TabIndex := 1;
  UniTabSheet1.TabVisible := false;
  UniTabSheet1.Enabled := false;
  UniTabSheet4.TabVisible := false;
  UniTabSheet3.TabVisible := false;
end;

procedure TMainForm.UniSpeedButton3Click(Sender: TObject);
begin
  UniLabel2.Caption := UniSpeedButton3.Caption;
  UniTabSheet2.TabVisible := false;
  UniTabSheet2.Enabled := false;
  UniPageControl1.TabIndex := 3;
  UniTabSheet1.TabVisible := false;
  UniTabSheet1.Enabled := false;
  UniTabSheet3.TabVisible := false;
  UniTabSheet4.TabVisible := true;
end;

procedure TMainForm.UniSpeedButton4Click(Sender: TObject);
begin
  UniMainModule.changeproduto(edtpesqprod.Text);
end;

procedure TMainForm.UniSpeedButton5Click(Sender: TObject);
begin
  UniMainModule.changecliente(edtpesqcli.Text);
end;

procedure TMainForm.UniSpeedButton6Click(Sender: TObject);
begin
  UniLabel2.Caption := UniSpeedButton6.Caption;
  UniMainModule.abrecidades;
  UniTabSheet2.TabVisible := false;
  UniTabSheet2.Enabled := false;
  UniPageControl1.TabIndex := 2;
  UniTabSheet1.TabVisible := false;
  UniTabSheet1.Enabled := false;
  UniTabSheet4.TabVisible := false;
  UniTabSheet3.TabVisible := true;
  UniTabSheet3.Enabled := true;
end;

procedure TMainForm.UniSpeedButton7Click(Sender: TObject);
var
  xsalvo : Boolean;
begin
  xsalvo := false;
  if (edtnome.Text = '')
  then
    begin
      ShowMessage('Preencha o nome');
      abort;
    end;
  try
    xsalvo := UniMainModule.salvaclientenav;
  Except on e: exception do
    begin
      ShowMessage(e.Message);
    end;
  end;
  if not xsalvo then
    ShowMessage('Erro ao salvar cliente verifique, todos os campos por favor')
  else
  begin
    //close;
    edtnome.Clear;
    edtcpf.Clear;
    edtbairro.Clear;
    edtendereco.Clear;
    edtcep.Clear;
    edttelefone.Clear;
    edtcidade.Clear;
    edtrg.Clear;
    ShowMessage('Cliente salvo com sucesso');
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
