object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  TerminateOnBrowserClose = False
  Theme = 'uni_carbon'
  MonitoredKeys.Keys = <>
  Height = 348
  Width = 673
  object DataSource1: TDataSource
    DataSet = qusuario
    Left = 40
    Top = 32
  end
  object qaux: TFDQuery
    Connection = UniServerModule.FDConnection1
    Left = 104
    Top = 80
  end
  object dtsprod: TDataSource
    DataSet = qprodutos
    Left = 176
    Top = 32
  end
  object dtscliente: TDataSource
    DataSet = qclientes
    Left = 176
    Top = 88
  end
  object qprodvenda2: TFDMemTable
    Active = True
    AfterPost = qprodvenda2AfterPost
    OnCalcFields = qprodvenda2CalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 96
    Top = 200
    object qprodvenda2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qprodvenda2Nome: TStringField
      FieldName = 'Nome'
    end
    object qprodvenda2Venda: TCurrencyField
      FieldName = 'Venda'
    end
    object qprodvenda2Quantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qprodvenda2Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object dtsprodvenda: TDataSource
    DataSet = qprodvenda
    Left = 104
    Top = 256
  end
  object qcadcliente: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 272
    Top = 104
    object qcadclienteNome: TStringField
      FieldName = 'Nome'
    end
    object qcadclienteCpf: TStringField
      FieldName = 'Cpf'
    end
    object qcadclienteRg: TStringField
      FieldName = 'Rg'
    end
    object qcadclienteBairro: TStringField
      FieldName = 'Bairro'
    end
    object qcadclienteCidade: TStringField
      FieldName = 'Cidade'
    end
    object qcadclienteCodcidade: TIntegerField
      FieldName = 'Codcidade'
    end
    object qcadclienteEndereco: TStringField
      FieldName = 'Endereco'
    end
  end
  object dtscadcliente: TDataSource
    DataSet = qcadcliente
    Left = 272
    Top = 160
  end
  object dtscidades: TDataSource
    DataSet = qcidades
    Left = 304
    Top = 40
  end
  object qmonvenda: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 368
    Top = 96
    object qmonvendaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object qmonvendaCOD_ATENDENTE: TIntegerField
      FieldName = 'COD_ATENDENTE'
      Origin = 'COD_ATENDENTE'
    end
    object qmonvendaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
    object qmonvendaTOTAL_VENDA: TCurrencyField
      FieldName = 'TOTAL_VENDA'
    end
    object qmonvendaDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
    end
  end
  object dts_parcs: TDataSource
    DataSet = qparcs
    Left = 376
    Top = 24
  end
  object qparcs: TFDMemTable
    AfterPost = qparcsAfterPost
    AfterDelete = qparcsAfterPost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 472
    Top = 160
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
  object qempresa: TFDQuery
    Connection = UniServerModule.FDConnection1
    SQL.Strings = (
      'select * from empresa')
    Left = 368
    Top = 152
    object qempresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qempresaRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Required = True
      Size = 50
    end
    object qempresaDATA: TStringField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Size = 15
    end
    object qempresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 50
    end
    object qempresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object qempresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object qempresaCOD_CIDADE: TStringField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
      Size = 50
    end
    object qempresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 15
    end
    object qempresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object qempresaFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object qempresaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 15
    end
    object qempresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object qempresaINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      Size = 15
    end
    object qempresaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 200
    end
    object qempresaATIVA: TStringField
      FieldName = 'ATIVA'
      Origin = 'ATIVA'
      Size = 1
    end
    object qempresaNAO_MEXER: TStringField
      FieldName = 'NAO_MEXER'
      Origin = 'NAO_MEXER'
      Size = 100
    end
    object qempresaNAO_MEXER2: TStringField
      FieldName = 'NAO_MEXER2'
      Origin = 'NAO_MEXER2'
      Size = 100
    end
    object qempresaCODUF_IBGE: TStringField
      FieldName = 'CODUF_IBGE'
      Origin = 'CODUF_IBGE'
      Size = 2
    end
    object qempresaCODMUN_IBGE: TStringField
      FieldName = 'CODMUN_IBGE'
      Origin = 'CODMUN_IBGE'
      Size = 7
    end
    object qempresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 60
    end
    object qempresaIMUN: TStringField
      FieldName = 'IMUN'
      Origin = 'IMUN'
      Size = 15
    end
    object qempresaCNAE_FISCAL: TStringField
      FieldName = 'CNAE_FISCAL'
      Origin = 'CNAE_FISCAL'
      Size = 7
    end
    object qempresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 60
    end
    object qempresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qempresaCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Origin = 'CODPAIS'
      Size = 4
    end
    object qempresaPAIS: TStringField
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 60
    end
    object qempresaRESPLEGAL: TStringField
      FieldName = 'RESPLEGAL'
      Origin = 'RESPLEGAL'
      Size = 60
    end
    object qempresaCRT: TStringField
      FieldName = 'CRT'
      Origin = 'CRT'
      Size = 2
    end
    object qempresaEFD_COD_VER: TStringField
      FieldName = 'EFD_COD_VER'
      Origin = 'EFD_COD_VER'
      Size = 3
    end
    object qempresaPERFIL: TStringField
      FieldName = 'PERFIL'
      Origin = 'PERFIL'
      Size = 1
    end
    object qempresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 600
    end
    object qempresaCONTAB_NOME: TStringField
      FieldName = 'CONTAB_NOME'
      Origin = 'CONTAB_NOME'
      Size = 100
    end
    object qempresaCONTAB_CPF: TStringField
      FieldName = 'CONTAB_CPF'
      Origin = 'CONTAB_CPF'
      Size = 11
    end
    object qempresaCONTAB_CRC: TStringField
      FieldName = 'CONTAB_CRC'
      Origin = 'CONTAB_CRC'
      Size = 15
    end
    object qempresaCONTAB_CNPJ: TStringField
      FieldName = 'CONTAB_CNPJ'
      Origin = 'CONTAB_CNPJ'
      Size = 14
    end
    object qempresaCONTAB_CEP: TStringField
      FieldName = 'CONTAB_CEP'
      Origin = 'CONTAB_CEP'
      Size = 8
    end
    object qempresaCONTAB_END: TStringField
      FieldName = 'CONTAB_END'
      Origin = 'CONTAB_END'
      Size = 60
    end
    object qempresaCONTAB_NUMCASA: TStringField
      FieldName = 'CONTAB_NUMCASA'
      Origin = 'CONTAB_NUMCASA'
      Size = 10
    end
    object qempresaCONTAB_COMPL: TStringField
      FieldName = 'CONTAB_COMPL'
      Origin = 'CONTAB_COMPL'
      Size = 15
    end
    object qempresaCONTAB_BAIRRO: TStringField
      FieldName = 'CONTAB_BAIRRO'
      Origin = 'CONTAB_BAIRRO'
      Size = 60
    end
    object qempresaCONTAB_FONE: TStringField
      FieldName = 'CONTAB_FONE'
      Origin = 'CONTAB_FONE'
      Size = 10
    end
    object qempresaCONTAB_FAX: TStringField
      FieldName = 'CONTAB_FAX'
      Origin = 'CONTAB_FAX'
      Size = 10
    end
    object qempresaCONTAB_EMAIL: TStringField
      FieldName = 'CONTAB_EMAIL'
      Origin = 'CONTAB_EMAIL'
      Size = 600
    end
    object qempresaCONTAB_CODNUMIBGE: TStringField
      FieldName = 'CONTAB_CODNUMIBGE'
      Origin = 'CONTAB_CODNUMIBGE'
      Size = 7
    end
    object qempresaSIMPLES_NACIONAL: TStringField
      FieldName = 'SIMPLES_NACIONAL'
      Origin = 'SIMPLES_NACIONAL'
      Size = 2
    end
    object qempresaSERIE_NFE: TStringField
      FieldName = 'SERIE_NFE'
      Origin = 'SERIE_NFE'
      Size = 10
    end
    object qempresaSERIE_NFCE: TStringField
      FieldName = 'SERIE_NFCE'
      Origin = 'SERIE_NFCE'
      Size = 10
    end
    object qempresaDIASVAL: TIntegerField
      FieldName = 'DIASVAL'
      Origin = 'DIASVAL'
    end
  end
  object dtsconsvenda: TDataSource
    DataSet = UniServerModule.qmonvenda
    Left = 472
    Top = 32
  end
  object dtsitensvenda: TDataSource
    DataSet = UniServerModule.qmonitens
    Left = 472
    Top = 88
  end
  object qusuario: TFDQuery
    Connection = UniServerModule.FDConnection1
    SQL.Strings = (
      'select * from vendedor '
      'where conta = '#39'S'#39)
    Left = 104
    Top = 32
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
    object qusuarioCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
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
  object qprodvenda: TFDMemTable
    OnCalcFields = qprodvendaCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 96
    Top = 144
    object qprodvendaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qprodvendaNome: TStringField
      FieldName = 'Nome'
    end
    object qprodvendaVenda: TCurrencyField
      FieldName = 'Venda'
      DisplayFormat = '0,00'
      EditFormat = '0,00'
    end
    object qprodvendaQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qprodvendaTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '0,00'
      EditFormat = '0,00'
      Calculated = True
    end
  end
  object qparcs2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 472
    Top = 216
    object qparcs2Data: TDateField
      FieldName = 'Data'
    end
    object qparcs2Vencimento: TDateField
      FieldName = 'Vencimento'
    end
    object qparcs2Valor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object qparcs2Parcela: TFloatField
      FieldName = 'Parcela'
    end
    object qparcs2codformapgto: TIntegerField
      FieldName = 'codformapgto'
    end
    object qparcs2Tipo: TStringField
      FieldName = 'Tipo'
    end
  end
  object qprodutos: TFDQuery
    Connection = UniServerModule.FDConnection1
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
    Left = 568
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
    Connection = UniServerModule.FDConnection1
    SQL.Strings = (
      
        'select a.codigo, a.nome, a.cpf, a.rg,a.endereco,a.bairro,a.cod_c' +
        'idade,'
      'a.cep,a.data_nasctit,a.telefone, b.nome cidade'
      'from clientes a'
      'left outer join cidades b on(a.cod_cidade=b.codigo) ')
    Left = 568
    Top = 80
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
    Connection = UniServerModule.FDConnection1
    SQL.Strings = (
      'select * from cidades')
    Left = 248
    Top = 32
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
end
