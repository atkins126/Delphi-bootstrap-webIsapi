unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,inifiles,math;

type
  TUniMainModule = class(TUniGUIMainModule)
    DataSource1: TDataSource;
    qaux: TFDQuery;
    dtsprod: TDataSource;
    dtscliente: TDataSource;
    qprodvenda2: TFDMemTable;
    dtsprodvenda: TDataSource;
    qprodvenda2Codigo: TIntegerField;
    qprodvenda2Nome: TStringField;
    qprodvenda2Venda: TCurrencyField;
    qprodvenda2Quantidade: TFloatField;
    qprodvenda2Total: TCurrencyField;
    qcadcliente: TFDMemTable;
    qcadclienteNome: TStringField;
    qcadclienteCpf: TStringField;
    qcadclienteRg: TStringField;
    qcadclienteBairro: TStringField;
    qcadclienteCidade: TStringField;
    qcadclienteCodcidade: TIntegerField;
    dtscadcliente: TDataSource;
    dtscidades: TDataSource;
    qcadclienteEndereco: TStringField;
    qmonvenda: TFDMemTable;
    qmonvendaCOD_CLIENTE: TIntegerField;
    qmonvendaCOD_ATENDENTE: TIntegerField;
    qmonvendaCLIENTE: TStringField;
    dts_parcs: TDataSource;
    qparcs: TFDMemTable;
    qparcsData: TDateField;
    qparcsVencimento: TDateField;
    qparcsValor: TFloatField;
    qparcsParcela: TFloatField;
    qparcscodformapgto: TIntegerField;
    qparcsTipo: TStringField;
    qempresa: TFDQuery;
    qempresaCODIGO: TIntegerField;
    qempresaRAZAO: TStringField;
    qempresaDATA: TStringField;
    qempresaFANTASIA: TStringField;
    qempresaENDERECO: TStringField;
    qempresaBAIRRO: TStringField;
    qempresaCOD_CIDADE: TStringField;
    qempresaCEP: TStringField;
    qempresaTELEFONE: TStringField;
    qempresaFAX: TStringField;
    qempresaCELULAR: TStringField;
    qempresaCNPJ: TStringField;
    qempresaINSCRICAO: TStringField;
    qempresaOBS: TStringField;
    qempresaATIVA: TStringField;
    qempresaNAO_MEXER: TStringField;
    qempresaNAO_MEXER2: TStringField;
    qempresaCODUF_IBGE: TStringField;
    qempresaCODMUN_IBGE: TStringField;
    qempresaNUMERO: TStringField;
    qempresaIMUN: TStringField;
    qempresaCNAE_FISCAL: TStringField;
    qempresaCIDADE: TStringField;
    qempresaUF: TStringField;
    qempresaCODPAIS: TStringField;
    qempresaPAIS: TStringField;
    qempresaRESPLEGAL: TStringField;
    qempresaCRT: TStringField;
    qempresaEFD_COD_VER: TStringField;
    qempresaPERFIL: TStringField;
    qempresaEMAIL: TStringField;
    qempresaCONTAB_NOME: TStringField;
    qempresaCONTAB_CPF: TStringField;
    qempresaCONTAB_CRC: TStringField;
    qempresaCONTAB_CNPJ: TStringField;
    qempresaCONTAB_CEP: TStringField;
    qempresaCONTAB_END: TStringField;
    qempresaCONTAB_NUMCASA: TStringField;
    qempresaCONTAB_COMPL: TStringField;
    qempresaCONTAB_BAIRRO: TStringField;
    qempresaCONTAB_FONE: TStringField;
    qempresaCONTAB_FAX: TStringField;
    qempresaCONTAB_EMAIL: TStringField;
    qempresaCONTAB_CODNUMIBGE: TStringField;
    qempresaSIMPLES_NACIONAL: TStringField;
    qempresaSERIE_NFE: TStringField;
    qempresaSERIE_NFCE: TStringField;
    qempresaDIASVAL: TIntegerField;
    dtsconsvenda: TDataSource;
    dtsitensvenda: TDataSource;
    qusuario: TFDQuery;
    qprodvenda: TFDMemTable;
    qprodvendaCodigo: TIntegerField;
    qprodvendaNome: TStringField;
    qprodvendaVenda: TCurrencyField;
    qprodvendaQuantidade: TFloatField;
    qprodvendaTotal: TCurrencyField;
    qparcs2: TFDMemTable;
    qparcs2Data: TDateField;
    qparcs2Vencimento: TDateField;
    qparcs2Valor: TFloatField;
    qparcs2Parcela: TFloatField;
    qparcs2codformapgto: TIntegerField;
    qparcs2Tipo: TStringField;
    qprodutos: TFDQuery;
    qclientes: TFDQuery;
    qclientesCODIGO: TIntegerField;
    qclientesNOME: TStringField;
    qclientesCPF: TStringField;
    qclientesRG: TStringField;
    qclientesCIDADE: TStringField;
    qclientesENDERECO: TStringField;
    qclientesBAIRRO: TStringField;
    qclientesCOD_CIDADE: TIntegerField;
    qclientesCEP: TStringField;
    qclientesDATA_NASCTIT: TDateField;
    qclientesTELEFONE: TStringField;
    qcidades: TFDQuery;
    qcidadesCODIGO: TIntegerField;
    qcidadesNOME: TStringField;
    qcidadesUF: TStringField;
    qcidadesCODMUN_IBGE: TStringField;
    qcidadesCOD_PAIS: TIntegerField;
    qusuarioCODIGO: TIntegerField;
    qusuarioNOME: TStringField;
    qusuarioCPF: TStringField;
    qusuarioDATANASC: TStringField;
    qusuarioENDERECO: TStringField;
    qusuarioBAIRRO: TStringField;
    qusuarioCEP: TStringField;
    qusuarioCIDADE: TStringField;
    qusuarioUF: TStringField;
    qusuarioEMAIL: TStringField;
    qusuarioCONTA: TStringField;
    qusuarioLIMITE: TStringField;
    qusuarioDESCONTO: TStringField;
    qusuarioDATACADASTRO: TStringField;
    qusuarioSENHA: TStringField;
    qusuarioPAGACOMISS: TStringField;
    qusuarioATIVARSENHA: TStringField;
    qusuarioATEND_IMPORTAC: TIntegerField;
    qusuarioDT_IMPORTAC: TDateField;
    qusuarioCOMISSAO: TFMTBCDField;
    qusuarioCOMAPRAZO: TFMTBCDField;
    qusuarioSENHA_FARMA_POP: TStringField;
    qusuarioPERC_COMISSAOAVISTA: TFMTBCDField;
    qusuarioPERC_COMISSAOAAPRAZO: TFMTBCDField;
    qusuarioPERC_COMISSAOACARTAO: TFMTBCDField;
    qusuarioPERC_COMISSAOCHEQUE: TFMTBCDField;
    qusuarioRETIRADA: TFMTBCDField;
    qprodutosCODIGO: TIntegerField;
    qprodutosNOME: TStringField;
    qprodutosCODIGO_BARRA: TStringField;
    qprodutosVENDA: TFMTBCDField;
    qprodutosMARCA: TStringField;
    qprodutosUND: TStringField;
    qprodutosESTOQUE: TFMTBCDField;
    qmonvendaTOTAL_VENDA: TCurrencyField;
    qmonvendaDESCONTO: TCurrencyField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure qparcsAfterPost(DataSet: TDataSet);
    procedure qprodvenda2CalcFields(DataSet: TDataSet);
    procedure qprodvenda2AfterPost(DataSet: TDataSet);
    procedure qprodvendaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure abreprodutos;
    procedure abrecidades;
    procedure abreformaspgto;
    procedure abreformaspgto2;
    procedure changeproduto(nomeproduto:string);
    procedure changecliente(nomecliente:string);
    function  insereprodvenda(mobile : string) : Boolean;
    procedure totalizaitens(mobile : string);
    procedure changecidades(nomecidade:string);
    function salvacliente : Boolean;
    function salvaclientenav : Boolean;
    function gravaclitemp : Boolean;
    procedure gravaformatemp(valor:Currency;parcela:integer;codigo:integer);
    procedure fechavenda;
    function detprodnome : string;
    function detprodvalor : Currency;
    function detprodcodigo : integer;
    procedure atualizaitens(mobile :string);
    procedure limpaparcs;
    procedure consvenda(date1,date2 : TDate; codvendedor : Integer; status : string);
    function consitensvenda(codvenda:integer) : Boolean;
    procedure fechatabelas;
    procedure logausuario(xsenha : integer);

  end;
  Var
    xinserindo : Boolean = true;
    xtot : Currency;
    xrestante : Currency = 0;
    xehmobile : string = 'S';

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, uconsprodvenda, umobvenda,
  umobcadcliente, umobfechavenda, umobfechamento_venda, Main, ulogin,
  ufechavenda, uconsproduto_venda, ufechamento_venda;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.abrecidades;
begin
  UniServerModule.abrecidades;
end;

procedure TUniMainModule.abreformaspgto;
begin
  with UniServerModule.qformapgto do
  begin
    close;
    sql.Clear;
    sql.Add('select * from forma_pagamento');
    sql.Add('where 1=1');
    open;
  end;
  UniServerModule.qformapgto.first;
  fmobfechavenda.UnimSelect1.Items.Clear;
  fmobfechavenda.UnimSelect1.Refresh;
  fmobfechavenda.UnimSelect1.Clear;
  while not UniServerModule.qformapgto.Eof do
  begin
    fmobfechavenda.UnimSelect1.Items.Add(UniServerModule.qformapgtoCODIGO.AsAnsiString+'-'+
    UniServerModule.qformapgtoNOME.AsAnsiString);
    UniServerModule.qformapgto.Next;
  end;
end;

procedure TUniMainModule.abreformaspgto2;
begin
  with UniServerModule.qformapgto do
  begin
    close;
    sql.Clear;
    sql.Add('select * from forma_pagamento');
    sql.Add('where 1=1');
    open;
  end;
  UniServerModule.qformapgto.first;
  ffechavenda.UniComboBox1.Items.Clear;
  ffechavenda.UniComboBox1.Refresh;
  ffechavenda.UniComboBox1.Clear;
  while not UniServerModule.qformapgto.Eof do
  begin
    ffechavenda.UniComboBox1.Items.Add(UniServerModule.qformapgtoCODIGO.AsAnsiString+'-'+
    UniServerModule.qformapgtoNOME.AsAnsiString);
    UniServerModule.qformapgto.Next;
  end;
end;

procedure TUniMainModule.abreprodutos;
begin
  qprodutos.Close;
//  qprodutos.ParamByName('c').Value := qusuarioCODIGO.Value;
  qprodutos.Open();
end;

procedure TUniMainModule.atualizaitens(mobile:string);
var
  xpost : Boolean;
begin
  xpost := false;
  if xinserindo then
  begin
    if qprodvenda.Active then
    begin
      if qprodvenda.RecordCount > 0 then
      begin
        if xpost then
          exit;
        qprodvenda.First;
        while not qprodvenda.Eof do
        begin
          qprodvenda.Edit;
          qprodvendaTotal.Value := qprodvendaVenda.Value * qprodvendaQuantidade.Value;
         // qprodvenda.Post;
          qprodvenda.Next;
        end;
        xpost := true;
        qprodvenda.Post;
      end;
    end;
  end;
  totalizaitens(mobile);
end;

procedure TUniMainModule.changecidades(nomecidade: string);
begin
  with qcidades do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cidades');
    sql.Add('where nome like :nm');
    ParamByName('nm').AsAnsiString := nomecidade+'%';
    open;
  end;
end;

procedure TUniMainModule.changecliente(nomecliente: string);
begin
  with qclientes do
  begin
    close;
    sql.Clear;
    sql.Add('select a.codigo, a.nome, a.cpf, a.rg,a.endereco,a.bairro,a.cod_cidade,a.cep,a.telefone,a.data_nasctit, b.nome cidade');
    sql.Add('from clientes a');
    sql.Add('left outer join cidades b on(a.cod_cidade=b.codigo)');
    sql.Add('where a.nome like :nm');
    ParamByName('nm').AsAnsiString := nomecliente+'%';
    open;
  end;
end;

procedure TUniMainModule.changeproduto(nomeproduto:string);
begin
  with qprodutos do
  begin
    close;
    sql.Clear;
    sql.Add('select a.codigo, a.nome||'' ''||coalesce(a.apresentacao,'''') nome,a.codigo_barra,a.venda,');
    sql.Add('b.nome marca, c.nome und, d.estoque from produtos a');
    sql.Add('left outer join laboratorio b on(a.cod_laboratorio = b.codigo)');
    sql.Add('left outer join tipo c on(a.cod_tipo = c.codigo)');
    sql.Add('left outer join itens_estoque d on(a.codigo = d.cod_produto)');
    sql.Add('where a.nome||'' ''||a.apresentacao  like :nome');
    sql.Add('and coalesce(a.situacao,''A'') = ''A'' ');
   // sql.Add('and coalesce(d.cod_filial,1) = :c');
   // ParamByName('c').Value := qusuarioCODIGO.Value;
    ParamByName('nome').AsAnsiString := '%'+nomeproduto+'%';
    open;
  end;
end;



function TUniMainModule.consitensvenda(codvenda: integer): Boolean;
begin
  if UniServerModule.qmonvendaCOD_SEQUENCIAL.AsAnsiString <> '' then
  begin
    with UniServerModule.qmonitens do
    begin
      close;
      sql.Clear;
      sql.Add('select * from monitor_itens');
      sql.Add('where cod_sequencial = :c');
      ParamByName('c').Value := UniServerModule.qmonvendaCOD_SEQUENCIAL.Value;
      open;
    end;
    Result := true;
  end else
  begin
    Result := false;
  end;
end;

procedure TUniMainModule.consvenda(date1, date2: TDate; codvendedor: Integer; status : string);
begin
  with UniServerModule.qmonvenda do
  begin
    close;
    sql.Clear;
    sql.Add('select * from monitor_venda');
    sql.Add('where dt_venda >= :d1');
    sql.Add('and dt_venda <= :d2');
    sql.Add('and cod_atendente = :c');
    sql.Add('and pendente = :p');
    ParamByName('d1').AsDate := date1;
    ParamByName('d2').AsDate := date2;
    ParamByName('c').AsInteger := codvendedor;
    ParamByName('p').AsString := status;
    open;
  end;
end;

function TUniMainModule.detprodcodigo: integer;
begin
  Result := UniServerModule.qprodutosCODIGO.Value;
end;

function TUniMainModule.detprodnome: string;
begin
  Result := UniServerModule.qprodutosNOME.AsAnsiString;
end;

function TUniMainModule.detprodvalor: Currency;
begin
  Result := UniServerModule.qprodutosVENDA.AsCurrency;
end;

procedure TUniMainModule.fechatabelas;
begin
  if UniServerModule.qmonvenda.Active then
    UniServerModule.qmonvenda.Close;
  if UniServerModule.qmonitens.Active then
    UniServerModule.qmonitens.Close;
  if UniServerModule.qmonformas.Active then
    UniServerModule.qmonformas.Close;
end;

procedure TUniMainModule.fechavenda;
begin
  if not UniServerModule.qparcs.Active then
    UniServerModule.qparcs.Open
  else
    if UniServerModule.qparcs.RecordCount > 0 then
      UniServerModule.qparcs.EmptyDataSet;

  if not UniServerModule.qprodvenda.Active then
    UniServerModule.qprodvenda.Open
  else
    if UniServerModule.qprodvenda.RecordCount > 0 then
      UniServerModule.qprodvenda.EmptyDataSet;


  qparcs.First;
  while not qparcs.Eof do
  begin
     UniServerModule.qparcs.Insert;
     UniServerModule.qparcsData.Value := qparcsData.Value;
     UniServerModule.qparcsVencimento.Value := qparcsVencimento.Value;
     UniServerModule.qparcsValor.Value := qparcsValor.Value;
     UniServerModule.qparcsParcela.Value := qparcsParcela.Value;
     UniServerModule.qparcscodformapgto.Value := qparcscodformapgto.Value;
     UniServerModule.qparcsTipo.Value := qparcsTipo.Value;
     UniServerModule.qparcs.Post;
     qparcs.Next;
  end;
  qprodvenda.First;
  while not qprodvenda.Eof do
  begin
    UniServerModule.qprodvenda.Insert;
    UniServerModule.qprodvendaCodigo.Value := qprodvendaCodigo.Value;
    UniServerModule.qprodvendaNome.Value := qprodvendaNome.Value;
    UniServerModule.qprodvendaVenda.Value := qprodvendaVenda.Value;
    UniServerModule.qprodvendaQuantidade.Value := qprodvendaQuantidade.Value;
    UniServerModule.qprodvendaTotal.Value := qprodvendaTotal.Value;
    UniServerModule.qprodvenda.Post;
    qprodvenda.Next;
  end;
  with UniServerModule.qusuario do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vendedor');
    sql.Add('where codigo = :c');
    ParamByName('c').Value := qmonvendaCOD_ATENDENTE.Value;
    open;
  end;
  if not UniServerModule.qtempmonvenda.Active then
    UniServerModule.qtempmonvenda.Open;
  UniServerModule.qtempmonvenda.Insert;
  UniServerModule.qtempmonvendaCOD_CLIENTE.Value := qmonvendaCOD_CLIENTE.Value;
  UniServerModule.qtempmonvendaCOD_ATENDENTE.Value := qmonvendaCOD_ATENDENTE.Value;
  UniServerModule.qtempmonvendaCLIENTE.Value := qmonvendaCLIENTE.Value;
  if xehmobile = 'S' then
  begin
    UniServerModule.qtempmonvendaTOTAL_VENDA.Value := fmobfechamento_venda.edttotliquido.Value;
    UniServerModule.qtempmonvendadesconto.value := fmobfechamento_venda.edtdescrvlr.Value;
  end else
  begin
    UniServerModule.qtempmonvendaTOTAL_VENDA.Value := ffechamento_venda.edttotbruto.value;
    UniServerModule.qtempmonvendadesconto.value := ffechamento_venda.edtdescrvlr.Value;
  end;
  UniServerModule.qtempmonvenda.Post;

  UniServerModule.fechavenda;
end;

function TUniMainModule.gravaclitemp : Boolean;
begin
  if qclientesCODIGO.AsAnsiString = '' then
  begin
    Result := false;
    abort;
  end;
  if not qmonvenda.Active then
    qmonvenda.Open;
  qmonvenda.Insert;
  qmonvendaCOD_CLIENTE.Value := qclientesCODIGO.Value;
  qmonvendaCOD_ATENDENTE.Value := qusuarioCODIGO.Value;
  qmonvendaCLIENTE.Value := qclientesNOME.Value;
  qmonvendaTOTAL_VENDA.Value := RoundTo(xtot,-2); //strtocurr(fmobvenda.edttotalvenda.Caption);
  qmonvenda.Post;
  Result := true;
end;



procedure TUniMainModule.gravaformatemp(valor: Currency; parcela,
  codigo: integer);
var
 xvlrparc,xtotparcs : Currency;
 i : integer;
begin
  xvlrparc := 0;
  xtotparcs := 0;
  xvlrparc := valor / parcela;
 // xvlrparc := RoundTo(xvlrparc,2);
  with UniServerModule.qformapgto do
  begin
    close;
    sql.Clear;
    sql.Add('select * from forma_pagamento');
    sql.Add('where codigo = :c');
    ParamByName('c').Value := codigo;
    open;
  end;
  for i := 1 to parcela do
  begin
    if not qparcs.Active then
    begin
      qparcs.close;
      qparcs.Open;
    end;
    //qparcs.EmptyDataSet;
    qparcs.Insert;
    qparcsData.Value := date;
    qparcsVencimento.Value := date+ (UniServerModule.qformapgtoDIAS.AsInteger*i);
    qparcsTipo.Value := UniServerModule.qformapgtoTIPO.Value;
    {if i = parcela then
    begin
      qparcsValor.Value := qmonvendaTOTAL_VENDA.Value - xtotparcs;
    end else}
    begin
      qparcsValor.Value := xvlrparc;
      xtotparcs := xtotparcs + xvlrparc;
    end;
    qparcsParcela.Value := i;
    qparcscodformapgto.Value := codigo;
    qparcs.Post;
  end;

end;

function TUniMainModule.insereprodvenda(mobile:string): Boolean;
var
  xinsert : Boolean;
  xtot : Currency;
begin
  xinsert := false;
  xtot := 0;
  if qprodutosNOME.AsAnsiString = '' then
  begin
    xinsert := false;
  end else
  begin
    if qprodvenda.Active = false then
      qprodvenda.Open;
    qprodvenda.Insert;
    qprodvendaCodigo.Value := qprodutosCODIGO.Value;
    qprodvendaNome.AsAnsiString := qprodutosNOME.AsAnsiString;
    qprodvendaVenda.Value := qprodutosVENDA.AsCurrency;
    if mobile = 'S' then
      qprodvendaQuantidade.Value := StrToFloat(fconsprodvenda.edtqtd.Text)
    else
      qprodvendaQuantidade.Value := StrToFloat(fconsproduto_venda.edtqtd.Text);
    qprodvendaTotal.Value := qprodvendaVenda.Value * qprodvendaQuantidade.Value;
    qprodvenda.Post;
    totalizaitens(mobile);
    xinserindo := false;
    Result := true;
  end;

end;



procedure TUniMainModule.limpaparcs;
begin
  if  not qparcs.IsEmpty then
  begin
    qparcs.EmptyDataSet;
    if xehmobile = 'S' then
      fmobfechavenda.edttotparcs.Text := fmobfechavenda.edtrestante.Text
    else
      ffechavenda.edttotparcs.Text := ffechavenda.edtrestante.Text;
    qprodvenda2.Refresh;
  end;
end;

procedure TUniMainModule.logausuario(xsenha : integer);
begin
  with qusuario do
  begin
    close;
    sql.Clear;
    sql.Add('select * from vendedor');
    sql.Add('where codigo = :c');
    ParamByName('c').Value := (xsenha);
    open;
  end;
end;

procedure TUniMainModule.qparcsAfterPost(DataSet: TDataSet);
var
  xtot1,xvlr : currency;
begin
  xtot1 := 0;
  xvlr := 0;
  xvlr := xtot; //StrToCurr(fmobfechavenda.edtrestante.Text);
  with UniMainModule do
  begin
    qparcs.First;
    while not qparcs.Eof do
    begin
      xtot1 := xtot1 + qparcsValor.Value;
      qparcs.Next;
    end;
    if xehmobile = 'S' then
      fmobfechavenda.edttotparcs.Text := formatfloat('###,###,##0.00', xvlr - xtot1)
    else
    begin
      ffechavenda.edttotparcs.Text := formatfloat('###,###,##0.00', xvlr - xtot1);
    //  xehmobile := 'S';
    end;
    xrestante := xvlr - xtot1;
    //xtot := xvlr - xtot1;
  end;
end;

procedure TUniMainModule.qprodvenda2AfterPost(DataSet: TDataSet);
begin
//  totalizaitens('');
end;

procedure TUniMainModule.qprodvenda2CalcFields(DataSet: TDataSet);
begin
  qprodvendaTotal.Value := qprodvendaVenda.Value * qprodvendaQuantidade.Value;
end;

procedure TUniMainModule.qprodvendaCalcFields(DataSet: TDataSet);
begin
  qprodvendaTotal.Value := qprodvendaVenda.Value * qprodvendaQuantidade.Value;
end;

function TUniMainModule.salvacliente :Boolean;
var
 xsalvo : Boolean;
begin
  xsalvo := false;
  {if UniServerModule.qcidadesCODIGO.AsAnsiString = '' then
  begin
    Result := false;
    abort;
  end;}
  xsalvo := UniServerModule.salvacliente(fmobcadcliente.edtnome.Text,fmobcadcliente.edtcpf.Text,
    fmobcadcliente.edtrg.Text,fmobcadcliente.edtendereco.Text,fmobcadcliente.edtbairro.Text,
    qcidadesCODIGO.Value,fmobcadcliente.edtcep.Text,fmobcadcliente.edttelefone.Text,
    fmobcadcliente.edtdatanascimento.Text);
  Result := xsalvo;
end;

function TUniMainModule.salvaclientenav: Boolean;
var
 xsalvo : Boolean;
begin
  xsalvo := false;
  {if UniServerModule.qcidadesCODIGO.AsAnsiString = '' then
  begin
    Result := false;
    abort;
  end;}
  //Main.MainForm.edtnome.Text;
  xsalvo := UniServerModule.salvacliente(Main.MainForm.edtnome.Text,Main.MainForm.edtcpf.Text,
    Main.MainForm.edtrg.Text,Main.MainForm.edtendereco.Text,Main.MainForm.edtbairro.Text,
    UniServerModule.qcidadesCODIGO.Value,Main.MainForm.edtcep.Text,Main.MainForm.edttelefone.Text,
    Main.MainForm.edtdatanascimento.Text);
  Result := xsalvo;
end;

procedure TUniMainModule.totalizaitens(mobile : string);

 //xtot : Currency;
begin
  xtot := 0;
  if qprodvenda.Active then
  begin
    if qprodvenda.RecordCount > 0 then
    begin
      qprodvenda.First;
      while not qprodvenda.Eof do
      begin
        xtot := xtot+qprodvendaTotal.Value;
        qprodvenda.Next;
      end;
      if mobile = 'S' then
        fmobvenda.edttotalvenda.Caption := formatfloat('###,###,##0.00', xtot);
      if mobile = 'N' then
        Main.MainForm.labtotal.Caption := formatfloat('###,###,##0.00', xtot);
    end else
    begin
      xtot := 0;
      if mobile = 'S' then
        fmobvenda.edttotalvenda.Caption := formatfloat('###,###,##0.00', xtot);
      if mobile = 'N' then
        Main.MainForm.labtotal.Caption := formatfloat('###,###,##0.00', xtot);
    end;
  end;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);

begin
  qusuario.Close;
  qusuario.Open();
  qempresa.Close;
  qempresa.Open();
  if UniServerModule.qmonvenda.Active then
    UniServerModule.qmonvenda.Close;
  if UniServerModule.qmonitens.Active then
    UniServerModule.qmonitens.Close;
  if UniServerModule.qmonformas.Active then
    UniServerModule.qmonformas.Close;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
