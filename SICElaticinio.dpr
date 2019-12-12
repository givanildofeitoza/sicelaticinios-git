program SICElaticinio;

uses
  Vcl.Forms,
  main in 'main.pas' {_main},
  dm in 'dm.pas' {_dm: TDataModule},
  frmFornecedores in 'frmFornecedores.pas' {_frmFornecedores},
  frmProdutos in 'frmProdutos.pas' {_frmProdutos},
  frmVeiculos in 'frmVeiculos.pas' {_frmVeiculos},
  frmColetores in 'frmColetores.pas' {_frmColetores},
  frmColeta in 'frmColeta.pas' {_frmColeta},
  frmRelColeta in 'frmRelColeta.pas' {_frmRelColeta},
  frmAnaliseColeta in 'frmAnaliseColeta.pas' {_frmAnaliseColeta},
  frmDefinirDadosAnalise in 'frmDefinirDadosAnalise.pas' {_frmDefinirDadosAnalise},
  frmLogin in 'frmLogin.pas' {_frmLogin},
  frmPreencherPadrao in 'frmPreencherPadrao.pas' {_frmPreencherPadrao},
  frmTipoLeite in 'frmTipoLeite.pas' {_frmTipoLeite},
  frmConferenciaQtd in 'frmConferenciaQtd.pas' {_frmConferenciaQtd},
  frmSilos in 'frmSilos.pas' {_frmSilos},
  frmDestinarReservatorio in 'frmDestinarReservatorio.pas' {_frmDestinarReservatorio},
  frmConfigLaticinio in 'frmConfigLaticinio.pas' {_frmConfigLaticinio},
  frmProducaoLaticinio in 'frmProducaoLaticinio.pas' {_frmProducaoLaticinio},
  dm2 in 'dm2.pas' {_dm2: TDataModule},
  frmComposicao in 'frmComposicao.pas' {_frmComposicao},
  frmProdPreProducao in 'frmProdPreProducao.pas' {_frmProdPreProducao},
  frmProdEmbalagens in 'frmProdEmbalagens.pas' {_frmProdEmbalagens},
  frmProducaoDiaria in 'frmProducaoDiaria.pas' {_frmProducaoDiaria},
  frmSplash in 'frmSplash.pas' {_frmSplash},
  frmLogon in 'frmLogon.pas' {_frmLogon},
  frmSobre in 'frmSobre.pas' {_frmSobre},
  frmEmbAdicionais in 'frmEmbAdicionais.pas' {_frmEmbAdicionais},
  frmInsumosdeproducao in 'frmInsumosdeproducao.pas' {_frmInsumosdeproducao},
  frmRelatoriosProducao in 'frmRelatoriosProducao.pas' {_frmRelatoriosProducao},
  frmBuscProdLote in 'frmBuscProdLote.pas' {_frmBuscProdLote},
  frmRelProdDerivados in 'frmRelProdDerivados.pas' {_frmRelProdDerivados},
  frmFormacaoEmbalagem in 'frmFormacaoEmbalagem.pas' {_frmformacaoembalagem},
  frmMovEmbalgem in 'frmMovEmbalgem.pas' {_frmMovEmbalagem},
  frmRelConsumo in 'frmRelConsumo.pas' {_frmRelConsumo},
  frmRelVendas in 'frmRelVendas.pas' {_frmRelVendas},
  frmRelAnalises in 'frmRelAnalises.pas' {_frmRelAnalises},
  frmRelConsumoEmb in 'frmRelConsumoEmb.pas' {_frmRelConsumoEmb},
  frmDesnate in 'frmDesnate.pas' {_frmDesnate};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(T_main, _main);
  Application.CreateForm(T_dm2, _dm2);
  Application.CreateForm(T_dm, _dm);
  Application.Run;
end.
