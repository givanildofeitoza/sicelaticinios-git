object _dm: T_dm
  OldCreateOrder = False
  Height = 722
  Width = 1087
  object ConnecDm: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'DevartMySQLDirect'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DbxDevartMySql'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver190.' +
        'bpl'
      
        'MetaDataPackageLoader=TDBXDevartMySqlMetaDataCommandFactory,DbxD' +
        'evartMySqlDriver190.bpl'
      'ProductName=DevartMySQL'
      'GetDriverFunc=getSQLDriverMySQLDirect'
      'LibraryName=dbexpmda40.dll'
      'VendorLib=not used'
      'MaxBlobSize=-1'
      'FetchAll=True'
      'EnableBoolean=False'
      'UseUnicode=True'
      'IPVersion=IPv4'
      'BlobSize=-1'
      'HostName=localhost:3307'
      'Database=sice'
      'User_Name=root'
      'Password=iq@2013tex')
    BeforeConnect = ConnecDmBeforeConnect
    Left = 39
    Top = 8
  end
  object sdsPrd: TSQLDataSet
    CommandText = 'select * from produtos where codigofilial='#39'00001'#39' limit 10'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 40
    Top = 112
  end
  object dsPrd: TDataSetProvider
    DataSet = sdsPrd
    Left = 128
    Top = 112
  end
  object cdsPrd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsPrd'
    Left = 208
    Top = 112
    object cdsPrdid: TIntegerField
      FieldName = 'id'
    end
    object cdsPrdcodigo: TWideStringField
      FieldName = 'codigo'
    end
    object cdsPrdcodigoinc: TIntegerField
      FieldName = 'codigoinc'
    end
    object cdsPrddescecf: TWideStringField
      FieldName = 'descecf'
      Size = 25
    end
    object cdsPrdunidade: TWideStringField
      FieldName = 'unidade'
      Size = 3
    end
    object cdsPrdquantidade: TFMTBCDField
      FieldName = 'quantidade'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object cdsPrdqtddeposito: TFMTBCDField
      FieldName = 'qtddeposito'
      Precision = 11
      Size = 0
    end
    object cdsPrdqtdprateleiras: TFMTBCDField
      FieldName = 'qtdprateleiras'
      Precision = 12
      Size = 2
    end
    object cdsPrdqtdvencidos: TFMTBCDField
      FieldName = 'qtdvencidos'
      Precision = 12
      Size = 2
    end
    object cdsPrdqtdanterior: TFMTBCDField
      FieldName = 'qtdanterior'
      Precision = 12
      Size = 2
    end
    object cdsPrdqtdultent: TFMTBCDField
      FieldName = 'qtdultent'
      Precision = 12
      Size = 2
    end
    object cdsPrddataultent: TDateField
      FieldName = 'dataultent'
    end
    object cdsPrdqtdprovisoria: TFMTBCDField
      FieldName = 'qtdprovisoria'
      Precision = 12
      Size = 2
    end
    object cdsPrddescprovisorio: TFMTBCDField
      FieldName = 'descprovisorio'
      Precision = 7
      Size = 2
    end
    object cdsPrdpedidoand: TFMTBCDField
      FieldName = 'pedidoand'
      Precision = 12
      Size = 2
    end
    object cdsPrdqtdultpedido: TFMTBCDField
      FieldName = 'qtdultpedido'
      Precision = 12
      Size = 2
    end
    object cdsPrddata: TDateField
      FieldName = 'data'
    end
    object cdsPrddataultpedido: TDateField
      FieldName = 'dataultpedido'
    end
    object cdsPrdicms: TFMTBCDField
      FieldName = 'icms'
      Precision = 8
      Size = 2
    end
    object cdsPrdipi: TFMTBCDField
      FieldName = 'ipi'
      Precision = 8
      Size = 2
    end
    object cdsPrdgrupo: TWideStringField
      FieldName = 'grupo'
      Size = 30
    end
    object cdsPrdsubgrupo: TWideStringField
      FieldName = 'subgrupo'
      Size = 30
    end
    object cdsPrdcusto: TFMTBCDField
      FieldName = 'custo'
      Precision = 14
      Size = 5
    end
    object cdsPrdcustomedio: TFMTBCDField
      FieldName = 'customedio'
      Precision = 14
      Size = 5
    end
    object cdsPrdultcusto: TFMTBCDField
      FieldName = 'ultcusto'
      Precision = 14
      Size = 5
    end
    object cdsPrdcustototal: TFMTBCDField
      FieldName = 'custototal'
      Precision = 14
      Size = 2
    end
    object cdsPrdmargemlucro: TFMTBCDField
      FieldName = 'margemlucro'
      Precision = 10
      Size = 2
    end
    object cdsPrdprecovenda: TFMTBCDField
      FieldName = 'precovenda'
      Precision = 14
      Size = 2
    end
    object cdsPrddataultvenda: TDateField
      FieldName = 'dataultvenda'
    end
    object cdsPrddataaltpreco: TDateField
      FieldName = 'dataaltpreco'
    end
    object cdsPrdultpreco: TFMTBCDField
      FieldName = 'ultpreco'
      Precision = 14
      Size = 2
    end
    object cdsPrdestminimo: TFMTBCDField
      FieldName = 'estminimo'
      Precision = 12
      Size = 2
    end
    object cdsPrdcodigobarras: TWideStringField
      FieldName = 'codigobarras'
    end
    object cdsPrdsituacao: TWideStringField
      FieldName = 'situacao'
      Size = 15
    end
    object cdsPrdtributacao: TWideStringField
      FieldName = 'tributacao'
      Size = 3
    end
    object cdsPrdfornecedor: TWideStringField
      FieldName = 'fornecedor'
      Size = 50
    end
    object cdsPrdfabricante: TWideStringField
      FieldName = 'fabricante'
      Size = 30
    end
    object cdsPrdtipocomissao: TWideStringField
      FieldName = 'tipocomissao'
      Size = 1
    end
    object cdsPrddatacadastro: TDateField
      FieldName = 'datacadastro'
    end
    object cdsPrdvalidade: TDateField
      FieldName = 'validade'
    end
    object cdsPrdaceitadesconto: TWideStringField
      FieldName = 'aceitadesconto'
      Size = 1
    end
    object cdsPrddescontopromocao: TFMTBCDField
      FieldName = 'descontopromocao'
      Precision = 8
      Size = 2
    end
    object cdsPrdvalidadepromoc: TDateField
      FieldName = 'validadepromoc'
    end
    object cdsPrddescontomaximo: TFMTBCDField
      FieldName = 'descontomaximo'
      Precision = 8
      Size = 2
    end
    object cdsPrdoperador: TWideStringField
      FieldName = 'operador'
      Size = 15
    end
    object cdsPrdpesobruto: TFMTBCDField
      FieldName = 'pesobruto'
      Precision = 12
      Size = 3
    end
    object cdsPrdpesoliquido: TFMTBCDField
      FieldName = 'pesoliquido'
      Precision = 12
      Size = 3
    end
    object cdsPrdmarcado: TWideStringField
      FieldName = 'marcado'
      Size = 1
    end
    object cdsPrdembalagem: TIntegerField
      FieldName = 'embalagem'
    end
    object cdsPrdunidembalagem: TWideStringField
      FieldName = 'unidembalagem'
      Size = 3
    end
    object cdsPrdlocalestoque: TWideStringField
      FieldName = 'localestoque'
      Size = 15
    end
    object cdsPrddescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsPrdfrete: TFMTBCDField
      FieldName = 'frete'
      Precision = 8
      Size = 2
    end
    object cdsPrdFMTBCDField01qtd: TFMTBCDField
      FieldName = '01qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField01custos: TFMTBCDField
      FieldName = '01custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField01vendas: TFMTBCDField
      FieldName = '01vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField02qtd: TFMTBCDField
      FieldName = '02qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField02custos: TFMTBCDField
      FieldName = '02custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField02vendas: TFMTBCDField
      FieldName = '02vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField03qtd: TFMTBCDField
      FieldName = '03qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField03custos: TFMTBCDField
      FieldName = '03custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField03vendas: TFMTBCDField
      FieldName = '03vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField04qtd: TFMTBCDField
      FieldName = '04qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField04custos: TFMTBCDField
      FieldName = '04custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField04vendas: TFMTBCDField
      FieldName = '04vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField05qtd: TFMTBCDField
      FieldName = '05qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField05custos: TFMTBCDField
      FieldName = '05custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField05vendas: TFMTBCDField
      FieldName = '05vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField06qtd: TFMTBCDField
      FieldName = '06qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField06custos: TFMTBCDField
      FieldName = '06custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField06vendas: TFMTBCDField
      FieldName = '06vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField07qtd: TFMTBCDField
      FieldName = '07qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField07custos: TFMTBCDField
      FieldName = '07custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField07vendas: TFMTBCDField
      FieldName = '07vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField08qtd: TFMTBCDField
      FieldName = '08qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField08custos: TFMTBCDField
      FieldName = '08custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField08vendas: TFMTBCDField
      FieldName = '08vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField09qtd: TFMTBCDField
      FieldName = '09qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField09custos: TFMTBCDField
      FieldName = '09custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField09vendas: TFMTBCDField
      FieldName = '09vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField10qtd: TFMTBCDField
      FieldName = '10qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField10custos: TFMTBCDField
      FieldName = '10custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField10vendas: TFMTBCDField
      FieldName = '10vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField11qtd: TFMTBCDField
      FieldName = '11qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField11custos: TFMTBCDField
      FieldName = '11custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField11vendas: TFMTBCDField
      FieldName = '11vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField12qtd: TFMTBCDField
      FieldName = '12qtd'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField12custos: TFMTBCDField
      FieldName = '12custos'
      Precision = 17
      Size = 2
    end
    object cdsPrdFMTBCDField12vendas: TFMTBCDField
      FieldName = '12vendas'
      Precision = 17
      Size = 2
    end
    object cdsPrdCodigoFilial: TWideStringField
      FieldName = 'CodigoFilial'
      Size = 5
    end
    object cdsPrdcodigovinculado: TWideStringField
      FieldName = 'codigovinculado'
    end
    object cdsPrdinventario: TFMTBCDField
      FieldName = 'inventario'
      Precision = 12
      Size = 2
    end
    object cdsPrddocumento: TIntegerField
      FieldName = 'documento'
    end
    object cdsPrdclasse: TWideStringField
      FieldName = 'classe'
      Size = 4
    end
    object cdsPrdqtdretida: TFMTBCDField
      FieldName = 'qtdretida'
      Precision = 10
      Size = 2
    end
    object cdsPrdsecao: TWideStringField
      FieldName = 'secao'
    end
    object cdsPrddiasparavencimento: TIntegerField
      FieldName = 'diasparavencimento'
    end
    object cdsPrdlote: TWideStringField
      FieldName = 'lote'
      Size = 15
    end
    object cdsPrdvencimento: TDateField
      FieldName = 'vencimento'
    end
    object cdsPrdanoinventario: TIntegerField
      FieldName = 'anoinventario'
    end
    object cdsPrdinventarioencerrado: TWideStringField
      FieldName = 'inventarioencerrado'
      Size = 1
    end
    object cdsPrddataencerramentoinventario: TDateField
      FieldName = 'dataencerramentoinventario'
    end
    object cdsPrdqtdaentregar: TFMTBCDField
      FieldName = 'qtdaentregar'
      Precision = 12
      Size = 2
    end
    object cdsPrdprecounidade: TFMTBCDField
      FieldName = 'precounidade'
      Precision = 14
      Size = 2
    end
    object cdsPrdgenerico: TWideStringField
      FieldName = 'generico'
      Size = 3
    end
    object cdsPrdprincativo: TWideStringField
      FieldName = 'princativo'
      Size = 130
    end
    object cdsPrdmargemsemfinanciamento: TFMTBCDField
      FieldName = 'margemsemfinanciamento'
      Precision = 10
      Size = 2
    end
    object cdsPrdprecosemfinanciamento: TFMTBCDField
      FieldName = 'precosemfinanciamento'
      Precision = 10
      Size = 2
    end
    object cdsPrdcodigofiscal: TWideStringField
      FieldName = 'codigofiscal'
      Size = 3
    end
    object cdsPrdcustomedioanterior: TFMTBCDField
      FieldName = 'customedioanterior'
      Precision = 14
      Size = 5
    end
    object cdsPrdativacompdesc: TWideStringField
      FieldName = 'ativacompdesc'
      Size = 1
    end
    object cdsPrdinventarionumero: TIntegerField
      FieldName = 'inventarionumero'
    end
    object cdsPrdcustofornecedor: TFMTBCDField
      FieldName = 'custofornecedor'
      Precision = 14
      Size = 5
    end
    object cdsPrdqtdminimadesc: TFMTBCDField
      FieldName = 'qtdminimadesc'
      Precision = 10
      Size = 2
    end
    object cdsPrdqtdprevenda: TFMTBCDField
      FieldName = 'qtdprevenda'
      Precision = 12
      Size = 2
    end
    object cdsPrdparcelamentomax: TIntegerField
      FieldName = 'parcelamentomax'
    end
    object cdsPrdprecoatacado: TFMTBCDField
      FieldName = 'precoatacado'
      Precision = 12
      Size = 2
    end
    object cdsPrdgrade: TWideStringField
      FieldName = 'grade'
    end
    object cdsPrddetalhetecnico: TWideMemoField
      FieldName = 'detalhetecnico'
      BlobType = ftWideMemo
    end
    object cdsPrdorigem: TWideStringField
      FieldName = 'origem'
      Size = 50
    end
    object cdsPrdmodalidadeDetBaseCalcICMS: TWideStringField
      FieldName = 'modalidadeDetBaseCalcICMS'
      Size = 100
    end
    object cdsPrdpercentualRedBaseCalcICMS: TFMTBCDField
      FieldName = 'percentualRedBaseCalcICMS'
      Precision = 7
      Size = 2
    end
    object cdsPrdmodalidadedetBaseCalcICMsST: TWideStringField
      FieldName = 'modalidadedetBaseCalcICMsST'
      Size = 100
    end
    object cdsPrdICMsST: TFMTBCDField
      FieldName = 'ICMsST'
      Precision = 7
      Size = 2
    end
    object cdsPrdpercentualRedICMsST: TFMTBCDField
      FieldName = 'percentualRedICMsST'
      Precision = 7
      Size = 2
    end
    object cdsPrdpercentualMargVlrAdICMsST: TFMTBCDField
      FieldName = 'percentualMargVlrAdICMsST'
      Precision = 9
      Size = 3
    end
    object cdsPrdtipo: TWideStringField
      FieldName = 'tipo'
      Size = 15
    end
    object cdsPrdpis: TFMTBCDField
      FieldName = 'pis'
      Precision = 7
      Size = 3
    end
    object cdsPrdcofins: TFMTBCDField
      FieldName = 'cofins'
      Precision = 7
      Size = 3
    end
    object cdsPrddespesasacessorias: TFMTBCDField
      FieldName = 'despesasacessorias'
      Precision = 7
      Size = 2
    end
    object cdsPrdmargemlucroliquida: TFMTBCDField
      FieldName = 'margemlucroliquida'
      Precision = 10
      Size = 2
    end
    object cdsPrdvolumes: TIntegerField
      FieldName = 'volumes'
    end
    object cdsPrdncm: TWideStringField
      FieldName = 'ncm'
      Size = 8
    end
    object cdsPrdnbm: TWideStringField
      FieldName = 'nbm'
      Size = 10
    end
    object cdsPrdncmespecie: TWideStringField
      FieldName = 'ncmespecie'
      Size = 2
    end
    object cdsPrdcapacidadevolML: TIntegerField
      FieldName = 'capacidadevolML'
    end
    object cdsPrdsituacaoinventario: TWideStringField
      FieldName = 'situacaoinventario'
      Size = 2
    end
    object cdsPrdtributacaoPIS: TWideStringField
      FieldName = 'tributacaoPIS'
      Size = 2
    end
    object cdsPrdtributacaoCOFINS: TWideStringField
      FieldName = 'tributacaoCOFINS'
      Size = 2
    end
    object cdsPrdcodigoservico: TWideStringField
      FieldName = 'codigoservico'
      Size = 4
    end
    object cdsPrdaliquotaISS: TFMTBCDField
      FieldName = 'aliquotaISS'
      Precision = 7
      Size = 2
    end
    object cdsPrdindicadorproducao: TWideStringField
      FieldName = 'indicadorproducao'
      Size = 1
    end
    object cdsPrdindicadorarredondamentotruncamento: TWideStringField
      FieldName = 'indicadorarredondamentotruncamento'
      Size = 1
    end
    object cdsPrdcfopsaida: TWideStringField
      FieldName = 'cfopsaida'
      Size = 5
    end
    object cdsPrdcfopentrada: TWideStringField
      FieldName = 'cfopentrada'
      Size = 5
    end
    object cdsPrdEADE2mercadoriaEstoque: TWideStringField
      FieldName = 'EADE2mercadoriaEstoque'
      Size = 33
    end
    object cdsPrdEADP2relacaomercadoria: TWideStringField
      FieldName = 'EADP2relacaomercadoria'
      Size = 33
    end
    object cdsPrdaliquotaIPI: TFMTBCDField
      FieldName = 'aliquotaIPI'
      Precision = 7
      Size = 2
    end
    object cdsPrddatafabricacao: TDateField
      FieldName = 'datafabricacao'
    end
    object cdsPrdsaldofinalestoque: TFMTBCDField
      FieldName = 'saldofinalestoque'
      Precision = 12
      Size = 2
    end
    object cdsPrdcomplementodescricao: TWideStringField
      FieldName = 'complementodescricao'
      Size = 100
    end
    object cdsPrddatafinalestoque: TDateField
      FieldName = 'datafinalestoque'
    end
    object cdsPrdhorafinalestoque: TTimeField
      FieldName = 'horafinalestoque'
    end
    object cdsPrdecffabricacao: TWideStringField
      FieldName = 'ecffabricacao'
    end
    object cdsPrdpcredsn: TFMTBCDField
      FieldName = 'pcredsn'
      Precision = 9
      Size = 2
    end
    object cdsPrdcstpisEntrada: TWideStringField
      FieldName = 'cstpisEntrada'
      Size = 2
    end
    object cdsPrdcstcofinsEntrada: TWideStringField
      FieldName = 'cstcofinsEntrada'
      Size = 2
    end
    object cdsPrdpisentrada: TFMTBCDField
      FieldName = 'pisentrada'
      Precision = 7
      Size = 3
    end
    object cdsPrdcofinsentrada: TFMTBCDField
      FieldName = 'cofinsentrada'
      Precision = 7
      Size = 3
    end
    object cdsPrdcodigosuspensaopis: TWideStringField
      FieldName = 'codigosuspensaopis'
      Size = 3
    end
    object cdsPrdcodigosuspensaocofins: TWideStringField
      FieldName = 'codigosuspensaocofins'
      Size = 3
    end
    object cdsPrdvendainternet: TWideStringField
      FieldName = 'vendainternet'
      Size = 1
    end
    object cdsPrdcstipi: TWideStringField
      FieldName = 'cstipi'
      Size = 2
    end
    object cdsPrdEADE1: TWideStringField
      FieldName = 'EADE1'
      Size = 33
    end
    object cdsPrdcprodanp: TWideStringField
      FieldName = 'cprodanp'
      Size = 9
    end
    object cdsPrdcodif: TWideStringField
      FieldName = 'codif'
      Size = 21
    end
    object cdsPrdcide: TFMTBCDField
      FieldName = 'cide'
      Precision = 9
      Size = 3
    end
    object cdsPrdidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object cdsPrdecftipo: TWideStringField
      FieldName = 'ecftipo'
      Size = 7
    end
    object cdsPrdecfmarca: TWideStringField
      FieldName = 'ecfmarca'
      Size = 15
    end
    object cdsPrdmodelo: TWideStringField
      FieldName = 'modelo'
    end
    object cdsPrdSTecf: TWideStringField
      FieldName = 'STecf'
      Size = 1
    end
    object cdsPrdcustogerencial: TFMTBCDField
      FieldName = 'custogerencial'
      Precision = 14
      Size = 5
    end
    object cdsPrdcenqipi: TWideStringField
      FieldName = 'cenqipi'
      Size = 3
    end
    object cdsPrdcest: TWideStringField
      FieldName = 'cest'
      Size = 10
    end
    object cdsPrdicmsmargemlucro: TFMTBCDField
      FieldName = 'icmsmargemlucro'
      Precision = 12
      Size = 2
    end
    object cdsPrdsincronizar: TWideStringField
      FieldName = 'sincronizar'
      Size = 1
    end
    object cdsPrdeade3: TWideStringField
      FieldName = 'eade3'
      Size = 33
    end
    object cdsPrdaliquotaStFronteira: TFMTBCDField
      FieldName = 'aliquotaStFronteira'
      Precision = 12
      Size = 2
    end
    object cdsPrdMVAFronteira: TFMTBCDField
      FieldName = 'MVAFronteira'
      Precision = 12
      Size = 2
    end
    object cdsPrdqtdproducao: TFMTBCDField
      FieldName = 'qtdproducao'
      Precision = 12
      Size = 2
    end
    object cdsPrdqtdemtransito: TFMTBCDField
      FieldName = 'qtdemtransito'
      Precision = 12
      Size = 2
    end
    object cdsPrdcontrolelote: TWideStringField
      FieldName = 'controlelote'
      Size = 1
    end
    object cdsPrdatualizarprecoentrada: TWideStringField
      FieldName = 'atualizarprecoentrada'
      Size = 1
    end
    object cdsPrdpercentualFrete: TFMTBCDField
      FieldName = 'percentualFrete'
      Precision = 12
      Size = 2
    end
    object cdsPrdcodigobarrasNFCe: TWideStringField
      FieldName = 'codigobarrasNFCe'
      Size = 1
    end
    object cdsPrdcodigoanvisa: TWideStringField
      FieldName = 'codigoanvisa'
    end
    object cdsPrddescANP: TWideStringField
      FieldName = 'descANP'
      Size = 100
    end
    object cdsPrdpGLP: TFMTBCDField
      FieldName = 'pGLP'
      Precision = 18
      Size = 6
    end
    object cdsPrdvPart: TFMTBCDField
      FieldName = 'vPart'
      Precision = 15
      Size = 2
    end
    object cdsPrdparametrorendimento: TFMTBCDField
      FieldName = 'parametrorendimento'
      Precision = 12
      Size = 2
    end
  end
  object DSourcePrd: TDataSource
    DataSet = cdsPrd
    Left = 304
    Top = 112
  end
  object sdsFor: TSQLDataSet
    CommandText = 'select * from fornecedores where codigofilial='#39'00001'#39' limit 10'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 40
    Top = 243
  end
  object dsFor: TDataSetProvider
    DataSet = sdsFor
    Left = 128
    Top = 243
  end
  object cdsFor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsFor'
    Left = 208
    Top = 243
    object cdsForrazaosocial: TWideStringField
      FieldName = 'razaosocial'
      Size = 50
    end
    object cdsForENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsForCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsForBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
    end
    object cdsForCIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cdsForESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsForCGC: TWideStringField
      FieldName = 'CGC'
      Size = 18
    end
    object cdsForINSCRICAO: TWideStringField
      FieldName = 'INSCRICAO'
    end
    object cdsForCPF: TWideStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cdsForOBSERVACAO: TWideMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftWideMemo
    end
    object cdsForTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cdsForFAX: TWideStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsForTELEFONE2: TWideStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsForFAX2: TWideStringField
      FieldName = 'FAX2'
      Size = 15
    end
    object cdsForTELEFONE3: TWideStringField
      FieldName = 'TELEFONE3'
      Size = 15
    end
    object cdsForFAX3: TWideStringField
      FieldName = 'FAX3'
      Size = 15
    end
    object cdsForDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object cdsForULT_COMPRA: TDateField
      FieldName = 'ULT_COMPRA'
    end
    object cdsForPRAZO_ENTG: TSmallintField
      FieldName = 'PRAZO_ENTG'
    end
    object cdsForPED_MINIMO: TFloatField
      FieldName = 'PED_MINIMO'
    end
    object cdsForEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsForCONTATO1: TWideStringField
      FieldName = 'CONTATO1'
      Size = 25
    end
    object cdsForCONTATO2: TWideStringField
      FieldName = 'CONTATO2'
      Size = 25
    end
    object cdsForCONTATO3: TWideStringField
      FieldName = 'CONTATO3'
      Size = 25
    end
    object cdsForempresa: TWideStringField
      FieldName = 'empresa'
      Size = 30
    end
    object cdsForCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object cdsForCodigoFilial: TWideStringField
      FieldName = 'CodigoFilial'
      Size = 5
    end
    object cdsForbonificacao: TFMTBCDField
      FieldName = 'bonificacao'
      Precision = 12
      Size = 2
    end
    object cdsForfabricante: TWideStringField
      FieldName = 'fabricante'
      Size = 1
    end
    object cdsForfornecedor: TWideStringField
      FieldName = 'fornecedor'
      Size = 1
    end
    object cdsForcategoria: TWideStringField
      FieldName = 'categoria'
      Size = 30
    end
    object cdsFornumero: TWideStringField
      FieldName = 'numero'
      Size = 8
    end
    object cdsForretencao: TWideStringField
      FieldName = 'retencao'
      Size = 1
    end
    object cdsFortipoBairro: TWideStringField
      FieldName = 'tipoBairro'
      Size = 10
    end
    object cdsFortipoEndereco: TWideStringField
      FieldName = 'tipoEndereco'
      Size = 10
    end
    object cdsForcodigocliente: TIntegerField
      FieldName = 'codigocliente'
    end
    object cdsFornomecliente: TWideStringField
      FieldName = 'nomecliente'
      Size = 50
    end
    object cdsForsituacao: TWideStringField
      FieldName = 'situacao'
    end
    object cdsForfrete: TWideStringField
      FieldName = 'frete'
      Size = 1
    end
    object cdsForparcelamento: TIntegerField
      FieldName = 'parcelamento'
    end
    object cdsForregimetributario: TWideStringField
      FieldName = 'regimetributario'
      Size = 1
    end
    object cdsForacaocomercial: TWideMemoField
      FieldName = 'acaocomercial'
      BlobType = ftWideMemo
    end
    object cdsForhistoricoacaocomercial: TWideMemoField
      FieldName = 'historicoacaocomercial'
      BlobType = ftWideMemo
    end
  end
  object DSourceFor: TDataSource
    DataSet = cdsFor
    Left = 304
    Top = 243
  end
  object cdsAnalise: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsAnalise'
    Left = 210
    Top = 323
    object cdsAnaliseinc: TIntegerField
      FieldName = 'inc'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsAnalisecodigofornecedor: TWideStringField
      FieldName = 'codigofornecedor'
      Size = 8
    end
    object cdsAnalisefornecedor: TWideStringField
      FieldName = 'fornecedor'
      Size = 50
    end
    object cdsAnalisedata: TDateField
      FieldName = 'data'
    end
    object cdsAnaliseorigem: TWideStringField
      FieldName = 'origem'
      Size = 50
    end
    object cdsAnalisetemperatura: TFMTBCDField
      FieldName = 'temperatura'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object cdsAnalisedornic: TFMTBCDField
      FieldName = 'dornic'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object cdsAnalisegordura: TFMTBCDField
      FieldName = 'gordura'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object cdsAnaliseproteina: TFMTBCDField
      FieldName = 'proteina'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object cdsAnalisedensidade: TFMTBCDField
      FieldName = 'densidade'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsAnalisecrioscopia: TFMTBCDField
      FieldName = 'crioscopia'
      DisplayFormat = '##0.000'
      Precision = 10
      Size = 2
    end
    object cdsAnaliseantibiotico: TWideStringField
      FieldName = 'antibiotico'
      Size = 1
    end
    object cdsAnalisefosfatse: TWideStringField
      FieldName = 'fosfatse'
      Size = 1
    end
    object cdsAnaliseperoxidase: TWideStringField
      FieldName = 'peroxidase'
      Size = 1
    end
    object cdsAnalisesoda: TWideStringField
      FieldName = 'soda'
      Size = 1
    end
    object cdsAnaliseamido: TWideStringField
      FieldName = 'amido'
      Size = 1
    end
    object cdsAnaliseperoxido: TWideStringField
      FieldName = 'peroxido'
      Size = 1
    end
    object cdsAnalisenaoconforme: TWideStringField
      FieldName = 'naoconforme'
      Size = 1
    end
    object cdsAnalisecodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsAnaliseconfirmada: TWideStringField
      FieldName = 'confirmada'
      Size = 1
    end
    object cdsAnaliseagua: TFMTBCDField
      FieldName = 'agua'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsAnalisedatacoleta: TDateField
      FieldName = 'datacoleta'
    end
    object cdsAnalisequantidade: TFMTBCDField
      FieldName = 'quantidade'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object cdsAnalisecusto: TFMTBCDField
      FieldName = 'custo'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object cdsAnalisetipoleite: TWideStringField
      FieldName = 'tipoleite'
      Size = 1
    end
    object cdsAnalisealizarol: TWideStringField
      FieldName = 'alizarol'
      Size = 1
    end
    object cdsAnalisecodigotipoleite: TWideStringField
      FieldName = 'codigotipoleite'
      Size = 8
    end
    object cdsAnaliseqtdconferida: TFMTBCDField
      FieldName = 'qtdconferida'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsAnalisedoclancado: TWideStringField
      FieldName = 'doclancado'
      Size = 1
    end
    object cdsAnalisereservatorio: TIntegerField
      FieldName = 'reservatorio'
    end
    object cdsAnalisenumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsAnalisenrEntrada: TWideStringField
      FieldName = 'nrEntrada'
      Size = 6
    end
  end
  object DSourceAnalise: TDataSource
    DataSet = cdsAnalise
    Left = 304
    Top = 323
  end
  object dsAnalise: TDataSetProvider
    DataSet = sdsAnalise
    Left = 128
    Top = 323
  end
  object sdsAnalise: TSQLDataSet
    CommandText = 'select * from analise where codigofilial='#39'00001'#39' limit 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 40
    Top = 323
  end
  object cdsColeta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsColeta'
    Left = 624
    Top = 192
    object cdsColetaid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsColetafornecedor: TWideStringField
      FieldName = 'fornecedor'
      Size = 60
    end
    object cdsColetatotalcoletado: TFMTBCDField
      FieldName = 'totalcoletado'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsColetaconfirmada: TWideStringField
      FieldName = 'confirmada'
      Size = 1
    end
    object cdsColetanumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object cdsColetacodigofornecedor: TWideStringField
      FieldName = 'codigofornecedor'
      Size = 6
    end
    object cdsColetacusto: TFMTBCDField
      FieldName = 'custo'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsColetadata: TDateField
      FieldName = 'data'
    end
    object cdsColetareservatorio: TIntegerField
      FieldName = 'reservatorio'
    end
  end
  object DSourceColeta: TDataSource
    DataSet = cdsColeta
    Left = 720
    Top = 192
  end
  object dsColeta: TDataSetProvider
    DataSet = sdsColeta
    Left = 544
    Top = 192
  end
  object sdsColeta: TSQLDataSet
    CommandText = 'select * from coleta limit 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 456
    Top = 192
  end
  object cdsVeiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsVeiculos'
    Left = 208
    Top = 395
    object cdsVeiculosinc: TIntegerField
      FieldName = 'inc'
    end
    object cdsVeiculoscodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsVeiculosidtransportadora: TIntegerField
      FieldName = 'idtransportadora'
    end
    object cdsVeiculosveiculo: TWideStringField
      FieldName = 'veiculo'
    end
    object cdsVeiculosplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object cdsVeiculosmotorista: TWideStringField
      FieldName = 'motorista'
      Size = 30
    end
    object cdsVeiculoscapacidadeKg: TFMTBCDField
      FieldName = 'capacidadeKg'
      Precision = 12
      Size = 2
    end
    object cdsVeiculoscapacidadem3: TFMTBCDField
      FieldName = 'capacidadem3'
      Precision = 12
      Size = 2
    end
    object cdsVeiculoscombustivel: TWideStringField
      FieldName = 'combustivel'
      Size = 15
    end
    object cdsVeiculosconsumoKm: TIntegerField
      FieldName = 'consumoKm'
    end
    object cdsVeiculosANTT: TWideStringField
      FieldName = 'ANTT'
      Size = 25
    end
    object cdsVeiculosmarca: TWideStringField
      FieldName = 'marca'
    end
    object cdsVeiculosestadoplaca: TWideStringField
      FieldName = 'estadoplaca'
      Size = 2
    end
    object cdsVeiculostiporodado: TIntegerField
      FieldName = 'tiporodado'
    end
    object cdsVeiculostipocarroceria: TIntegerField
      FieldName = 'tipocarroceria'
    end
    object cdsVeiculostara: TFMTBCDField
      FieldName = 'tara'
      Precision = 12
      Size = 2
    end
    object cdsVeiculosrenavam: TWideStringField
      FieldName = 'renavam'
      Size = 11
    end
  end
  object DSourceVeiculos: TDataSource
    DataSet = cdsVeiculos
    Left = 304
    Top = 395
  end
  object dsVeiculos: TDataSetProvider
    DataSet = sdsVeiculos
    Left = 128
    Top = 395
  end
  object sdsVeiculos: TSQLDataSet
    CommandText = 'select * from veiculos limit 10'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 39
    Top = 395
  end
  object cdsColetores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsColetores'
    Left = 208
    Top = 456
    object cdsColetoresid: TIntegerField
      FieldName = 'id'
    end
    object cdsColetoresnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsColetoresapelido: TWideStringField
      FieldName = 'apelido'
      Size = 50
    end
    object cdsColetorescpf: TWideStringField
      FieldName = 'cpf'
      Size = 11
    end
    object cdsColetoresrg: TWideStringField
      FieldName = 'rg'
      Size = 8
    end
    object cdsColetoresfone: TWideStringField
      FieldName = 'fone'
      Size = 10
    end
    object cdsColetorescelular: TWideStringField
      FieldName = 'celular'
      Size = 10
    end
    object cdsColetoresendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object cdsColetoresnumero: TWideStringField
      FieldName = 'numero'
      Size = 5
    end
    object cdsColetoresbairro: TWideStringField
      FieldName = 'bairro'
      Size = 30
    end
    object cdsColetoresestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object cdsColetorescidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object cdsColetorescep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
    object cdsColetorescodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
  end
  object DsourceColetores: TDataSource
    DataSet = cdsColetores
    Left = 304
    Top = 456
  end
  object dsColetores: TDataSetProvider
    DataSet = sdsColetores
    Left = 128
    Top = 456
  end
  object sdsColetores: TSQLDataSet
    CommandText = 'select * from coletores where codigofilial='#39'00001'#39' limit 30'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 40
    Top = 456
  end
  object qrPadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 40
    Top = 56
  end
  object qrPadrao2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 128
    Top = 56
  end
  object dsMovColeta: TDataSetProvider
    DataSet = sdsMovColeta
    Left = 544
    Top = 117
  end
  object sdsMovColeta: TSQLDataSet
    CommandText = 'select * from movcoleta where codigofilial='#39'00001'#39' limit 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 456
    Top = 117
  end
  object cdsMovColeta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsMovColeta'
    Left = 624
    Top = 117
    object cdsMovColetanumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsMovColetadatacoleta: TDateField
      FieldName = 'datacoleta'
    end
    object cdsMovColetaresponsavel: TWideStringField
      FieldName = 'responsavel'
      Size = 60
    end
    object cdsMovColetacodigoveiculo: TWideStringField
      FieldName = 'codigoveiculo'
      Size = 4
    end
    object cdsMovColetaveiculo: TWideStringField
      FieldName = 'veiculo'
      Size = 60
    end
    object cdsMovColetaplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object cdsMovColetatotalitroscoletados: TFMTBCDField
      FieldName = 'totalitroscoletados'
      Precision = 10
      Size = 2
    end
    object cdsMovColetaconfirmada: TWideStringField
      FieldName = 'confirmada'
      Size = 1
    end
    object cdsMovColetadataconfirmacao: TDateField
      FieldName = 'dataconfirmacao'
    end
    object cdsMovColetacodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsMovColetacodigoresp: TWideStringField
      FieldName = 'codigoresp'
      Size = 6
    end
    object cdsMovColetaoperador: TWideStringField
      FieldName = 'operador'
    end
  end
  object DsourceMovColeta: TDataSource
    DataSet = cdsMovColeta
    Left = 720
    Top = 117
  end
  object dsMovAnalise: TDataSetProvider
    DataSet = sdsMovAnalise
    Left = 544
    Top = 280
  end
  object sdsMovAnalise: TSQLDataSet
    CommandText = 'select * from movanalise limit 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 456
    Top = 280
  end
  object cdsMovAnalise: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsMovAnalise'
    Left = 624
    Top = 280
    object cdsMovAnalisenumero: TIntegerField
      FieldName = 'numero'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsMovAnalisedata: TDateField
      FieldName = 'data'
    end
    object cdsMovAnalisedataconfirmacao: TDateField
      FieldName = 'dataconfirmacao'
    end
    object cdsMovAnaliseoperador: TWideStringField
      FieldName = 'operador'
      Size = 30
    end
    object cdsMovAnaliseconfirmada: TWideStringField
      FieldName = 'confirmada'
      Size = 1
    end
    object cdsMovAnaliseqtdtotalcoleta: TFMTBCDField
      FieldName = 'qtdtotalcoleta'
      Precision = 10
      Size = 2
    end
    object cdsMovAnaliseqtdtotalinformado: TFMTBCDField
      FieldName = 'qtdtotalinformado'
      Precision = 10
      Size = 2
    end
    object cdsMovAnaliseqtdperca: TFMTBCDField
      FieldName = 'qtdperca'
      Precision = 10
      Size = 2
    end
    object cdsMovAnalisecoletainformada: TWideStringField
      FieldName = 'coletainformada'
      Size = 1
    end
    object cdsMovAnaliseresponsavel: TWideStringField
      FieldName = 'responsavel'
      Size = 50
    end
    object cdsMovAnalisedescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsMovAnalisefrequencia: TWideStringField
      FieldName = 'frequencia'
      Size = 150
    end
    object cdsMovAnaliseprocedimento: TWideStringField
      FieldName = 'procedimento'
      Size = 150
    end
    object cdsMovAnaliseacaocorretiva: TWideStringField
      FieldName = 'acaocorretiva'
      Size = 150
    end
    object cdsMovAnalisecodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsMovAnalisenumerocoleta: TWideStringField
      FieldName = 'numerocoleta'
      Size = 8
    end
    object cdsMovAnaliseoperadorconfirmacao: TWideStringField
      FieldName = 'operadorconfirmacao'
      Size = 30
    end
    object cdsMovAnaliseconferido: TWideStringField
      FieldName = 'conferido'
      Size = 1
    end
    object cdsMovAnaliseoperadorconferencia: TWideStringField
      FieldName = 'operadorconferencia'
    end
    object cdsMovAnalisedataconferencia: TDateField
      FieldName = 'dataconferencia'
    end
    object cdsMovAnalisefinalizada: TWideStringField
      FieldName = 'finalizada'
      Size = 1
    end
    object cdsMovAnalisedatafinalizacao: TDateField
      FieldName = 'datafinalizacao'
    end
    object cdsMovAnaliseoperadorfinalizacao: TWideStringField
      FieldName = 'operadorfinalizacao'
    end
    object cdsMovAnalisenrEntrada: TWideStringField
      FieldName = 'nrEntrada'
      Size = 6
    end
    object cdsMovAnaliseobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object dSourceMovAnalise: TDataSource
    DataSet = cdsMovAnalise
    Left = 720
    Top = 280
  end
  object sdsSenhas: TSQLDataSet
    CommandText = 'select * from senhas limit 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 464
    Top = 352
  end
  object dsSenhas: TDataSetProvider
    DataSet = sdsSenhas
    Left = 552
    Top = 352
  end
  object cdsSenhas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsSenhas'
    Left = 624
    Top = 352
    object cdsSenhasadministrador: TWideStringField
      FieldName = 'administrador'
      Size = 1
    end
    object cdsSenhasip: TWideStringField
      FieldName = 'ip'
      Size = 15
    end
    object cdsSenhasoperador: TWideStringField
      FieldName = 'operador'
      Size = 10
    end
    object cdsSenhascodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsSenhascodigovendedor: TWideStringField
      FieldName = 'codigovendedor'
      Size = 3
    end
    object cdsSenhassenha: TWideStringField
      FieldName = 'senha'
      Size = 60
    end
    object cdsSenhasgrupo: TWideStringField
      FieldName = 'grupo'
      Size = 15
    end
    object cdsSenhasgerente: TWideStringField
      FieldName = 'gerente'
      Size = 1
    end
    object cdsSenhasestcad: TWideStringField
      FieldName = 'estcad'
      Size = 1
    end
    object cdsSenhasestalt: TWideStringField
      FieldName = 'estalt'
      Size = 1
    end
    object cdsSenhasestcusto: TWideStringField
      FieldName = 'estcusto'
      Size = 1
    end
    object cdsSenhasestentrada: TWideStringField
      FieldName = 'estentrada'
      Size = 1
    end
    object cdsSenhasEstvercustos: TWideStringField
      FieldName = 'Estvercustos'
      Size = 1
    end
    object cdsSenhasestforn: TWideStringField
      FieldName = 'estforn'
      Size = 1
    end
    object cdsSenhasestprat: TWideStringField
      FieldName = 'estprat'
      Size = 1
    end
    object cdsSenhasestacerto: TWideStringField
      FieldName = 'estacerto'
      Size = 1
    end
    object cdsSenhasesttransf: TWideStringField
      FieldName = 'esttransf'
      Size = 1
    end
    object cdsSenhasestperdas: TWideStringField
      FieldName = 'estperdas'
      Size = 1
    end
    object cdsSenhasestreter: TWideStringField
      FieldName = 'estreter'
      Size = 1
    end
    object cdsSenhasestreverter: TWideStringField
      FieldName = 'estreverter'
      Size = 1
    end
    object cdsSenhasestnegativo: TWideStringField
      FieldName = 'estnegativo'
      Size = 1
    end
    object cdsSenhasestprovisorio: TWideStringField
      FieldName = 'estprovisorio'
      Size = 1
    end
    object cdsSenhasestexcluir: TWideStringField
      FieldName = 'estexcluir'
      Size = 1
    end
    object cdsSenhasestinventario: TWideStringField
      FieldName = 'estinventario'
      Size = 1
    end
    object cdsSenhasestinventarioencerrar: TWideStringField
      FieldName = 'estinventarioencerrar'
      Size = 1
    end
    object cdsSenhasestbalanco: TWideStringField
      FieldName = 'estbalanco'
      Size = 1
    end
    object cdsSenhasestvenderabaixocusto: TWideStringField
      FieldName = 'estvenderabaixocusto'
      Size = 1
    end
    object cdsSenhasvenvenda: TWideStringField
      FieldName = 'venvenda'
      Size = 1
    end
    object cdsSenhasvenalterarpreco: TWideStringField
      FieldName = 'venalterarpreco'
      Size = 1
    end
    object cdsSenhasvenliberarrest: TWideStringField
      FieldName = 'venliberarrest'
      Size = 1
    end
    object cdsSenhasvendesconto: TWideStringField
      FieldName = 'vendesconto'
      Size = 1
    end
    object cdsSenhasvendevolucao: TWideStringField
      FieldName = 'vendevolucao'
      Size = 1
    end
    object cdsSenhasvenexcluir: TWideStringField
      FieldName = 'venexcluir'
      Size = 1
    end
    object cdsSenhasvenaltervendedor: TWideStringField
      FieldName = 'venaltervendedor'
      Size = 1
    end
    object cdsSenhasvendaaltvenc: TWideStringField
      FieldName = 'vendaaltvenc'
      Size = 1
    end
    object cdsSenhasvendexcluiritem: TWideStringField
      FieldName = 'vendexcluiritem'
      Size = 1
    end
    object cdsSenhasrelcaixa: TWideStringField
      FieldName = 'relcaixa'
      Size = 1
    end
    object cdsSenhasrelvendas: TWideStringField
      FieldName = 'relvendas'
      Size = 1
    end
    object cdsSenhasrelreceber: TWideStringField
      FieldName = 'relreceber'
      Size = 1
    end
    object cdsSenhasrelcomissao: TWideStringField
      FieldName = 'relcomissao'
      Size = 1
    end
    object cdsSenhasoutcadcp: TWideStringField
      FieldName = 'outcadcp'
      Size = 1
    end
    object cdsSenhasoutcontpag: TWideStringField
      FieldName = 'outcontpag'
      Size = 1
    end
    object cdsSenhasoutmovbanco: TWideStringField
      FieldName = 'outmovbanco'
      Size = 1
    end
    object cdsSenhasoutbackup: TWideStringField
      FieldName = 'outbackup'
      Size = 1
    end
    object cdsSenhasoutretirada: TWideStringField
      FieldName = 'outretirada'
      Size = 1
    end
    object cdsSenhasoutimpcupom: TWideStringField
      FieldName = 'outimpcupom'
      Size = 1
    end
    object cdsSenhasoutreimprecibo: TWideStringField
      FieldName = 'outreimprecibo'
      Size = 1
    end
    object cdsSenhasoutfechmen: TWideStringField
      FieldName = 'outfechmen'
      Size = 1
    end
    object cdsSenhasoutfechanu: TWideStringField
      FieldName = 'outfechanu'
      Size = 1
    end
    object cdsSenhasoutcheques: TWideStringField
      FieldName = 'outcheques'
      Size = 1
    end
    object cdsSenhasrotcadoper: TWideStringField
      FieldName = 'rotcadoper'
      Size = 1
    end
    object cdsSenhasoutcartoes: TWideStringField
      FieldName = 'outcartoes'
      Size = 1
    end
    object cdsSenhasrotconf: TWideStringField
      FieldName = 'rotconf'
      Size = 1
    end
    object cdsSenhasrotprazos: TWideStringField
      FieldName = 'rotprazos'
      Size = 1
    end
    object cdsSenhasrotcaixa: TWideStringField
      FieldName = 'rotcaixa'
      Size = 1
    end
    object cdsSenhasrotiniciardia: TWideStringField
      FieldName = 'rotiniciardia'
      Size = 1
    end
    object cdsSenhasrotaltersaldo: TWideStringField
      FieldName = 'rotaltersaldo'
      Size = 1
    end
    object cdsSenhasrotclasse: TWideStringField
      FieldName = 'rotclasse'
      Size = 3
    end
    object cdsSenhasrotcheques: TWideStringField
      FieldName = 'rotcheques'
      Size = 1
    end
    object cdsSenhasrotcartoes: TWideStringField
      FieldName = 'rotcartoes'
      Size = 1
    end
    object cdsSenhasrotcaixaadm: TWideStringField
      FieldName = 'rotcaixaadm'
      Size = 1
    end
    object cdsSenhasrotcadvendedor: TWideStringField
      FieldName = 'rotcadvendedor'
      Size = 1
    end
    object cdsSenhasrotlogar: TWideStringField
      FieldName = 'rotlogar'
      Size = 1
    end
    object cdsSenhasclialterarcad: TWideStringField
      FieldName = 'clialterarcad'
      Size = 1
    end
    object cdsSenhasclialtercad2: TWideStringField
      FieldName = 'clialtercad2'
      Size = 1
    end
    object cdsSenhasclicadastrar: TWideStringField
      FieldName = 'clicadastrar'
      Size = 1
    end
    object cdsSenhasclirestricao: TWideStringField
      FieldName = 'clirestricao'
      Size = 1
    end
    object cdsSenhasclireceber: TWideStringField
      FieldName = 'clireceber'
      Size = 1
    end
    object cdsSenhascliestornar: TWideStringField
      FieldName = 'cliestornar'
      Size = 1
    end
    object cdsSenhasclivermovimento: TWideStringField
      FieldName = 'clivermovimento'
      Size = 1
    end
    object cdsSenhascliverdados: TWideStringField
      FieldName = 'cliverdados'
      Size = 1
    end
    object cdsSenhasclialterarsenha: TWideStringField
      FieldName = 'clialterarsenha'
      Size = 1
    end
    object cdsSenhasclialterarpar: TWideStringField
      FieldName = 'clialterarpar'
      Size = 1
    end
    object cdsSenhascliinadimplente: TWideStringField
      FieldName = 'cliinadimplente'
      Size = 1
    end
    object cdsSenhasclidescontos: TWideStringField
      FieldName = 'clidescontos'
      Size = 1
    end
    object cdsSenhascliperdoar: TWideStringField
      FieldName = 'cliperdoar'
      Size = 1
    end
    object cdsSenhasclimovextra: TWideStringField
      FieldName = 'climovextra'
      Size = 1
    end
    object cdsSenhasclirenegocia: TWideStringField
      FieldName = 'clirenegocia'
      Size = 1
    end
    object cdsSenhasCliCredSit: TWideStringField
      FieldName = 'CliCredSit'
      Size = 1
    end
    object cdsSenhasClisaldo: TWideStringField
      FieldName = 'Clisaldo'
      Size = 1
    end
    object cdsSenhasCliexcluir: TWideStringField
      FieldName = 'Cliexcluir'
      Size = 1
    end
    object cdsSenhasclialterarvencimento: TWideStringField
      FieldName = 'clialterarvencimento'
      Size = 1
    end
    object cdsSenhasoutfaturamento: TWideStringField
      FieldName = 'outfaturamento'
      Size = 1
    end
    object cdsSenhasclisituacao: TWideStringField
      FieldName = 'clisituacao'
      Size = 1
    end
    object cdsSenhasclijurosch: TWideStringField
      FieldName = 'clijurosch'
      Size = 1
    end
    object cdsSenhasCodigoFilial: TWideStringField
      FieldName = 'CodigoFilial'
      Size = 5
    end
    object cdsSenhasClidispensa: TWideStringField
      FieldName = 'Clidispensa'
      Size = 1
    end
    object cdsSenhasoutmudamsg: TWideStringField
      FieldName = 'outmudamsg'
      Size = 1
    end
    object cdsSenhasOutFilial: TWideStringField
      FieldName = 'OutFilial'
      Size = 1
    end
    object cdsSenhasdespesasCad: TWideStringField
      FieldName = 'despesasCad'
      Size = 1
    end
    object cdsSenhasdespesasmudar: TWideStringField
      FieldName = 'despesasmudar'
      Size = 1
    end
    object cdsSenhasDespesaslancar: TWideStringField
      FieldName = 'Despesaslancar'
      Size = 1
    end
    object cdsSenhasDespesasFec: TWideStringField
      FieldName = 'DespesasFec'
      Size = 1
    end
    object cdsSenhasreceitascad: TWideStringField
      FieldName = 'receitascad'
      Size = 1
    end
    object cdsSenhasreceitaslancar: TWideStringField
      FieldName = 'receitaslancar'
      Size = 1
    end
    object cdsSenhasreceitasfec: TWideStringField
      FieldName = 'receitasfec'
      Size = 1
    end
    object cdsSenhasservicogerar: TWideStringField
      FieldName = 'servicogerar'
      Size = 1
    end
    object cdsSenhasfilialacesso: TWideStringField
      FieldName = 'filialacesso'
      Size = 5
    end
    object cdsSenhasoutalterarboleto: TWideStringField
      FieldName = 'outalterarboleto'
      Size = 1
    end
    object cdsSenhasclicredprov: TWideStringField
      FieldName = 'clicredprov'
      Size = 1
    end
    object cdsSenhasestcontrolevencidos: TWideStringField
      FieldName = 'estcontrolevencidos'
      Size = 1
    end
    object cdsSenhasrotsobrafalta: TWideStringField
      FieldName = 'rotsobrafalta'
      Size = 1
    end
    object cdsSenhasvenmudarvendedor: TWideStringField
      FieldName = 'venmudarvendedor'
      Size = 1
    end
    object cdsSenhasrelacessorelmatriz: TWideStringField
      FieldName = 'relacessorelmatriz'
      Size = 1
    end
    object cdsSenhasrelreceberacompmensal: TWideStringField
      FieldName = 'relreceberacompmensal'
      Size = 1
    end
    object cdsSenhasrelreceberanalcli: TWideStringField
      FieldName = 'relreceberanalcli'
      Size = 1
    end
    object cdsSenhasrelcontasgeradas: TWideStringField
      FieldName = 'relcontasgeradas'
      Size = 1
    end
    object cdsSenhasrelcontasrecsintfilial: TWideStringField
      FieldName = 'relcontasrecsintfilial'
      Size = 1
    end
    object cdsSenhasrelcontasrecanacli: TWideStringField
      FieldName = 'relcontasrecanacli'
      Size = 1
    end
    object cdsSenhasrelmovclientes: TWideStringField
      FieldName = 'relmovclientes'
      Size = 1
    end
    object cdsSenhasrelcontasrecsintFil: TWideStringField
      FieldName = 'relcontasrecsintFil'
      Size = 1
    end
    object cdsSenhasrelcontasrecanalcli: TWideStringField
      FieldName = 'relcontasrecanalcli'
      Size = 1
    end
    object cdsSenhasrotcontratos: TWideStringField
      FieldName = 'rotcontratos'
      Size = 1
    end
    object cdsSenhasrelinadimplencia: TWideStringField
      FieldName = 'relinadimplencia'
      Size = 1
    end
    object cdsSenhasoutpatrimonio: TWideStringField
      FieldName = 'outpatrimonio'
      Size = 1
    end
    object cdsSenhascliRecBoletoDeposito: TWideStringField
      FieldName = 'cliRecBoletoDeposito'
      Size = 1
    end
    object cdsSenhasclilancempdh: TWideStringField
      FieldName = 'clilancempdh'
      Size = 1
    end
    object cdsSenhasclilancempch: TWideStringField
      FieldName = 'clilancempch'
      Size = 1
    end
    object cdsSenhasclilanccomprati: TWideStringField
      FieldName = 'clilanccomprati'
      Size = 1
    end
    object cdsSenhasclitrocach: TWideStringField
      FieldName = 'clitrocach'
      Size = 1
    end
    object cdsSenhashorainiciartrabalho: TTimeField
      FieldName = 'horainiciartrabalho'
    end
    object cdsSenhashorafinalizartrabalho: TTimeField
      FieldName = 'horafinalizartrabalho'
    end
    object cdsSenhasoutfuncionarios: TWideStringField
      FieldName = 'outfuncionarios'
      Size = 1
    end
    object cdsSenhasultimasenha: TWideStringField
      FieldName = 'ultimasenha'
      Size = 60
    end
    object cdsSenhasdataultimasenha: TDateField
      FieldName = 'dataultimasenha'
    end
    object cdsSenhaslogado: TWideStringField
      FieldName = 'logado'
      Size = 1
    end
    object cdsSenhasfabricaacessoestoque: TWideStringField
      FieldName = 'fabricaacessoestoque'
      Size = 1
    end
    object cdsSenhasfabricafinalizarproducao: TWideStringField
      FieldName = 'fabricafinalizarproducao'
      Size = 1
    end
    object cdsSenhasfabricaentradamateriaprima: TWideStringField
      FieldName = 'fabricaentradamateriaprima'
      Size = 1
    end
    object cdsSenhasesthist: TWideStringField
      FieldName = 'esthist'
      Size = 1
    end
    object cdsSenhasvendarredondamento: TWideStringField
      FieldName = 'vendarredondamento'
      Size = 1
    end
    object cdsSenhasoutcontpagquitar: TWideStringField
      FieldName = 'outcontpagquitar'
      Size = 1
    end
    object cdsSenhasvendecfprevenda: TWideStringField
      FieldName = 'vendecfprevenda'
      Size = 1
    end
    object cdsSenhasclirenegvalor: TWideStringField
      FieldName = 'clirenegvalor'
      Size = 1
    end
    object cdsSenhasdespesasrel: TWideStringField
      FieldName = 'despesasrel'
      Size = 1
    end
    object cdsSenhasosabrir: TWideStringField
      FieldName = 'osabrir'
      Size = 1
    end
    object cdsSenhasosfechar: TWideStringField
      FieldName = 'osfechar'
      Size = 1
    end
    object cdsSenhasosincluirpecas: TWideStringField
      FieldName = 'osincluirpecas'
      Size = 1
    end
    object cdsSenhasosverdadoscliente: TWideStringField
      FieldName = 'osverdadoscliente'
      Size = 1
    end
    object cdsSenhasosmodificar: TWideStringField
      FieldName = 'osmodificar'
      Size = 1
    end
    object cdsSenhasvenditemgeral: TWideStringField
      FieldName = 'venditemgeral'
      Size = 1
    end
    object cdsSenhasrelauditoria: TWideStringField
      FieldName = 'relauditoria'
      Size = 1
    end
    object cdsSenhasvenfinprevendapre: TWideStringField
      FieldName = 'venfinprevendapre'
      Size = 1
    end
    object cdsSenhasvendprevenda: TWideStringField
      FieldName = 'vendprevenda'
      Size = 1
    end
    object cdsSenhasmudarenderecoentrega: TWideStringField
      FieldName = 'mudarenderecoentrega'
      Size = 1
    end
    object cdsSenhasentregaposterior: TWideStringField
      FieldName = 'entregaposterior'
      Size = 1
    end
    object cdsSenhasromaneio: TWideStringField
      FieldName = 'romaneio'
      Size = 1
    end
    object cdsSenhasfidelizacao: TWideStringField
      FieldName = 'fidelizacao'
      Size = 1
    end
    object cdsSenhasrelfecfinanceiro: TWideStringField
      FieldName = 'relfecfinanceiro'
      Size = 1
    end
    object cdsSenhascodigodefault: TWideStringField
      FieldName = 'codigodefault'
      Size = 4
    end
    object cdsSenhasconcluirentrega: TWideStringField
      FieldName = 'concluirentrega'
      Size = 1
    end
    object cdsSenhaslancarbonusvenda: TWideStringField
      FieldName = 'lancarbonusvenda'
      Size = 1
    end
    object cdsSenhastrocarsenha: TWideStringField
      FieldName = 'trocarsenha'
      Size = 1
    end
    object cdsSenhasusaragenda: TWideStringField
      FieldName = 'usaragenda'
      Size = 1
    end
    object cdsSenhasvendescontogerencial: TWideStringField
      FieldName = 'vendescontogerencial'
      Size = 1
    end
    object cdsSenhasestconstransf: TWideStringField
      FieldName = 'estconstransf'
      Size = 1
    end
    object cdsSenhasgerenciaos: TWideStringField
      FieldName = 'gerenciaos'
      Size = 1
    end
    object cdsSenhasexcluiritemos: TWideStringField
      FieldName = 'excluiritemos'
      Size = 1
    end
    object cdsSenhascontrolecheques: TWideStringField
      FieldName = 'controlecheques'
      Size = 1
    end
    object cdsSenhasmudarnomeclientecupom: TWideStringField
      FieldName = 'mudarnomeclientecupom'
      Size = 1
    end
    object cdsSenhaspesquisadocs: TWideStringField
      FieldName = 'pesquisadocs'
      Size = 1
    end
    object cdsSenhasmodificarmesfiscal: TWideStringField
      FieldName = 'modificarmesfiscal'
      Size = 1
    end
    object cdsSenhasatribuirfuncionarioos: TWideStringField
      FieldName = 'atribuirfuncionarioos'
      Size = 1
    end
    object cdsSenhasrelmetasvendas: TWideStringField
      FieldName = 'relmetasvendas'
      Size = 1
    end
    object cdsSenhascontroleproducaoos: TWideStringField
      FieldName = 'controleproducaoos'
      Size = 1
    end
    object cdsSenhasoutrestricoesbloq: TWideStringField
      FieldName = 'outrestricoesbloq'
      Size = 1
    end
    object cdsSenhasoutrosvervalorcontaspagar: TWideStringField
      FieldName = 'outrosvervalorcontaspagar'
      Size = 1
    end
    object cdsSenhasverhistoricocompracliente: TWideStringField
      FieldName = 'verhistoricocompracliente'
      Size = 1
    end
    object cdsSenhasfuncao: TWideStringField
      FieldName = 'funcao'
      Size = 15
    end
    object cdsSenhasbiometria: TWideMemoField
      FieldName = 'biometria'
      BlobType = ftWideMemo
    end
    object cdsSenhasativabiometria: TWideStringField
      FieldName = 'ativabiometria'
      Size = 1
    end
    object cdsSenhasvenitenscodigoduplos: TWideStringField
      FieldName = 'venitenscodigoduplos'
      Size = 1
    end
    object cdsSenhasclireceber2: TWideStringField
      FieldName = 'clireceber2'
      Size = 1
    end
    object cdsSenhasanalisegerencial: TWideStringField
      FieldName = 'analisegerencial'
      Size = 1
    end
    object cdsSenhasvendaatacado: TWideStringField
      FieldName = 'vendaatacado'
      Size = 1
    end
    object cdsSenhasatribuircobrador: TWideStringField
      FieldName = 'atribuircobrador'
      Size = 1
    end
    object cdsSenhasalterartipocliente: TWideStringField
      FieldName = 'alterartipocliente'
      Size = 1
    end
    object cdsSenhaspesquisapreco: TWideStringField
      FieldName = 'pesquisapreco'
      Size = 1
    end
    object cdsSenhascargo: TWideStringField
      FieldName = 'cargo'
      Size = 30
    end
    object cdsSenhasemitirnfe: TWideStringField
      FieldName = 'emitirnfe'
      Size = 1
    end
    object cdsSenhasemail: TWideMemoField
      FieldName = 'email'
      BlobType = ftWideMemo
    end
    object cdsSenhasdatanascimento: TDateField
      FieldName = 'datanascimento'
    end
    object cdsSenhasdisponivel: TWideStringField
      FieldName = 'disponivel'
      Size = 1
    end
    object cdsSenhasipacessoautorizado: TWideMemoField
      FieldName = 'ipacessoautorizado'
      BlobType = ftWideMemo
    end
    object cdsSenhastesoureiro: TWideStringField
      FieldName = 'tesoureiro'
      Size = 1
    end
    object cdsSenhasdocupload: TWideStringField
      FieldName = 'docupload'
      Size = 1
    end
    object cdsSenhasdocdownload: TWideStringField
      FieldName = 'docdownload'
      Size = 1
    end
    object cdsSenhasprospect: TWideStringField
      FieldName = 'prospect'
      Size = 1
    end
    object cdsSenhasnomecompleto: TWideStringField
      FieldName = 'nomecompleto'
      Size = 50
    end
    object cdsSenhascidade: TWideStringField
      FieldName = 'cidade'
      Size = 30
    end
    object cdsSenhaslatitude: TFMTBCDField
      FieldName = 'latitude'
      Precision = 20
      Size = 15
    end
    object cdsSenhaslongitude: TFMTBCDField
      FieldName = 'longitude'
      Precision = 20
      Size = 15
    end
    object cdsSenhasaccuracy: TIntegerField
      FieldName = 'accuracy'
    end
    object cdsSenhasiqservicosonline: TWideStringField
      FieldName = 'iqservicosonline'
      Size = 1
    end
    object cdsSenhasalterarstatussetorproducao: TWideStringField
      FieldName = 'alterarstatussetorproducao'
      Size = 1
    end
    object cdsSenhasencerrarbalanco: TWideStringField
      FieldName = 'encerrarbalanco'
      Size = 1
    end
    object cdsSenhashavercliente: TWideStringField
      FieldName = 'havercliente'
      Size = 1
    end
    object cdsSenhasrelcaixafechados: TWideStringField
      FieldName = 'relcaixafechados'
      Size = 1
    end
    object cdsSenhasacessoweb: TWideStringField
      FieldName = 'acessoweb'
      Size = 1
    end
    object cdsSenhasexcluido: TWideStringField
      FieldName = 'excluido'
      Size = 1
    end
    object cdsSenhasfechamentocaixadigitacao: TWideStringField
      FieldName = 'fechamentocaixadigitacao'
      Size = 1
    end
    object cdsSenhasalterarContasPagar: TWideStringField
      FieldName = 'alterarContasPagar'
      Size = 1
    end
    object cdsSenhascancelarContasPagar: TWideStringField
      FieldName = 'cancelarContasPagar'
      Size = 1
    end
    object cdsSenhasrelancamentoContaBancaria: TWideStringField
      FieldName = 'relancamentoContaBancaria'
      Size = 1
    end
    object cdsSenhasparcelarEntrada: TWideStringField
      FieldName = 'parcelarEntrada'
      Size = 1
    end
    object cdsSenhasiqscloud: TWideStringField
      FieldName = 'iqscloud'
      Size = 1
    end
    object cdsSenhaslibEntSemPedido: TWideStringField
      FieldName = 'libEntSemPedido'
      Size = 1
    end
    object cdsSenhasmanipularpedidocompra: TWideStringField
      FieldName = 'manipularpedidocompra'
      Size = 1
    end
    object cdsSenhascancelarAgendamentoCobranca: TWideStringField
      FieldName = 'cancelarAgendamentoCobranca'
      Size = 1
    end
    object cdsSenhassincronizar: TWideStringField
      FieldName = 'sincronizar'
      Size = 1
    end
    object cdsSenhastransferenciaentreprodutos: TWideStringField
      FieldName = 'transferenciaentreprodutos'
      Size = 1
    end
    object cdsSenhassupervisor: TWideStringField
      FieldName = 'supervisor'
      Size = 15
    end
    object cdsSenhasconcedercreditocadastro: TWideStringField
      FieldName = 'concedercreditocadastro'
      Size = 1
    end
    object cdsSenhasadministradoriqcard: TWideStringField
      FieldName = 'administradoriqcard'
      Size = 1
    end
    object cdsSenhasencerraranalise: TWideStringField
      FieldName = 'encerraranalise'
      Size = 1
    end
    object cdsSenhasajustaranalise: TWideStringField
      FieldName = 'ajustaranalise'
      Size = 1
    end
    object cdsSenhasatualizarEstoqueColeta: TWideStringField
      FieldName = 'atualizarEstoqueColeta'
      Size = 1
    end
    object cdsSenhasconfirmaranalise: TWideStringField
      FieldName = 'confirmaranalise'
      Size = 1
    end
  end
  object dSourceSenhas: TDataSource
    DataSet = cdsSenhas
    Left = 717
    Top = 352
  end
  object sdsPadraoAnalise: TSQLDataSet
    CommandText = 'select * from padroesAnaliseLeite limit 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 464
    Top = 424
  end
  object DsPadraoAnalise: TDataSetProvider
    DataSet = sdsPadraoAnalise
    Left = 552
    Top = 424
  end
  object cdsPadraoAnalise: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DsPadraoAnalise'
    Left = 625
    Top = 408
    object cdsPadraoAnaliseid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPadraoAnalisedescricao: TWideStringField
      FieldName = 'descricao'
      Size = 300
    end
    object cdsPadraoAnalisefrequencia: TWideStringField
      FieldName = 'frequencia'
      Size = 300
    end
    object cdsPadraoAnaliseprocedimento: TWideStringField
      FieldName = 'procedimento'
      Size = 300
    end
    object cdsPadraoAnaliseacaocorretiva: TWideStringField
      FieldName = 'acaocorretiva'
      Size = 300
    end
    object cdsPadraoAnaliseresponsavel: TWideStringField
      FieldName = 'responsavel'
      Size = 300
    end
  end
  object dSourcePadraoAnalise: TDataSource
    DataSet = cdsPadraoAnalise
    Left = 715
    Top = 424
  end
  object dsFiliais: TDataSetProvider
    DataSet = sdsFiliais
    Left = 128
    Top = 520
  end
  object sdsFiliais: TSQLDataSet
    CommandText = 'select * from filiais where grupo = '#39'1'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 40
    Top = 520
  end
  object cdsFiliais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsFiliais'
    Left = 208
    Top = 520
    object cdsFiliaisdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 35
    end
    object cdsFiliaisempresa: TWideStringField
      FieldName = 'empresa'
      Size = 50
    end
    object cdsFiliaisfantasia: TWideStringField
      FieldName = 'fantasia'
      Size = 50
    end
    object cdsFiliaiscnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 18
    end
    object cdsFiliaisinscricao: TWideStringField
      FieldName = 'inscricao'
    end
    object cdsFiliaisendereco: TWideStringField
      FieldName = 'endereco'
      Size = 40
    end
    object cdsFiliaisnumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object cdsFiliaiscomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 50
    end
    object cdsFiliaiscidade: TWideStringField
      FieldName = 'cidade'
      Size = 30
    end
    object cdsFiliaisbairro: TWideStringField
      FieldName = 'bairro'
    end
    object cdsFiliaiscep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
    object cdsFiliaisestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object cdsFiliaistelefone1: TWideStringField
      FieldName = 'telefone1'
      Size = 16
    end
    object cdsFiliaistelefone2: TWideStringField
      FieldName = 'telefone2'
      Size = 16
    end
    object cdsFiliaistelefone3: TWideStringField
      FieldName = 'telefone3'
      Size = 16
    end
    object cdsFiliaisemail: TWideStringField
      FieldName = 'email'
      Size = 40
    end
    object cdsFiliaisinscricaomunicipal: TWideStringField
      FieldName = 'inscricaomunicipal'
    end
    object cdsFiliaisCodigoFilial: TWideStringField
      FieldName = 'CodigoFilial'
      Size = 5
    end
    object cdsFiliaiscodigobanco: TIntegerField
      FieldName = 'codigobanco'
    end
    object cdsFiliaisbanco: TWideStringField
      FieldName = 'banco'
      Size = 15
    end
    object cdsFiliaisagencia: TWideStringField
      FieldName = 'agencia'
      Size = 6
    end
    object cdsFiliaisconta: TWideStringField
      FieldName = 'conta'
    end
    object cdsFiliaiscontactocobranca: TWideStringField
      FieldName = 'contactocobranca'
      Size = 30
    end
    object cdsFiliaistelefonecobranca: TWideStringField
      FieldName = 'telefonecobranca'
      Size = 11
    end
    object cdsFiliaisgrupo: TWideStringField
      FieldName = 'grupo'
      Size = 15
    end
    object cdsFiliaisativa: TWideStringField
      FieldName = 'ativa'
      Size = 1
    end
    object cdsFiliaiscontadespesa: TWideStringField
      FieldName = 'contadespesa'
      Size = 5
    end
    object cdsFiliaissubconta: TWideStringField
      FieldName = 'subconta'
      Size = 5
    end
    object cdsFiliaisdescricaoconta: TWideStringField
      FieldName = 'descricaoconta'
      Size = 30
    end
    object cdsFiliaisdescricaosubconta: TWideStringField
      FieldName = 'descricaosubconta'
      Size = 30
    end
    object cdsFiliaissmtp: TWideStringField
      FieldName = 'smtp'
      Size = 60
    end
    object cdsFiliaisporta: TIntegerField
      FieldName = 'porta'
    end
    object cdsFiliaisusuarioemail: TWideStringField
      FieldName = 'usuarioemail'
      Size = 50
    end
    object cdsFiliaissenhaemail: TWideStringField
      FieldName = 'senhaemail'
      Size = 50
    end
    object cdsFiliaiswebsite: TWideStringField
      FieldName = 'website'
      Size = 100
    end
    object cdsFiliaisliberacao: TWideStringField
      FieldName = 'liberacao'
      Size = 30
    end
    object cdsFiliaisvalidade: TWideStringField
      FieldName = 'validade'
      Size = 30
    end
    object cdsFiliaisdata: TDateField
      FieldName = 'data'
    end
    object cdsFiliaisdatacontrato: TDateField
      FieldName = 'datacontrato'
    end
    object cdsFiliaisloginiqsistemas: TWideStringField
      FieldName = 'loginiqsistemas'
      Size = 60
    end
    object cdsFiliaissenhaiqsistemas: TWideStringField
      FieldName = 'senhaiqsistemas'
      Size = 60
    end
    object cdsFiliaislogomarca: TBlobField
      FieldName = 'logomarca'
    end
    object cdsFiliaisdescricaoCNAE: TWideStringField
      FieldName = 'descricaoCNAE'
      Size = 100
    end
    object cdsFiliaisCNAEsecundario: TWideStringField
      FieldName = 'CNAEsecundario'
      Size = 10
    end
    object cdsFiliaisdescricaoCNAEsecundario: TWideStringField
      FieldName = 'descricaoCNAEsecundario'
      Size = 100
    end
    object cdsFiliaisCNAEsecundario2: TWideStringField
      FieldName = 'CNAEsecundario2'
      Size = 10
    end
    object cdsFiliaisdescricaoCNAEsecundario2: TWideStringField
      FieldName = 'descricaoCNAEsecundario2'
      Size = 100
    end
    object cdsFiliaisinscricaoestadualinsctributario: TWideStringField
      FieldName = 'inscricaoestadualinsctributario'
    end
    object cdsFiliaisCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object cdsFiliaistipoempresa: TWideStringField
      FieldName = 'tipoempresa'
      Size = 30
    end
    object cdsFiliaiscontador: TWideStringField
      FieldName = 'contador'
      Size = 50
    end
    object cdsFiliaiscrccontador: TWideStringField
      FieldName = 'crccontador'
      Size = 10
    end
    object cdsFiliaisprotect: TWideStringField
      FieldName = 'protect'
      Size = 100
    end
    object cdsFiliaiscontadespesaCA: TWideStringField
      FieldName = 'contadespesaCA'
      Size = 5
    end
    object cdsFiliaissubcontadespesaCA: TWideStringField
      FieldName = 'subcontadespesaCA'
      Size = 5
    end
    object cdsFiliaisdescricaocontaCA: TWideStringField
      FieldName = 'descricaocontaCA'
      Size = 30
    end
    object cdsFiliaisdescricaosubcontaCA: TWideStringField
      FieldName = 'descricaosubcontaCA'
      Size = 30
    end
    object cdsFiliaisnomeCobranca: TWideStringField
      FieldName = 'nomeCobranca'
      Size = 50
    end
    object cdsFiliaisenderecoCobranca: TWideStringField
      FieldName = 'enderecoCobranca'
      Size = 100
    end
    object cdsFiliaisbairroCobranca: TWideStringField
      FieldName = 'bairroCobranca'
    end
    object cdsFiliaiscidadeCobranca: TWideStringField
      FieldName = 'cidadeCobranca'
      Size = 60
    end
    object cdsFiliaiscepCobranca: TWideStringField
      FieldName = 'cepCobranca'
      Size = 10
    end
    object cdsFiliaisufCobranca: TWideStringField
      FieldName = 'ufCobranca'
      Size = 2
    end
    object cdsFiliaisindicadoratividade: TWideStringField
      FieldName = 'indicadoratividade'
      Size = 1
    end
    object cdsFiliaiscpfcontador: TWideStringField
      FieldName = 'cpfcontador'
      Size = 11
    end
    object cdsFiliaiscnpjcontador: TWideStringField
      FieldName = 'cnpjcontador'
      Size = 14
    end
    object cdsFiliaiscepcontador: TWideStringField
      FieldName = 'cepcontador'
      Size = 8
    end
    object cdsFiliaisenderecocontador: TWideStringField
      FieldName = 'enderecocontador'
      Size = 40
    end
    object cdsFiliaisnumerocontador: TWideStringField
      FieldName = 'numerocontador'
      Size = 10
    end
    object cdsFiliaiscomplementocontador: TWideStringField
      FieldName = 'complementocontador'
      Size = 15
    end
    object cdsFiliaisbairrocontador: TWideStringField
      FieldName = 'bairrocontador'
    end
    object cdsFiliaistelefonecontador: TWideStringField
      FieldName = 'telefonecontador'
      Size = 16
    end
    object cdsFiliaisfaxcontador: TWideStringField
      FieldName = 'faxcontador'
      Size = 16
    end
    object cdsFiliaisemailcontador: TWideStringField
      FieldName = 'emailcontador'
      Size = 100
    end
    object cdsFiliaisresponsavel: TWideStringField
      FieldName = 'responsavel'
      Size = 50
    end
    object cdsFiliaiscpfresponsavel: TWideStringField
      FieldName = 'cpfresponsavel'
      Size = 11
    end
    object cdsFiliaiscrt: TWideStringField
      FieldName = 'crt'
      Size = 1
    end
    object cdsFiliaisversaopaf: TWideStringField
      FieldName = 'versaopaf'
      Size = 5
    end
    object cdsFiliaiscidadecontador: TWideStringField
      FieldName = 'cidadecontador'
      Size = 30
    end
    object cdsFiliaisestadocontador: TWideStringField
      FieldName = 'estadocontador'
      Size = 2
    end
    object cdsFiliaisobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 50
    end
    object cdsFiliaisatvidadereceitabruta: TWideStringField
      FieldName = 'atvidadereceitabruta'
      Size = 8
    end
    object cdsFiliaiscodigodctf: TWideStringField
      FieldName = 'codigodctf'
      Size = 7
    end
    object cdsFiliaispercentualreceitabruta: TFMTBCDField
      FieldName = 'percentualreceitabruta'
      Precision = 14
      Size = 3
    end
    object cdsFiliaisftpmidia: TWideStringField
      FieldName = 'ftpmidia'
      Size = 100
    end
    object cdsFiliaisuserftpmidia: TWideStringField
      FieldName = 'userftpmidia'
      Size = 50
    end
    object cdsFiliaissenhaftpmidia: TWideStringField
      FieldName = 'senhaftpmidia'
      Size = 100
    end
    object cdsFiliaiscredenciaisazureblobs: TWideMemoField
      FieldName = 'credenciaisazureblobs'
      BlobType = ftWideMemo
    end
    object cdsFiliaiscredenciaisazureblobsdriveclientes: TWideMemoField
      FieldName = 'credenciaisazureblobsdriveclientes'
      BlobType = ftWideMemo
    end
    object cdsFiliaiscredenciaisconexaodb: TWideMemoField
      FieldName = 'credenciaisconexaodb'
      BlobType = ftWideMemo
    end
    object cdsFiliaisurllogomarca: TWideMemoField
      FieldName = 'urllogomarca'
      BlobType = ftWideMemo
    end
    object cdsFiliaisemailcpfconsulta: TWideStringField
      FieldName = 'emailcpfconsulta'
      Size = 50
    end
    object cdsFiliaissenhacpfconsulta: TWideStringField
      FieldName = 'senhacpfconsulta'
      Size = 50
    end
    object cdsFiliaiscof: TWideStringField
      FieldName = 'cof'
      Size = 1
    end
    object cdsFiliaiscstpisentrada: TWideStringField
      FieldName = 'cstpisentrada'
      Size = 2
    end
    object cdsFiliaispisentrada: TFMTBCDField
      FieldName = 'pisentrada'
      Precision = 7
      Size = 3
    end
    object cdsFiliaiscstcofinsentrada: TWideStringField
      FieldName = 'cstcofinsentrada'
      Size = 2
    end
    object cdsFiliaiscofinsentrada: TFMTBCDField
      FieldName = 'cofinsentrada'
      Precision = 7
      Size = 3
    end
    object cdsFiliaiscstpissaida: TWideStringField
      FieldName = 'cstpissaida'
      Size = 2
    end
    object cdsFiliaispissaida: TFMTBCDField
      FieldName = 'pissaida'
      Precision = 7
      Size = 3
    end
    object cdsFiliaiscstcofinssaida: TWideStringField
      FieldName = 'cstcofinssaida'
      Size = 2
    end
    object cdsFiliaiscsticmssaida: TWideStringField
      FieldName = 'csticmssaida'
      Size = 2
    end
    object cdsFiliaisicmssaida: TFMTBCDField
      FieldName = 'icmssaida'
      Precision = 7
      Size = 3
    end
    object cdsFiliaisfilialnumeracaoboleto: TWideStringField
      FieldName = 'filialnumeracaoboleto'
      Size = 5
    end
    object cdsFiliaiscofinssaida: TFMTBCDField
      FieldName = 'cofinssaida'
      Precision = 7
      Size = 3
    end
    object cdsFiliaissincronizar: TWideStringField
      FieldName = 'sincronizar'
      Size = 1
    end
    object cdsFiliaiseaddados: TWideStringField
      FieldName = 'eaddados'
      Size = 100
    end
    object cdsFiliaislatitude: TFMTBCDField
      FieldName = 'latitude'
      Precision = 20
      Size = 5
    end
    object cdsFiliaislongitude: TFMTBCDField
      FieldName = 'longitude'
      Precision = 20
      Size = 5
    end
    object cdsFiliaisvalidadepromocaoiqcard: TDateField
      FieldName = 'validadepromocaoiqcard'
    end
    object cdsFiliaiscaminhologomarca: TWideStringField
      FieldName = 'caminhologomarca'
      Size = 200
    end
    object cdsFiliaistokeniqcard: TWideStringField
      FieldName = 'tokeniqcard'
      Size = 100
    end
  end
  object DSourceFiliais: TDataSource
    DataSet = cdsFiliais
    Left = 304
    Top = 520
  end
  object sdsTiposLeite: TSQLDataSet
    CommandText = 'select * from tiposleite limit 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 448
    Top = 488
  end
  object dsTiposLeite: TDataSetProvider
    DataSet = sdsTiposLeite
    Left = 536
    Top = 488
  end
  object cdsTiposLeite: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsTiposLeite'
    Left = 624
    Top = 487
    object cdsTiposLeiteid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTiposLeitedescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object cdsTiposLeitecodigoassociado: TWideStringField
      FieldName = 'codigoassociado'
      Size = 10
    end
    object cdsTiposLeiteprodutoassociado: TWideStringField
      FieldName = 'produtoassociado'
      Size = 70
    end
    object cdsTiposLeitecodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsTiposLeitecusto: TFMTBCDField
      FieldName = 'custo'
      Precision = 10
      Size = 2
    end
  end
  object DSourceTiposLeite: TDataSource
    DataSet = cdsTiposLeite
    Left = 714
    Top = 486
  end
  object sdsTotal: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'  inc,tipoleite,SUM(custo * qtdconferida) AS totalCusto' +
      ',SUM(qtdconferida),SUM(quantidade-qtdconferida) as perdas'#13#10' '#13#10'FR' +
      'OM'#13#10'  analise '#13#10'WHERE numero = 0'#13#10'GROUP BY tipoleite;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 432
    Top = 48
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = sdsTotal
    Left = 512
    Top = 48
  end
  object cdsTotal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 592
    Top = 48
    object cdsTotalinc: TIntegerField
      FieldName = 'inc'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTotaltipoleite: TWideStringField
      FieldName = 'tipoleite'
      Size = 50
    end
    object cdsTotaltotalCusto: TFMTBCDField
      FieldName = 'totalCusto'
      Precision = 32
      Size = 4
    end
    object cdsTotalSUMqtdconferida: TFMTBCDField
      FieldName = 'SUM(qtdconferida)'
      Precision = 32
      Size = 2
    end
    object cdsTotalperdas: TFMTBCDField
      FieldName = 'perdas'
      Precision = 32
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsTotal
    Left = 664
    Top = 48
  end
  object sdsContasPagar: TSQLDataSet
    CommandText = 'select * from contaspagar limit 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 448
    Top = 536
  end
  object dsContasPagar: TDataSetProvider
    DataSet = sdsContasPagar
    Left = 536
    Top = 536
  end
  object cdsContasPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsContasPagar'
    Left = 624
    Top = 535
    object cdsContasPagarCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object cdsContasPagardocumento: TWideStringField
      FieldName = 'documento'
    end
    object cdsContasPagarempresa: TWideStringField
      FieldName = 'empresa'
      Size = 50
    end
    object cdsContasPagarhistorico: TWideMemoField
      FieldName = 'historico'
      BlobType = ftWideMemo
    end
    object cdsContasPagarvalor: TFMTBCDField
      FieldName = 'valor'
      Precision = 12
      Size = 2
    end
    object cdsContasPagarmulta: TFMTBCDField
      FieldName = 'multa'
      Precision = 7
      Size = 2
    end
    object cdsContasPagarjurosaodia: TFMTBCDField
      FieldName = 'jurosaodia'
      Precision = 7
      Size = 2
    end
    object cdsContasPagarvencimento: TDateField
      FieldName = 'vencimento'
    end
    object cdsContasPagardatadocumento: TDateField
      FieldName = 'datadocumento'
    end
    object cdsContasPagardata: TDateField
      FieldName = 'data'
    end
    object cdsContasPagarsetor: TWideStringField
      FieldName = 'setor'
      Size = 40
    end
    object cdsContasPagarsubsetor: TWideStringField
      FieldName = 'subsetor'
      Size = 40
    end
    object cdsContasPagarcodcontadespesa: TIntegerField
      FieldName = 'codcontadespesa'
    end
    object cdsContasPagardescricao: TWideStringField
      FieldName = 'descricao'
      Size = 40
    end
    object cdsContasPagarcodsubcontadespesa: TIntegerField
      FieldName = 'codsubcontadespesa'
    end
    object cdsContasPagardescricaosubconta: TWideStringField
      FieldName = 'descricaosubconta'
      Size = 40
    end
    object cdsContasPagardespesa: TWideStringField
      FieldName = 'despesa'
      Size = 1
    end
    object cdsContasPagarCodigoFilial: TWideStringField
      FieldName = 'CodigoFilial'
      Size = 5
    end
    object cdsContasPagarcodigoset: TIntegerField
      FieldName = 'codigoset'
    end
    object cdsContasPagarcodigosubset: TIntegerField
      FieldName = 'codigosubset'
    end
    object cdsContasPagarusuario: TWideStringField
      FieldName = 'usuario'
      Size = 10
    end
    object cdsContasPagarmarcado: TWideStringField
      FieldName = 'marcado'
      Size = 1
    end
    object cdsContasPagarquitado: TWideStringField
      FieldName = 'quitado'
      Size = 1
    end
    object cdsContasPagardataPagamento: TDateField
      FieldName = 'dataPagamento'
    end
    object cdsContasPagargrupo: TWideStringField
      FieldName = 'grupo'
      Size = 15
    end
    object cdsContasPagarcancelado: TWideStringField
      FieldName = 'cancelado'
      Size = 1
    end
    object cdsContasPagarcontabancaria: TWideStringField
      FieldName = 'contabancaria'
    end
    object cdsContasPagarinterpolador: TWideStringField
      FieldName = 'interpolador'
      Size = 8
    end
    object cdsContasPagarrecebida: TWideStringField
      FieldName = 'recebida'
      Size = 1
    end
    object cdsContasPagarconta: TWideStringField
      FieldName = 'conta'
      Size = 5
    end
    object cdsContasPagarsubconta: TWideStringField
      FieldName = 'subconta'
      Size = 5
    end
    object cdsContasPagarip: TWideStringField
      FieldName = 'ip'
      Size = 15
    end
    object cdsContasPagaroperadorlancamento: TWideStringField
      FieldName = 'operadorlancamento'
      Size = 10
    end
    object cdsContasPagarcheque: TFMTBCDField
      FieldName = 'cheque'
      Precision = 20
      Size = 0
    end
    object cdsContasPagarnrparcela: TWideStringField
      FieldName = 'nrparcela'
      Size = 8
    end
    object cdsContasPagarcodigocliente: TIntegerField
      FieldName = 'codigocliente'
    end
    object cdsContasPagarnomeCliente: TWideStringField
      FieldName = 'nomeCliente'
      Size = 50
    end
    object cdsContasPagarnumeroEntrada: TIntegerField
      FieldName = 'numeroEntrada'
    end
    object cdsContasPagarnrAnaliseLeite: TWideStringField
      FieldName = 'nrAnaliseLeite'
      Size = 6
    end
  end
  object DSourceContasPagar: TDataSource
    DataSet = cdsContasPagar
    Left = 714
    Top = 534
  end
  object qrPadrao3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 224
    Top = 56
  end
  object sdsDepositos: TSQLDataSet
    CommandText = 'select * from depositos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 40
    Top = 584
  end
  object dsdepositos: TDataSetProvider
    DataSet = sdsDepositos
    Left = 128
    Top = 584
  end
  object cdsdepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsdepositos'
    Left = 208
    Top = 584
    object cdsdepositosid: TIntegerField
      FieldName = 'id'
    end
    object cdsdepositosidentificacao: TWideStringField
      FieldName = 'identificacao'
      Size = 30
    end
    object cdsdepositosestoque: TFMTBCDField
      FieldName = 'estoque'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsdepositoscodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsdepositosultimaentrada: TDateField
      FieldName = 'ultimaentrada'
    end
  end
  object DSourceDepositos: TDataSource
    DataSet = cdsdepositos
    Left = 304
    Top = 584
  end
  object sdsMovDepositos: TSQLDataSet
    CommandText = 'select * from movdepositos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 40
    Top = 640
  end
  object DSMovdepositos: TDataSetProvider
    DataSet = sdsMovDepositos
    Left = 128
    Top = 635
  end
  object cdsMovDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSMovdepositos'
    Left = 208
    Top = 643
    object cdsMovDepositosid: TIntegerField
      FieldName = 'id'
    end
    object cdsMovDepositoscodigodeposito: TWideStringField
      FieldName = 'codigodeposito'
      Size = 6
    end
    object cdsMovDepositosdeposito: TWideStringField
      FieldName = 'deposito'
      Size = 30
    end
    object cdsMovDepositosreservatorioveiculo: TWideStringField
      FieldName = 'reservatorioveiculo'
      Size = 30
    end
    object cdsMovDepositosnranalise: TWideStringField
      FieldName = 'nranalise'
      Size = 6
    end
    object cdsMovDepositosnrcoleta: TWideStringField
      FieldName = 'nrcoleta'
      Size = 6
    end
    object cdsMovDepositosdata: TDateField
      FieldName = 'data'
    end
    object cdsMovDepositoscodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsMovDepositosquantidade: TFMTBCDField
      FieldName = 'quantidade'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsMovDepositosoperador: TWideStringField
      FieldName = 'operador'
    end
    object cdsMovDepositosip: TWideStringField
      FieldName = 'ip'
    end
    object cdsMovDepositosencerrado: TWideStringField
      FieldName = 'encerrado'
      Size = 1
    end
  end
  object DSourceMovDepositos: TDataSource
    DataSet = cdsMovDepositos
    Left = 309
    Top = 638
  end
  object sdsConfigLaticinio: TSQLDataSet
    CommandText = 
      'select * from configlaticinio where codigofilial = '#39'00001'#39' limit' +
      ' 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 448
    Top = 592
  end
  object dsConfigLaticinio: TDataSetProvider
    DataSet = sdsConfigLaticinio
    Left = 536
    Top = 600
  end
  object cdsConfigLaticinio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsConfigLaticinio'
    Left = 624
    Top = 607
    object cdsConfigLaticinioid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsConfigLaticiniocodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsConfigLaticiniousarprodpadraoleite: TWideStringField
      FieldName = 'usarprodpadraoleite'
      Size = 1
    end
    object cdsConfigLaticiniocodprodpadraoleite: TWideStringField
      FieldName = 'codprodpadraoleite'
      Size = 8
    end
    object cdsConfigLaticinioprodpadraoleite: TWideStringField
      FieldName = 'prodpadraoleite'
      Size = 50
    end
    object cdsConfigLaticiniodestinardepositoentrada: TWideStringField
      FieldName = 'destinardepositoentrada'
      Size = 1
    end
    object cdsConfigLaticiniocodprodpadraocreme: TWideStringField
      FieldName = 'codprodpadraocreme'
      Size = 8
    end
    object cdsConfigLaticinioprodpadraocreme: TWideStringField
      FieldName = 'prodpadraocreme'
      Size = 50
    end
    object cdsConfigLaticiniocodprodpadraomanteiga: TWideStringField
      FieldName = 'codprodpadraomanteiga'
      Size = 8
    end
    object cdsConfigLaticinioprodpadraomanteiga: TWideStringField
      FieldName = 'prodpadraomanteiga'
      Size = 50
    end
    object cdsConfigLaticiniocodfornecedorentrada: TWideStringField
      FieldName = 'codfornecedorentrada'
      Size = 8
    end
    object cdsConfigLaticiniofornecedorentrada: TWideStringField
      FieldName = 'fornecedorentrada'
      Size = 50
    end
    object cdsConfigLaticinioalterarcustoproducao: TWideStringField
      FieldName = 'alterarcustoproducao'
      Size = 1
    end
    object cdsConfigLaticinioloteindividual: TWideStringField
      FieldName = 'loteindividual'
      Size = 1
    end
    object cdsConfigLaticiniocaminhobackground: TWideStringField
      FieldName = 'caminhobackground'
      Size = 200
    end
    object cdsConfigLaticinioproducaopordia: TIntegerField
      FieldName = 'producaopordia'
    end
    object cdsConfigLaticinioparametroleite: TWideStringField
      FieldName = 'parametroleite'
      Size = 1
    end
    object cdsConfigLaticinioadicionarqtdderivados: TWideStringField
      FieldName = 'adicionarqtdderivados'
      Size = 1
    end
    object cdsConfigLaticinioderivadoscadastrosice: TWideStringField
      FieldName = 'derivadoscadastrosice'
      Size = 1
    end
  end
  object dSourceConfigLaticinio: TDataSource
    DataSet = cdsConfigLaticinio
    Left = 706
    Top = 598
  end
  object sdsprd2: TSQLDataSet
    CommandText = 'select * from produtos where codigofilial='#39'00001'#39' limit 10'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 40
    Top = 176
  end
  object dsprd2: TDataSetProvider
    DataSet = sdsprd2
    Left = 128
    Top = 176
  end
  object cdsprd2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprd2'
    Left = 208
    Top = 176
    object cdsprd2id: TIntegerField
      FieldName = 'id'
    end
    object cdsprd2codigo: TWideStringField
      FieldName = 'codigo'
    end
    object cdsprd2codigoinc: TIntegerField
      FieldName = 'codigoinc'
    end
    object cdsprd2descecf: TWideStringField
      FieldName = 'descecf'
      Size = 25
    end
    object cdsprd2unidade: TWideStringField
      FieldName = 'unidade'
      Size = 3
    end
    object cdsprd2quantidade: TFMTBCDField
      FieldName = 'quantidade'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object cdsprd2qtddeposito: TFMTBCDField
      FieldName = 'qtddeposito'
      Precision = 11
      Size = 0
    end
    object cdsprd2qtdprateleiras: TFMTBCDField
      FieldName = 'qtdprateleiras'
      Precision = 12
      Size = 2
    end
    object cdsprd2qtdvencidos: TFMTBCDField
      FieldName = 'qtdvencidos'
      Precision = 12
      Size = 2
    end
    object cdsprd2qtdanterior: TFMTBCDField
      FieldName = 'qtdanterior'
      Precision = 12
      Size = 2
    end
    object cdsprd2qtdultent: TFMTBCDField
      FieldName = 'qtdultent'
      Precision = 12
      Size = 2
    end
    object cdsprd2dataultent: TDateField
      FieldName = 'dataultent'
    end
    object cdsprd2qtdprovisoria: TFMTBCDField
      FieldName = 'qtdprovisoria'
      Precision = 12
      Size = 2
    end
    object cdsprd2descprovisorio: TFMTBCDField
      FieldName = 'descprovisorio'
      Precision = 7
      Size = 2
    end
    object cdsprd2pedidoand: TFMTBCDField
      FieldName = 'pedidoand'
      Precision = 12
      Size = 2
    end
    object cdsprd2qtdultpedido: TFMTBCDField
      FieldName = 'qtdultpedido'
      Precision = 12
      Size = 2
    end
    object cdsprd2data: TDateField
      FieldName = 'data'
    end
    object cdsprd2dataultpedido: TDateField
      FieldName = 'dataultpedido'
    end
    object cdsprd2icms: TFMTBCDField
      FieldName = 'icms'
      Precision = 8
      Size = 2
    end
    object cdsprd2ipi: TFMTBCDField
      FieldName = 'ipi'
      Precision = 8
      Size = 2
    end
    object cdsprd2grupo: TWideStringField
      FieldName = 'grupo'
      Size = 30
    end
    object cdsprd2subgrupo: TWideStringField
      FieldName = 'subgrupo'
      Size = 30
    end
    object cdsprd2custo: TFMTBCDField
      FieldName = 'custo'
      Precision = 14
      Size = 5
    end
    object cdsprd2customedio: TFMTBCDField
      FieldName = 'customedio'
      Precision = 14
      Size = 5
    end
    object cdsprd2ultcusto: TFMTBCDField
      FieldName = 'ultcusto'
      Precision = 14
      Size = 5
    end
    object cdsprd2custototal: TFMTBCDField
      FieldName = 'custototal'
      Precision = 14
      Size = 2
    end
    object cdsprd2margemlucro: TFMTBCDField
      FieldName = 'margemlucro'
      Precision = 10
      Size = 2
    end
    object cdsprd2precovenda: TFMTBCDField
      FieldName = 'precovenda'
      Precision = 14
      Size = 2
    end
    object cdsprd2dataultvenda: TDateField
      FieldName = 'dataultvenda'
    end
    object cdsprd2dataaltpreco: TDateField
      FieldName = 'dataaltpreco'
    end
    object cdsprd2ultpreco: TFMTBCDField
      FieldName = 'ultpreco'
      Precision = 14
      Size = 2
    end
    object cdsprd2estminimo: TFMTBCDField
      FieldName = 'estminimo'
      Precision = 12
      Size = 2
    end
    object cdsprd2codigobarras: TWideStringField
      FieldName = 'codigobarras'
    end
    object cdsprd2situacao: TWideStringField
      FieldName = 'situacao'
      Size = 15
    end
    object cdsprd2tributacao: TWideStringField
      FieldName = 'tributacao'
      Size = 3
    end
    object cdsprd2fornecedor: TWideStringField
      FieldName = 'fornecedor'
      Size = 50
    end
    object cdsprd2fabricante: TWideStringField
      FieldName = 'fabricante'
      Size = 30
    end
    object cdsprd2tipocomissao: TWideStringField
      FieldName = 'tipocomissao'
      Size = 1
    end
    object cdsprd2datacadastro: TDateField
      FieldName = 'datacadastro'
    end
    object cdsprd2validade: TDateField
      FieldName = 'validade'
    end
    object cdsprd2aceitadesconto: TWideStringField
      FieldName = 'aceitadesconto'
      Size = 1
    end
    object cdsprd2descontopromocao: TFMTBCDField
      FieldName = 'descontopromocao'
      Precision = 8
      Size = 2
    end
    object cdsprd2validadepromoc: TDateField
      FieldName = 'validadepromoc'
    end
    object cdsprd2descontomaximo: TFMTBCDField
      FieldName = 'descontomaximo'
      Precision = 8
      Size = 2
    end
    object cdsprd2operador: TWideStringField
      FieldName = 'operador'
      Size = 15
    end
    object cdsprd2pesobruto: TFMTBCDField
      FieldName = 'pesobruto'
      Precision = 12
      Size = 3
    end
    object cdsprd2pesoliquido: TFMTBCDField
      FieldName = 'pesoliquido'
      Precision = 12
      Size = 3
    end
    object cdsprd2marcado: TWideStringField
      FieldName = 'marcado'
      Size = 1
    end
    object cdsprd2embalagem: TIntegerField
      FieldName = 'embalagem'
    end
    object cdsprd2unidembalagem: TWideStringField
      FieldName = 'unidembalagem'
      Size = 3
    end
    object cdsprd2localestoque: TWideStringField
      FieldName = 'localestoque'
      Size = 15
    end
    object cdsprd2descricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsprd2frete: TFMTBCDField
      FieldName = 'frete'
      Precision = 8
      Size = 2
    end
    object cdsprd2FMTBCDField01qtd: TFMTBCDField
      FieldName = '01qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField01custos: TFMTBCDField
      FieldName = '01custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField01vendas: TFMTBCDField
      FieldName = '01vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField02qtd: TFMTBCDField
      FieldName = '02qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField02custos: TFMTBCDField
      FieldName = '02custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField02vendas: TFMTBCDField
      FieldName = '02vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField03qtd: TFMTBCDField
      FieldName = '03qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField03custos: TFMTBCDField
      FieldName = '03custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField03vendas: TFMTBCDField
      FieldName = '03vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField04qtd: TFMTBCDField
      FieldName = '04qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField04custos: TFMTBCDField
      FieldName = '04custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField04vendas: TFMTBCDField
      FieldName = '04vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField05qtd: TFMTBCDField
      FieldName = '05qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField05custos: TFMTBCDField
      FieldName = '05custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField05vendas: TFMTBCDField
      FieldName = '05vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField06qtd: TFMTBCDField
      FieldName = '06qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField06custos: TFMTBCDField
      FieldName = '06custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField06vendas: TFMTBCDField
      FieldName = '06vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField07qtd: TFMTBCDField
      FieldName = '07qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField07custos: TFMTBCDField
      FieldName = '07custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField07vendas: TFMTBCDField
      FieldName = '07vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField08qtd: TFMTBCDField
      FieldName = '08qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField08custos: TFMTBCDField
      FieldName = '08custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField08vendas: TFMTBCDField
      FieldName = '08vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField09qtd: TFMTBCDField
      FieldName = '09qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField09custos: TFMTBCDField
      FieldName = '09custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField09vendas: TFMTBCDField
      FieldName = '09vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField10qtd: TFMTBCDField
      FieldName = '10qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField10custos: TFMTBCDField
      FieldName = '10custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField10vendas: TFMTBCDField
      FieldName = '10vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField11qtd: TFMTBCDField
      FieldName = '11qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField11custos: TFMTBCDField
      FieldName = '11custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField11vendas: TFMTBCDField
      FieldName = '11vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField12qtd: TFMTBCDField
      FieldName = '12qtd'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField12custos: TFMTBCDField
      FieldName = '12custos'
      Precision = 17
      Size = 2
    end
    object cdsprd2FMTBCDField12vendas: TFMTBCDField
      FieldName = '12vendas'
      Precision = 17
      Size = 2
    end
    object cdsprd2CodigoFilial: TWideStringField
      FieldName = 'CodigoFilial'
      Size = 5
    end
    object cdsprd2codigovinculado: TWideStringField
      FieldName = 'codigovinculado'
    end
    object cdsprd2inventario: TFMTBCDField
      FieldName = 'inventario'
      Precision = 12
      Size = 2
    end
    object cdsprd2documento: TIntegerField
      FieldName = 'documento'
    end
    object cdsprd2classe: TWideStringField
      FieldName = 'classe'
      Size = 4
    end
    object cdsprd2qtdretida: TFMTBCDField
      FieldName = 'qtdretida'
      Precision = 10
      Size = 2
    end
    object cdsprd2secao: TWideStringField
      FieldName = 'secao'
    end
    object cdsprd2diasparavencimento: TIntegerField
      FieldName = 'diasparavencimento'
    end
    object cdsprd2lote: TWideStringField
      FieldName = 'lote'
      Size = 15
    end
    object cdsprd2vencimento: TDateField
      FieldName = 'vencimento'
    end
    object cdsprd2anoinventario: TIntegerField
      FieldName = 'anoinventario'
    end
    object cdsprd2inventarioencerrado: TWideStringField
      FieldName = 'inventarioencerrado'
      Size = 1
    end
    object cdsprd2dataencerramentoinventario: TDateField
      FieldName = 'dataencerramentoinventario'
    end
    object cdsprd2qtdaentregar: TFMTBCDField
      FieldName = 'qtdaentregar'
      Precision = 12
      Size = 2
    end
    object cdsprd2precounidade: TFMTBCDField
      FieldName = 'precounidade'
      Precision = 14
      Size = 2
    end
    object cdsprd2generico: TWideStringField
      FieldName = 'generico'
      Size = 3
    end
    object cdsprd2princativo: TWideStringField
      FieldName = 'princativo'
      Size = 130
    end
    object cdsprd2margemsemfinanciamento: TFMTBCDField
      FieldName = 'margemsemfinanciamento'
      Precision = 10
      Size = 2
    end
    object cdsprd2precosemfinanciamento: TFMTBCDField
      FieldName = 'precosemfinanciamento'
      Precision = 10
      Size = 2
    end
    object cdsprd2codigofiscal: TWideStringField
      FieldName = 'codigofiscal'
      Size = 3
    end
    object cdsprd2customedioanterior: TFMTBCDField
      FieldName = 'customedioanterior'
      Precision = 14
      Size = 5
    end
    object cdsprd2ativacompdesc: TWideStringField
      FieldName = 'ativacompdesc'
      Size = 1
    end
    object cdsprd2inventarionumero: TIntegerField
      FieldName = 'inventarionumero'
    end
    object cdsprd2custofornecedor: TFMTBCDField
      FieldName = 'custofornecedor'
      Precision = 14
      Size = 5
    end
    object cdsprd2qtdminimadesc: TFMTBCDField
      FieldName = 'qtdminimadesc'
      Precision = 10
      Size = 2
    end
    object cdsprd2qtdprevenda: TFMTBCDField
      FieldName = 'qtdprevenda'
      Precision = 12
      Size = 2
    end
    object cdsprd2parcelamentomax: TIntegerField
      FieldName = 'parcelamentomax'
    end
    object cdsprd2precoatacado: TFMTBCDField
      FieldName = 'precoatacado'
      Precision = 12
      Size = 2
    end
    object cdsprd2grade: TWideStringField
      FieldName = 'grade'
    end
    object cdsprd2detalhetecnico: TWideMemoField
      FieldName = 'detalhetecnico'
      BlobType = ftWideMemo
    end
    object cdsprd2origem: TWideStringField
      FieldName = 'origem'
      Size = 50
    end
    object cdsprd2modalidadeDetBaseCalcICMS: TWideStringField
      FieldName = 'modalidadeDetBaseCalcICMS'
      Size = 100
    end
    object cdsprd2percentualRedBaseCalcICMS: TFMTBCDField
      FieldName = 'percentualRedBaseCalcICMS'
      Precision = 7
      Size = 2
    end
    object cdsprd2modalidadedetBaseCalcICMsST: TWideStringField
      FieldName = 'modalidadedetBaseCalcICMsST'
      Size = 100
    end
    object cdsprd2ICMsST: TFMTBCDField
      FieldName = 'ICMsST'
      Precision = 7
      Size = 2
    end
    object cdsprd2percentualRedICMsST: TFMTBCDField
      FieldName = 'percentualRedICMsST'
      Precision = 7
      Size = 2
    end
    object cdsprd2percentualMargVlrAdICMsST: TFMTBCDField
      FieldName = 'percentualMargVlrAdICMsST'
      Precision = 9
      Size = 3
    end
    object cdsprd2tipo: TWideStringField
      FieldName = 'tipo'
      Size = 15
    end
    object cdsprd2pis: TFMTBCDField
      FieldName = 'pis'
      Precision = 7
      Size = 3
    end
    object cdsprd2cofins: TFMTBCDField
      FieldName = 'cofins'
      Precision = 7
      Size = 3
    end
    object cdsprd2despesasacessorias: TFMTBCDField
      FieldName = 'despesasacessorias'
      Precision = 7
      Size = 2
    end
    object cdsprd2margemlucroliquida: TFMTBCDField
      FieldName = 'margemlucroliquida'
      Precision = 10
      Size = 2
    end
    object cdsprd2volumes: TIntegerField
      FieldName = 'volumes'
    end
    object cdsprd2ncm: TWideStringField
      FieldName = 'ncm'
      Size = 8
    end
    object cdsprd2nbm: TWideStringField
      FieldName = 'nbm'
      Size = 10
    end
    object cdsprd2ncmespecie: TWideStringField
      FieldName = 'ncmespecie'
      Size = 2
    end
    object cdsprd2capacidadevolML: TIntegerField
      FieldName = 'capacidadevolML'
    end
    object cdsprd2situacaoinventario: TWideStringField
      FieldName = 'situacaoinventario'
      Size = 2
    end
    object cdsprd2tributacaoPIS: TWideStringField
      FieldName = 'tributacaoPIS'
      Size = 2
    end
    object cdsprd2tributacaoCOFINS: TWideStringField
      FieldName = 'tributacaoCOFINS'
      Size = 2
    end
    object cdsprd2codigoservico: TWideStringField
      FieldName = 'codigoservico'
      Size = 4
    end
    object cdsprd2aliquotaISS: TFMTBCDField
      FieldName = 'aliquotaISS'
      Precision = 7
      Size = 2
    end
    object cdsprd2indicadorproducao: TWideStringField
      FieldName = 'indicadorproducao'
      Size = 1
    end
    object cdsprd2indicadorarredondamentotruncamento: TWideStringField
      FieldName = 'indicadorarredondamentotruncamento'
      Size = 1
    end
    object cdsprd2cfopsaida: TWideStringField
      FieldName = 'cfopsaida'
      Size = 5
    end
    object cdsprd2cfopentrada: TWideStringField
      FieldName = 'cfopentrada'
      Size = 5
    end
    object cdsprd2EADE2mercadoriaEstoque: TWideStringField
      FieldName = 'EADE2mercadoriaEstoque'
      Size = 33
    end
    object cdsprd2EADP2relacaomercadoria: TWideStringField
      FieldName = 'EADP2relacaomercadoria'
      Size = 33
    end
    object cdsprd2aliquotaIPI: TFMTBCDField
      FieldName = 'aliquotaIPI'
      Precision = 7
      Size = 2
    end
    object cdsprd2datafabricacao: TDateField
      FieldName = 'datafabricacao'
    end
    object cdsprd2saldofinalestoque: TFMTBCDField
      FieldName = 'saldofinalestoque'
      Precision = 12
      Size = 2
    end
    object cdsprd2complementodescricao: TWideStringField
      FieldName = 'complementodescricao'
      Size = 100
    end
    object cdsprd2datafinalestoque: TDateField
      FieldName = 'datafinalestoque'
    end
    object cdsprd2horafinalestoque: TTimeField
      FieldName = 'horafinalestoque'
    end
    object cdsprd2ecffabricacao: TWideStringField
      FieldName = 'ecffabricacao'
    end
    object cdsprd2vendainternet: TWideStringField
      FieldName = 'vendainternet'
      Size = 1
    end
    object cdsprd2pcredsn: TFMTBCDField
      FieldName = 'pcredsn'
      Precision = 9
      Size = 2
    end
    object cdsprd2cstpisEntrada: TWideStringField
      FieldName = 'cstpisEntrada'
      Size = 2
    end
    object cdsprd2cstcofinsEntrada: TWideStringField
      FieldName = 'cstcofinsEntrada'
      Size = 2
    end
    object cdsprd2pisentrada: TFMTBCDField
      FieldName = 'pisentrada'
      Precision = 7
      Size = 3
    end
    object cdsprd2cofinsentrada: TFMTBCDField
      FieldName = 'cofinsentrada'
      Precision = 7
      Size = 3
    end
    object cdsprd2codigosuspensaopis: TWideStringField
      FieldName = 'codigosuspensaopis'
      Size = 3
    end
    object cdsprd2codigosuspensaocofins: TWideStringField
      FieldName = 'codigosuspensaocofins'
      Size = 3
    end
    object cdsprd2cstipi: TWideStringField
      FieldName = 'cstipi'
      Size = 2
    end
    object cdsprd2EADE1: TWideStringField
      FieldName = 'EADE1'
      Size = 33
    end
    object cdsprd2cprodanp: TWideStringField
      FieldName = 'cprodanp'
      Size = 9
    end
    object cdsprd2codif: TWideStringField
      FieldName = 'codif'
      Size = 21
    end
    object cdsprd2cide: TFMTBCDField
      FieldName = 'cide'
      Precision = 9
      Size = 3
    end
    object cdsprd2idfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object cdsprd2ecftipo: TWideStringField
      FieldName = 'ecftipo'
      Size = 7
    end
    object cdsprd2ecfmarca: TWideStringField
      FieldName = 'ecfmarca'
      Size = 15
    end
    object cdsprd2modelo: TWideStringField
      FieldName = 'modelo'
    end
    object cdsprd2STecf: TWideStringField
      FieldName = 'STecf'
      Size = 1
    end
    object cdsprd2custogerencial: TFMTBCDField
      FieldName = 'custogerencial'
      Precision = 14
      Size = 5
    end
    object cdsprd2cenqipi: TWideStringField
      FieldName = 'cenqipi'
      Size = 3
    end
    object cdsprd2cest: TWideStringField
      FieldName = 'cest'
      Size = 10
    end
    object cdsprd2icmsmargemlucro: TFMTBCDField
      FieldName = 'icmsmargemlucro'
      Precision = 12
      Size = 2
    end
    object cdsprd2sincronizar: TWideStringField
      FieldName = 'sincronizar'
      Size = 1
    end
    object cdsprd2eade3: TWideStringField
      FieldName = 'eade3'
      Size = 33
    end
    object cdsprd2aliquotaStFronteira: TFMTBCDField
      FieldName = 'aliquotaStFronteira'
      Precision = 12
      Size = 2
    end
    object cdsprd2MVAFronteira: TFMTBCDField
      FieldName = 'MVAFronteira'
      Precision = 12
      Size = 2
    end
    object cdsprd2qtdproducao: TFMTBCDField
      FieldName = 'qtdproducao'
      Precision = 12
      Size = 2
    end
    object cdsprd2qtdemtransito: TFMTBCDField
      FieldName = 'qtdemtransito'
      Precision = 12
      Size = 2
    end
    object cdsprd2controlelote: TWideStringField
      FieldName = 'controlelote'
      Size = 1
    end
    object cdsprd2atualizarprecoentrada: TWideStringField
      FieldName = 'atualizarprecoentrada'
      Size = 1
    end
    object cdsprd2percentualFrete: TFMTBCDField
      FieldName = 'percentualFrete'
      Precision = 12
      Size = 2
    end
    object cdsprd2codigobarrasNFCe: TWideStringField
      FieldName = 'codigobarrasNFCe'
      Size = 1
    end
    object cdsprd2codigoanvisa: TWideStringField
      FieldName = 'codigoanvisa'
    end
    object cdsprd2descANP: TWideStringField
      FieldName = 'descANP'
      Size = 100
    end
    object cdsprd2pGLP: TFMTBCDField
      FieldName = 'pGLP'
      Precision = 18
      Size = 6
    end
    object cdsprd2vPart: TFMTBCDField
      FieldName = 'vPart'
      Precision = 15
      Size = 2
    end
    object cdsprd2produtoInventario: TWideStringField
      FieldName = 'produtoInventario'
      Size = 1
    end
    object cdsprd2familia: TIntegerField
      FieldName = 'familia'
    end
    object cdsprd2listarmobile: TWideStringField
      FieldName = 'listarmobile'
      Size = 1
    end
    object cdsprd2link: TWideMemoField
      FieldName = 'link'
      BlobType = ftWideMemo
    end
    object cdsprd2mostrarlojavirtual: TWideStringField
      FieldName = 'mostrarlojavirtual'
      Size = 1
    end
    object cdsprd2tipoPrecoDescMaximo: TWideStringField
      FieldName = 'tipoPrecoDescMaximo'
      Size = 1
    end
    object cdsprd2margemLucroAtacado: TFMTBCDField
      FieldName = 'margemLucroAtacado'
      Precision = 12
      Size = 2
    end
    object cdsprd2parametrorendimento: TFMTBCDField
      FieldName = 'parametrorendimento'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
  end
  object DSourceprd2: TDataSource
    DataSet = cdsprd2
    Left = 296
    Top = 184
  end
  object sdsOrdem: TSQLDataSet
    CommandText = 
      'SELECT rp.inc_prod_producao, rp.codigo AS codPre,rp.produto AS p' +
      'rodPre,cp.codigo,cp.produto,cp.quantidade,cp.parametroleite,rp.q' +
      'uantidadeajustada,((cp.quantidade /cp.parametroleite)*rp.quantid' +
      'adeajustada) AS utilizado FROM resumoprodleite AS rp,composicaol' +
      'aticinio AS cp '#13#10'WHERE cp.codpreproducao=rp.codigo'#13#10'AND  rp.nume' +
      'roproducao='#39#39';'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm
    Left = 911
    Top = 360
  end
  object dspOrdem: TDataSetProvider
    DataSet = sdsOrdem
    Left = 911
    Top = 432
  end
  object cdsOrdem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdem'
    Left = 911
    Top = 504
    object cdsOrdemcodPre: TWideStringField
      FieldName = 'codPre'
      Size = 15
    end
    object cdsOrdemprodPre: TWideStringField
      FieldName = 'prodPre'
      Size = 50
    end
    object cdsOrdemcodigo: TWideStringField
      FieldName = 'codigo'
      Size = 8
    end
    object cdsOrdemproduto: TWideStringField
      FieldName = 'produto'
      Size = 50
    end
    object cdsOrdemquantidade: TFMTBCDField
      FieldName = 'quantidade'
      DisplayFormat = '##0.00000'
      Precision = 12
      Size = 6
    end
    object cdsOrdemparametroleite: TFMTBCDField
      FieldName = 'parametroleite'
      DisplayFormat = '##0.00000'
      Precision = 12
      Size = 2
    end
    object cdsOrdemquantidadeajustada: TFMTBCDField
      FieldName = 'quantidadeajustada'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object cdsOrdemutilizado: TFMTBCDField
      FieldName = 'utilizado'
      DisplayFormat = '##0.00'
      Precision = 26
      Size = 12
    end
    object cdsOrdeminc_prod_producao: TIntegerField
      FieldName = 'inc_prod_producao'
    end
  end
end
