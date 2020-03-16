object _dm2: T_dm2
  OldCreateOrder = False
  Height = 874
  Width = 1493
  object ConnecDm2: TSQLConnection
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
    BeforeConnect = ConnecDm2BeforeConnect
    Left = 39
    Top = 8
  end
  object sdsMovproducao: TSQLDataSet
    CommandText = 
      'SELECT * FROM movproducaodiaria  WHERE codigofilial = '#39'00001'#39' LI' +
      'MIT 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 40
    Top = 96
  end
  object dsMovproducao: TDataSetProvider
    DataSet = sdsMovproducao
    Left = 144
    Top = 96
  end
  object cdsMovproducao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsMovproducao'
    Left = 232
    Top = 96
    object cdsMovproducaonumero: TIntegerField
      FieldName = 'numero'
    end
    object cdsMovproducaocodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 8
    end
    object cdsMovproducaodata: TDateField
      FieldName = 'data'
    end
    object cdsMovproducaohora: TTimeField
      FieldName = 'hora'
    end
    object cdsMovproducaooperador: TWideStringField
      FieldName = 'operador'
      Size = 15
    end
    object cdsMovproducaooperadorfinalizacao: TWideStringField
      FieldName = 'operadorfinalizacao'
      Size = 15
    end
    object cdsMovproducaodatafinalizacao: TDateField
      FieldName = 'datafinalizacao'
    end
    object cdsMovproducaohorafinalizacao: TTimeField
      FieldName = 'horafinalizacao'
    end
    object cdsMovproducaoencerrada: TWideStringField
      FieldName = 'encerrada'
      Size = 1
    end
    object cdsMovproducaovalidadelote: TDateField
      FieldName = 'validadelote'
    end
    object cdsMovproducaolote: TIntegerField
      FieldName = 'lote'
    end
    object cdsMovproducaoitensconfirmados: TWideStringField
      FieldName = 'itensconfirmados'
      Size = 1
    end
    object cdsMovproducaopreproducaoconfirmada: TWideStringField
      FieldName = 'preproducaoconfirmada'
      Size = 1
    end
    object cdsMovproducaoitensderivadosconfirmados: TWideStringField
      FieldName = 'itensderivadosconfirmados'
      Size = 1
    end
    object cdsMovproducaototalcustoproducao: TFMTBCDField
      FieldName = 'totalcustoproducao'
      Precision = 14
      Size = 2
    end
    object cdsMovproducaoobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 100
    end
    object cdsMovproducaocustoembalagens: TFMTBCDField
      FieldName = 'custoembalagens'
      Precision = 14
      Size = 2
    end
    object cdsMovproducaomateriarequisitada: TWideStringField
      FieldName = 'materiarequisitada'
      Size = 1
    end
    object cdsMovproducaodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 80
    end
  end
  object DSourceMovproducao: TDataSource
    DataSet = cdsMovproducao
    Left = 352
    Top = 96
  end
  object sdsproducaoitens: TSQLDataSet
    CommandText = 'select * from producaoitens  where codigofilial='#39'00001'#39' limit 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 40
    Top = 176
  end
  object DSproducaoitens: TDataSetProvider
    DataSet = sdsproducaoitens
    Left = 144
    Top = 176
  end
  object cdsproducaoitens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSproducaoitens'
    Left = 232
    Top = 176
    object cdsproducaoitensid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsproducaoitenscodigo: TWideStringField
      FieldName = 'codigo'
      Size = 8
    end
    object cdsproducaoitensproduto: TWideStringField
      FieldName = 'produto'
      Size = 50
    end
    object cdsproducaoitensunidade: TWideStringField
      FieldName = 'unidade'
      Size = 3
    end
    object cdsproducaoitensquantidademanteiga: TFMTBCDField
      FieldName = 'quantidademanteiga'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsproducaoitensquantidadecreme: TFMTBCDField
      FieldName = 'quantidadecreme'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsproducaoitensquantidadeleite: TFMTBCDField
      FieldName = 'quantidadeleite'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsproducaoitensquantidadeproduzida: TFMTBCDField
      FieldName = 'quantidadeproduzida'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsproducaoitenscodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsproducaoitensnumeroproducao: TWideStringField
      FieldName = 'numeroproducao'
      Size = 8
    end
    object cdsproducaoitensquantidadesoro: TFMTBCDField
      FieldName = 'quantidadesoro'
      Precision = 10
      Size = 2
    end
    object cdsproducaoitenstotalproduzido: TFMTBCDField
      FieldName = 'totalproduzido'
      Precision = 10
      Size = 2
    end
    object cdsproducaoitenslote: TWideStringField
      FieldName = 'lote'
      Size = 10
    end
    object cdsproducaoitensvalidade: TDateField
      FieldName = 'validade'
    end
    object cdsproducaoitensqtdadicional: TFMTBCDField
      FieldName = 'qtdadicional'
      Precision = 10
      Size = 2
    end
    object cdsproducaoitensmateriarequisitada: TWideStringField
      FieldName = 'materiarequisitada'
      Size = 1
    end
  end
  object DSourceproducaoitens: TDataSource
    DataSet = cdsproducaoitens
    Left = 352
    Top = 176
  end
  object cdsProdPreProducao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsProdPreProducao'
    Left = 232
    Top = 248
    object cdsProdPreProducaocodigo: TIntegerField
      FieldName = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProdPreProducaodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsProdPreProducaounidade: TWideStringField
      FieldName = 'unidade'
      Size = 3
    end
    object cdsProdPreProducaocodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
  end
  object dSourceProdPreProducao: TDataSource
    DataSet = cdsProdPreProducao
    Left = 352
    Top = 240
  end
  object dsProdPreProducao: TDataSetProvider
    DataSet = sdsProdPreProducao
    Left = 144
    Top = 232
  end
  object sdsProdPreProducao: TSQLDataSet
    CommandText = 
      'SELECT * FROM produtospreproducao  WHERE codigofilial='#39'00001'#39' LI' +
      'MIT 50'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 40
    Top = 240
  end
  object cdsProdutosembalagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsProdutosembalagem'
    Left = 312
    Top = 320
    object cdsProdutosembalagemid: TIntegerField
      FieldName = 'id'
    end
    object cdsProdutosembalagemcodigo: TWideStringField
      FieldName = 'codigo'
      Size = 8
    end
    object cdsProdutosembalagemdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsProdutosembalagemunidade: TWideStringField
      FieldName = 'unidade'
      Size = 3
    end
    object cdsProdutosembalagemcodprodpreproducao: TWideStringField
      FieldName = 'codprodpreproducao'
      Size = 8
    end
    object cdsProdutosembalagemdescprodpreproducao: TWideStringField
      FieldName = 'descprodpreproducao'
      Size = 50
    end
    object cdsProdutosembalagemcodProdindiceestoque: TWideStringField
      FieldName = 'codProdindiceestoque'
      Size = 8
    end
    object cdsProdutosembalagemdescProdindiceestoque: TWideStringField
      FieldName = 'descProdindiceestoque'
      Size = 50
    end
    object cdsProdutosembalagemcodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsProdutosembalagemquantidadeembalagem: TFMTBCDField
      FieldName = 'quantidadeembalagem'
      DisplayFormat = '#,###0.000'
      Precision = 10
      Size = 2
    end
    object cdsProdutosembalagemcodigoembalagem: TWideStringField
      FieldName = 'codigoembalagem'
      Size = 8
    end
  end
  object dsourceProdutosembalagem: TDataSource
    DataSet = cdsProdutosembalagem
    Left = 400
    Top = 304
  end
  object dsProdutosembalagem: TDataSetProvider
    DataSet = sdsProdutosembalagem
    Left = 176
    Top = 320
  end
  object sdsProdutosembalagem: TSQLDataSet
    CommandText = 
      'SELECT * FROM produtosembalagens  WHERE codigofilial='#39'00001'#39' LIM' +
      'IT 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 40
    Top = 320
  end
  object sdsComposicao: TSQLDataSet
    CommandText = 
      'SELECT * FROM composicaolaticinio WHERE codigofilial='#39'00001'#39' LIM' +
      'IT 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 32
    Top = 384
  end
  object dsComposicao: TDataSetProvider
    DataSet = sdsComposicao
    Left = 144
    Top = 392
  end
  object cdsComposicao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsComposicao'
    Left = 240
    Top = 392
    object cdsComposicaoid: TIntegerField
      FieldName = 'id'
    end
    object cdsComposicaocodpreproducao: TWideStringField
      FieldName = 'codpreproducao'
      Size = 8
    end
    object cdsComposicaoprodpreproducao: TWideStringField
      FieldName = 'prodpreproducao'
      Size = 50
    end
    object cdsComposicaounidade: TWideStringField
      FieldName = 'unidade'
      Size = 3
    end
    object cdsComposicaotipoinsumo: TWideStringField
      FieldName = 'tipoinsumo'
    end
    object cdsComposicaoquantidade: TFMTBCDField
      FieldName = 'quantidade'
      DisplayFormat = '#,#0.000000'
      Precision = 10
      Size = 2
    end
    object cdsComposicaocodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsComposicaocusto: TFMTBCDField
      FieldName = 'custo'
      DisplayFormat = '#,#0.0000'
      Precision = 10
      Size = 2
    end
    object cdsComposicaocodigo: TWideStringField
      FieldName = 'codigo'
      Size = 8
    end
    object cdsComposicaoproduto: TWideStringField
      FieldName = 'produto'
      Size = 50
    end
    object cdsComposicaoparametroleite: TFMTBCDField
      FieldName = 'parametroleite'
      Precision = 12
      Size = 2
    end
    object cdsComposicaotipoparametro: TWideStringField
      FieldName = 'tipoparametro'
      Size = 1
    end
  end
  object DSourceComposicao: TDataSource
    DataSet = cdsComposicao
    Left = 360
    Top = 392
  end
  object qrLeite: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 576
    Top = 6
  end
  object qrCreme: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 648
    Top = 6
  end
  object qrManteiga: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 720
    Top = 6
  end
  object sdsresumoleite: TSQLDataSet
    CommandText = 
      'SELECT * FROM resumoprodleite  WHERE codigofilial = '#39'00001'#39' LIMI' +
      'T 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 536
    Top = 78
  end
  object dsResumoleite: TDataSetProvider
    DataSet = sdsresumoleite
    Left = 640
    Top = 78
  end
  object cdsResumoleite: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsResumoleite'
    Left = 728
    Top = 78
    object cdsResumoleiteid: TIntegerField
      FieldName = 'id'
    end
    object cdsResumoleitecodigo: TWideStringField
      FieldName = 'codigo'
      Size = 15
    end
    object cdsResumoleiteproduto: TWideStringField
      FieldName = 'produto'
      Size = 50
    end
    object cdsResumoleitequantidade: TFMTBCDField
      FieldName = 'quantidade'
      Precision = 10
      Size = 2
    end
    object cdsResumoleitecodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsResumoleitenumeroproducao: TIntegerField
      FieldName = 'numeroproducao'
    end
    object cdsResumoleitequantidadeajustada: TFMTBCDField
      FieldName = 'quantidadeajustada'
      Precision = 10
      Size = 2
    end
    object cdsResumoleitesalvo: TWideStringField
      FieldName = 'salvo'
      Size = 1
    end
    object cdsResumoleiteinc_prod_producao: TIntegerField
      FieldName = 'inc_prod_producao'
    end
  end
  object dSourceResumoLeite: TDataSource
    DataSet = cdsResumoleite
    Left = 848
    Top = 78
  end
  object cdsresumocreme: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsresumocreme'
    Left = 760
    Top = 142
    object cdsresumocremeid: TIntegerField
      FieldName = 'id'
    end
    object cdsresumocremecodigo: TWideStringField
      FieldName = 'codigo'
      Size = 12
    end
    object cdsresumocremeproduto: TWideStringField
      FieldName = 'produto'
      Size = 50
    end
    object cdsresumocremequantidade: TFMTBCDField
      FieldName = 'quantidade'
      Precision = 10
      Size = 2
    end
    object cdsresumocremecodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsresumocremenumeroproducao: TIntegerField
      FieldName = 'numeroproducao'
    end
    object cdsresumocremequantidadeajustada: TFMTBCDField
      FieldName = 'quantidadeajustada'
      Precision = 10
      Size = 2
    end
    object cdsresumocremesalvo: TWideStringField
      FieldName = 'salvo'
      Size = 1
    end
    object cdsresumocremeinc_prod_producao: TIntegerField
      FieldName = 'inc_prod_producao'
    end
  end
  object dsourceresumocreme: TDataSource
    DataSet = cdsresumocreme
    Left = 856
    Top = 142
  end
  object dsresumocreme: TDataSetProvider
    DataSet = sdsresumocreme
    Left = 648
    Top = 142
  end
  object sdsresumocreme: TSQLDataSet
    CommandText = 
      'SELECT * FROM resumoprodcreme WHERE codigofilial = '#39'00001'#39' LIMIT' +
      ' 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 544
    Top = 142
  end
  object dsresumomanteiga: TDataSetProvider
    DataSet = sdsresumomanteiga
    Left = 648
    Top = 206
  end
  object sdsresumomanteiga: TSQLDataSet
    CommandText = 
      'SELECT * FROM resumoprodmanteiga WHERE codigofilial = '#39'00001'#39' LI' +
      'MIT 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 544
    Top = 206
  end
  object dsourceresumomanteiga: TDataSource
    DataSet = cdsresumomanteiga
    Left = 856
    Top = 206
  end
  object cdsresumomanteiga: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsresumomanteiga'
    Left = 744
    Top = 206
    object cdsresumomanteigaid: TIntegerField
      FieldName = 'id'
    end
    object cdsresumomanteigacodigo: TWideStringField
      FieldName = 'codigo'
      Size = 15
    end
    object cdsresumomanteigaproduto: TWideStringField
      FieldName = 'produto'
      Size = 50
    end
    object cdsresumomanteigaquantidade: TFMTBCDField
      FieldName = 'quantidade'
      Precision = 10
      Size = 2
    end
    object cdsresumomanteigaquantidadeajustada: TFMTBCDField
      FieldName = 'quantidadeajustada'
      Precision = 10
      Size = 2
    end
    object cdsresumomanteigacodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsresumomanteiganumeroproducao: TIntegerField
      FieldName = 'numeroproducao'
    end
    object cdsresumomanteigasalvo: TWideStringField
      FieldName = 'salvo'
      Size = 1
    end
    object cdsresumomanteigainc_prod_producao: TIntegerField
      FieldName = 'inc_prod_producao'
    end
  end
  object sdsProducaoManteiga: TSQLDataSet
    CommandText = 
      'SELECT  *  FROM dadosproducaomanteiga WHERE codigofilial = '#39'0000' +
      '1'#39' LIMIT 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 527
    Top = 318
  end
  object dsProducaoManteiga: TDataSetProvider
    DataSet = sdsProducaoManteiga
    Left = 656
    Top = 318
  end
  object cdsProducaoManteiga: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsProducaoManteiga'
    Left = 782
    Top = 318
    object cdsProducaoManteigaid: TIntegerField
      FieldName = 'id'
    end
    object cdsProducaoManteigacodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsProducaoManteiganumeroproducao: TIntegerField
      FieldName = 'numeroproducao'
    end
    object cdsProducaoManteigacremederretido: TFMTBCDField
      FieldName = 'cremederretido'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoManteigamanteigaobitida: TFMTBCDField
      FieldName = 'manteigaobitida'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoManteigarendimento: TFMTBCDField
      FieldName = 'rendimento'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoManteigamanteigautilizada: TFMTBCDField
      FieldName = 'manteigautilizada'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoManteigasaldo: TFMTBCDField
      FieldName = 'saldo'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoManteigaestoque: TFMTBCDField
      FieldName = 'estoque'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoManteigaperda: TFMTBCDField
      FieldName = 'perda'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoManteigasalvo: TWideStringField
      FieldName = 'salvo'
      Size = 1
    end
    object cdsProducaoManteigadestinado: TFMTBCDField
      FieldName = 'destinado'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoManteigasobra: TFMTBCDField
      FieldName = 'sobra'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
  end
  object dsourceProducaoManteiga: TDataSource
    DataSet = cdsProducaoManteiga
    Left = 912
    Top = 318
  end
  object dsProducaoCreme: TDataSetProvider
    DataSet = sdsProducaoCreme
    Left = 656
    Top = 374
  end
  object SourceProducaoCreme: TDataSource
    DataSet = cdsProducaoCreme
    Left = 912
    Top = 374
  end
  object cdsProducaoCreme: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsProducaoCreme'
    Left = 782
    Top = 374
    object cdsProducaoCremeid: TIntegerField
      FieldName = 'id'
    end
    object cdsProducaoCremecodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsProducaoCremenumeroproducao: TIntegerField
      FieldName = 'numeroproducao'
    end
    object cdsProducaoCremesobra: TFMTBCDField
      FieldName = 'sobra'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremecomprado: TFMTBCDField
      FieldName = 'comprado'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremedesnatado: TFMTBCDField
      FieldName = 'desnatado'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremepadronizado: TFMTBCDField
      FieldName = 'padronizado'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremesoro: TFMTBCDField
      FieldName = 'soro'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremesorocoalho: TFMTBCDField
      FieldName = 'sorocoalho'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremevendido: TFMTBCDField
      FieldName = 'vendido'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremeutilizado: TFMTBCDField
      FieldName = 'utilizado'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremesaldo: TFMTBCDField
      FieldName = 'saldo'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremeestoque: TFMTBCDField
      FieldName = 'estoque'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremeperda: TFMTBCDField
      FieldName = 'perda'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoCremesalvo: TWideStringField
      FieldName = 'salvo'
      Size = 1
    end
    object cdsProducaoCremedestinado: TFMTBCDField
      FieldName = 'destinado'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
  end
  object sdsProducaoCreme: TSQLDataSet
    CommandText = 
      'SELECT * FROM  dadosproducaocreme WHERE codigofilial = '#39'00001'#39' L' +
      'IMIT 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 527
    Top = 374
  end
  object dsProducaoLeite: TDataSetProvider
    DataSet = sdsProducaoLeite
    Left = 656
    Top = 430
  end
  object SourceProducaoLeite: TDataSource
    DataSet = cdsProducaoLeite
    Left = 912
    Top = 430
  end
  object cdsProducaoLeite: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsProducaoLeite'
    Left = 782
    Top = 430
    object cdsProducaoLeiteid: TIntegerField
      FieldName = 'id'
    end
    object cdsProducaoLeitecodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsProducaoLeitenumeroproducao: TIntegerField
      FieldName = 'numeroproducao'
    end
    object cdsProducaoLeitesobra: TFMTBCDField
      FieldName = 'sobra'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoLeiteentrada: TFMTBCDField
      FieldName = 'entrada'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoLeiteutilizado: TFMTBCDField
      FieldName = 'utilizado'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoLeitevendido: TFMTBCDField
      FieldName = 'vendido'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoLeitesobrat: TFMTBCDField
      FieldName = 'sobrat'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoLeiteperda: TFMTBCDField
      FieldName = 'perda'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoLeitesalvo: TWideStringField
      FieldName = 'salvo'
      Size = 1
    end
    object cdsProducaoLeitedestinado: TFMTBCDField
      FieldName = 'destinado'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoLeitesaldo: TFMTBCDField
      FieldName = 'saldo'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
  end
  object sdsProducaoLeite: TSQLDataSet
    CommandText = 
      'SELECT * FROM dadosproducaoleite WHERE codigofilial = '#39'00001'#39' LI' +
      'MIT 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 527
    Top = 430
  end
  object qrPadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 856
    Top = 14
  end
  object sdsProducaoDerivados: TSQLDataSet
    CommandText = 
      'SELECT *,(SELECT lote FROM producaoitens LIMIT 1) AS lote,(SELEC' +
      'T validade FROM producaoitens LIMIT 1) AS validade  from produca' +
      'oderivados limit 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 503
    Top = 502
  end
  object dsProducaoDerivados: TDataSetProvider
    DataSet = sdsProducaoDerivados
    Left = 632
    Top = 502
  end
  object cdsProducaoDerivados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsProducaoDerivados'
    Left = 758
    Top = 502
    object cdsProducaoDerivadosid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProducaoDerivadosnumeroproducao: TIntegerField
      FieldName = 'numeroproducao'
    end
    object cdsProducaoDerivadoscodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsProducaoDerivadoscodigoderivado: TWideStringField
      FieldName = 'codigoderivado'
      Size = 6
    end
    object cdsProducaoDerivadosprodutoderivado: TWideStringField
      FieldName = 'produtoderivado'
      Size = 60
    end
    object cdsProducaoDerivadosquantidade: TFMTBCDField
      FieldName = 'quantidade'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoDerivadosqtdleiteinformada: TFMTBCDField
      FieldName = 'qtdleiteinformada'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoDerivadosrendimento: TFMTBCDField
      FieldName = 'rendimento'
      DisplayFormat = '#,#0.00'
      Precision = 10
      Size = 2
    end
    object cdsProducaoDerivadosquantidadeembalagem: TFMTBCDField
      FieldName = 'quantidadeembalagem'
      DisplayFormat = '#,##0.000'
      Precision = 9
      Size = 0
    end
    object cdsProducaoDerivadosquantidadeTotal: TFMTBCDField
      FieldName = 'quantidadeTotal'
      DisplayFormat = '#,#0.00'
      Precision = 32
      Size = 2
    end
    object cdsProducaoDerivadosembadicionais: TFMTBCDField
      FieldName = 'embadicionais'
      Precision = 10
      Size = 2
    end
    object cdsProducaoDerivadosembrequisitada: TWideStringField
      FieldName = 'embrequisitada'
      Size = 1
    end
    object cdsProducaoDerivadosembadicinalrequisitada: TWideStringField
      FieldName = 'embadicinalrequisitada'
      Size = 1
    end
    object cdsProducaoDerivadosoperadorreqemb: TWideStringField
      FieldName = 'operadorreqemb'
    end
    object cdsProducaoDerivadosoperadorreqembadicional: TWideStringField
      FieldName = 'operadorreqembadicional'
    end
    object cdsProducaoDerivadoscodigoembalagem: TWideStringField
      FieldName = 'codigoembalagem'
      Size = 8
    end
    object cdsProducaoDerivadosprodutoembalagem: TWideStringField
      FieldName = 'produtoembalagem'
      Size = 50
    end
    object cdsProducaoDerivadoslote: TWideStringField
      FieldName = 'lote'
      Size = 10
    end
    object cdsProducaoDerivadosvalidade: TDateField
      FieldName = 'validade'
    end
    object cdsProducaoDerivadosprodPreProducao: TWideStringField
      FieldName = 'prodPreProducao'
      Size = 50
    end
    object cdsProducaoDerivadoscodigopreproducao: TWideStringField
      FieldName = 'codigopreproducao'
      Size = 6
    end
  end
  object DSourceProducaoDerivados: TDataSource
    DataSet = cdsProducaoDerivados
    Left = 888
    Top = 502
  end
  object qrPadrao2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 912
    Top = 14
  end
  object sdsMateria: TSQLDataSet
    CommandText = 
      'SELECT * FROM producaomovmateria WHERE codigofilial='#39'00001'#39' LIMI' +
      'T 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 32
    Top = 464
  end
  object dsMateria: TDataSetProvider
    DataSet = sdsMateria
    Left = 144
    Top = 472
  end
  object cdsMateria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsMateria'
    Left = 240
    Top = 472
    object cdsMateriacodigoFilial: TWideStringField
      FieldName = 'codigoFilial'
      Size = 5
    end
    object cdsMateriaidproducao: TIntegerField
      FieldName = 'idproducao'
    end
    object cdsMateriacodigoproduto: TWideStringField
      FieldName = 'codigoproduto'
    end
    object cdsMateriadescricaoproduto: TWideStringField
      FieldName = 'descricaoproduto'
      Size = 50
    end
    object cdsMateriacodigomateria: TWideStringField
      FieldName = 'codigomateria'
    end
    object cdsMateriadescricaomateria: TWideStringField
      FieldName = 'descricaomateria'
      Size = 50
    end
    object cdsMateriaquantidade: TFMTBCDField
      FieldName = 'quantidade'
      DisplayFormat = '#,#0.0000'
      Precision = 12
      Size = 5
    end
    object cdsMateriaquantidademateria: TFMTBCDField
      FieldName = 'quantidademateria'
      DisplayFormat = '#,#0.0000'
      Precision = 12
      Size = 5
    end
    object cdsMateriacustounitario: TFMTBCDField
      FieldName = 'custounitario'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 5
    end
    object cdsMateriadata: TDateField
      FieldName = 'data'
    end
    object cdsMateriaoperador: TWideStringField
      FieldName = 'operador'
    end
    object cdsMateriatotalmateriautilizada: TFMTBCDField
      FieldName = 'totalmateriautilizada'
      DisplayFormat = '#,#0.00'
      Precision = 12
      Size = 2
    end
    object cdsMateriatotalcustoproducao: TFMTBCDField
      FieldName = 'totalcustoproducao'
      Precision = 12
      Size = 5
    end
    object cdsMateriainc_prod_producao: TIntegerField
      FieldName = 'inc_prod_producao'
    end
  end
  object dSourceMateria: TDataSource
    DataSet = cdsMateria
    Left = 360
    Top = 472
  end
  object dSourceImagens: TDataSource
    DataSet = cdsImagens
    Left = 872
    Top = 566
  end
  object cdsImagens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsImagens'
    Left = 742
    Top = 566
    object cdsImagensid: TIntegerField
      FieldName = 'id'
    end
    object cdsImagenslogomarca: TWideStringField
      FieldName = 'logomarca'
      Size = 200
    end
    object cdsImagensbackground: TWideStringField
      FieldName = 'background'
      Size = 200
    end
    object cdsImagensip: TWideStringField
      FieldName = 'ip'
    end
    object cdsImagenscodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
  end
  object dsImagens: TDataSetProvider
    DataSet = sdsImagens
    Left = 616
    Top = 566
  end
  object sdsImagens: TSQLDataSet
    CommandText = 'select * from caminhoimagens where codigofilial='#39'00001'#39' limit 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 511
    Top = 566
  end
  object sdsCompEmbalagem: TSQLDataSet
    CommandText = 'SELECT * FROM    formacaoembalagem LIMIT 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 39
    Top = 552
  end
  object dsCompEmbalagem: TDataSetProvider
    DataSet = sdsCompEmbalagem
    Left = 152
    Top = 568
  end
  object cdsCompEmbalagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsCompEmbalagem'
    Left = 254
    Top = 560
    object cdsCompEmbalagemid: TIntegerField
      FieldName = 'id'
    end
    object cdsCompEmbalagemcodigoprodproducao: TWideStringField
      FieldName = 'codigoprodproducao'
      Size = 9
    end
    object cdsCompEmbalagemprodproducao: TWideStringField
      FieldName = 'prodproducao'
      Size = 50
    end
    object cdsCompEmbalagemcodidoderivado: TWideStringField
      FieldName = 'codidoderivado'
      Size = 9
    end
    object cdsCompEmbalagemprodutoderivado: TWideStringField
      FieldName = 'produtoderivado'
      Size = 50
    end
    object cdsCompEmbalagemcodigoembalagem: TWideStringField
      FieldName = 'codigoembalagem'
      Size = 9
    end
    object cdsCompEmbalagemprodutoembalagem: TWideStringField
      FieldName = 'produtoembalagem'
      Size = 50
    end
    object cdsCompEmbalagemquantidade: TFMTBCDField
      FieldName = 'quantidade'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 4
    end
    object cdsCompEmbalagemcodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
  end
  object DSourceCompEmbalagem: TDataSource
    DataSet = cdsCompEmbalagem
    Left = 360
    Top = 576
  end
  object sdsprodmovembalagem: TSQLDataSet
    CommandText = 'SELECT * FROM producaomovembalagem LIMIT 1;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 31
    Top = 640
  end
  object dsprodmovembalagem: TDataSetProvider
    DataSet = sdsprodmovembalagem
    Left = 136
    Top = 656
  end
  object cdsprodmovembalagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprodmovembalagem'
    Left = 246
    Top = 648
    object cdsprodmovembalagemid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsprodmovembalagemnumeroproducao: TIntegerField
      FieldName = 'numeroproducao'
    end
    object cdsprodmovembalagemcodigopreproducao: TWideStringField
      FieldName = 'codigopreproducao'
      Size = 8
    end
    object cdsprodmovembalagemdescricaopreproducao: TWideStringField
      FieldName = 'descricaopreproducao'
      Size = 50
    end
    object cdsprodmovembalagemcodigoderivado: TWideStringField
      FieldName = 'codigoderivado'
      Size = 8
    end
    object cdsprodmovembalagemdescricaoderivado: TWideStringField
      FieldName = 'descricaoderivado'
      Size = 50
    end
    object cdsprodmovembalagemcodigoembalagem: TWideStringField
      FieldName = 'codigoembalagem'
      Size = 8
    end
    object cdsprodmovembalagemdescricaoembalagem: TWideStringField
      FieldName = 'descricaoembalagem'
      Size = 50
    end
    object cdsprodmovembalagemqtdnecessaria: TFMTBCDField
      FieldName = 'qtdnecessaria'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object cdsprodmovembalagemcustototal: TFMTBCDField
      FieldName = 'custototal'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object cdsprodmovembalagemqtdproduzido: TFMTBCDField
      FieldName = 'qtdproduzido'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object cdsprodmovembalagemqtdutilizado: TFMTBCDField
      FieldName = 'qtdutilizado'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object cdsprodmovembalagemtipo: TWideStringField
      FieldName = 'tipo'
      Size = 15
    end
    object cdsprodmovembalagemsolicitado: TWideStringField
      FieldName = 'solicitado'
      Size = 1
    end
    object cdsprodmovembalagemoperadorsolicita: TWideStringField
      FieldName = 'operadorsolicita'
    end
    object cdsprodmovembalagemoperadorsolicitaadicional: TWideStringField
      FieldName = 'operadorsolicitaadicional'
    end
    object cdsprodmovembalagemcodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsprodmovembalagemcustounitario: TFMTBCDField
      FieldName = 'custounitario'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
  end
  object dSourceprodmovembalagem: TDataSource
    DataSet = cdsprodmovembalagem
    Left = 352
    Top = 664
  end
  object sdsrelvenda: TSQLDataSet
    CommandText = 
      'SELECT codigo,produto,((-1) *qtdvendida) AS qtdvendida,documento' +
      ','#13#10'(SELECT codigo FROM vendaarquivo  WHERE codigo=v.codigoprepro' +
      'ducao AND v.documento=documento LIMIT 1 UNION ALL SELECT codigo ' +
      'FROM venda  WHERE codigo=v.codigopreproducao AND v.documento=doc' +
      'umento LIMIT 1 ) AS codigovenda,'#13#10'(SELECT produto FROM vendaarqu' +
      'ivo  WHERE codigo=v.codigopreproducao AND v.documento=documento ' +
      'LIMIT 1 UNION ALL SELECT produto FROM venda  WHERE codigo=v.codi' +
      'gopreproducao AND v.documento=documento LIMIT 1) AS produtovenda' +
      ','#13#10'(SELECT quantidade FROM vendaarquivo  WHERE codigo=v.codigopr' +
      'eproducao AND v.documento=documento LIMIT 1 UNION ALL SELECT qua' +
      'ntidade FROM venda  WHERE codigo=v.codigopreproducao AND v.docum' +
      'ento=documento LIMIT 1) AS quantidadevenda,'#13#10'(SELECT (total-ratd' +
      'esc) FROM vendaarquivo  WHERE codigo=v.codigopreproducao AND v.d' +
      'ocumento=documento LIMIT 1 UNION ALL SELECT (total-ratdesc) FROM' +
      ' venda  WHERE codigo=v.codigopreproducao AND v.documento=documen' +
      'to LIMIT 1) AS total'#13#10'FROM vendaprodlaticinios AS v'#13#10'WHERE DATA=' +
      #39'2019-06-04'#39' limit 0;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 623
    Top = 639
  end
  object dsrelvenda: TDataSetProvider
    DataSet = sdsrelvenda
    Left = 706
    Top = 639
  end
  object cdsRelvenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsrelvenda'
    Left = 794
    Top = 639
    object cdsRelvendacodigo: TWideStringField
      FieldName = 'codigo'
      Size = 8
    end
    object cdsRelvendaproduto: TWideStringField
      FieldName = 'produto'
      Size = 50
    end
    object cdsRelvendaqtdvendida: TFMTBCDField
      FieldName = 'qtdvendida'
      Precision = 13
      Size = 2
    end
    object cdsRelvendadocumento: TWideStringField
      FieldName = 'documento'
      Size = 8
    end
    object cdsRelvendacodigovenda: TWideStringField
      FieldName = 'codigovenda'
    end
    object cdsRelvendaprodutovenda: TWideStringField
      FieldName = 'produtovenda'
      Size = 50
    end
    object cdsRelvendaquantidadevenda: TFMTBCDField
      FieldName = 'quantidadevenda'
      Precision = 12
      Size = 5
    end
    object cdsRelvendatotal: TFMTBCDField
      FieldName = 'total'
      Precision = 15
      Size = 4
    end
  end
  object dSourceRelvenda: TDataSource
    DataSet = cdsRelvenda
    Left = 874
    Top = 639
  end
  object sdsvendageral: TSQLDataSet
    CommandText = 
      'SELECT codigo,produto,SUM((-1) * qtdvendida) AS qtdvendida'#13#10'FROM' +
      ' vendaprodlaticinios GROUP BY codigo ORDER BY produto LIMIT 1;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 631
    Top = 692
  end
  object dspVendageral: TDataSetProvider
    DataSet = sdsvendageral
    Left = 714
    Top = 692
  end
  object cdsvendageral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendageral'
    Left = 802
    Top = 692
    object cdsvendageralcodigo: TWideStringField
      FieldName = 'codigo'
      Size = 8
    end
    object cdsvendageralproduto: TWideStringField
      FieldName = 'produto'
      Size = 50
    end
    object cdsvendageralqtdvendida: TFMTBCDField
      FieldName = 'qtdvendida'
      Precision = 32
      Size = 2
    end
  end
  object DSourceVendageral: TDataSource
    DataSet = cdsvendageral
    Left = 882
    Top = 692
  end
  object dSourceDesnate: TDataSource
    DataSet = cdsDesnate
    Left = 296
    Top = 760
  end
  object cdsDesnate: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDesnate'
    Left = 206
    Top = 760
    object cdsDesnateid: TIntegerField
      FieldName = 'id'
    end
    object cdsDesnatedataabertura: TDateField
      FieldName = 'dataabertura'
    end
    object cdsDesnatedataencerramento: TSQLTimeStampField
      FieldName = 'dataencerramento'
    end
    object cdsDesnatesaldoleiteanterior: TFMTBCDField
      FieldName = 'saldoleiteanterior'
      Precision = 10
      Size = 2
    end
    object cdsDesnateleitedestinado: TFMTBCDField
      FieldName = 'leitedestinado'
      Precision = 10
      Size = 2
    end
    object cdsDesnatesaldodesnatado: TFMTBCDField
      FieldName = 'saldodesnatado'
      Precision = 10
      Size = 2
    end
    object cdsDesnatecremeobtido: TFMTBCDField
      FieldName = 'cremeobtido'
      Precision = 10
      Size = 2
    end
    object cdsDesnategordura: TFMTBCDField
      FieldName = 'gordura'
      Precision = 10
      Size = 2
    end
    object cdsDesnatecodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsDesnateoperador: TWideStringField
      FieldName = 'operador'
      Size = 50
    end
    object cdsDesnateencerrada: TWideStringField
      FieldName = 'encerrada'
      Size = 1
    end
  end
  object dspDesnate: TDataSetProvider
    DataSet = sdsDesnate
    Left = 120
    Top = 760
  end
  object sdsDesnate: TSQLDataSet
    CommandText = 'SELECT * FROM desnateleite LIMIT 1;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 31
    Top = 760
  end
  object sdsProcProducao: TSQLDataSet
    CommandText = 'SELECT * FROM cadetapaproducao LIMIT 1;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 567
    Top = 767
  end
  object dspProcProducao: TDataSetProvider
    DataSet = sdsProcProducao
    Left = 682
    Top = 767
  end
  object cdsProcProducao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcProducao'
    Left = 794
    Top = 767
    object cdsProcProducaoid: TIntegerField
      FieldName = 'id'
    end
    object cdsProcProducaocodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsProcProducaoprocesso: TWideStringField
      FieldName = 'processo'
      Size = 50
    end
    object cdsProcProducaoordem: TIntegerField
      FieldName = 'ordem'
    end
    object cdsProcProducaocodigoproduto: TWideStringField
      FieldName = 'codigoproduto'
      Size = 6
    end
    object cdsProcProducaoduracaoestimada: TTimeField
      FieldName = 'duracaoestimada'
    end
  end
  object dsProcProducao: TDataSource
    DataSet = cdsProcProducao
    Left = 914
    Top = 767
  end
  object sdsFulxogramaProducao: TSQLDataSet
    CommandText = 
      'SELECT id,'#13#10'inc_prod_producao,'#13#10'codigoproduto,'#13#10'codigofilial,'#13#10'n' +
      'umeroproducao,'#13#10'codigoetapaprod,'#13#10'IFNULL( IF(STATUS=0,TIMEDIFF(T' +
      'IMESTAMP(CURRENT_DATE,CURRENT_TIME),horainicio),TIMEDIFF(horater' +
      'mino,horainicio)),'#39'00:00:00'#39') AS duracao,'#13#10'(SELECT processo FROM' +
      ' cadetapaproducao WHERE id=codigoetapaprod) AS processo,'#13#10'(SELEC' +
      'T duracaoestimada FROM cadetapaproducao WHERE id=codigoetapaprod' +
      ') AS duracaoestimada,'#13#10'horainicio,'#13#10'horatermino,'#13#10'operadorinicio' +
      ','#13#10'operadortermino,'#13#10'iniciado,'#13#10'finalizado,'#13#10'status'#13#10' FROM fluxo' +
      'gramaproducao limit 1;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnecDm2
    Left = 535
    Top = 820
  end
  object dspFulxogramaProducao: TDataSetProvider
    DataSet = sdsFulxogramaProducao
    Left = 674
    Top = 820
  end
  object cdsFulxogramaProducao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFulxogramaProducao'
    Left = 810
    Top = 820
    object cdsFulxogramaProducaoid: TIntegerField
      FieldName = 'id'
    end
    object cdsFulxogramaProducaocodigofilial: TWideStringField
      FieldName = 'codigofilial'
      Size = 5
    end
    object cdsFulxogramaProducaonumeroproducao: TWideStringField
      FieldName = 'numeroproducao'
      Size = 6
    end
    object cdsFulxogramaProducaocodigoetapaprod: TWideStringField
      FieldName = 'codigoetapaprod'
      Size = 6
    end
    object cdsFulxogramaProducaohorainicio: TSQLTimeStampField
      FieldName = 'horainicio'
    end
    object cdsFulxogramaProducaohoratermino: TSQLTimeStampField
      FieldName = 'horatermino'
    end
    object cdsFulxogramaProducaooperadorinicio: TWideStringField
      FieldName = 'operadorinicio'
    end
    object cdsFulxogramaProducaooperadortermino: TWideStringField
      FieldName = 'operadortermino'
    end
    object cdsFulxogramaProducaoprocesso: TWideStringField
      FieldName = 'processo'
      Size = 50
    end
    object cdsFulxogramaProducaoiniciado: TWideStringField
      FieldName = 'iniciado'
      Size = 1
    end
    object cdsFulxogramaProducaofinalizado: TWideStringField
      FieldName = 'finalizado'
      Size = 1
    end
    object cdsFulxogramaProducaostatus: TIntegerField
      FieldName = 'status'
    end
    object cdsFulxogramaProducaocodigoproduto: TWideStringField
      FieldName = 'codigoproduto'
      Size = 6
    end
    object cdsFulxogramaProducaoduracaoestimada: TTimeField
      FieldName = 'duracaoestimada'
    end
    object cdsFulxogramaProducaoduracao: TWideStringField
      FieldName = 'duracao'
      Size = 23
    end
    object cdsFulxogramaProducaoinc_prod_producao: TIntegerField
      FieldName = 'inc_prod_producao'
    end
  end
  object dsFulxogramaProducao: TDataSource
    DataSet = cdsFulxogramaProducao
    Left = 930
    Top = 820
  end
end
