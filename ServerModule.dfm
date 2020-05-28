object UniServerModule: TUniServerModule
  OldCreateOrder = False
  OnCreate = UniGUIServerModuleCreate
  TempFolder = 'temp\'
  ExtRoot = 'c:\ext-6.7.0\'
  UniRoot = 'c:\uni-1.90.0.1505\'
  Title = 'Advanced System'
  BGColor = clBlue
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomCSS.Strings = (
    
      'https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap' +
      '.min.css'
    
      'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popp' +
      'er.min.js'
    
      'https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.' +
      'min.js')
  CustomMeta.Strings = (
    
      '<meta name="viewport" content="width=device-width, initial-scale' +
      '=1, shrink-to-fit=no">')
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Reconectando...'
  UniMobileRoot = 'c:\unim-1.90.0.1505\'
  Height = 273
  Width = 593
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\dados\clara.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Port=3050'
      'Server=127.0.0.1'
      'DriverID=IB')
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object qprodutos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.codigo, a.nome||'#39' '#39'||coalesce(a.apresentacao,'#39#39') nome,a' +
        '.codigo_barra,a.venda,'
      '    b.nome marca, c.nome und, d.estoque from produtos a'
      
        '    left outer join laboratorio b on(a.cod_laboratorio = b.codig' +
        'o)'
      '    left outer join tipo c on(a.cod_tipo = c.codigo)'
      '    left outer join itens_estoque d on(a.codigo = d.cod_produto)'
      '    where coalesce(a.situacao,'#39'A'#39') = '#39'A'#39
      '   /* and coalesce(d.cod_filial,1) = :c*/'
      '    order by a.codigo')
    Left = 192
    Top = 24
    object qprodutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qprodutosNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInKey]
      ReadOnly = True
      Size = 131
    end
    object qprodutosCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Origin = 'CODIGO_BARRA'
      Size = 25
    end
    object qprodutosVENDA: TFMTBCDField
      FieldName = 'VENDA'
      Origin = 'VENDA'
      Precision = 18
      Size = 2
    end
    object qprodutosMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MARCA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qprodutosUND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qprodutosESTOQUE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 6
    end
  end
  object qclientes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.codigo, a.nome, a.cpf, a.rg,a.endereco,a.bairro,a.cod_c' +
        'idade,'
      'a.cep,a.data_nasctit,a.telefone, b.nome cidade'
      'from clientes a'
      'left outer join cidades b on(a.cod_cidade=b.codigo) ')
    Left = 120
    Top = 24
    object qclientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qclientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object qclientesCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 25
    end
    object qclientesRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 25
    end
    object qclientesCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qclientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qclientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qclientesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object qclientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 11
    end
    object qclientesDATA_NASCTIT: TDateField
      FieldName = 'DATA_NASCTIT'
      Origin = 'DATA_NASCTIT'
    end
    object qclientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 100
    end
  end
  object qcidades: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cidades')
    Left = 120
    Top = 88
    object qcidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qcidadesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object qcidadesUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qcidadesCODMUN_IBGE: TStringField
      FieldName = 'CODMUN_IBGE'
      Origin = 'CODMUN_IBGE'
      Size = 7
    end
    object qcidadesCOD_PAIS: TIntegerField
      FieldName = 'COD_PAIS'
      Origin = 'COD_PAIS'
    end
  end
  object qpegaseq: TFDQuery
    Connection = FDConnection1
    Left = 48
    Top = 88
  end
  object qmonitens: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from monitor_itens')
    Left = 40
    Top = 160
    object qmonitensCOD_SEQUENCIAL: TIntegerField
      FieldName = 'COD_SEQUENCIAL'
      Origin = 'COD_SEQUENCIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qmonitensCOD_FILIAL: TIntegerField
      FieldName = 'COD_FILIAL'
      Origin = 'COD_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qmonitensSEQ_MONITOR_ITENS: TIntegerField
      FieldName = 'SEQ_MONITOR_ITENS'
      Origin = 'SEQ_MONITOR_ITENS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qmonitensCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
    end
    object qmonitensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object qmonitensCLASSE: TStringField
      FieldName = 'CLASSE'
      Origin = 'CLASSE'
      Size = 3
    end
    object qmonitensLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
    end
    object qmonitensQTD: TFMTBCDField
      FieldName = 'QTD'
      Origin = 'QTD'
      Precision = 18
      Size = 2
    end
    object qmonitensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qmonitensVENDA: TFMTBCDField
      FieldName = 'VENDA'
      Origin = 'VENDA'
      Precision = 18
      Size = 2
    end
    object qmonitensBLOQDESC: TStringField
      FieldName = 'BLOQDESC'
      Origin = 'BLOQDESC'
      Size = 1
    end
    object qmonitensDESC_MAX: TFMTBCDField
      FieldName = 'DESC_MAX'
      Origin = 'DESC_MAX'
      Precision = 18
      Size = 2
    end
    object qmonitensCOD_CLASSE: TIntegerField
      FieldName = 'COD_CLASSE'
      Origin = 'COD_CLASSE'
    end
    object qmonitensLIBERADO: TStringField
      FieldName = 'LIBERADO'
      Origin = 'LIBERADO'
      Size = 1
    end
    object qmonitensCUSTOFINAL: TFMTBCDField
      FieldName = 'CUSTOFINAL'
      Origin = 'CUSTOFINAL'
      Precision = 18
      Size = 2
    end
    object qmonitensCUSTOFABRICA: TFMTBCDField
      FieldName = 'CUSTOFABRICA'
      Origin = 'CUSTOFABRICA'
      Precision = 18
      Size = 2
    end
    object qmonitensPERCLIBCONVENIO: TFMTBCDField
      FieldName = 'PERCLIBCONVENIO'
      Origin = 'PERCLIBCONVENIO'
      Precision = 18
      Size = 2
    end
    object qmonitensXMLTIPO_RECEITUARIO: TStringField
      FieldName = 'XMLTIPO_RECEITUARIO'
      Origin = 'XMLTIPO_RECEITUARIO'
      Size = 1
    end
    object qmonitensXMLNRONOTMEDICAMENTO: TStringField
      FieldName = 'XMLNRONOTMEDICAMENTO'
      Origin = 'XMLNRONOTMEDICAMENTO'
      Size = 10
    end
    object qmonitensXMLDTPRECMED: TDateField
      FieldName = 'XMLDTPRECMED'
      Origin = 'XMLDTPRECMED'
    end
    object qmonitensXMLNOMEMEDICO: TStringField
      FieldName = 'XMLNOMEMEDICO'
      Origin = 'XMLNOMEMEDICO'
      Size = 100
    end
    object qmonitensXMLNROREGPROF: TStringField
      FieldName = 'XMLNROREGPROF'
      Origin = 'XMLNROREGPROF'
      Size = 30
    end
    object qmonitensXMLTIPOCONSELHO: TStringField
      FieldName = 'XMLTIPOCONSELHO'
      Origin = 'XMLTIPOCONSELHO'
      Size = 10
    end
    object qmonitensXMLUFCONSELHO: TStringField
      FieldName = 'XMLUFCONSELHO'
      Origin = 'XMLUFCONSELHO'
      Size = 2
    end
    object qmonitensXMLUSOMEDICAMENTO: TStringField
      FieldName = 'XMLUSOMEDICAMENTO'
      Origin = 'XMLUSOMEDICAMENTO'
      Size = 1
    end
    object qmonitensXMLNOMECOMPRADOR: TStringField
      FieldName = 'XMLNOMECOMPRADOR'
      Origin = 'XMLNOMECOMPRADOR'
      Size = 100
    end
    object qmonitensXMLTIPODOC: TStringField
      FieldName = 'XMLTIPODOC'
      Origin = 'XMLTIPODOC'
      Size = 10
    end
    object qmonitensXMLNRODOC: TStringField
      FieldName = 'XMLNRODOC'
      Origin = 'XMLNRODOC'
      Size = 30
    end
    object qmonitensXMLORGEXP: TStringField
      FieldName = 'XMLORGEXP'
      Origin = 'XMLORGEXP'
      Size = 10
    end
    object qmonitensXMLUFDOC: TStringField
      FieldName = 'XMLUFDOC'
      Origin = 'XMLUFDOC'
      Size = 2
    end
    object qmonitensXMLCODREGMED: TStringField
      FieldName = 'XMLCODREGMED'
      Origin = 'XMLCODREGMED'
      Size = 30
    end
    object qmonitensXMLLOTE: TStringField
      FieldName = 'XMLLOTE'
      Origin = 'XMLLOTE'
    end
    object qmonitensXMLPSICOTROPICO: TStringField
      FieldName = 'XMLPSICOTROPICO'
      Origin = 'XMLPSICOTROPICO'
      Size = 1
    end
    object qmonitensVENCLOTE: TDateField
      FieldName = 'VENCLOTE'
      Origin = 'VENCLOTE'
    end
    object qmonitensNROLOTE: TStringField
      FieldName = 'NROLOTE'
      Origin = 'NROLOTE'
      Size = 50
    end
    object qmonitensVENCUSUOCONTINUO: TDateField
      FieldName = 'VENCUSUOCONTINUO'
      Origin = 'VENCUSUOCONTINUO'
    end
    object qmonitensQTDDIARIOUSUOCONTINUO: TFMTBCDField
      FieldName = 'QTDDIARIOUSUOCONTINUO'
      Origin = 'QTDDIARIOUSUOCONTINUO'
      Precision = 18
      Size = 2
    end
    object qmonitensUSUOCONTINUO: TStringField
      FieldName = 'USUOCONTINUO'
      Origin = 'USUOCONTINUO'
      Size = 1
    end
    object qmonitensOBSUSUOCONTINUO: TStringField
      FieldName = 'OBSUSUOCONTINUO'
      Origin = 'OBSUSUOCONTINUO'
      Size = 100
    end
    object qmonitensDESC_NOVARTIS: TFMTBCDField
      FieldName = 'DESC_NOVARTIS'
      Origin = 'DESC_NOVARTIS'
      Precision = 18
      Size = 2
    end
    object qmonitensAUTO_FARMPOP: TStringField
      FieldName = 'AUTO_FARMPOP'
      Origin = 'AUTO_FARMPOP'
      Size = 50
    end
    object qmonitensFP_QTDAUTO: TFMTBCDField
      FieldName = 'FP_QTDAUTO'
      Origin = 'FP_QTDAUTO'
      Precision = 18
      Size = 3
    end
    object qmonitensFP_VLRAUTO: TFMTBCDField
      FieldName = 'FP_VLRAUTO'
      Origin = 'FP_VLRAUTO'
      Precision = 18
      Size = 2
    end
    object qmonitensFP_CODBARRAS: TStringField
      FieldName = 'FP_CODBARRAS'
      Origin = 'FP_CODBARRAS'
    end
    object qmonitensTOTAL_HIPERTENSAO: TFMTBCDField
      FieldName = 'TOTAL_HIPERTENSAO'
      Origin = 'TOTAL_HIPERTENSAO'
      Precision = 18
      Size = 2
    end
    object qmonitensCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object qmonitensINFADICIONAL: TStringField
      FieldName = 'INFADICIONAL'
      Origin = 'INFADICIONAL'
      Size = 150
    end
    object qmonitensXMLQTD_PRESCRITA: TFMTBCDField
      FieldName = 'XMLQTD_PRESCRITA'
      Origin = 'XMLQTD_PRESCRITA'
      Precision = 18
      Size = 3
    end
    object qmonitensCOD_ORC_ITENS: TIntegerField
      FieldName = 'COD_ORC_ITENS'
      Origin = 'COD_ORC_ITENS'
    end
    object qmonitensCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
      Origin = 'COD_ORCAMENTO'
    end
    object qmonitensPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Origin = 'PROMOCAO'
      Size = 1
    end
    object qmonitensPRD_PMC: TStringField
      FieldName = 'PRD_PMC'
      Origin = 'PRD_PMC'
      Size = 7
    end
    object qmonitensPRD_PFINAL: TStringField
      FieldName = 'PRD_PFINAL'
      Origin = 'PRD_PFINAL'
      Size = 7
    end
    object qmonitensPRD_PLOJA: TStringField
      FieldName = 'PRD_PLOJA'
      Origin = 'PRD_PLOJA'
      Size = 7
    end
    object qmonitensPRD_PAQUISI: TStringField
      FieldName = 'PRD_PAQUISI'
      Origin = 'PRD_PAQUISI'
      Size = 7
    end
    object qmonitensPRD_VREPASSE: TStringField
      FieldName = 'PRD_VREPASSE'
      Origin = 'PRD_VREPASSE'
      Size = 7
    end
    object qmonitensPRD_MENPRC: TStringField
      FieldName = 'PRD_MENPRC'
      Origin = 'PRD_MENPRC'
      Size = 1
    end
    object qmonitensPRD_MOT: TStringField
      FieldName = 'PRD_MOT'
      Origin = 'PRD_MOT'
      Size = 2
    end
    object qmonitensPRD_CAT_COD: TStringField
      FieldName = 'PRD_CAT_COD'
      Origin = 'PRD_CAT_COD'
      Size = 8
    end
    object qmonitensITE_VENDA4CASAS: TBCDField
      FieldName = 'ITE_VENDA4CASAS'
      Origin = 'ITE_VENDA4CASAS'
      Precision = 18
    end
    object qmonitensXMLIDADE: TIntegerField
      FieldName = 'XMLIDADE'
      Origin = 'XMLIDADE'
    end
    object qmonitensXMLSEXO: TStringField
      FieldName = 'XMLSEXO'
      Origin = 'XMLSEXO'
      Size = 1
    end
    object qmonitensXMLUSOPROLONGADO: TStringField
      FieldName = 'XMLUSOPROLONGADO'
      Origin = 'XMLUSOPROLONGADO'
      Size = 1
    end
    object qmonitensXMLCID: TStringField
      FieldName = 'XMLCID'
      Origin = 'XMLCID'
    end
    object qmonitensVDL_PMC: TStringField
      FieldName = 'VDL_PMC'
      Origin = 'VDL_PMC'
      Size = 7
    end
    object qmonitensVDL_VENDATOTAL: TStringField
      FieldName = 'VDL_VENDATOTAL'
      Origin = 'VDL_VENDATOTAL'
      Size = 7
    end
    object qmonitensVDL_CLIAVISTA: TStringField
      FieldName = 'VDL_CLIAVISTA'
      Origin = 'VDL_CLIAVISTA'
      Size = 7
    end
    object qmonitensVDL_CLIAREC: TStringField
      FieldName = 'VDL_CLIAREC'
      Origin = 'VDL_CLIAREC'
      Size = 7
    end
    object qmonitensVDL_SUBSIDIO: TStringField
      FieldName = 'VDL_SUBSIDIO'
      Origin = 'VDL_SUBSIDIO'
      Size = 7
    end
    object qmonitensVDL_REEMBOLSO: TStringField
      FieldName = 'VDL_REEMBOLSO'
      Origin = 'VDL_REEMBOLSO'
      Size = 7
    end
    object qmonitensVDL_DESCREPOSIC: TStringField
      FieldName = 'VDL_DESCREPOSIC'
      Origin = 'VDL_DESCREPOSIC'
      Size = 5
    end
    object qmonitensVDL_COMISSAOVDLREPO: TStringField
      FieldName = 'VDL_COMISSAOVDLREPO'
      Origin = 'VDL_COMISSAOVDLREPO'
      Size = 5
    end
    object qmonitensCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 100
    end
    object qmonitensCOD_TECNICO: TIntegerField
      FieldName = 'COD_TECNICO'
      Origin = 'COD_TECNICO'
    end
    object qmonitensNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      Origin = 'NOME_TECNICO'
      Size = 40
    end
    object qmonitensCOD_OS_ITENS: TIntegerField
      FieldName = 'COD_OS_ITENS'
      Origin = 'COD_OS_ITENS'
    end
    object qmonitensCOD_OS: TIntegerField
      FieldName = 'COD_OS'
      Origin = 'COD_OS'
    end
    object qmonitensBAIXA_ESTOQUE: TStringField
      FieldName = 'BAIXA_ESTOQUE'
      Origin = 'BAIXA_ESTOQUE'
      Size = 2
    end
    object qmonitensVALOR_HIPERTENSAO: TFMTBCDField
      FieldName = 'VALOR_HIPERTENSAO'
      Origin = 'VALOR_HIPERTENSAO'
      Precision = 18
      Size = 2
    end
  end
  object qmonvenda: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from monitor_venda')
    Left = 104
    Top = 160
    object qmonvendaCOD_SEQUENCIAL: TIntegerField
      FieldName = 'COD_SEQUENCIAL'
      Origin = 'COD_SEQUENCIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qmonvendaCOD_FILIAL: TIntegerField
      FieldName = 'COD_FILIAL'
      Origin = 'COD_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qmonvendaNRO_CUPOM: TIntegerField
      FieldName = 'NRO_CUPOM'
      Origin = 'NRO_CUPOM'
    end
    object qmonvendaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object qmonvendaDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
      Origin = 'DT_VENDA'
    end
    object qmonvendaCOD_ATENDENTE: TIntegerField
      FieldName = 'COD_ATENDENTE'
      Origin = 'COD_ATENDENTE'
    end
    object qmonvendaCOD_CAIXA: TIntegerField
      FieldName = 'COD_CAIXA'
      Origin = 'COD_CAIXA'
    end
    object qmonvendaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
    object qmonvendaHORA: TStringField
      FieldName = 'HORA'
      Origin = 'HORA'
      Size = 5
    end
    object qmonvendaUSUARIO_VENDEU: TStringField
      FieldName = 'USUARIO_VENDEU'
      Origin = 'USUARIO_VENDEU'
      Size = 50
    end
    object qmonvendaUSUARIO_FECHOU: TStringField
      FieldName = 'USUARIO_FECHOU'
      Origin = 'USUARIO_FECHOU'
      Size = 50
    end
    object qmonvendaUSUARIO_AUTORIZOU: TStringField
      FieldName = 'USUARIO_AUTORIZOU'
      Origin = 'USUARIO_AUTORIZOU'
      Size = 50
    end
    object qmonvendaVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Origin = 'VALOR_AVISTA'
      Precision = 18
      Size = 2
    end
    object qmonvendaVALOR_CARTAO: TFMTBCDField
      FieldName = 'VALOR_CARTAO'
      Origin = 'VALOR_CARTAO'
      Precision = 18
      Size = 2
    end
    object qmonvendaVALOR_APRAZO: TFMTBCDField
      FieldName = 'VALOR_APRAZO'
      Origin = 'VALOR_APRAZO'
      Precision = 18
      Size = 2
    end
    object qmonvendaVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Origin = 'VALOR_CHEQUE'
      Precision = 18
      Size = 2
    end
    object qmonvendaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'PENDENTE'
      Size = 1
    end
    object qmonvendaCOD_FORMAPGTO: TIntegerField
      FieldName = 'COD_FORMAPGTO'
      Origin = 'COD_FORMAPGTO'
    end
    object qmonvendaTIPO_FECH: TStringField
      FieldName = 'TIPO_FECH'
      Origin = 'TIPO_FECH'
      Size = 1
    end
    object qmonvendaFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      Origin = 'FORMA_PGTO'
      Size = 30
    end
    object qmonvendaATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Origin = 'ATENDENTE'
      Size = 50
    end
    object qmonvendaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object qmonvendaDESCONTO_FORMA: TFMTBCDField
      FieldName = 'DESCONTO_FORMA'
      Origin = 'DESCONTO_FORMA'
      Precision = 18
      Size = 2
    end
    object qmonvendaVALOR_FORMA: TFMTBCDField
      FieldName = 'VALOR_FORMA'
      Origin = 'VALOR_FORMA'
      Precision = 18
      Size = 2
    end
    object qmonvendaACRESC_FORMA: TFMTBCDField
      FieldName = 'ACRESC_FORMA'
      Origin = 'ACRESC_FORMA'
      Precision = 18
      Size = 2
    end
    object qmonvendaTOTAL_VENDA: TFMTBCDField
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      Precision = 18
      Size = 2
    end
    object qmonvendaCOD_CONVENIO: TIntegerField
      FieldName = 'COD_CONVENIO'
      Origin = 'COD_CONVENIO'
    end
    object qmonvendaCONS_END: TStringField
      FieldName = 'CONS_END'
      Origin = 'CONS_END'
      Size = 50
    end
    object qmonvendaCONS_CIDADE: TStringField
      FieldName = 'CONS_CIDADE'
      Origin = 'CONS_CIDADE'
      Size = 50
    end
    object qmonvendaCONS_UF: TStringField
      FieldName = 'CONS_UF'
      Origin = 'CONS_UF'
      Size = 2
    end
    object qmonvendaCONS_BAIRRO: TStringField
      FieldName = 'CONS_BAIRRO'
      Origin = 'CONS_BAIRRO'
      Size = 50
    end
    object qmonvendaCONS_CPF: TStringField
      FieldName = 'CONS_CPF'
      Origin = 'CONS_CPF'
    end
    object qmonvendaCONS_RG: TStringField
      FieldName = 'CONS_RG'
      Origin = 'CONS_RG'
      Size = 30
    end
    object qmonvendaRETIRADO_POR: TStringField
      FieldName = 'RETIRADO_POR'
      Origin = 'RETIRADO_POR'
      Size = 50
    end
    object qmonvendaVALORPG_CTROCO: TFMTBCDField
      FieldName = 'VALORPG_CTROCO'
      Origin = 'VALORPG_CTROCO'
      Precision = 18
      Size = 2
    end
    object qmonvendaVALOR_CHEQUEPRE: TFMTBCDField
      FieldName = 'VALOR_CHEQUEPRE'
      Origin = 'VALOR_CHEQUEPRE'
      Precision = 18
      Size = 2
    end
    object qmonvendaDESCONTO_FINAL: TFMTBCDField
      FieldName = 'DESCONTO_FINAL'
      Origin = 'DESCONTO_FINAL'
      Precision = 18
      Size = 2
    end
    object qmonvendaCONS_FONE: TStringField
      FieldName = 'CONS_FONE'
      Origin = 'CONS_FONE'
    end
    object qmonvendaCONS_REFERENCIA: TStringField
      FieldName = 'CONS_REFERENCIA'
      Origin = 'CONS_REFERENCIA'
      Size = 50
    end
    object qmonvendaDESC_COND: TFMTBCDField
      FieldName = 'DESC_COND'
      Origin = 'DESC_COND'
      Precision = 18
      Size = 2
    end
    object qmonvendaACRESC_COND: TFMTBCDField
      FieldName = 'ACRESC_COND'
      Origin = 'ACRESC_COND'
      Precision = 18
      Size = 2
    end
    object qmonvendaNUMFICHA: TIntegerField
      FieldName = 'NUMFICHA'
      Origin = 'NUMFICHA'
    end
    object qmonvendaNUMERO_OS: TIntegerField
      FieldName = 'NUMERO_OS'
      Origin = 'NUMERO_OS'
    end
    object qmonvendaDATA_INI_ENTREGA: TDateField
      FieldName = 'DATA_INI_ENTREGA'
      Origin = 'DATA_INI_ENTREGA'
    end
    object qmonvendaHORA_INI_ENTREGA: TStringField
      FieldName = 'HORA_INI_ENTREGA'
      Origin = 'HORA_INI_ENTREGA'
      Size = 8
    end
    object qmonvendaDATA_FIM_ENTREGA: TDateField
      FieldName = 'DATA_FIM_ENTREGA'
      Origin = 'DATA_FIM_ENTREGA'
    end
    object qmonvendaHORA_FIM_ENTREGA: TStringField
      FieldName = 'HORA_FIM_ENTREGA'
      Origin = 'HORA_FIM_ENTREGA'
      Size = 8
    end
    object qmonvendaTROCO_PARA: TFMTBCDField
      FieldName = 'TROCO_PARA'
      Origin = 'TROCO_PARA'
      Precision = 18
      Size = 2
    end
    object qmonvendaCOD_ENTREGADOR: TIntegerField
      FieldName = 'COD_ENTREGADOR'
      Origin = 'COD_ENTREGADOR'
    end
    object qmonvendaCONS_NUMCASA: TStringField
      FieldName = 'CONS_NUMCASA'
      Origin = 'CONS_NUMCASA'
      Size = 10
    end
    object qmonvendaCONS_MUNIBGE: TStringField
      FieldName = 'CONS_MUNIBGE'
      Origin = 'CONS_MUNIBGE'
      Size = 7
    end
    object qmonvendaCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 6
    end
    object qmonvendaCOMPRA_VENDA: TStringField
      FieldName = 'COMPRA_VENDA'
      Origin = 'COMPRA_VENDA'
      Size = 1
    end
    object qmonvendaOBSNATUREZA: TStringField
      FieldName = 'OBSNATUREZA'
      Origin = 'OBSNATUREZA'
      Size = 100
    end
    object qmonvendaDISKENTREGA: TStringField
      FieldName = 'DISKENTREGA'
      Origin = 'DISKENTREGA'
      Size = 1
    end
    object qmonvendaVENCUSUOCONTINUO: TDateField
      FieldName = 'VENCUSUOCONTINUO'
      Origin = 'VENCUSUOCONTINUO'
    end
    object qmonvendaQTDDIARIOUSUOCONTINUO: TFMTBCDField
      FieldName = 'QTDDIARIOUSUOCONTINUO'
      Origin = 'QTDDIARIOUSUOCONTINUO'
      Precision = 18
      Size = 2
    end
    object qmonvendaUSUOCONTINUO: TStringField
      FieldName = 'USUOCONTINUO'
      Origin = 'USUOCONTINUO'
      Size = 1
    end
    object qmonvendaOBSUSUOCONTINUO: TStringField
      FieldName = 'OBSUSUOCONTINUO'
      Origin = 'OBSUSUOCONTINUO'
      Size = 100
    end
    object qmonvendaNSUADM: TStringField
      FieldName = 'NSUADM'
      Origin = 'NSUADM'
    end
    object qmonvendaNUMCARTAO: TStringField
      FieldName = 'NUMCARTAO'
      Origin = 'NUMCARTAO'
    end
    object qmonvendaOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Origin = 'OPERADORA'
    end
    object qmonvendaCOMPROVANTE: TStringField
      FieldName = 'COMPROVANTE'
      Origin = 'COMPROVANTE'
      Size = 600
    end
    object qmonvendaSEQ_PREVSAUDE: TIntegerField
      FieldName = 'SEQ_PREVSAUDE'
      Origin = 'SEQ_PREVSAUDE'
    end
    object qmonvendaAUT_PREVSAUDE: TStringField
      FieldName = 'AUT_PREVSAUDE'
      Origin = 'AUT_PREVSAUDE'
      Size = 12
    end
    object qmonvendaAUTO_FARMPOP: TStringField
      FieldName = 'AUTO_FARMPOP'
      Origin = 'AUTO_FARMPOP'
      Size = 50
    end
    object qmonvendaCONS_CEP: TStringField
      FieldName = 'CONS_CEP'
      Origin = 'CONS_CEP'
      Size = 8
    end
    object qmonvendaTOTAL_HIPERTENSAO: TFMTBCDField
      FieldName = 'TOTAL_HIPERTENSAO'
      Origin = 'TOTAL_HIPERTENSAO'
      Precision = 18
      Size = 2
    end
    object qmonvendaCODFORMAPGTO: TIntegerField
      FieldName = 'CODFORMAPGTO'
      Origin = 'CODFORMAPGTO'
    end
    object qmonvendaTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Origin = 'TIPOPGTO'
      Size = 50
    end
    object qmonvendaFP_SOLICITACAO: TIntegerField
      FieldName = 'FP_SOLICITACAO'
      Origin = 'FP_SOLICITACAO'
    end
    object qmonvendaVLR_FARM_POP: TFMTBCDField
      FieldName = 'VLR_FARM_POP'
      Origin = 'VLR_FARM_POP'
      Precision = 18
      Size = 2
    end
    object qmonvendaCPF_VENDFP: TStringField
      FieldName = 'CPF_VENDFP'
      Origin = 'CPF_VENDFP'
      Size = 100
    end
    object qmonvendaSENHA_VENDFP: TStringField
      FieldName = 'SENHA_VENDFP'
      Origin = 'SENHA_VENDFP'
      Size = 100
    end
    object qmonvendaFP_COMPROV: TMemoField
      FieldName = 'FP_COMPROV'
      Origin = 'FP_COMPROV'
      BlobType = ftMemo
    end
    object qmonvendaVALOR_TROCA: TFMTBCDField
      FieldName = 'VALOR_TROCA'
      Origin = 'VALOR_TROCA'
      Precision = 18
      Size = 2
    end
    object qmonvendaENVIA_NFE: TStringField
      FieldName = 'ENVIA_NFE'
      Origin = 'ENVIA_NFE'
      Size = 1
    end
    object qmonvendaAUTO_EPHARMA: TStringField
      FieldName = 'AUTO_EPHARMA'
      Origin = 'AUTO_EPHARMA'
      Size = 12
    end
    object qmonvendaSEQ_EPHARMA: TStringField
      FieldName = 'SEQ_EPHARMA'
      Origin = 'SEQ_EPHARMA'
      Size = 4
    end
    object qmonvendaVALOR_PAGO_EPHARMA: TFMTBCDField
      FieldName = 'VALOR_PAGO_EPHARMA'
      Origin = 'VALOR_PAGO_EPHARMA'
      Precision = 18
      Size = 2
    end
    object qmonvendaVALOR_PAGO_CLIENTE: TFMTBCDField
      FieldName = 'VALOR_PAGO_CLIENTE'
      Origin = 'VALOR_PAGO_CLIENTE'
      Precision = 18
      Size = 2
    end
    object qmonvendaFP_CODSOLICITACAO: TIntegerField
      FieldName = 'FP_CODSOLICITACAO'
      Origin = 'FP_CODSOLICITACAO'
    end
    object qmonvendaNUM_TRANS_EPHARMA: TStringField
      FieldName = 'NUM_TRANS_EPHARMA'
      Origin = 'NUM_TRANS_EPHARMA'
      Size = 7
    end
    object qmonvendaCOMPROVANTE_OLD: TStringField
      FieldName = 'COMPROVANTE_OLD'
      Origin = 'COMPROVANTE_OLD'
      Size = 600
    end
    object qmonvendaVLR_ITEM_FARMPOP: TFMTBCDField
      FieldName = 'VLR_ITEM_FARMPOP'
      Origin = 'VLR_ITEM_FARMPOP'
      Precision = 18
      Size = 2
    end
    object qmonvendaAUTO_VIDALINK: TStringField
      FieldName = 'AUTO_VIDALINK'
      Origin = 'AUTO_VIDALINK'
      Size = 12
    end
    object qmonvendaSEQ_VIDALINK: TStringField
      FieldName = 'SEQ_VIDALINK'
      Origin = 'SEQ_VIDALINK'
      Size = 4
    end
    object qmonvendaVALOR_PAGO_VIDALINK: TFMTBCDField
      FieldName = 'VALOR_PAGO_VIDALINK'
      Origin = 'VALOR_PAGO_VIDALINK'
      Precision = 18
      Size = 2
    end
    object qmonvendaVALOR_ADIANTAMENTO: TFMTBCDField
      FieldName = 'VALOR_ADIANTAMENTO'
      Origin = 'VALOR_ADIANTAMENTO'
      Precision = 18
      Size = 2
    end
    object qmonvendaENVIA_NFCE: TStringField
      FieldName = 'ENVIA_NFCE'
      Origin = 'ENVIA_NFCE'
      Size = 2
    end
    object qmonvendaVALOR_HIPERTENSAO: TFMTBCDField
      FieldName = 'VALOR_HIPERTENSAO'
      Origin = 'VALOR_HIPERTENSAO'
      Precision = 18
      Size = 2
    end
    object qmonvendaOBS_VENDA: TStringField
      FieldName = 'OBS_VENDA'
      Origin = 'OBS_VENDA'
      Size = 900
    end
    object qmonvendaVENDA_EXTERNA: TStringField
      FieldName = 'VENDA_EXTERNA'
      Origin = 'VENDA_EXTERNA'
      Size = 2
    end
  end
  object qmonformas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from monitor_formas')
    Left = 176
    Top = 160
    object qmonformasSEQ_MONITOR_FORMAS: TIntegerField
      FieldName = 'SEQ_MONITOR_FORMAS'
      Origin = 'SEQ_MONITOR_FORMAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qmonformasCOD_SEQUENCIAL: TIntegerField
      FieldName = 'COD_SEQUENCIAL'
      Origin = 'COD_SEQUENCIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qmonformasCOD_FILIAL: TIntegerField
      FieldName = 'COD_FILIAL'
      Origin = 'COD_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qmonformasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qmonformasAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 50
    end
    object qmonformasBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 50
    end
    object qmonformasCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 50
    end
    object qmonformasCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object qmonformasUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qmonformasVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qmonformasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object qmonformasNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Origin = 'NOMECLI'
      Size = 50
    end
    object qmonformasCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
    end
    object qmonformasCODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
      Origin = 'CODFILIAL'
    end
    object qmonformasNROCHEQUE: TStringField
      FieldName = 'NROCHEQUE'
      Origin = 'NROCHEQUE'
      Size = 10
    end
    object qmonformasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object qmonformasFORMA_ECF: TStringField
      FieldName = 'FORMA_ECF'
      Origin = 'FORMA_ECF'
      Size = 30
    end
    object qmonformasNOME_FORMA: TStringField
      FieldName = 'NOME_FORMA'
      Origin = 'NOME_FORMA'
      Size = 50
    end
    object qmonformasPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object qmonformasENTRADA: TStringField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Size = 1
    end
    object qmonformasDESCRICAO_FORMA: TStringField
      FieldName = 'DESCRICAO_FORMA'
      Origin = 'DESCRICAO_FORMA'
      Size = 50
    end
    object qmonformasTROCOCHEQUE: TFMTBCDField
      FieldName = 'TROCOCHEQUE'
      Origin = 'TROCOCHEQUE'
      Precision = 18
      Size = 2
    end
    object qmonformasTAXA_CARTAO: TFMTBCDField
      FieldName = 'TAXA_CARTAO'
      Origin = 'TAXA_CARTAO'
      Precision = 18
      Size = 2
    end
    object qmonformasNRO_CARTAO: TStringField
      FieldName = 'NRO_CARTAO'
      Origin = 'NRO_CARTAO'
      Size = 30
    end
    object qmonformasNRO_AUTORIZACAO: TStringField
      FieldName = 'NRO_AUTORIZACAO'
      Origin = 'NRO_AUTORIZACAO'
      Size = 30
    end
    object qmonformasCOD_CARTAO: TIntegerField
      FieldName = 'COD_CARTAO'
      Origin = 'COD_CARTAO'
    end
    object qmonformasCOD_BANCO: TIntegerField
      FieldName = 'COD_BANCO'
      Origin = 'COD_BANCO'
    end
    object qmonformasDEB_CRED: TStringField
      FieldName = 'DEB_CRED'
      Origin = 'DEB_CRED'
      Size = 1
    end
    object qmonformasPBM: TStringField
      FieldName = 'PBM'
      Origin = 'PBM'
      Size = 1
    end
    object qmonformasFARMAPOP: TStringField
      FieldName = 'FARMAPOP'
      Origin = 'FARMAPOP'
      Size = 2
    end
  end
  object qformapgto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from forma_pagamento')
    Left = 192
    Top = 88
    object qformapgtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qformapgtoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object qformapgtoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 50
    end
    object qformapgtoPACELA: TFMTBCDField
      FieldName = 'PACELA'
      Origin = 'PACELA'
      Precision = 18
      Size = 2
    end
    object qformapgtoDIAS: TFMTBCDField
      FieldName = 'DIAS'
      Origin = 'DIAS'
      Precision = 18
      Size = 2
    end
    object qformapgtoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qformapgtoACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qformapgtoATIVA: TStringField
      FieldName = 'ATIVA'
      Origin = 'ATIVA'
      Size = 5
    end
    object qformapgtoATIVA_DESCONTO: TIntegerField
      FieldName = 'ATIVA_DESCONTO'
      Origin = 'ATIVA_DESCONTO'
    end
    object qformapgtoTIPO_PGT: TStringField
      FieldName = 'TIPO_PGT'
      Origin = 'TIPO_PGT'
      Size = 1
    end
    object qformapgtoFORMA_ECF: TStringField
      FieldName = 'FORMA_ECF'
      Origin = 'FORMA_ECF'
      Size = 30
    end
    object qformapgtoUSAR_SENHA: TStringField
      FieldName = 'USAR_SENHA'
      Origin = 'USAR_SENHA'
      Size = 1
    end
    object qformapgtoFARMACIA_POPULAR: TStringField
      FieldName = 'FARMACIA_POPULAR'
      Origin = 'FARMACIA_POPULAR'
      Size = 1
    end
    object qformapgtoCODCLI_FARMPOP: TIntegerField
      FieldName = 'CODCLI_FARMPOP'
      Origin = 'CODCLI_FARMPOP'
    end
    object qformapgtoCOM_ENTRADA: TStringField
      FieldName = 'COM_ENTRADA'
      Origin = 'COM_ENTRADA'
      Size = 1
    end
    object qformapgtoJUROS_ENTRADA: TStringField
      FieldName = 'JUROS_ENTRADA'
      Origin = 'JUROS_ENTRADA'
      Size = 1
    end
    object qformapgtoPERC_ENTRADA: TFMTBCDField
      FieldName = 'PERC_ENTRADA'
      Origin = 'PERC_ENTRADA'
      Precision = 18
      Size = 2
    end
    object qformapgtoNFE_ALIENACAO: TStringField
      FieldName = 'NFE_ALIENACAO'
      Origin = 'NFE_ALIENACAO'
      Size = 150
    end
    object qformapgtoORDEM_CONSULTA: TIntegerField
      FieldName = 'ORDEM_CONSULTA'
      Origin = 'ORDEM_CONSULTA'
    end
    object qformapgtoALT_DIA_VENCIMENTO: TStringField
      FieldName = 'ALT_DIA_VENCIMENTO'
      Origin = 'ALT_DIA_VENCIMENTO'
      Size = 1
    end
    object qformapgtoPRI_PARCELA: TIntegerField
      FieldName = 'PRI_PARCELA'
      Origin = 'PRI_PARCELA'
    end
    object qformapgtoPEDE_VALE: TStringField
      FieldName = 'PEDE_VALE'
      Origin = 'PEDE_VALE'
      Size = 1
    end
    object qformapgtoUSA_PROMOCAO: TStringField
      FieldName = 'USA_PROMOCAO'
      Origin = 'USA_PROMOCAO'
      Size = 1
    end
    object qformapgtoMAX_DESCONTO: TFMTBCDField
      FieldName = 'MAX_DESCONTO'
      Origin = 'MAX_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qformapgtoBLOQDESCMAX: TStringField
      FieldName = 'BLOQDESCMAX'
      Origin = 'BLOQDESCMAX'
      Size = 1
    end
    object qformapgtoDEB_CRED: TStringField
      FieldName = 'DEB_CRED'
      Origin = 'DEB_CRED'
      Size = 1
    end
    object qformapgtoMOSTRA_ENTRADA_NOTAS: TStringField
      FieldName = 'MOSTRA_ENTRADA_NOTAS'
      Origin = 'MOSTRA_ENTRADA_NOTAS'
      Size = 2
    end
  end
  object qprodvenda: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 440
    Top = 16
    object qprodvendaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qprodvendaNome: TStringField
      FieldName = 'Nome'
    end
    object qprodvendaVenda: TCurrencyField
      FieldName = 'Venda'
    end
    object qprodvendaQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qprodvendaTotal: TCurrencyField
      FieldName = 'Total'
    end
  end
  object qparcs: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 536
    Top = 16
    object qparcsData: TDateField
      FieldName = 'Data'
    end
    object qparcsVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object qparcsValor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object qparcsParcela: TFloatField
      FieldName = 'Parcela'
    end
    object qparcscodformapgto: TIntegerField
      FieldName = 'codformapgto'
    end
    object qparcsTipo: TStringField
      FieldName = 'Tipo'
    end
  end
  object qtempmonvenda: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 440
    Top = 72
    object qtempmonvendaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object qtempmonvendaCOD_ATENDENTE: TIntegerField
      FieldName = 'COD_ATENDENTE'
      Origin = 'COD_ATENDENTE'
    end
    object qtempmonvendaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
    object qtempmonvendaDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
    end
    object qtempmonvendaTOTAL_VENDA: TCurrencyField
      FieldName = 'TOTAL_VENDA'
    end
  end
  object qusuario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from vendedor')
    Left = 256
    Top = 24
    object qusuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qusuarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object qusuarioCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 30
    end
    object qusuarioDATANASC: TStringField
      FieldName = 'DATANASC'
      Origin = 'DATANASC'
    end
    object qusuarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qusuarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qusuarioCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 15
    end
    object qusuarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object qusuarioUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qusuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 30
    end
    object qusuarioCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 15
    end
    object qusuarioLIMITE: TStringField
      FieldName = 'LIMITE'
      Origin = 'LIMITE'
      Size = 30
    end
    object qusuarioDESCONTO: TStringField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Size = 30
    end
    object qusuarioDATACADASTRO: TStringField
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
      Size = 15
    end
    object qusuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 50
    end
    object qusuarioPAGACOMISS: TStringField
      FieldName = 'PAGACOMISS'
      Origin = 'PAGACOMISS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qusuarioATIVARSENHA: TStringField
      FieldName = 'ATIVARSENHA'
      Origin = 'ATIVARSENHA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qusuarioATEND_IMPORTAC: TIntegerField
      FieldName = 'ATEND_IMPORTAC'
      Origin = 'ATEND_IMPORTAC'
    end
    object qusuarioDT_IMPORTAC: TDateField
      FieldName = 'DT_IMPORTAC'
      Origin = 'DT_IMPORTAC'
    end
    object qusuarioCOMAPRAZO: TFMTBCDField
      FieldName = 'COMAPRAZO'
      Origin = 'COMAPRAZO'
      Precision = 18
      Size = 2
    end
    object qusuarioSENHA_FARMA_POP: TStringField
      FieldName = 'SENHA_FARMA_POP'
      Origin = 'SENHA_FARMA_POP'
      Size = 50
    end
    object qusuarioPERC_COMISSAOAVISTA: TFMTBCDField
      FieldName = 'PERC_COMISSAOAVISTA'
      Origin = 'PERC_COMISSAOAVISTA'
      Precision = 18
      Size = 2
    end
    object qusuarioPERC_COMISSAOAAPRAZO: TFMTBCDField
      FieldName = 'PERC_COMISSAOAAPRAZO'
      Origin = 'PERC_COMISSAOAAPRAZO'
      Precision = 18
      Size = 2
    end
    object qusuarioPERC_COMISSAOACARTAO: TFMTBCDField
      FieldName = 'PERC_COMISSAOACARTAO'
      Origin = 'PERC_COMISSAOACARTAO'
      Precision = 18
      Size = 2
    end
    object qusuarioPERC_COMISSAOCHEQUE: TFMTBCDField
      FieldName = 'PERC_COMISSAOCHEQUE'
      Origin = 'PERC_COMISSAOCHEQUE'
      Precision = 18
      Size = 2
    end
    object qusuarioRETIRADA: TFMTBCDField
      FieldName = 'RETIRADA'
      Origin = 'RETIRADA'
      Precision = 18
      Size = 2
    end
  end
  object qaux: TFDQuery
    Connection = FDConnection1
    Left = 264
    Top = 88
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 272
    Top = 160
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    VendorLib = 'C:\dados\fbclient.dll'
    Left = 440
    Top = 160
  end
end
