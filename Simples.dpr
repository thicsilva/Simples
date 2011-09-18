program Simples;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uMensagens in 'uMensagens.pas' {FrmMensagens},
  usequencias in 'usequencias.pas' {frmSequencias},
  uCadAtividades in 'uCadAtividades.pas' {frmCadAtividades},
  uParametros in 'uParametros.pas' {frmParametros},
  uCadProdutos in 'uCadProdutos.pas' {frmCadProdutos},
  uCadOperacoes in 'uCadOperacoes.pas' {frmCadOperacoes},
  uCadFormaPagamento in 'uCadFormaPagamento.pas' {frmCadFormaPagamento},
  uCtasReceber in 'uCtasReceber.pas' {frmCtasReceber},
  uConsVendas in 'uConsVendas.pas' {frmConsVendas},
  uBaixaNormal in 'uBaixaNormal.pas' {frmBaixaNormal},
  uVendeBrinde in 'uVendeBrinde.pas' {frmVendeBrinde},
  uMovCaixa in 'uMovCaixa.pas' {frmMovCaixa},
  uFechaCaixa in 'uFechaCaixa.pas' {frmFechaCaixa},
  uPrePagamento in 'uPrePagamento.pas' {frmPrePagamento},
  UnitDeclaracoes in 'UnitDeclaracoes.pas',
  ConfigUtils in 'ConfigUtils.pas',
  uCadFornecedores in 'uCadFornecedores.pas' {frmCadFornecedores},
  uCadClientes in 'uCadClientes.pas' {frmCadClientes},
  uEntradas in 'uEntradas.pas' {frmEntradas},
  uselrelvendasVendedor in 'uselrelvendasVendedor.pas' {frmselrelVendasVendedor},
  uLogin in 'uLogin.pas' {frmLogin},
  uselrelContaCorrenteEstoque in 'uselrelContaCorrenteEstoque.pas' {frmSelRelContaCorrenteEstoque},
  udevolucaoVenda in 'udevolucaoVenda.pas' {frmDevolucaoVenda},
  uBaixaTipo_01_Brinde in 'uBaixaTipo_01_Brinde.pas' {frmBaixaBrinde},
  uFechaDia in 'uFechaDia.pas' {frmFechaDia},
  uCtaspagar in 'uCtaspagar.pas' {frmCtasPagar},
  uControleRepasse in 'uControleRepasse.pas' {frmControleRepasse},
  uSelRelDevolucoes in 'uSelRelDevolucoes.pas' {frmSelRelDevolucoes},
  uAbreOS in 'uAbreOS.pas' {frmabreos},
  uConsultaOrdemServico in 'uConsultaOrdemServico.pas' {frmConsultaOrdemServico},
  ufechaOS in 'ufechaOS.pas' {frmFechaOs},
  uManutencaoOs in 'uManutencaoOs.pas' {frmManutencaoOs},
  uCadRotas in 'uCadRotas.pas' {frmCadRotas},
  uSelMotivoStatus in 'uSelMotivoStatus.pas' {frmMotivoStatus},
  uselRelContasReceber in 'uselRelContasReceber.pas' {frmSelRelContasReceber},
  uSelRelEntradas in 'uSelRelEntradas.pas' {frmselrelEntradas},
  Cl_TBuscaDados in 'Cl_TBuscaDados.pas',
  uVendas in 'uVendas.pas' {frmVendas},
  uProposta in 'uProposta.pas' {frmProposta},
  uProdDescricaoComplementar in 'uProdDescricaoComplementar.pas' {frmProdDescricaoComplementar},
  uEstoqueManutencao in 'uEstoqueManutencao.pas' {frmEstoqueManutencao},
  cl_TAvarias in 'cl_TAvarias.pas',
  uInventario in 'uInventario.pas' {frmInventario},
  ucadUsuarios in '..\Compartilhados\ucadUsuarios.pas' {frmCadUsuarios},
  uCadPerfil in '..\Compartilhados\uCadPerfil.pas' {frmCadPerfil},
  uFormBase in '..\Compartilhados\uFormBase.pas' {FormBase},
  uFuncoes in '..\Compartilhados\uFuncoes.pas',
  uclassContaCorrente in 'uclassContaCorrente.pas',
  uClassDaoContaCorrente in 'uClassDaoContaCorrente.pas',
  ufechames in 'ufechames.pas' {frmfechames},
  uCalMQuadrado in 'uCalMQuadrado.pas' {frmCalMQuadrado},
  uselrelvendas in 'uselrelvendas.pas' {frmSelRelVendas},
  uClassEstoque in 'uClassEstoque.pas',
  uselRelEtiquetas in 'uselRelEtiquetas.pas' {frmSelRelEtiquetas},
  uCadFabricantes in 'uCadFabricantes.pas' {frmCadFabricantes},
  uCadGrupos in 'uCadGrupos.pas' {frmCadGrupos},
  uselrelClientes in 'uselrelClientes.pas' {frmSelRelClientes},
  uselrelRepasse in 'uselrelRepasse.pas' {frmselrelRepasse},
  uClassPerfil in '..\Compartilhados\uClassPerfil.pas',
  uClassConexao in '..\Compartilhados\uClassConexao.pas',
  uCadFuncionarios in 'uCadFuncionarios.pas' {frmCadFuncionarios},
  uConsItensDevolvidos in 'uConsItensDevolvidos.pas' {frmConsItensDevolvidos},
  ucadTipoVenda in 'ucadTipoVenda.pas' {frmCadtipoVenda},
  uModelo in 'uModelo.pas' {FrmModelo},
  uTipos in '..\compartilhados\uTipos.pas',
  uDaoPerfil in 'Dao\uDaoPerfil.pas',
  uDaoEstrutura in 'Dao\uDaoEstrutura.pas',
  uAmbienteSistema in '..\Compartilhados\uAmbienteSistema.pas',
  uselRelCurvaAbcProdutos in 'uselRelCurvaAbcProdutos.pas' {frmselRelCurvaAbcProdutos},
  uselrelCurvaAbcClientes in 'uselrelCurvaAbcClientes.pas' {frmselrelcurvaabcclientes},
  uselDatas in 'uselDatas.pas' {frmSelDatas};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Simples - Sistema Simples de Administração';
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TFrmModelo, FrmModelo);
  Application.CreateForm(TfrmselRelCurvaAbcProdutos, frmselRelCurvaAbcProdutos);
  Application.CreateForm(Tfrmselrelcurvaabcclientes, frmselrelcurvaabcclientes);
  Application.CreateForm(TfrmSelDatas, frmSelDatas);
  Application.Run;
end.
