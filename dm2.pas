unit dm2;

interface

uses
  System.SysUtils, System.Classes, DbxDevartMySql, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Data.DBXMySQL,
  Data.DBXMSSQL;

type
  T_dm2 = class(TDataModule)
    ConnecDm2: TSQLConnection;
    sdsMovproducao: TSQLDataSet;
    dsMovproducao: TDataSetProvider;
    cdsMovproducao: TClientDataSet;
    DSourceMovproducao: TDataSource;
    sdsproducaoitens: TSQLDataSet;
    DSproducaoitens: TDataSetProvider;
    cdsproducaoitens: TClientDataSet;
    DSourceproducaoitens: TDataSource;
    cdsProdPreProducao: TClientDataSet;
    dSourceProdPreProducao: TDataSource;
    dsProdPreProducao: TDataSetProvider;
    sdsProdPreProducao: TSQLDataSet;
    cdsProdutosembalagem: TClientDataSet;
    dsourceProdutosembalagem: TDataSource;
    dsProdutosembalagem: TDataSetProvider;
    sdsProdutosembalagem: TSQLDataSet;
    cdsMovproducaonumero: TIntegerField;
    cdsMovproducaocodigofilial: TWideStringField;
    cdsMovproducaodata: TDateField;
    cdsMovproducaohora: TTimeField;
    cdsMovproducaooperador: TWideStringField;
    cdsMovproducaooperadorfinalizacao: TWideStringField;
    cdsMovproducaodatafinalizacao: TDateField;
    cdsMovproducaohorafinalizacao: TTimeField;
    cdsMovproducaoencerrada: TWideStringField;
    cdsProdPreProducaocodigo: TIntegerField;
    cdsProdPreProducaodescricao: TWideStringField;
    cdsProdPreProducaounidade: TWideStringField;
    cdsProdPreProducaocodigofilial: TWideStringField;
    cdsProdutosembalagemid: TIntegerField;
    cdsProdutosembalagemcodigo: TWideStringField;
    cdsProdutosembalagemdescricao: TWideStringField;
    cdsProdutosembalagemunidade: TWideStringField;
    cdsProdutosembalagemcodprodpreproducao: TWideStringField;
    cdsProdutosembalagemdescprodpreproducao: TWideStringField;
    cdsProdutosembalagemcodProdindiceestoque: TWideStringField;
    cdsProdutosembalagemdescProdindiceestoque: TWideStringField;
    cdsProdutosembalagemcodigofilial: TWideStringField;
    sdsComposicao: TSQLDataSet;
    dsComposicao: TDataSetProvider;
    cdsComposicao: TClientDataSet;
    DSourceComposicao: TDataSource;
    cdsComposicaoid: TIntegerField;
    cdsComposicaocodpreproducao: TWideStringField;
    cdsComposicaoprodpreproducao: TWideStringField;
    cdsComposicaounidade: TWideStringField;
    cdsComposicaotipoinsumo: TWideStringField;
    cdsComposicaoquantidade: TFMTBCDField;
    cdsComposicaocodigofilial: TWideStringField;
    cdsComposicaocusto: TFMTBCDField;
    qrLeite: TSQLQuery;
    qrCreme: TSQLQuery;
    qrManteiga: TSQLQuery;
    cdsMovproducaovalidadelote: TDateField;
    cdsMovproducaolote: TIntegerField;
    cdsMovproducaoitensconfirmados: TWideStringField;
    sdsresumoleite: TSQLDataSet;
    dsResumoleite: TDataSetProvider;
    cdsResumoleite: TClientDataSet;
    dSourceResumoLeite: TDataSource;
    cdsresumocreme: TClientDataSet;
    dsourceresumocreme: TDataSource;
    dsresumocreme: TDataSetProvider;
    sdsresumocreme: TSQLDataSet;
    dsresumomanteiga: TDataSetProvider;
    sdsresumomanteiga: TSQLDataSet;
    dsourceresumomanteiga: TDataSource;
    cdsresumomanteiga: TClientDataSet;
    cdsResumoleiteid: TIntegerField;
    cdsResumoleitecodigo: TWideStringField;
    cdsResumoleiteproduto: TWideStringField;
    cdsResumoleitequantidade: TFMTBCDField;
    cdsResumoleitecodigofilial: TWideStringField;
    cdsResumoleitenumeroproducao: TIntegerField;
    cdsresumocremeid: TIntegerField;
    cdsresumocremecodigo: TWideStringField;
    cdsresumocremeproduto: TWideStringField;
    cdsresumocremequantidade: TFMTBCDField;
    cdsresumocremecodigofilial: TWideStringField;
    cdsresumocremenumeroproducao: TIntegerField;
    sdsProducaoManteiga: TSQLDataSet;
    dsProducaoManteiga: TDataSetProvider;
    cdsProducaoManteiga: TClientDataSet;
    dsourceProducaoManteiga: TDataSource;
    dsProducaoCreme: TDataSetProvider;
    SourceProducaoCreme: TDataSource;
    cdsProducaoCreme: TClientDataSet;
    sdsProducaoCreme: TSQLDataSet;
    dsProducaoLeite: TDataSetProvider;
    SourceProducaoLeite: TDataSource;
    cdsProducaoLeite: TClientDataSet;
    sdsProducaoLeite: TSQLDataSet;
    cdsProducaoManteigaid: TIntegerField;
    cdsProducaoManteigacodigofilial: TWideStringField;
    cdsProducaoManteiganumeroproducao: TIntegerField;
    cdsProducaoManteigacremederretido: TFMTBCDField;
    cdsProducaoManteigamanteigaobitida: TFMTBCDField;
    cdsProducaoManteigarendimento: TFMTBCDField;
    cdsProducaoManteigamanteigautilizada: TFMTBCDField;
    cdsProducaoManteigasaldo: TFMTBCDField;
    cdsProducaoManteigaestoque: TFMTBCDField;
    cdsProducaoManteigaperda: TFMTBCDField;
    cdsProducaoCremeid: TIntegerField;
    cdsProducaoCremecodigofilial: TWideStringField;
    cdsProducaoCremenumeroproducao: TIntegerField;
    cdsProducaoCremesobra: TFMTBCDField;
    cdsProducaoCremecomprado: TFMTBCDField;
    cdsProducaoCremedesnatado: TFMTBCDField;
    cdsProducaoCremepadronizado: TFMTBCDField;
    cdsProducaoCremesoro: TFMTBCDField;
    cdsProducaoCremesorocoalho: TFMTBCDField;
    cdsProducaoCremevendido: TFMTBCDField;
    cdsProducaoCremeutilizado: TFMTBCDField;
    cdsProducaoCremesaldo: TFMTBCDField;
    cdsProducaoCremeestoque: TFMTBCDField;
    cdsProducaoCremeperda: TFMTBCDField;
    cdsComposicaocodigo: TWideStringField;
    cdsComposicaoproduto: TWideStringField;
    cdsproducaoitensid: TIntegerField;
    cdsproducaoitenscodigo: TWideStringField;
    cdsproducaoitensproduto: TWideStringField;
    cdsproducaoitensunidade: TWideStringField;
    cdsproducaoitensquantidademanteiga: TFMTBCDField;
    cdsproducaoitensquantidadecreme: TFMTBCDField;
    cdsproducaoitensquantidadeleite: TFMTBCDField;
    cdsproducaoitensquantidadeproduzida: TFMTBCDField;
    cdsproducaoitenscodigofilial: TWideStringField;
    cdsproducaoitensnumeroproducao: TWideStringField;
    cdsProducaoLeiteid: TIntegerField;
    cdsProducaoLeitecodigofilial: TWideStringField;
    cdsProducaoLeitenumeroproducao: TIntegerField;
    cdsProducaoLeitesobra: TFMTBCDField;
    cdsProducaoLeiteentrada: TFMTBCDField;
    cdsProducaoLeiteutilizado: TFMTBCDField;
    cdsProducaoLeitevendido: TFMTBCDField;
    cdsProducaoLeitesobrat: TFMTBCDField;
    cdsProducaoLeiteperda: TFMTBCDField;
    cdsProducaoLeitesalvo: TWideStringField;
    cdsProducaoCremesalvo: TWideStringField;
    cdsProducaoManteigasalvo: TWideStringField;
    cdsresumomanteigaid: TIntegerField;
    cdsresumomanteigacodigo: TWideStringField;
    cdsresumomanteigaproduto: TWideStringField;
    cdsresumomanteigaquantidade: TFMTBCDField;
    cdsresumomanteigaquantidadeajustada: TFMTBCDField;
    cdsresumomanteigacodigofilial: TWideStringField;
    cdsresumomanteiganumeroproducao: TIntegerField;
    cdsresumomanteigasalvo: TWideStringField;
    cdsresumocremequantidadeajustada: TFMTBCDField;
    cdsresumocremesalvo: TWideStringField;
    cdsResumoleitequantidadeajustada: TFMTBCDField;
    cdsResumoleitesalvo: TWideStringField;
    cdsProducaoCremedestinado: TFMTBCDField;
    cdsProducaoLeitedestinado: TFMTBCDField;
    cdsProducaoManteigadestinado: TFMTBCDField;
    cdsProducaoLeitesaldo: TFMTBCDField;
    cdsProducaoManteigasobra: TFMTBCDField;
    cdsMovproducaopreproducaoconfirmada: TWideStringField;
    qrPadrao: TSQLQuery;
    sdsProducaoDerivados: TSQLDataSet;
    dsProducaoDerivados: TDataSetProvider;
    cdsProducaoDerivados: TClientDataSet;
    DSourceProducaoDerivados: TDataSource;
    cdsProducaoDerivadosid: TIntegerField;
    cdsProducaoDerivadosnumeroproducao: TIntegerField;
    cdsProducaoDerivadoscodigofilial: TWideStringField;
    cdsProducaoDerivadoscodigoderivado: TWideStringField;
    cdsProducaoDerivadosprodutoderivado: TWideStringField;
    cdsProducaoDerivadosquantidade: TFMTBCDField;
    qrPadrao2: TSQLQuery;
    cdsProducaoDerivadosqtdleiteinformada: TFMTBCDField;
    cdsProducaoDerivadosrendimento: TFMTBCDField;
    cdsProdutosembalagemquantidadeembalagem: TFMTBCDField;
    cdsProducaoDerivadosquantidadeembalagem: TFMTBCDField;
    cdsProducaoDerivadosquantidadeTotal: TFMTBCDField;
    cdsProducaoDerivadosembadicionais: TFMTBCDField;
    cdsProducaoDerivadosembrequisitada: TWideStringField;
    cdsProducaoDerivadosembadicinalrequisitada: TWideStringField;
    cdsProducaoDerivadosoperadorreqemb: TWideStringField;
    cdsProducaoDerivadosoperadorreqembadicional: TWideStringField;
    cdsMovproducaoitensderivadosconfirmados: TWideStringField;
    cdsProdutosembalagemcodigoembalagem: TWideStringField;
    sdsMateria: TSQLDataSet;
    dsMateria: TDataSetProvider;
    cdsMateria: TClientDataSet;
    dSourceMateria: TDataSource;
    cdsMateriacodigoFilial: TWideStringField;
    cdsMateriaidproducao: TIntegerField;
    cdsMateriacodigoproduto: TWideStringField;
    cdsMateriadescricaoproduto: TWideStringField;
    cdsMateriacodigomateria: TWideStringField;
    cdsMateriadescricaomateria: TWideStringField;
    cdsMateriaquantidade: TFMTBCDField;
    cdsMateriaquantidademateria: TFMTBCDField;
    cdsMateriacustounitario: TFMTBCDField;
    cdsMateriadata: TDateField;
    cdsMateriaoperador: TWideStringField;
    cdsMateriatotalmateriautilizada: TFMTBCDField;
    cdsproducaoitensquantidadesoro: TFMTBCDField;
    cdsproducaoitenstotalproduzido: TFMTBCDField;
    cdsMovproducaototalcustoproducao: TFMTBCDField;
    cdsProducaoDerivadoscodigoembalagem: TWideStringField;
    cdsProducaoDerivadosprodutoembalagem: TWideStringField;
    cdsproducaoitenslote: TWideStringField;
    cdsproducaoitensvalidade: TDateField;
    cdsProducaoDerivadoslote: TWideStringField;
    cdsProducaoDerivadosvalidade: TDateField;
    dSourceImagens: TDataSource;
    cdsImagens: TClientDataSet;
    dsImagens: TDataSetProvider;
    sdsImagens: TSQLDataSet;
    cdsImagensid: TIntegerField;
    cdsImagenslogomarca: TWideStringField;
    cdsImagensbackground: TWideStringField;
    cdsImagensip: TWideStringField;
    cdsImagenscodigofilial: TWideStringField;
    sdsCompEmbalagem: TSQLDataSet;
    dsCompEmbalagem: TDataSetProvider;
    cdsCompEmbalagem: TClientDataSet;
    DSourceCompEmbalagem: TDataSource;
    cdsCompEmbalagemid: TIntegerField;
    cdsCompEmbalagemcodigoprodproducao: TWideStringField;
    cdsCompEmbalagemprodproducao: TWideStringField;
    cdsCompEmbalagemcodidoderivado: TWideStringField;
    cdsCompEmbalagemprodutoderivado: TWideStringField;
    cdsCompEmbalagemcodigoembalagem: TWideStringField;
    cdsCompEmbalagemprodutoembalagem: TWideStringField;
    cdsCompEmbalagemquantidade: TFMTBCDField;
    cdsCompEmbalagemcodigofilial: TWideStringField;
    sdsprodmovembalagem: TSQLDataSet;
    dsprodmovembalagem: TDataSetProvider;
    cdsprodmovembalagem: TClientDataSet;
    dSourceprodmovembalagem: TDataSource;
    cdsprodmovembalagemid: TIntegerField;
    cdsprodmovembalagemnumeroproducao: TIntegerField;
    cdsprodmovembalagemcodigopreproducao: TWideStringField;
    cdsprodmovembalagemdescricaopreproducao: TWideStringField;
    cdsprodmovembalagemcodigoderivado: TWideStringField;
    cdsprodmovembalagemdescricaoderivado: TWideStringField;
    cdsprodmovembalagemcodigoembalagem: TWideStringField;
    cdsprodmovembalagemdescricaoembalagem: TWideStringField;
    cdsprodmovembalagemqtdnecessaria: TFMTBCDField;
    cdsprodmovembalagemcustototal: TFMTBCDField;
    cdsprodmovembalagemqtdproduzido: TFMTBCDField;
    cdsprodmovembalagemqtdutilizado: TFMTBCDField;
    cdsprodmovembalagemtipo: TWideStringField;
    cdsprodmovembalagemsolicitado: TWideStringField;
    cdsprodmovembalagemoperadorsolicita: TWideStringField;
    cdsprodmovembalagemoperadorsolicitaadicional: TWideStringField;
    cdsprodmovembalagemcodigofilial: TWideStringField;
    cdsMovproducaocustoembalagens: TFMTBCDField;
    cdsMateriatotalcustoproducao: TFMTBCDField;
    cdsComposicaoparametroleite: TFMTBCDField;
    cdsproducaoitensqtdadicional: TFMTBCDField;
    cdsProducaoDerivadosprodPreProducao: TWideStringField;
    cdsMovproducaomateriarequisitada: TWideStringField;
    sdsrelvenda: TSQLDataSet;
    dsrelvenda: TDataSetProvider;
    cdsRelvenda: TClientDataSet;
    cdsRelvendacodigo: TWideStringField;
    cdsRelvendaproduto: TWideStringField;
    cdsRelvendaqtdvendida: TFMTBCDField;
    cdsRelvendadocumento: TWideStringField;
    cdsRelvendacodigovenda: TWideStringField;
    cdsRelvendaprodutovenda: TWideStringField;
    cdsRelvendaquantidadevenda: TFMTBCDField;
    dSourceRelvenda: TDataSource;
    cdsRelvendatotal: TFMTBCDField;
    sdsvendageral: TSQLDataSet;
    dspVendageral: TDataSetProvider;
    cdsvendageral: TClientDataSet;
    DSourceVendageral: TDataSource;
    cdsvendageralcodigo: TWideStringField;
    cdsvendageralproduto: TWideStringField;
    cdsvendageralqtdvendida: TFMTBCDField;
    cdsProducaoDerivadoscodigopreproducao: TWideStringField;
    cdsprodmovembalagemcustounitario: TFMTBCDField;
    cdsComposicaotipoparametro: TWideStringField;
    dSourceDesnate: TDataSource;
    cdsDesnate: TClientDataSet;
    dspDesnate: TDataSetProvider;
    sdsDesnate: TSQLDataSet;
    cdsDesnateid: TIntegerField;
    cdsDesnatedataabertura: TDateField;
    cdsDesnatedataencerramento: TSQLTimeStampField;
    cdsDesnatesaldoleiteanterior: TFMTBCDField;
    cdsDesnateleitedestinado: TFMTBCDField;
    cdsDesnatesaldodesnatado: TFMTBCDField;
    cdsDesnatecremeobtido: TFMTBCDField;
    cdsDesnategordura: TFMTBCDField;
    cdsDesnatecodigofilial: TWideStringField;
    cdsDesnateoperador: TWideStringField;
    cdsDesnateencerrada: TWideStringField;
    cdsMovproducaodescricao: TWideStringField;
    sdsProcProducao: TSQLDataSet;
    dspProcProducao: TDataSetProvider;
    cdsProcProducao: TClientDataSet;
    dsProcProducao: TDataSource;
    sdsFulxogramaProducao: TSQLDataSet;
    dspFulxogramaProducao: TDataSetProvider;
    cdsFulxogramaProducao: TClientDataSet;
    dsFulxogramaProducao: TDataSource;
    cdsProcProducaoid: TIntegerField;
    cdsProcProducaocodigofilial: TWideStringField;
    cdsProcProducaoprocesso: TWideStringField;
    cdsProcProducaoordem: TIntegerField;
    cdsProcProducaocodigoproduto: TWideStringField;
    cdsFulxogramaProducaoid: TIntegerField;
    cdsFulxogramaProducaocodigofilial: TWideStringField;
    cdsFulxogramaProducaonumeroproducao: TWideStringField;
    cdsFulxogramaProducaocodigoetapaprod: TWideStringField;
    cdsFulxogramaProducaohorainicio: TSQLTimeStampField;
    cdsFulxogramaProducaohoratermino: TSQLTimeStampField;
    cdsFulxogramaProducaooperadorinicio: TWideStringField;
    cdsFulxogramaProducaooperadortermino: TWideStringField;
    cdsProcProducaoduracaoestimada: TTimeField;
    cdsFulxogramaProducaoprocesso: TWideStringField;
    cdsFulxogramaProducaoiniciado: TWideStringField;
    cdsFulxogramaProducaofinalizado: TWideStringField;
    cdsFulxogramaProducaostatus: TIntegerField;
    cdsFulxogramaProducaocodigoproduto: TWideStringField;
    cdsFulxogramaProducaoduracaoestimada: TTimeField;
    cdsFulxogramaProducaoduracao: TWideStringField;
    cdsproducaoitensmateriarequisitada: TWideStringField;
    cdsFulxogramaProducaoinc_prod_producao: TIntegerField;
    cdsResumoleiteinc_prod_producao: TIntegerField;
    cdsresumocremeinc_prod_producao: TIntegerField;
    cdsresumomanteigainc_prod_producao: TIntegerField;
    cdsMateriainc_prod_producao: TIntegerField;
    sdsconffinanc: TSQLDataSet;
    dspconffinanc: TDataSetProvider;
    cdsconffinanc: TClientDataSet;
    DataSource1: TDataSource;
    cdsconffinancCodigoFilial: TWideStringField;
    cdsconffinancfatmaiordesvenda: TFMTBCDField;
    cdsconffinanclimitevalor: TFMTBCDField;
    cdsconffinancfatmaiordescrec: TFMTBCDField;
    cdsconffinancfatjurdia: TFMTBCDField;
    cdsconffinancfatmaiordescrecjur: TFMTBCDField;
    cdsconffinancfatjurant: TFMTBCDField;
    cdsconffinancfatnrdias: TIntegerField;
    cdsconffinancfatultnumnf: TFMTBCDField;
    cdsconffinancClimesesrencad: TIntegerField;
    cdsconffinancCliData: TWideStringField;
    cdsconffinancclindiasnaocobrar: TIntegerField;
    cdsconffinancPerClasse: TWideStringField;
    cdsconffinancCodigo: TIntegerField;
    cdsconffinancprodutoscadastro: TWideStringField;
    cdsconffinancrecalcularprevenda: TWideStringField;
    cdsconffinancvalorsalario: TFMTBCDField;
    cdsconffinanccpfobrigatorio: TWideStringField;
    cdsconffinancmsg1: TWideStringField;
    cdsconffinancmsg2: TWideStringField;
    cdsconffinancdiasvencimento: TIntegerField;
    cdsconffinancintervalocrediario: TIntegerField;
    cdsconffinancqtdprateleiras: TWideStringField;
    cdsconffinancinstrucaocobranca: TWideStringField;
    cdsconffinancboletobancario: TWideStringField;
    cdsconffinancdevolucaocomnota: TWideStringField;
    cdsconffinancrecibocaixa: TWideStringField;
    cdsconffinancdespesacontasapagar: TWideStringField;
    cdsconffinancposicaocodigobalanca: TWideStringField;
    cdsconffinancalterarpreco: TWideStringField;
    cdsconffinanccliusafatorlimite: TWideStringField;
    cdsconffinancclifatorlimite: TFMTBCDField;
    cdsconffinancconta: TWideStringField;
    cdsconffinancsubconta: TWideStringField;
    cdsconffinancmaxarredondamento: TFMTBCDField;
    cdsconffinancalterarprecotransferencia: TWideStringField;
    cdsconffinancrestricaoprevenda: TWideStringField;
    cdsconffinancqtditenstabela: TIntegerField;
    cdsconffinanctaxafinanciamento: TFMTBCDField;
    cdsconffinancescolherfilialtransferencia: TWideStringField;
    cdsconffinancimpentradacarne: TWideStringField;
    cdsconffinancdescontocartaofidelidade: TFMTBCDField;
    cdsconffinancdiasparatrocasenhasoperadores: TIntegerField;
    cdsconffinancdiasparamudarsituacao: TIntegerField;
    cdsconffinancsituacaoautomatica: TWideStringField;
    cdsconffinanclocalcobrancaboleto: TWideStringField;
    cdsconffinancabatercreditocompraCH: TWideStringField;
    cdsconffinancdiascorridosvencimentos: TWideStringField;
    cdsconffinancretidosbaixarestoque: TWideStringField;
    cdsconffinancescolherfiliallctdb: TWideStringField;
    cdsconffinanccpmf: TFMTBCDField;
    cdsconffinanciss: TFMTBCDField;
    cdsconffinanccofins: TFMTBCDField;
    cdsconffinancbdorigemprevenda: TWideStringField;
    cdsconffinancoperadordigitarsenhanaprevenda: TWideStringField;
    cdsconffinancabaterestoqueprevenda: TWideStringField;
    cdsconffinanctextogarantia: TWideMemoField;
    cdsconffinancmostraqtddisponivel: TWideStringField;
    cdsconffinancmostrarprecominimo: TWideStringField;
    cdsconffinancvalorbonificaocartaofidelidade: TFMTBCDField;
    cdsconffinancpontuacaobonificacaocartaofidelidade: TFMTBCDField;
    cdsconffinanciof: TFloatField;
    cdsconffinancpis: TFMTBCDField;
    cdsconffinancirrf: TFMTBCDField;
    cdsconffinancsituacaoautomaticainferior: TWideStringField;
    cdsconffinancdiasparamudarsituacaoinferior: TIntegerField;
    cdsconffinancbuscaautomatica: TWideStringField;
    cdsconffinancmostrarprecoatacado: TWideStringField;
    cdsconffinanciof2: TFloatField;
    cdsconffinancprodcodaut: TWideStringField;
    cdsconffinancboletocobrebemX: TWideStringField;
    cdsconffinancespecieNF: TWideStringField;
    cdsconffinancserieNF: TWideStringField;
    cdsconffinancmodeloDocFiscal: TWideStringField;
    cdsconffinancCSLL: TFMTBCDField;
    cdsconffinancEmitirNF_e: TWideStringField;
    cdsconffinancmsgnotafiscal: TWideMemoField;
    cdsconffinanccfopsaida: TWideStringField;
    cdsconffinanccfopsaidaECF: TWideStringField;
    cdsconffinanccalculamargempordentro: TWideStringField;
    cdsconffinancultimoselonf: TFMTBCDField;
    cdsconffinancbuscaautomaticaprd: TWideStringField;
    cdsconffinancorigembackup: TWideStringField;
    cdsconffinancdestinobackup: TWideStringField;
    cdsconffinancdigitoIniBal: TWideStringField;
    cdsconffinancdevolucaomaiorrec: TWideStringField;
    cdsconffinancfilialmae: TWideStringField;
    cdsconffinancdescontoservico: TFMTBCDField;
    cdsconffinancprodcadcustopreco: TWideStringField;
    cdsconffinancentradaperguntaalteracusto: TWideStringField;
    cdsconffinancnegociacaojurosnavenda: TWideStringField;
    cdsconffinancpermitirporcontacliente: TWideStringField;
    cdsconffinancBCICMSProduto: TWideStringField;
    cdsconffinancemissornfe: TWideStringField;
    cdsconffinancmsgrodapecupom: TWideStringField;
    cdsconffinancprevisualizarnfe: TWideStringField;
    cdsconffinancvendasemprecomvendedor: TWideStringField;
    cdsconffinanctotalbrutocomencargos: TWideStringField;
    cdsconffinancvendaimportadavnfe: TWideStringField;
    cdsconffinancaliquotaretencaofrete: TFMTBCDField;
    cdsconffinanctotalnofinalcodbalanca: TWideStringField;
    cdsconffinancativarassistentegerencial: TWideStringField;
    cdsconffinancdiasreservaestoquedav: TIntegerField;
    cdsconffinancmaximodescontogerencial: TFMTBCDField;
    cdsconffinanctransportarsaldocaixa: TWideStringField;
    cdsconffinancsempreabrircupomcomcliente: TWideStringField;
    cdsconffinancnumerocarnegerador: TWideStringField;
    cdsconffinancnumeroetiquetagerador: TWideStringField;
    cdsconffinancdbclienterestricao: TFMTBCDField;
    cdsconffinancdestinoentrada: TWideStringField;
    cdsconffinancvalidarncm: TWideStringField;
    cdsconffinancinventarioautomatico: TWideStringField;
    cdsconffinancnfedevolucaoentrarestoque: TWideStringField;
    cdsconffinancaceitardescontoatacado: TWideStringField;
    cdsconffinancalterarprecofiliaisentrada: TWideStringField;
    cdsconffinancencerrartransfdestino: TWideStringField;
    cdsconffinancdescfidelidadeavista: TWideStringField;
    cdsconffinancrodarscripts: TWideStringField;
    cdsconffinancverificarvenda: TWideStringField;
    cdsconffinancduplicidadeProdutosBalanco: TWideStringField;
    cdsconffinancnfcetransacaobanco: TWideStringField;
    cdsconffinancmascarafiscal: TWideStringField;
    cdsconffinanccustogerencial: TWideStringField;
    cdsconffinancdevmenorqueparcela: TWideStringField;
    cdsconffinancgerarposicaoestoque: TWideStringField;
    cdsconffinanctipoprodutopesquisa: TWideStringField;
    cdsconffinancsaldoporoperador: TWideStringField;
    cdsconffinancmostrarsaldoliquido: TWideStringField;
    cdsconffinancvalorcomprafidelizacao: TFMTBCDField;
    cdsconffinancpontuacaomaxima: TIntegerField;
    cdsconffinancqtdpontosfidelizacao: TIntegerField;
    cdsconffinancvalidarestoquenaprevenda: TWideStringField;
    cdsconffinancvalidarqtdprateleira: TWideStringField;
    cdsconffinanctransferenciatransito: TWideStringField;
    cdsconffinancpontuacaoiqcardcr: TWideStringField;
    cdsconffinancpontuacaoiqcardca: TWideStringField;
    cdsconffinanccoeficientepontosiqcard: TFMTBCDField;
    cdsconffinancusarcontrolelote: TWideStringField;
    cdsconffinanccaixapersonalizado: TWideStringField;
    cdsconffinancpoperacionalcustoentrada: TFMTBCDField;
    cdsconffinanccreditarLucroReal: TWideStringField;
    cdsconffinanclibEntSemPedido: TWideStringField;
    cdsconffinancsincronizar: TWideStringField;
    cdsconffinancfilialSincronizada: TWideStringField;
    cdsconffinanccontaReceitaPis: TIntegerField;
    cdsconffinanccontaReceitaCofins: TIntegerField;
    cdsconffinancexcluirprevendas: TWideStringField;
    cdsconffinanccancelarvendarejeicaocartao: TWideStringField;
    cdsconffinanctipoContaSPED: TWideStringField;
    cdsconffinancgerartransfnavenda: TWideStringField;
    cdsconffinancserietransferenciavenda: TWideStringField;
    cdsconffinancromaneiovenda: TWideStringField;
    cdsconffinanccfopTransferenciavenda: TWideStringField;
    cdsconffinanclimitevendasemidentificacao: TFMTBCDField;
    cdsconffinancCertificadoArquivo: TBlobField;
    cdsconffinancCertificadoSenha: TWideStringField;
    cdsconffinancCertificadoNumSerie: TWideStringField;
    cdsconffinancCertificadoDataVencimento: TDateField;
    cdsconffinancCertificadoidCS: TWideStringField;
    cdsconffinancCertificadoCSC: TWideStringField;
    cdsconffinancCertificadoSSLLib: TIntegerField;
    cdsconffinancCertificadoCryptLib: TIntegerField;
    cdsconffinancCertificadoHttpLib: TIntegerField;
    cdsconffinancCertificadoXmlSignLib: TIntegerField;
    cdsconffinancWebServiceUF: TWideStringField;
    cdsconffinancWebServiceAmbiente: TIntegerField;
    cdsconffinancWebServiceSSLType: TIntegerField;
    cdsconffinancModoEmissaoModo: TIntegerField;
    cdsconffinancPropEnvioIntervalo: TIntegerField;
    cdsconffinancPropEnvioTimeOut: TIntegerField;
    cdsconffinancImpressaoNomeImpressora: TWideStringField;
    cdsconffinancImpressaoExibirResumoCanhoto: TIntegerField;
    cdsconffinancImpressaoExpandirLogoMarca: TIntegerField;
    cdsconffinancImpressaoFormularioContinuo: TIntegerField;
    cdsconffinancImpressaoImprimeDescAcresItem: TIntegerField;
    cdsconffinancImpressaoImprimeEmUmaLinha: TIntegerField;
    cdsconffinancImpressaoImprimeLogoLateral: TIntegerField;
    cdsconffinancImpressaoImprimeNomeFantasia: TIntegerField;
    cdsconffinancImpressaoImprimirDescPorc: TIntegerField;
    cdsconffinancImpressaoImprimirDetalhamentoEspecifico: TIntegerField;
    cdsconffinancImpressaoImprimirItens: TIntegerField;
    cdsconffinancImpressaoImprimirTotalLiquido: TIntegerField;
    cdsconffinancImpressaoImprimirTributos: TIntegerField;
    cdsconffinancImpressaoUsarCodigoEanImpressao: TIntegerField;
    cdsconffinancImpressaoTributosSeparadamente: TIntegerField;
    cdsconffinancImpressaoViaConsumidor: TIntegerField;
    cdsconffinancImpressaoLogoemCima: TIntegerField;
    cdsconffinancImpressaoImpressaoResumida: TIntegerField;
    cdsconffinancImpressaoLarguraBobina: TIntegerField;
    cdsconffinancImpressaoProdutosPorPagina: TIntegerField;
    cdsconffinancImpressaoTamanhoFonteEndereco: TIntegerField;
    cdsconffinancImpressaoTamanhoFonte_DemaisCampos: TIntegerField;
    cdsconffinancImpressaoExibirResumoCanhoto_texto: TWideStringField;
    cdsconffinancImpressaoFonteTributos: TWideStringField;
    cdsconffinancImpressaoLogomarca: TBlobField;
    cdsconffinancserieNFCeSiceWeb: TIntegerField;
    cdsconffinancEmitenteFilial: TWideStringField;
    cdsconffinancgerarNFeTransfVenda: TWideStringField;
    cdsconffinancalterarprecooffline: TWideStringField;
    cdsconffinancfechamentoDiarioAutomatico: TWideStringField;
    cdsconffinancfidelizarrecebimento: TWideStringField;
    cdsconffinancsaldoCaixaSP: TWideStringField;
    cdsconffinancidademaximacadastro: TIntegerField;
    cdsconffinancidademinimacadastro: TIntegerField;
    cdsconffinancmensagemadicionalcarne: TWideStringField;
    cdsconffinancanaliseobrigatoria: TWideStringField;
    cdsconffinancipcnf2: TBlobField;
    cdsconffinancformaPagamentoDescontoMaximo: TWideStringField;
    cdsconffinancnaoFinalizarEntradaCriticasTributarias: TWideStringField;
    cdsconffinancmargemlucrominima: TFMTBCDField;
    cdsconffinanctaxaadmcartaodiferenciada: TWideStringField;
    cdsconffinancexibirAnunciosPDV: TWideStringField;
    cdsconffinancimpulsionarVendasAnunciosPDV: TWideStringField;
    cdsconffinancmarcarItensEntrada: TWideStringField;
    cdsconffinancfilialcabecalhorenegociacao: TWideStringField;
    cdsconffinancspoolimpressao: TWideStringField;
    cdsconffinancreceberdocumentosdiferentescrediario: TWideStringField;
    cdsconffinanccontamulta: TWideStringField;
    cdsconffinancsubcontamulta: TWideStringField;
    cdsconffinancmarcacaoProdutosIP: TWideStringField;
    cdsconffinanchoraatualizacao: TWideStringField;
    cdsMovproducaoobservacao: TWideMemoField;
    procedure ConnecDm2BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _dm2: T_dm2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses
main;

procedure T_dm2.ConnecDm2BeforeConnect(Sender: TObject);
begin
// In�cio das vari�veis do Data Module
//db_acesso('','','','');
with Sender as TSQLConnection do
     begin
    if LoginPrompt = False then
    begin
      Params.Values['User_Name'] := glb_user;
      Params.Values['Password']  := glb_senha;
      Params.Values['Database']  := glb_db ;
      Params.Values['HostName'] := glb_ip_servidor;
      Params.Values['DriverName'] := 'DevartMySQLDirect';
      Params.Values['FetchAll'] := 'True';
      Params.Values['BlobSize'] := '-1';
      Params.Values['EnableBoolan'] := 'False';
      LibraryName := 'cu';
      VendorLib := 'not used';
      DriverName :=  'DevartMySQLDirect';
    end;
  end;
end;

end.
