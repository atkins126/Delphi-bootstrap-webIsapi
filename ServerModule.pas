unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Windows, Messages, Variants, Graphics,inifiles, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.ConsoleUI.Wait, FireDAC.FMXUI.Wait;

type
  TUniServerModule = class(TUniGUIServerModule)
    FDConnection1: TFDConnection;
    qprodutos: TFDQuery;
    qclientes: TFDQuery;
    qclientesCODIGO: TIntegerField;
    qclientesNOME: TStringField;
    qclientesCPF: TStringField;
    qclientesRG: TStringField;
    qclientesCIDADE: TStringField;
    qcidades: TFDQuery;
    qcidadesCODIGO: TIntegerField;
    qcidadesNOME: TStringField;
    qcidadesUF: TStringField;
    qcidadesCODMUN_IBGE: TStringField;
    qcidadesCOD_PAIS: TIntegerField;
    qpegaseq: TFDQuery;
    qclientesENDERECO: TStringField;
    qclientesBAIRRO: TStringField;
    qclientesCOD_CIDADE: TIntegerField;
    qmonitens: TFDQuery;
    qmonvenda: TFDQuery;
    qmonformas: TFDQuery;
    qformapgto: TFDQuery;
    qprodvenda: TFDMemTable;
    qprodvendaCodigo: TIntegerField;
    qprodvendaNome: TStringField;
    qprodvendaVenda: TCurrencyField;
    qprodvendaQuantidade: TFloatField;
    qprodvendaTotal: TCurrencyField;
    qparcs: TFDMemTable;
    qparcsData: TDateField;
    qparcsVencimento: TDateField;
    qparcsValor: TFloatField;
    qparcsParcela: TFloatField;
    qparcscodformapgto: TIntegerField;
    qparcsTipo: TStringField;
    qtempmonvenda: TFDMemTable;
    qusuario: TFDQuery;
    qtempmonvendaCOD_CLIENTE: TIntegerField;
    qtempmonvendaCOD_ATENDENTE: TIntegerField;
    qtempmonvendaCLIENTE: TStringField;
    qaux: TFDQuery;
    qtempmonvendaDESCONTO: TCurrencyField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    qclientesCEP: TStringField;
    qclientesDATA_NASCTIT: TDateField;
    qclientesTELEFONE: TStringField;
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
    qmonitensCOD_SEQUENCIAL: TIntegerField;
    qmonitensCOD_FILIAL: TIntegerField;
    qmonitensSEQ_MONITOR_ITENS: TIntegerField;
    qmonitensCOD_PRODUTO: TIntegerField;
    qmonitensDESCRICAO: TStringField;
    qmonitensCLASSE: TStringField;
    qmonitensLABORATORIO: TStringField;
    qmonitensQTD: TFMTBCDField;
    qmonitensDESCONTO: TFMTBCDField;
    qmonitensVENDA: TFMTBCDField;
    qmonitensBLOQDESC: TStringField;
    qmonitensDESC_MAX: TFMTBCDField;
    qmonitensCOD_CLASSE: TIntegerField;
    qmonitensLIBERADO: TStringField;
    qmonitensCUSTOFINAL: TFMTBCDField;
    qmonitensCUSTOFABRICA: TFMTBCDField;
    qmonitensPERCLIBCONVENIO: TFMTBCDField;
    qmonitensXMLTIPO_RECEITUARIO: TStringField;
    qmonitensXMLNRONOTMEDICAMENTO: TStringField;
    qmonitensXMLDTPRECMED: TDateField;
    qmonitensXMLNOMEMEDICO: TStringField;
    qmonitensXMLNROREGPROF: TStringField;
    qmonitensXMLTIPOCONSELHO: TStringField;
    qmonitensXMLUFCONSELHO: TStringField;
    qmonitensXMLUSOMEDICAMENTO: TStringField;
    qmonitensXMLNOMECOMPRADOR: TStringField;
    qmonitensXMLTIPODOC: TStringField;
    qmonitensXMLNRODOC: TStringField;
    qmonitensXMLORGEXP: TStringField;
    qmonitensXMLUFDOC: TStringField;
    qmonitensXMLCODREGMED: TStringField;
    qmonitensXMLLOTE: TStringField;
    qmonitensXMLPSICOTROPICO: TStringField;
    qmonitensVENCLOTE: TDateField;
    qmonitensNROLOTE: TStringField;
    qmonitensVENCUSUOCONTINUO: TDateField;
    qmonitensQTDDIARIOUSUOCONTINUO: TFMTBCDField;
    qmonitensUSUOCONTINUO: TStringField;
    qmonitensOBSUSUOCONTINUO: TStringField;
    qmonitensDESC_NOVARTIS: TFMTBCDField;
    qmonitensAUTO_FARMPOP: TStringField;
    qmonitensFP_QTDAUTO: TFMTBCDField;
    qmonitensFP_VLRAUTO: TFMTBCDField;
    qmonitensFP_CODBARRAS: TStringField;
    qmonitensTOTAL_HIPERTENSAO: TFMTBCDField;
    qmonitensCFOP: TStringField;
    qmonitensINFADICIONAL: TStringField;
    qmonitensXMLQTD_PRESCRITA: TFMTBCDField;
    qmonitensCOD_ORC_ITENS: TIntegerField;
    qmonitensCOD_ORCAMENTO: TIntegerField;
    qmonitensPROMOCAO: TStringField;
    qmonitensPRD_PMC: TStringField;
    qmonitensPRD_PFINAL: TStringField;
    qmonitensPRD_PLOJA: TStringField;
    qmonitensPRD_PAQUISI: TStringField;
    qmonitensPRD_VREPASSE: TStringField;
    qmonitensPRD_MENPRC: TStringField;
    qmonitensPRD_MOT: TStringField;
    qmonitensPRD_CAT_COD: TStringField;
    qmonitensITE_VENDA4CASAS: TBCDField;
    qmonitensXMLIDADE: TIntegerField;
    qmonitensXMLSEXO: TStringField;
    qmonitensXMLUSOPROLONGADO: TStringField;
    qmonitensXMLCID: TStringField;
    qmonitensVDL_PMC: TStringField;
    qmonitensVDL_VENDATOTAL: TStringField;
    qmonitensVDL_CLIAVISTA: TStringField;
    qmonitensVDL_CLIAREC: TStringField;
    qmonitensVDL_SUBSIDIO: TStringField;
    qmonitensVDL_REEMBOLSO: TStringField;
    qmonitensVDL_DESCREPOSIC: TStringField;
    qmonitensVDL_COMISSAOVDLREPO: TStringField;
    qmonitensCOD_BARRA: TStringField;
    qmonitensCOD_TECNICO: TIntegerField;
    qmonitensNOME_TECNICO: TStringField;
    qmonitensCOD_OS_ITENS: TIntegerField;
    qmonitensCOD_OS: TIntegerField;
    qmonitensBAIXA_ESTOQUE: TStringField;
    qmonitensVALOR_HIPERTENSAO: TFMTBCDField;
    qmonvendaCOD_SEQUENCIAL: TIntegerField;
    qmonvendaCOD_FILIAL: TIntegerField;
    qmonvendaNRO_CUPOM: TIntegerField;
    qmonvendaCOD_CLIENTE: TIntegerField;
    qmonvendaDT_VENDA: TDateField;
    qmonvendaCOD_ATENDENTE: TIntegerField;
    qmonvendaCOD_CAIXA: TIntegerField;
    qmonvendaCLIENTE: TStringField;
    qmonvendaHORA: TStringField;
    qmonvendaUSUARIO_VENDEU: TStringField;
    qmonvendaUSUARIO_FECHOU: TStringField;
    qmonvendaUSUARIO_AUTORIZOU: TStringField;
    qmonvendaVALOR_AVISTA: TFMTBCDField;
    qmonvendaVALOR_CARTAO: TFMTBCDField;
    qmonvendaVALOR_APRAZO: TFMTBCDField;
    qmonvendaVALOR_CHEQUE: TFMTBCDField;
    qmonvendaPENDENTE: TStringField;
    qmonvendaCOD_FORMAPGTO: TIntegerField;
    qmonvendaTIPO_FECH: TStringField;
    qmonvendaFORMA_PGTO: TStringField;
    qmonvendaATENDENTE: TStringField;
    qmonvendaVENCIMENTO: TDateField;
    qmonvendaDESCONTO_FORMA: TFMTBCDField;
    qmonvendaVALOR_FORMA: TFMTBCDField;
    qmonvendaACRESC_FORMA: TFMTBCDField;
    qmonvendaTOTAL_VENDA: TFMTBCDField;
    qmonvendaCOD_CONVENIO: TIntegerField;
    qmonvendaCONS_END: TStringField;
    qmonvendaCONS_CIDADE: TStringField;
    qmonvendaCONS_UF: TStringField;
    qmonvendaCONS_BAIRRO: TStringField;
    qmonvendaCONS_CPF: TStringField;
    qmonvendaCONS_RG: TStringField;
    qmonvendaRETIRADO_POR: TStringField;
    qmonvendaVALORPG_CTROCO: TFMTBCDField;
    qmonvendaVALOR_CHEQUEPRE: TFMTBCDField;
    qmonvendaDESCONTO_FINAL: TFMTBCDField;
    qmonvendaCONS_FONE: TStringField;
    qmonvendaCONS_REFERENCIA: TStringField;
    qmonvendaDESC_COND: TFMTBCDField;
    qmonvendaACRESC_COND: TFMTBCDField;
    qmonvendaNUMFICHA: TIntegerField;
    qmonvendaNUMERO_OS: TIntegerField;
    qmonvendaDATA_INI_ENTREGA: TDateField;
    qmonvendaHORA_INI_ENTREGA: TStringField;
    qmonvendaDATA_FIM_ENTREGA: TDateField;
    qmonvendaHORA_FIM_ENTREGA: TStringField;
    qmonvendaTROCO_PARA: TFMTBCDField;
    qmonvendaCOD_ENTREGADOR: TIntegerField;
    qmonvendaCONS_NUMCASA: TStringField;
    qmonvendaCONS_MUNIBGE: TStringField;
    qmonvendaCFOP: TStringField;
    qmonvendaCOMPRA_VENDA: TStringField;
    qmonvendaOBSNATUREZA: TStringField;
    qmonvendaDISKENTREGA: TStringField;
    qmonvendaVENCUSUOCONTINUO: TDateField;
    qmonvendaQTDDIARIOUSUOCONTINUO: TFMTBCDField;
    qmonvendaUSUOCONTINUO: TStringField;
    qmonvendaOBSUSUOCONTINUO: TStringField;
    qmonvendaNSUADM: TStringField;
    qmonvendaNUMCARTAO: TStringField;
    qmonvendaOPERADORA: TStringField;
    qmonvendaCOMPROVANTE: TStringField;
    qmonvendaSEQ_PREVSAUDE: TIntegerField;
    qmonvendaAUT_PREVSAUDE: TStringField;
    qmonvendaAUTO_FARMPOP: TStringField;
    qmonvendaCONS_CEP: TStringField;
    qmonvendaTOTAL_HIPERTENSAO: TFMTBCDField;
    qmonvendaCODFORMAPGTO: TIntegerField;
    qmonvendaTIPOPGTO: TStringField;
    qmonvendaFP_SOLICITACAO: TIntegerField;
    qmonvendaVLR_FARM_POP: TFMTBCDField;
    qmonvendaCPF_VENDFP: TStringField;
    qmonvendaSENHA_VENDFP: TStringField;
    qmonvendaFP_COMPROV: TMemoField;
    qmonvendaVALOR_TROCA: TFMTBCDField;
    qmonvendaENVIA_NFE: TStringField;
    qmonvendaAUTO_EPHARMA: TStringField;
    qmonvendaSEQ_EPHARMA: TStringField;
    qmonvendaVALOR_PAGO_EPHARMA: TFMTBCDField;
    qmonvendaVALOR_PAGO_CLIENTE: TFMTBCDField;
    qmonvendaFP_CODSOLICITACAO: TIntegerField;
    qmonvendaNUM_TRANS_EPHARMA: TStringField;
    qmonvendaCOMPROVANTE_OLD: TStringField;
    qmonvendaVLR_ITEM_FARMPOP: TFMTBCDField;
    qmonvendaAUTO_VIDALINK: TStringField;
    qmonvendaSEQ_VIDALINK: TStringField;
    qmonvendaVALOR_PAGO_VIDALINK: TFMTBCDField;
    qmonvendaVALOR_ADIANTAMENTO: TFMTBCDField;
    qmonvendaENVIA_NFCE: TStringField;
    qmonvendaVALOR_HIPERTENSAO: TFMTBCDField;
    qmonvendaOBS_VENDA: TStringField;
    qmonvendaVENDA_EXTERNA: TStringField;
    qformapgtoCODIGO: TIntegerField;
    qformapgtoNOME: TStringField;
    qformapgtoTIPO: TStringField;
    qformapgtoPACELA: TFMTBCDField;
    qformapgtoDIAS: TFMTBCDField;
    qformapgtoDESCONTO: TFMTBCDField;
    qformapgtoACRESCIMO: TFMTBCDField;
    qformapgtoATIVA: TStringField;
    qformapgtoATIVA_DESCONTO: TIntegerField;
    qformapgtoTIPO_PGT: TStringField;
    qformapgtoFORMA_ECF: TStringField;
    qformapgtoUSAR_SENHA: TStringField;
    qformapgtoFARMACIA_POPULAR: TStringField;
    qformapgtoCODCLI_FARMPOP: TIntegerField;
    qformapgtoCOM_ENTRADA: TStringField;
    qformapgtoJUROS_ENTRADA: TStringField;
    qformapgtoPERC_ENTRADA: TFMTBCDField;
    qformapgtoNFE_ALIENACAO: TStringField;
    qformapgtoORDEM_CONSULTA: TIntegerField;
    qformapgtoALT_DIA_VENCIMENTO: TStringField;
    qformapgtoPRI_PARCELA: TIntegerField;
    qformapgtoPEDE_VALE: TStringField;
    qformapgtoUSA_PROMOCAO: TStringField;
    qformapgtoMAX_DESCONTO: TFMTBCDField;
    qformapgtoBLOQDESCMAX: TStringField;
    qformapgtoDEB_CRED: TStringField;
    qformapgtoMOSTRA_ENTRADA_NOTAS: TStringField;
    qtempmonvendaTOTAL_VENDA: TCurrencyField;
    qmonformasSEQ_MONITOR_FORMAS: TIntegerField;
    qmonformasCOD_SEQUENCIAL: TIntegerField;
    qmonformasCOD_FILIAL: TIntegerField;
    qmonformasDATA: TDateField;
    qmonformasAGENCIA: TStringField;
    qmonformasBANCO: TStringField;
    qmonformasCONTA: TStringField;
    qmonformasCIDADE: TStringField;
    qmonformasUF: TStringField;
    qmonformasVALOR: TFMTBCDField;
    qmonformasVENCIMENTO: TDateField;
    qmonformasNOMECLI: TStringField;
    qmonformasCODCLI: TIntegerField;
    qmonformasCODFILIAL: TIntegerField;
    qmonformasNROCHEQUE: TStringField;
    qmonformasTIPO: TStringField;
    qmonformasFORMA_ECF: TStringField;
    qmonformasNOME_FORMA: TStringField;
    qmonformasPARCELA: TIntegerField;
    qmonformasENTRADA: TStringField;
    qmonformasDESCRICAO_FORMA: TStringField;
    qmonformasTROCOCHEQUE: TFMTBCDField;
    qmonformasTAXA_CARTAO: TFMTBCDField;
    qmonformasNRO_CARTAO: TStringField;
    qmonformasNRO_AUTORIZACAO: TStringField;
    qmonformasCOD_CARTAO: TIntegerField;
    qmonformasCOD_BANCO: TIntegerField;
    qmonformasDEB_CRED: TStringField;
    qmonformasPBM: TStringField;
    qmonformasFARMAPOP: TStringField;
    procedure UniGUIServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
    procedure abreprodutos;
    procedure abrecidades;
    procedure changeprodutos(nomeproduto:string);
    procedure changecliente(nomecliente:string);
    procedure changecidade(cidade:string);
    function salvacliente(nome:string;cpf:string;rg:string;endereco:string;
    bairro:string;codcidade:integer;cep:string;telefone:string;datanasc:string) : Boolean;
    function pegasequencia(tabela, campo :string) : integer;
    procedure fechavenda;
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.abrecidades;
begin
  qcidades.Close;
  qcidades.Open();
end;

procedure TUniServerModule.abreprodutos;
begin
  qprodutos.Close;
  qprodutos.ParamByName('c').Value := qusuarioCODIGO.Value;
  qprodutos.Open();
end;

procedure TUniServerModule.changecidade(cidade: string);
begin
  with qcidades do
  begin
    close;
    sql.Clear;
    sql.Add('select * from cidades');
    sql.Add('where nome like :nm');
    ParamByName('nm').AsAnsiString := cidade+'%';
    open;
  end;
end;

procedure TUniServerModule.changecliente(nomecliente: string);
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

procedure TUniServerModule.changeprodutos(nomeproduto: string);
begin
  with qprodutos do
  begin
    close;
    sql.Clear;
    sql.Add('select a.codigo, a.nome||'' ''||a.apresentacao nome,a.codigo_barra,a.venda,');
    sql.Add('b.nome marca, c.nome und, d.estoque from produtos a');
    sql.Add('left outer join laboratorio b on(a.cod_laboratorio = b.codigo)');
    sql.Add('left outer join tipo c on(a.cod_tipo = c.codigo)');
    sql.Add('left outer join itens_estoque d on(a.codigo = d.cod_produto)');
    sql.Add('where a.nome||'' ''||a.apresentacao like :nome');
    sql.Add('and coalesce(a.situacao,''A'') = ''A'' ');
    sql.Add('and coalesce(d.cod_filial,1) = :c');
    ParamByName('c').Value := qusuarioCODIGO.Value;
    ParamByName('nome').AsAnsiString := '%'+nomeproduto+'%';
    open;
  end;
end;

procedure TUniServerModule.fechavenda;
begin
  if not qmonvenda.Active then
    qmonvenda.Open();
  qmonvenda.Insert;
  qmonvendaCOD_SEQUENCIAL.Value := pegasequencia('GNT_SEQ_MONITOR','GNT_SEQ_MONITOR');
  qmonvendaCOD_FILIAL.Value := 1;
  qmonvendaNRO_CUPOM.Value := 0;
  qmonvendaCOD_CLIENTE.Value := qtempmonvendacod_cliente.value;
  qmonvendaDT_VENDA.Value := date;
  qmonvendaCOD_ATENDENTE.Value := qtempmonvendaCOD_ATENDENTE.Value;
  qmonvendaHORA.Value := timetostr(time);
  qmonvendaCLIENTE.Value := qtempmonvendaCLIENTE.Value;
  qmonvendaUSUARIO_VENDEU.Value := qusuarioNOME.Value;
  qmonvendaATENDENTE.AsAnsiString := qusuarioNOME.AsAnsiString;
  qmonvendaPENDENTE.Value := 'S';
  qmonvendaTIPO_FECH.Value := 'O';
  qmonvendaDESCONTO_FINAL.Value := qtempmonvendaDESCONTO.Value;
  qmonvendaTOTAL_VENDA.Value := qtempmonvendaTOTAL_VENDA.Value - qtempmonvendaDESCONTO.Value;
  qmonvendaENVIA_NFCE.Value := 'N';
  qparcs.First;
  while not qparcs.Eof do
  begin
    if (qparcsTipo.Value = 'A CARTAO') or (qparcsTipo.Value = 'CARTAO DEBITO') or (qparcsTipo.Value = 'CARTAO CREDITO') then
    begin
      qmonvendaVALOR_CARTAO.Value := qmonvendaVALOR_CARTAO.Value + qparcsValor.Value;
    end;
    if qparcsTipo.Value = 'A PRAZO' then
    begin
      qmonvendaVALOR_APRAZO.Value := qmonvendaVALOR_APRAZO.Value + qparcsValor.Value;
    end;
    if qparcsTipo.Value = 'DINHEIRO' then
    begin
      qmonvendaVALOR_AVISTA.Value := qmonvendaVALOR_AVISTA.Value + qparcsValor.Value;
    end;
    qparcs.Next;
  end;
  qmonvenda.Post;
  if not qmonformas.Active then
    qmonformas.Open();
  qparcs.First;
  while not qparcs.Eof do
  begin
    qmonformas.Insert;
    qmonformasSEQ_MONITOR_FORMAS.Value := pegasequencia('GNT_MONITOR_FORMAS','GNT_MONITOR_FORMAS');
    qmonformasCOD_SEQUENCIAL.Value := qmonvendaCOD_SEQUENCIAL.Value;
    qmonformasCOD_FILIAL.Value := 1;
    qmonformasDATA.Value := date;
    qmonformasVALOR.Value := qparcsValor.Value;
    qmonformasVENCIMENTO.Value := qparcsVencimento.Value;
    qmonformasNOMECLI.Value := qmonvendaCLIENTE.Value;
    qmonformasCODFILIAL.Value := 1;
    qmonformasTIPO.Value := qparcsTipo.Value;
    with qaux do
    begin
      close;
      sql.Clear;
      sql.Add('select nome,deb_cred from forma_pagamento');
      sql.Add('where codigo = :c');
      ParamByName('c').Value := qparcscodformapgto.Value;
      open;
    end;
    qmonformasNOME_FORMA.Value := qaux.FieldByName('nome').AsAnsiString;
    qmonformasPARCELA.Value := qparcsParcela.AsInteger;
    qmonformasDEB_CRED.Value := qaux.FieldByName('deb_cred').AsAnsiString;
    qmonformas.Post;
    qparcs.Next;
  end;
  qprodvenda.First;
  while not qprodvenda.Eof do
  begin
    if not qmonitens.Active then
      qmonitens.Open();
    qmonitens.Insert;
    qmonitensCOD_SEQUENCIAL.Value :=  qmonvendaCOD_SEQUENCIAL.Value;
    qmonitensCOD_FILIAL.Value := 1;
    qmonitensSEQ_MONITOR_ITENS.Value := pegasequencia('GNT_MONITOR_ITENS','GNT_MONITOR_ITENS');
    qmonitensCOD_PRODUTO.Value := qprodvendaCodigo.Value;
    qmonitensDESCRICAO.Value := qprodvendaNome.Value;
    qmonitensQTD.Value := qprodvendaQuantidade.Value;
    qmonitensVENDA.Value := qprodvendaVenda.Value;
    qmonitens.Post;
    qprodvenda.Next;
  end;
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;



function TUniServerModule.pegasequencia(tabela, campo: string): integer;
begin
  result := 0;
  with qpegaseq do
  begin
    close;
    sql.Clear;
//    select gen_id(nome_generator,1) from rdb$database
    sql.Add('select gen_id('+campo+',1) as cod from rdb$database');
    open;
  end;
  Result := qpegaseq.FieldByName('cod').Value;
end;

function TUniServerModule.salvacliente(nome, cpf, rg, endereco, bairro: string;
  codcidade: integer;cep:string;telefone:string;datanasc:string): Boolean;
begin
  try
    qclientes.close;
    qclientes.Open();
    qclientes.Insert;
    qclientesCODIGO.Value := pegasequencia('GNT_CLIENTES','GNT_CLIENTES');
    qclientesNOME.AsAnsiString := nome;
    qclientesCPF.Value := cpf;
    qclientesRG.Value := rg;
    qclientesENDERECO.Value := endereco;
    qclientesBAIRRO.Value := bairro;
    qclientesCOD_CIDADE.Value := codcidade;
    qclientesCEP.AsAnsiString := cep;
    qclientesTELEFONE.AsAnsiString := telefone;
    qclientesDATA_NASCTIT.AsAnsiString := datanasc;
    qclientes.Post;
    Result := true;
  Except on e: Exception do
    begin
      Result := false;
    end;
  end;
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
var
  IniFile: TIniFile;
  sServer: String;
begin
//  FDConnection1.Open();
end;
initialization
  RegisterServerModuleClass(TUniServerModule);
end.
