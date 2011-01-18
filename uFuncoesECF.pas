unit uFuncoesECF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ComCtrls, DBxpress, SimpleDS, SQLTimSt, SqlExpr, StdCtrls, InIfiles, Dialogs,
  ShellApi,DBClient,Provider;

  Type
  TFabricanteECF = ( feNone, feBematech, feCorisco, feDaruma, feSchalter, feSweda, feZanthus, feElgin, feEpson );

  // ====> Funções/Procedimentos criados pela Tec-Soft
  Function USER_AbrirCupom( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ) : String;
  Function USER_CancelaCupom( fFabricanteECF : TFabricanteECF; fTipoCupom : Char = 'F'; fsLabel : TLabel = Nil ) : Boolean;
  Function USER_VendeItem( fFabricanteECF : TFabricanteECF; fsCodItem : String; fsDescricaoItem : String; fsSitTrib : String; frQuant : Real; frPreco : Real; fiQtdeDecimais : Integer; frVlr_Desc: Real = 0; fsLabel : TLabel = Nil ) : Boolean;
  Function USER_CancelaItem( fFabricanteECF : TFabricanteECF; prsSeqItem : string; fsLabel : TLabel = Nil ) : Boolean;
  Function USER_ImportarUltimaReducaoZ( fFabricanteECF : TFabricanteECF; fbDataMovAtual : Boolean; fsLabel : TLabel = Nil ) : Boolean;
  Function USER_ImprimirNaoFiscalNaoVinculado( fFabricanteECF : TFabricanteECF; fsTipo : String; frValor : Real; fsNomeTPG : String; fsLabel : TLabel = Nil ) : Boolean;
  Function USER_ImprimeCheque( fFabricanteECF : TFabricanteECF; fsCodBanco : String; fsFavorecido : String; fsLocalidade : String; fdData : TDate; frValor : Real; fsLabel : TLabel = Nil ) : Boolean;
  Function USER_EstadoECF( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): string;
  Function USER_ECFLigado( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): Boolean;
  Function USER_SincronizarDataHora( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): TDateTime;
  Function USER_NumeroCupom( fFabricanteECF : TFabricanteECF; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): String;
  Function USER_CupomAberto( fFabricanteECF : TFabricanteECF; fTipoCupom : Char = 'F'; fsLabel : TLabel = Nil ): Boolean;
  Function USER_JaHouveReducaoZ( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): Boolean;
  Function USER_TotalizaCupom( fFabricanteECF : TFabricanteECF; prrVlr_Venda: Real; prsTipo_AcreDesc: string; prrVlr_AcreDesc: Real; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
  Function USER_FormaPagamento( fFabricanteECF : TFabricanteECF; prsFormaPagamento: string; prrVlr_Recebido: Real; fsLabel: TLabel = Nil ): Boolean;
  Function USER_FechaCupom( fFabricanteECF : TFabricanteECF; prsMensagem: string; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
  Function USER_AbrirCupomNaoFiscalVinculado( fFabricanteECF : TFabricanteECF; prsFormaPagamento: string; prrVlr_Recebido: Real; prsNumeroCupom: string; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
  Function USER_RelatorioGerencial( fFabricanteECF : TFabricanteECF; prsTexto: string; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
  Function USER_UsaComprovanteNaoFiscalVinculado( fFabricanteECF : TFabricanteECF; prsTexto: string; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
  Function USER_FechaRelatorioGerencial( fFabricanteECF : TFabricanteECF; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
  Function USER_LeituraX( fFabricanteECF : TFabricanteECF; fsLabel: TLabel = Nil ): Boolean;
  Function USER_ReducaoZ( fFabricanteECF : TFabricanteECF; fsLabel: TLabel = Nil ): Boolean;
  Function USER_AberturaDia( fFabricanteECF : TFabricanteECF; prrVlr_Abertura: Real; prsFormaPagamento: string; fsLabel: TLabel = Nil ): Boolean;
  Function USER_MemoriaFiscal( fFabricanteECF : TFabricanteECF; prdDataI, prdDataF: TDateTime; prsReducaoI, prsReducaoF: string; prbMeioMagnetico: boolean; fsLabel: TLabel = Nil ): Boolean;
  Function USER_AbrirGaveta( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): Boolean;
  Function USER_CancelaUltimoCupom( fFabricanteECF : TFabricanteECF; prsOperadorCancel: String; fsLabel : TLabel = Nil ): boolean;
  Function USER_CapturaFormasPagamento( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): TStringList;
  Function USER_CapturaValorSangria( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): Real;
  Function USER_CapturaAliquotas( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ) : TStringList;
  Function USER_VerificaTotalizadoresNaoFiscais( fFabricanteECF : TFabricanteECF; var fsVerificaTotalizadoresNaoFiscais : String; fsLabel: Tlabel = Nil ) : Boolean;
  Function USER_Sangria( fFabricanteECF : TFabricanteECF; prrValor: Real; fsLabel : TLabel = Nil ): Boolean;
  Function USER_Suprimento( fFabricanteECF : TFabricanteECF; prrValor: Real; prsTpPgto: string; fsLabel : TLabel = Nil ): Boolean;
  Function USER_SubtotalCupom( fFabricanteECF : TFabricanteECF; prrVlr_Venda: Real; prsTipo_AcreDesc: string; prrVlr_AcreDesc: Real; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
  Function USER_EspacoEntreLinhas( fFabricanteECF : TFabricanteECF; priEspacoEntreLinhas: Integer; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
  Function USER_DataMovimento( fFabricanteECF : TFabricanteECF; var fsDataMovECF : String; fsLabel: TLabel = Nil ) : String;
  Function USER_ProgramaFormasPagamento( fFabricanteECF : TFabricanteECF; prsTexto_FormasPagamento: string; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ) : Boolean;
  Function USER_VersaoECF( fFabricanteECF : TFabricanteECF; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): string;
  Function USER_RetornoImpressora( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ) : String;
  Function USER_ModeloECF( fFabricanteECF : TFabricanteECF; var fsModeloECF : String; fsLabel: TLabel = Nil ) : Boolean;
  Function USER_NumeroSerie( fFabricanteECF : TFabricanteECF; var fsNumeroSerie : String; var fsModeloECF : String; fsLabel: TLabel = Nil ) : Boolean;
  Function USER_DataHoraReducao( fFabricanteECF : TFabricanteECF; var fsData : String; var fsHora : String; fsLabel: TLabel = Nil ) : Boolean;
  Function USER_NumeroCaixa( fFabricanteECF : TFabricanteECF; var fsNumeroCaixa : String; fsLabel: TLabel = Nil ) : Boolean;
  Function USER_NumeroLoja( fFabricanteECF : TFabricanteECF; var fsNumeroLoja : String;  fsLabel: TLabel = Nil  ) : Boolean;
  Function USER_CNPJIEIMUsuario( fFabricanteECF : TFabricanteECF; out fsCNPJ : String; out fsInscricaoEstadual : String; out fsInscricaoMunicipal : String; fsLabel : Tlabel = Nil ) : Boolean;
  Function USER_VersaoFirmware( fFabricanteECF : TFabricanteECF; var fsVersaoFirmware : String; fsLabel: Tlabel = Nil ) : Boolean;
  // <==== Funções/Procedimentos criados pela Tec-Soft

Function InitDLLECF( fFabricanteECF : TFabricanteECF; fiPortaECF : Integer; fsPath : String; fsLabel : TLabel = Nil ) : Boolean;
Function DoneDLLECF( var fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ) : Boolean;


const
    tpIndicador: Integer = 0; //Bool
    tpData: Integer = 2;
    tpHora: Integer = 3;
    tpInteiro: Integer = 4;
    tpLong: Integer = 5;
    tpMonetario: Integer = 6; //Money
    tpString: Integer = 7;
    tpInteiroSemSinal: Integer = 9;
    tpLongSemSinal: Integer = 10;

Var
  DLLECFHandle  : THandle;
  gECFemUso     : TFabricanteECF;

  ////////////////////////////////////////////////////////////////////////////////
  //Declaracao da Dll Integradora ECFCOM32.dll - Impressora Fiscal Corisco
  //============================================================================\\
  eAbrePorta : function (NumP, BRate: Longint; Wnd: HWnd): integer; stdcall;
  eFechaPorta : function : integer; stdcall;
  eHouveEtx : function : boolean; stdcall;
  eLimpafEtx : function : integer;
  efQtdRxBuf : function : word; stdcall;
  eEnviaString : function (var s: string): integer; stdcall;
  eRecebeString : function (pB: pchar; var t: word): integer; stdcall;
  eStatusDoModem : function (var sm: DWORD): integer; stdcall;
  eTimeoutDeTransmissao : function (tout: WORD): integer; stdcall;
  ePegaTimeoutDeTransmissao : function (var tout: WORD): integer; stdcall;
  eVersao : function (pV: pchar): integer; stdcall;
  // <- Impressora Fiscal Corisco


  //****************************************************************************
  // -> Declaracao da Dll Integradora BemaFI32.dll
  //****************************************************************************
  // Funções de Inicialização
  Bematech_FI_ProgramaAliquota                : function ( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall;
  Bematech_FI_ProgramaHorarioVerao            : function : Integer; StdCall;
  Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms : function ( Indice: Integer; Totalizador: String ): Integer; StdCall;
  Bematech_FI_ProgramaArredondamento          : function : Integer; StdCall;
  Bematech_FI_ProgramaTruncamento             : function : Integer; StdCall;
  Bematech_FI_AumentaDescricaoItem            : function ( Descricao: String ): Integer; StdCall;

  // Funções do Cupom Fiscal
  Bematech_FI_AbreCupom : function ( CGC_CPF: String ): Integer; StdCall;
  Bematech_FI_VendeItem : function ( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall;
  Bematech_FI_CancelaItemGenerico : function ( NumeroItem: String ): Integer; StdCall;
  Bematech_FI_CancelaCupom : function : Integer; StdCall;
  Bematech_FI_FechaCupom : function ( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall;
  Bematech_FI_IniciaFechamentoCupom : function ( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall;
  Bematech_FI_EfetuaFormaPagamento : function ( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall;
  Bematech_FI_TerminaFechamentoCupom : function ( Mensagem: String): Integer; StdCall;

  // Funções dos Relatórios Fiscais
  Bematech_FI_LeituraX : function : Integer; StdCall;
  Bematech_FI_ReducaoZ : function ( Data: String; Hora: String ): Integer; StdCall;
  Bematech_FI_RelatorioGerencial : function ( Texto: String ): Integer; StdCall;
  Bematech_FI_FechaRelatorioGerencial : function : Integer; StdCall;
  Bematech_FI_LeituraMemoriaFiscalReducao : function ( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall;
  Bematech_FI_LeituraMemoriaFiscalData : function ( DataInicial: String; DataFinal: String ): Integer; StdCall;
  Bematech_FI_LeituraMemoriaFiscalSerialData : function ( DataInicial: String; DataFinal: String ): Integer; StdCall;
  Bematech_FI_LeituraMemoriaFiscalSerialReducao : function ( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall;

  // Funções das Operações Não Fiscais
  Bematech_FI_RecebimentoNaoFiscal : function ( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall;
  Bematech_FI_AbreComprovanteNaoFiscalVinculado : function ( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall;
  Bematech_FI_UsaComprovanteNaoFiscalVinculado : function ( Texto: String ): Integer; StdCall;
  Bematech_FI_FechaComprovanteNaoFiscalVinculado : function : Integer; StdCall;
  Bematech_FI_Sangria : function ( Valor: String ): Integer; StdCall;
  Bematech_FI_Suprimento : function ( Valor: String; FormaPagamento: String ): Integer; StdCall;

  // Funções de Informações da Impressora
  Bematech_FI_ModeloImpressora : function ( ModeloImp : String ): Integer; StdCall;
  Bematech_FI_SubTotal : function ( SubTotal: String ): Integer; StdCall;
  Bematech_FI_NumeroSerie : function ( NumeroSerie: String ): Integer; StdCall;
  Bematech_FI_NumeroSerieMFD : function ( NumeroSerie: String ): Integer; StdCall;
  Bematech_FI_NumeroCupom : function ( NumeroCupom: String ): Integer; StdCall;
  Bematech_FI_VersaoFirmware : function ( VersaoFirmware: String ): Integer; StdCall;
  Bematech_FI_NumeroOperacoesNaoFiscais : function ( NumeroOperacoes: String ): Integer; StdCall;
  Bematech_FI_NumeroCaixa : function ( NumeroCaixa: String ): Integer; StdCall;
  Bematech_FI_NumeroLoja : function ( NumeroLoja: String ): Integer; StdCall;
  Bematech_FI_FlagsFiscais : function ( Var Flag: Integer ): Integer; StdCall;
  Bematech_FI_ValorPagoUltimoCupom : function ( ValorCupom: String ): Integer; StdCall;
  Bematech_FI_DataHoraImpressora : function ( Data: String; Hora: String ): Integer; StdCall;
  Bematech_FI_ContadoresTotalizadoresNaoFiscais : function ( Contadores: String ): Integer; StdCall;
  Bematech_FI_VerificaTotalizadoresNaoFiscais : function ( Totalizadores: String ): Integer; StdCall;
  Bematech_FI_DataHoraReducao : function ( Data: String; Hora: String ): Integer; StdCall;
  Bematech_FI_DataMovimento : function ( Data: String ): Integer; StdCall;
  Bematech_FI_VerificaTruncamento : function ( Flag: string ): Integer; StdCall;
  Bematech_FI_VerificaFormasPagamento : function ( Formas: String ): Integer; StdCall;
  Bematech_FI_VerificaRecebimentoNaoFiscal : function ( Recebimentos: String ): Integer; StdCall;
  Bematech_FI_VerificaTipoImpressora : function ( Var TipoImpressora: Integer ): Integer; StdCall;
  Bematech_FI_VerificaTotalizadoresParciais : function ( Totalizadores: String ): Integer; StdCall;
  Bematech_FI_RetornoAliquotas : function ( Aliquotas: String ): Integer; StdCall;
  Bematech_FI_VerificaEstadoImpressora : function ( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall;
  Bematech_FI_DadosUltimaReducao : function ( DadosReducao: String ): Integer; StdCall;
  Bematech_FI_VerificaIndiceAliquotasIss : function ( Flag: String ): Integer; StdCall;
  Bematech_FI_ValorFormaPagamento : function ( FormaPagamento: String; Valor: String ): Integer; StdCall;
  Bematech_FI_ValorTotalizadorNaoFiscal : function ( Totalizador: String; Valor: String ): Integer; StdCall;
  Bematech_FI_UltimoItemVendido : function ( NumeroItem: String ): Integer; StdCall;
  Bematech_FI_VerificaEstadoImpressoraMFD : function ( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall;
  Bematech_FI_CGC_IE : function ( CGC: String; IE: String ): Integer; StdCall;
  Bematech_FI_InicioFimCOOsMFD : function( cCOOIni, cCOOFim: String ): Integer; StdCall;
  Bematech_FI_DownloadMFD : function ( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall;
  Bematech_FI_FormatoDadosMFD : function ( ArquivoOrigem: String; ArquivoDestino: String; TipoFormato: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall;
  Bematech_FI_AcionaGuilhotinaMFD : function ( iTipoCorte : Integer ): Integer; StdCall;
  Bematech_FI_ProgramaIdAplicativoMFD : function( pszLinha01 : String ) : Integer; stdcall;
  Bematech_FI_AtivaDesativaVendaUmaLinhaMFD : function ( iFlag: Integer ): Integer; StdCall;


  // Funções de Autenticação e Gaveta de Dinheiro
  Bematech_FI_AcionaGaveta : function :Integer; StdCall;

  // Funções de Impressão de Cheques
  Bematech_FI_ImprimeCheque : function ( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer; StdCall;

  // Outras Funções
  Bematech_FI_AbrePortaSerial : function : Integer; StdCall;
  Bematech_FI_RetornoImpressora : function ( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall;
  Bematech_FI_FechaPortaSerial : function : Integer; StdCall;
  Bematech_FI_AberturaDoDia : function ( ValorCompra: string; FormaPagamento: string ): Integer; StdCall;
  Bematech_FI_FechamentoDoDia : function : Integer; StdCall;
  Bematech_FI_ImprimeConfiguracoesImpressora : function :Integer; StdCall;
  Bematech_FI_RelatorioTipo60Analitico : function : Integer; StdCall;
  Bematech_FI_RelatorioTipo60Mestre : function : Integer; StdCall;
  Bematech_FI_VerificaImpressoraLigada : function : Integer; StdCall;
  Bematech_FI_VersaoDll : function ( Versao: String ): Integer; StdCall;
  Bematech_FI_EspacoEntreLinhas : function ( Espaco_Entre_Linhas: Integer ): Integer; StdCall;
  Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD : function ( FlagRetorno : string ): Integer; StdCall;
  Bematech_FI_RetornoImpressoraMFD : function ( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall;
  // <- Impressora Fiscal Bematech
  //****************************************************************************
  // <- Declaracao da Dll Integradora BemaFI32.dll
  //****************************************************************************

  //****************************************************************************
  // -> Declaracao da Dll Integradora Daruma32.dll
  //****************************************************************************
  // Métodos do Cupom Fiscal
  Daruma_FI_AbreCupom : function ( CPF_ou_CNPJ: String ): Integer; StdCall;
  Daruma_FI_VendeItem : function ( Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: String; Casas_Decimais: Integer; Valor_Unitario: String; Tipo_de_Desconto: String; Valor_do_Desconto: String ): Integer; StdCall;
  Daruma_FI_VendeItemDepartamento : function ( Codigo: String; Descricao: String; Aliquota: String; Valor_Unitario: String; Quantidade: String; Valor_do_Desconto: String; Valor_do_Acrescimo: String; Indice_Departamento: String; Unidade_Medida: String ): Integer; StdCall;
  Daruma_FI_VendeItemTresDecimais : function ( Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; Valor_Unitario: String; Acrescimo_ou_Desconto: String; Percentual_Acrescimo_ou_Desconto : String ): Integer; StdCall;
  Daruma_FI_FechaCupomResumido : function ( Descricao_da_Forma_de_Pagamento: String; Mensagem_Promocional: String ): Integer; StdCall;
  Daruma_FI_IniciaFechamentoCupom : function ( Acrescimo_ou_Desconto: String; Tipo_do_Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall;
  Daruma_FI_EfetuaFormaPagamento : function ( Descricao_da_Forma_Pagamento: String; Valor_da_Forma_Pagamento: String ): Integer; StdCall;
  Daruma_FI_EfetuaFormaPagamentoDescricaoForma : function ( Descricao_da_Forma_Pagamento: string; Valor_da_Forma_Pagamento: string; Texto_Livre: string ): integer; StdCall;
  Daruma_FI_IdentIficaConsumidor : function ( Nome_do_Consumidor: String; Endereco: String; CPF_ou_CNPJ: String ): Integer; StdCall;
  Daruma_FI_TerminaFechamentoCupom : function ( Mensagem_Promocional: String ): Integer; StdCall;
  Daruma_FI_FechaCupom : function ( Forma_de_Pagamento: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_Pago: String; Mensagem_Promocional: String ): Integer; StdCall;
  Daruma_FI_CancelaItemAnterior : function : Integer; StdCall;
  Daruma_FI_CancelaItemGenerico : function ( Numero_Item: String ): Integer; StdCall;
  Daruma_FI_CancelaCupom : function : Integer; StdCall;
  Daruma_FI_AumentaDescricaoItem : function ( Descricao_Extendida: String ): Integer; StdCall;
  Daruma_FI_UsaUnidadeMedida : function ( Unidade_Medida: String ): Integer; StdCall;
  Daruma_FI_EmitirCupomAdicional : function : Integer; StdCall;
  Daruma_FI_EstornoFormasPagamento : function ( Forma_de_Origem: String; Nova_Forma: String; Valor_Total_Pago: String ): Integer; StdCall;

  // Métodos para Recebimentos e Relatórios
  Daruma_FI_AbreComprovanteNaoFiscalVinculado : function ( Forma_de_Pagamento: String; Valor_Pago: String; Numero_do_Cupom: String ): Integer; StdCall;
  Daruma_FI_UsaComprovanteNaoFiscalVinculado : function ( Texto_Livre: String ): Integer; StdCall;
  Daruma_FI_FechaComprovanteNaoFiscalVinculado : function : Integer; StdCall;
  Daruma_FI_RelatorioGerencial : function ( Texto_Livre: String ): Integer; StdCall;
  Daruma_FI_AbreRelatorioGerencial : function : Integer; StdCall;
  Daruma_FI_EnviarTextoCNF : function ( Texto_Livre: String ): Integer; StdCall;
  Daruma_FI_FechaRelatorioGerencial : function : Integer; StdCall;
  Daruma_FI_RecebimentoNaoFiscal : function ( Indice_do_Totalizador: String; Valor_do_Recebimento: String; Forma_de_Pagamento: String ): Integer; StdCall;
  Daruma_FI_AbreRecebimentoNaoFiscal : function ( Indice_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer; StdCall;
  Daruma_FI_EfetuaFormaPagamentoNaoFiscal : function ( Forma_de_Pagamento: String; Valor_da_Forma_Pagamento: String; Texto_Livre: String ): Integer; StdCall;
  Daruma_FI_Sangria : function ( Valor_da_Sangria: String ): Integer; StdCall;
  Daruma_FI_Suprimento : function ( Valor_do_Suprimento: String; Forma_de_Pagamento: String ): Integer; StdCall;
  Daruma_FI_FundoCaixa : function ( Valor_do_Fundo_Caixa: String; Forma_de_Pagamento: String ): Integer; StdCall;
  Daruma_FI_LeituraX : function : Integer; StdCall;
  Daruma_FI_ReducaoZ : function ( Data: String; Hora: String ): Integer; StdCall;
  Daruma_FI_ReducaoZAjustaDataHora : function ( Data: String; Hora: String ): Integer; StdCall;
  Daruma_FI_LeituraMemoriaFiscalData : function ( Data_Inicial: String; Data_Final: String ): Integer; StdCall;
  Daruma_FI_LeituraMemoriaFiscalReducao : function ( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall;
  Daruma_FI_LeituraMemoriaFiscalSerialData : function ( Data_Inicial: String; Data_Final: String ): Integer; StdCall;
  Daruma_FI_LeituraMemoriaFiscalSerialReducao : function ( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall;

  // Métodos Gaveta, Autentica e Outras
  Daruma_FI_VerificaDocAutenticacao : function : Integer; StdCall;
  Daruma_FI_Autenticacao : function : Integer; StdCall;
  Daruma_FI_AutenticacaoStr : function ( Autenticacao_Str :string ): Integer; StdCall;
  Daruma_FI_VerificaEstadoGaveta : function ( Var Estado_Gaveta: Integer ): Integer; StdCall;
  Daruma_FI_VerificaEstadoGavetaStr : function ( Estado_Gaveta: String ): Integer; StdCall;
  Daruma_FI_AcionaGaveta : function : Integer; StdCall;
  Daruma_FI_AbrePortaSerial : function : Integer; StdCall;
  Daruma_FI_FechaPortaSerial : function : Integer; StdCall;
  Daruma_FI_AberturaDoDia : function ( Valor_do_Suprimento: string; Forma_de_Pagamento: string ): Integer; StdCall;
  Daruma_FI_FechamentoDoDia : function : Integer; StdCall;
  Daruma_FI_ImprimeConfiguracoesImpressora : function : Integer; StdCall;

  // Métodos Prog e Config
  Daruma_FI_ProgramaAliquota : function ( Valor_Aliquota: String; Tipo_Aliquota: Integer ): Integer; StdCall;
  Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms : function ( Indice_do_Totalizador: Integer; Nome_do_Totalizador: String ): Integer; StdCall;
  Daruma_FI_ProgramaFormasPagamento : function ( Descricao_das_Formas_Pagamento: String ): Integer; StdCall;
  Daruma_FI_ProgramaOperador : function ( Nome_do_Operador: String ): Integer; StdCall;
  Daruma_FI_ProgramaArredondamento : function : Integer; StdCall;
  Daruma_FI_ProgramaTruncamento : function : Integer; StdCall;
  Daruma_FI_LinhasEntreCupons : function ( Linhas_Entre_Cupons: Integer ): Integer; StdCall;
  Daruma_FI_EspacoEntreLinhas : function ( Espaco_Entre_Linhas: Integer ): Integer; StdCall;
  Daruma_FI_ProgramaHorarioVerao : function : Integer; StdCall;
  Daruma_FI_EqualizaFormasPgto : function : Integer; StdCall;
  Daruma_FI_ProgramaVinculados : function ( Vinculado: String ): Integer; StdCall;
  Daruma_FI_ProgFormasPagtoSemVincular : function ( Descricao_da_Forma_Pagamento: String ): Integer; StdCall;

  // Métodos de Configuração e Registry
  Daruma_FI_CfgFechaAutomaticoCupom : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_CfgRedZAutomatico : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_CfgImpEstGavVendas : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_CfgLeituraXAuto : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_CfgCalcArredondamento : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_CfgHorarioVerao : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_CfgSensorAut : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_CfgCupomAdicional : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_CfgPermMensPromCNF : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_CfgEspacamentoCupons : function ( DistanciaCupons: String ): Integer; StdCall;
  Daruma_FI_CfgHoraMinReducaoZ : function ( Hora_Min_para_ReducaoZ: String ): Integer; StdCall;
  Daruma_FI_CfgLimiarNearEnd : function ( NumeroLinhas: String ): Integer; StdCall;
  Daruma_Registry_AlteraRegistry : function ( Chave: String; ValorChave: String ): Integer; StdCall;
  Daruma_Registry_Porta : function ( Porta: String ): Integer; StdCall;
  Daruma_Registry_Path : function ( Path: String ): Integer; StdCall;
  Daruma_Registry_Status : function ( Status: String ): Integer; StdCall;
  Daruma_Registry_StatusFuncao : function ( StatusFuncao: String ): Integer; StdCall;
  Daruma_Registry_Retorno : function ( Retorno: String ): Integer; StdCall;
  Daruma_Registry_ControlePorta : function ( ControlePorta: String ): Integer; StdCall;
  Daruma_Registry_ModoGaveta : function ( ModoGaveta: String ): Integer; StdCall;
  Daruma_Registry_Log : function ( Log: String ): Integer; StdCall;
  Daruma_Registry_NomeLog : function ( NomeLog: String ): Integer; StdCall;
  Daruma_Registry_Separador : function ( Separador: String ): Integer; StdCall;
  Daruma_Registry_SeparaMsgPromo : function ( SeparaMsgPromo: String ): Integer; StdCall;
  Daruma_Registry_ZAutomatica : function ( ZAutomatica: String ): Integer; StdCall;
  Daruma_Registry_XAutomatica : function ( XAutomatica: String ): Integer; StdCall;
  Daruma_Registry_VendeItemUmaLinha : function ( VendeItemUmaLinha: String ): Integer; StdCall;
  Daruma_Registry_Default : function : Integer; StdCall;
  Daruma_Registry_RetornaValor : function ( Produto: String; Chave: String; Valor: String ): Integer; StdCall;
  Daruma_Registry_TerminalServer : function ( TerminalServer: String ): Integer; StdCall;
  Daruma_Registry_ErroExtendidoOk : function ( ValorErro: String ): Integer; StdCall;
  Daruma_Registry_AbrirDiaFiscal : function ( AbrirDiaFiscal: String ): Integer; StdCall;
  Daruma_Registry_VendaAutomatica : function ( VendaAutomatica: String ): Integer; StdCall;
  Daruma_Registry_IgnorarPoucoPapel : function ( IgnorarPoucoPapel: String ): Integer; StdCall;
  Daruma_Registry_ImprimeRegistry : function ( Produto: String ): Integer; StdCall;

  // Métodos de Informações e Status
  Daruma_FI_StatusCupomFiscal : function ( StatusCupomFiscal: String ): Integer; StdCall;
  Daruma_FI_StatusRelatorioGerencial : function ( StatusRelGerencial: String ): Integer; StdCall;
  Daruma_FI_StatusComprovanteNaoFiscalVinculado : function ( StatusCNFV: String ): Integer; StdCall;
  Daruma_FI_VerificaImpressoraLigada : function : Integer; StdCall;
  Daruma_FI_VerificaTotalizadoresParciais : function ( Totalizadores: String ): Integer; StdCall;
  Daruma_FI_VerificaModoOperacao : function ( Modo: string ): Integer; StdCall;
  Daruma_FI_VerificaTotalizadoresNaoFiscais : function ( Totalizadores: String ): Integer; StdCall;
  Daruma_FI_VerificaTotalizadoresNaoFiscaisEx : function ( Totalizadores: String ): Integer; StdCall;
  Daruma_FI_VerificaTruncamento : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_VerificaAliquotasIss : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_VerificaIndiceAliquotasIss : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_VerificaRecebimentoNaoFiscal : function ( Recebimentos: String ): Integer; StdCall;
  Daruma_FI_VerificaTipoImpressora : function ( Var TipoImpressora: Integer ): Integer; StdCall;
  Daruma_FI_VerificaStatusCheque : function ( StatusCheque: Integer ): Integer; StdCall;
  Daruma_FI_VerificaModeloECF : function : Integer; StdCall;
  Daruma_FI_VerificaDescricaoFormasPagamento : function ( Descricao: String ): Integer; StdCall;
  Daruma_FI_VerificaXPendente : function ( XPendente: String ): Integer; StdCall;
  Daruma_FI_VerificaZPendente : function ( ZPendente: String ): Integer; StdCall;
  Daruma_FI_VerificaDiaAberto : function ( DiaAberto: String ): Integer; StdCall;
  Daruma_FI_VerificaHorarioVerao : function ( HoraioVerao: String ): Integer; StdCall;
  Daruma_FI_VerificaFormasPagamentoEx : function ( FormasEX: String ): Integer; StdCall;
  Daruma_FI_VerificaEpromConectada : function ( Flag: String ): Integer; StdCall;
  Daruma_FI_VerificaEstadoImpressora : function ( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall;
  Daruma_FI_ClicheProprietario : function ( Cliche: String ): Integer; StdCall;
  Daruma_FI_ClicheProprietarioEx : function ( ClicheEx: String ): Integer; StdCall;
  Daruma_FI_NumeroCaixa : function ( NumeroCaixa: String ): Integer; StdCall;
  Daruma_FI_NumeroLoja : function ( NumeroLoja: String ): Integer; StdCall;
  Daruma_FI_NumeroSerie : function ( NumeroSerie: String ): Integer; StdCall;
  Daruma_FI_VersaoFirmware : function ( VersaoFirmware: String ): Integer; StdCall;
  Daruma_FI_CGC_IE : function ( CGC: String; IE: String ): Integer; StdCall;
  Daruma_FI_LerAliquotasComIndice : function (AliquotasComIndice: String ): Integer; StdCall;
  Daruma_FI_NumeroCupom : function ( NumeroCupom: String ): Integer; StdCall;
  Daruma_FI_COO : function (Inicial: String; Final: String ): Integer; StdCall;
  Daruma_FI_MinutosImprimindo : function ( Minutos: String ): Integer; StdCall;
  Daruma_FI_MinutosLigada : function ( Minutos: String ): Integer; StdCall;
  Daruma_FI_NumeroSubstituicoesProprietario : function ( NumeroSubstituicoes: String ): Integer; StdCall;
  Daruma_FI_NumeroIntervencoes : function ( NumeroIntervencoes: String ): Integer; StdCall;
  Daruma_FI_NumeroReducoes : function ( NumeroReducoes: String ): Integer; StdCall;
  Daruma_FI_NumeroCuponsCancelados : function ( NumeroCancelamentos: String ): Integer; StdCall;
  Daruma_FI_NumeroOperacoesNaoFiscais : function ( NumeroOperacoes: String ): Integer; StdCall;
  Daruma_FI_DataHoraImpressora : function ( Data: String; Hora: String ): Integer; StdCall;
  Daruma_FI_DataHoraReducao : function ( Data: String; Hora: String ): Integer; StdCall;
  Daruma_FI_DataMovimento : function ( Data: String ): Integer; StdCall;
  Daruma_FI_ContadoresTotalizadoresNaoFiscais : function ( Contadores: String ): Integer; StdCall;
  Daruma_FI_GrandeTotal : function ( GrandeTotal: String ): Integer; StdCall;
  Daruma_FI_Descontos : function ( ValorDescontos: String ): Integer; StdCall;
  Daruma_FI_Acrescimos : function ( ValorAcrescimos: String ): Integer; StdCall;
  Daruma_FI_Cancelamentos : function ( ValorCancelamentos: String ): Integer; StdCall;
  Daruma_FI_DadosUltimaReducao : function ( DadosReducao: String ): Integer; StdCall;
  Daruma_FI_SubTotal : function ( SubTotal: String ): Integer; StdCall;
  Daruma_FI_RetornoAliquotas : function ( Aliquotas: String ): Integer; StdCall;
  Daruma_FI_ValorPagoUltimoCupom : function ( ValorCupom: String ): Integer; StdCall;
  Daruma_FI_ValorFormaPagamento : function ( FormaPagamento: String; Valor: String ): Integer; StdCall;
  Daruma_FI_ValorTotalizadorNaoFiscal : function ( Totalizador: String; Valor: String ): Integer; StdCall;
  Daruma_FI_UltimoItemVendido : function ( NumeroItem: String ): Integer; StdCall;
  Daruma_FI_UltimaFormaPagamento : function ( Descricao_da_Forma: String; Valor_da_Forma: String ): Integer; StdCall;
  Daruma_FI_TipoUltimoDocumento : function (TipoUltimoDoc: String ): Integer; StdCall;
  Daruma_FI_MapaResumo : function : Integer; StdCall;
  Daruma_FI_RelatorioTipo60Analitico : function : Integer; StdCall;
  Daruma_FI_RelatorioTipo60Mestre : function : Integer; StdCall;
  Daruma_FI_FlagsFiscais : function ( Var Flag: Integer ): Integer; StdCall;
  Daruma_FI_PalavraStatus : function ( PalavraStatus: String ): Integer; StdCall;
  Daruma_FI_PalavraStatusBinario : function ( PalavraStatusBinario: String ): Integer; StdCall;
  Daruma_FI_SimboloMoeda : function ( SimboloMoeda: String ): Integer; StdCall;
  Daruma_FI_RetornoImpressora : function ( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall;
  Daruma_FI_RetornaErroExtendido : function ( ErroExtendido: String ): Integer; StdCall;
  Daruma_FI_RetornaAcrescimoNF : function ( AcrescimoNF: String ): Integer; StdCall;
  Daruma_FI_RetornaCFCancelados : function ( CFCancelados: String ): Integer; StdCall;
  Daruma_FI_RetornaCNFCancelados : function ( CNFCancelados: String ): Integer; StdCall;
  Daruma_FI_RetornaCLX : function (CLX: String ): Integer; StdCall;
  Daruma_FI_RetornaCNFNV : function (CNFNV: String ): Integer; StdCall;
  Daruma_FI_RetornaCNFV : function (CNFV: String ): Integer; StdCall;
  Daruma_FI_RetornaCRO : function (CRO: String ): Integer; StdCall;
  Daruma_FI_RetornaCRZ : function (CRZ: String ): Integer; StdCall;
  Daruma_FI_RetornaCRZRestante : function ( CRZRestante: String ): Integer; StdCall;
  Daruma_FI_RetornaCancelamentoNF : function ( CancelamentoNF: String ): Integer; StdCall;
  Daruma_FI_RetornaDescontoNF : function ( DescontoNF: String ): Integer; StdCall;
  Daruma_FI_RetornaGNF : function ( GNF: String ): Integer; StdCall;
  Daruma_FI_RetornaTempoImprimindo : function ( TempoImprimindo: String ): Integer; StdCall;
  Daruma_FI_RetornaTempoLigado : function ( TempoLigado: String ): Integer; StdCall;
  Daruma_FI_RetornaTotalPagamentos : function ( TotalPagamentos: String ): Integer; StdCall;
  Daruma_FI_RetornaTroco : function ( Troco: String ): Integer; StdCall;
  Daruma_FI_RetornaZeros : function ( Zeros: String ): Integer; StdCall;
  Daruma_FI_RetornaValorComprovanteNaoFiscal : function ( Indice_CNF: String; Informacao: String ): Integer; StdCall;
  Daruma_FI_RetornaIndiceComprovanteNaoFiscal : function ( DescricaoRegistrCNF: String; RefIndice: String ): Integer; StdCall;
  Daruma_FI_RetornaRegistradoresNaoFiscais : function ( RegistrNaoFiscais: String ): Integer; StdCall;
  Daruma_FI_RetornaRegistradoresFiscais : function ( RegistrFiscais: String ): Integer; StdCall;
  Daruma_FI_MonitoramentoPapel : function ( Var Linhas: Integer): Integer; StdCall;
  Daruma_FI_RetornarVersaoDLL : function( Versao: String ): Integer; StdCall;
  Daruma_FI_Fiscal_Mensagem_Aplicacao : function( pszLinha01 : String ) : Integer; stdcall;
  Daruma_FI_VerificaDepartamentos : function ( Departamentos: String ) : Integer; StdCall;

  // Métodos para TEF
  Daruma_TEF_EsperarArquivo : function ( Path_Resp_TEF: String; Tempo_Espera: String; Travar: String ): Integer; StdCall;
  Daruma_TEF_ImprimirResposta : function ( Path_Arquivo_Resp_TEF: string; Forma_de_Pagamento: string; Travar_Teclado: string ): Integer; StdCall;
  Daruma_TEF_ImprimirRespostaCartao : function ( Path_Arquivo_Resp_TEF: string; Forma_de_Pagamento: string; Travar_Teclado: string; Valor_da_Forma_Pagamento: String ): Integer; StdCall;
  Daruma_TEF_FechaRelatorio : function : Integer; StdCall;
  Daruma_TEF_SetFocus : function ( TituloJanela: String ): Integer; StdCall;
  Daruma_TEF_TravarTeclado : function ( Travar: String ): Integer; StdCall;

  // Métodos para FS2000
  Daruma_Registry_FS2000_CupomAdicional : function ( CupomAdicional: String ): Integer; StdCall;
  Daruma_Registry_FS2000_TempoEsperaCheque : function ( TempodeEspera: String ): Integer; StdCall;
  Daruma_FI2000_DescontoSobreItemVendido : function ( NumeroItem: String; TipoDesconto: String; ValorDesconto: String ): Integer; StdCall;
  Daruma_FI2000_AcrescimosICMSISS : function ( AcrescICMS: String; AcrescISS: String ): Integer; StdCall;
  Daruma_FI2000_CancelamentosICMSISS : function ( CancelICMS: String; CancelISS: String ): Integer; StdCall;
  Daruma_FI2000_DescontosICMSISS : function ( DescICMS: String; DescISS: String ): Integer; StdCall;
  Daruma_FI2000_LeituraInformacaoUltimosCNF : function ( UltimosCNF: String ): Integer; StdCall;
  Daruma_FI2000_LeituraInformacaoUltimoDoc : function ( TipoUltimoDoc: String; ValorUltimoDoc: String ): Integer; StdCall;
  Daruma_FI2000_VerificaRelatorioGerencial : function ( Gerencial: String ): Integer; StdCall;
  Daruma_FI2000_CriaRelatorioGerencial : function ( NomeGerencial: String ): Integer; StdCall;
  Daruma_FI2000_AbreRelatorioGerencial : function ( Indice: String ): Integer; StdCall;
  Daruma_FI2000_CancelamentoCNFV : function ( COO_CNFV: String ): Integer; StdCall;
  Daruma_FI2000_SegundaViaCNFVinculado : function : Integer; StdCall;
  Daruma_FI2000_StatusCheque : function ( StatusCheque: String ): Integer; StdCall;
  Daruma_FI2000_ImprimirCheque : function ( Banco: String; Cidade: String; Data: String; Favorecido: String; Valor: String; PosicaoCheque: String ): Integer; StdCall;
  Daruma_FI2000_ImprimirVersoCheque : function ( VersoCheque: String ): Integer; StdCall;
  Daruma_FI2000_LiberarCheque : function : Integer; StdCall;
  Daruma_FI2000_LeituraCodigoMICR : function ( CodigoMICR: String ): Integer; StdCall;
  Daruma_FI2000_CancelarCheque : function : Integer; StdCall;
  Daruma_FI2000_LeituraTabelaCheque : function ( TabelaCheque: String ): Integer; StdCall;
  Daruma_FI2000_CarregarCheque : function ( NumeroBanco: String ): Integer; StdCall;
  Daruma_FI2000_CorrigirGeometriaCheque : function ( NumeroBanco: String; GeometriaCheque: String ): Integer; StdCall;

  // -> Status dos Cupom não fiscal
  Daruma_FI_StatusComprovanteNaoFiscalNaoVinculado : function( Texto: String ): Integer; StdCall;
  // <- Status dos Cupom não fiscal

  //****************************************************************************
  // <- Declaracao da Dll Integradora Daruma32.dll
  //****************************************************************************

  ////////////////////////////////////////////////////////////////////////////////
  //Declaracao da Dll Integradora SWCONVERT.dll
  ////////////////////////////////////////////////////////////////////////////////
  // -> Impressora Sweda( Térmica ) -  convecf.dll
  SWEDA_AbrePortaSerial : function : Integer; StdCall;
  SWEDA_FechaPortaSerial : function : Integer; StdCall;
  SWEDA_VersaoDll : function ( Versao: String ): Integer; StdCall;
  SWEDA_AlteraSimboloMoeda : function( SimboloMoeda: String ): Integer; stdcall;
  SWEDA_ProgramaAliquota : function( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall;
  SWEDA_ProgramaHorarioVerao : function : Integer; StdCall;
  SWEDA_NomeiaDepartamento : function ( Indice: Integer; Departamento: String ): Integer; StdCall;
  SWEDA_NomeiaTotalizadorNaoSujeitoIcms : function ( Indice: Integer; Totalizador: String ): Integer; StdCall;
  SWEDA_ProgramaArredondamento : function : Integer; StdCall;
  SWEDA_ProgramaTruncamento : function : Integer; StdCall;
  SWEDA_LinhasEntreCupons : function ( Linhas: Integer ): Integer; StdCall;
  SWEDA_EspacoEntreLinhas : function( Dots: Integer ): Integer; StdCall;
  SWEDA_ForcaImpactoAgulhas : function( ForcaImpacto: Integer ): Integer; StdCall;
  SWEDA_HabilitaDesabilitaRetornoEstendidoMFD : function ( FlagRetorno : string ): Integer; StdCall;
  // Funções do Cupom Fiscal
  SWEDA_AbreCupom : function( CGC_CPF: String ): Integer; StdCall;
  SWEDA_VendeItem : function( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall;
  SWEDA_VendeItemDepartamento : function( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall;
  SWEDA_CancelaItemAnterior : function : Integer; StdCall;
  SWEDA_CancelaItemGenerico : function( NumeroItem: String ): Integer; StdCall;
  SWEDA_CancelaCupom : function : Integer; StdCall;
  SWEDA_FechaCupomResumido : function( FormaPagamento: String; Mensagem: String ): Integer; StdCall;
  SWEDA_FechaCupom : function( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall;
  SWEDA_ResetaImpressora : function: Integer; StdCall;
  SWEDA_IniciaFechamentoCupom : function( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall;
  SWEDA_EfetuaFormaPagamento : function( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall;
  SWEDA_EfetuaFormaPagamentoDescricaoForma : function( FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall;
  SWEDA_TerminaFechamentoCupom : function( Mensagem: String): Integer; StdCall;
  SWEDA_EstornoFormasPagamento : function( FormaOrigem: String; FormaDestino: String; Valor: String ): Integer; StdCall;
  SWEDA_UsaUnidadeMedida : function( UnidadeMedida: String ): Integer; StdCall;
  SWEDA_AumentaDescricaoItem : function( Descricao: String ): Integer; StdCall;
  SWEDA_EfetuaFormaPagamentoImpAntiga : function( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall;
  // Funções dos Relatórios Fiscais
  SWEDA_LeituraX : function : Integer; StdCall;
  SWEDA_ReducaoZ : function( Data: String; Hora: String ): Integer; StdCall;
  SWEDA_RelatorioGerencial : function( Texto: String ): Integer; StdCall;
  //SWEDA_RelatorioGerencialTEF : function( Texto: String ): Integer; StdCall;
  SWEDA_FechaComprovanteNaoFiscalVinculado : function : Integer; StdCall;
  SWEDA_FechaRelatorioGerencial : function : Integer; StdCall;
  SWEDA_LeituraMemoriaFiscalData : function( DataInicial: String; DataFinal: String ): Integer; StdCall;
  SWEDA_LeituraMemoriaFiscalReducao : function( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall;
  SWEDA_LeituraMemoriaFiscalSerialData : function( DataInicial: String; DataFinal: String ): Integer; StdCall;
  SWEDA_LeituraMemoriaFiscalSerialReducao : function( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall;
  // Funções das Operações Não Fiscais
  SWEDA_AberturaDoDia : function ( ValorCompra: string; FormaPagamento: string ): Integer; StdCall;
  SWEDA_FechamentoDoDia : function : Integer; StdCall;
  SWEDA_RecebimentoNaoFiscal : function( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall;
  SWEDA_AbreComprovanteNaoFiscalVinculado : function( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall;
  SWEDA_UsaComprovanteNaoFiscalVinculado : function( Texto: String ): Integer; StdCall;
  //SWEDA_UsaComprovanteNaoFiscalVinculadoTEF : function( Texto: String ): Integer; StdCall;
  SWEDA_Sangria : function( Valor: String ): Integer; StdCall;
  SWEDA_Suprimento : function( Valor: String; FormaPagamento: String ): Integer; StdCall;
  // Funções de Informações da Impressora
  SWEDA_StatusComprovanteNaoFiscalVinculado : function (rela: String): Integer; StdCall;
  SWEDA_StatusRelatorioGerencial : function (rela: String): Integer; StdCall;
  SWEDA_StatusEstendidoMFD : function( Status: Integer ): Integer; StdCall;
  SWEDA_MarcaModeloTipoImpressoraMFD : function( Marca, Modelo, Tipo : String ): Integer; StdCall;
  SWEDA_VerificaImpressoraLigada : function : Integer; StdCall;
  SWEDA_NumeroSerie : function( NumeroSerie: String ): Integer; StdCall;
  SWEDA_SubTotal : function( SubTotal: String ): Integer; StdCall;
  SWEDA_NumeroCupom : function( NumeroCupom: String ): Integer; StdCall;
  SWEDA_LeituraXSerial : function : Integer; StdCall;
  SWEDA_VersaoFirmware : function( VersaoFirmware: String ): Integer; StdCall;
  SWEDA_CGC_IE : function( CGC: String; IE: String ): Integer; StdCall;
  SWEDA_GrandeTotal : function( GrandeTotal: String ): Integer; StdCall;
  SWEDA_Cancelamentos : function( ValorCancelamentos: String ): Integer; StdCall;
  SWEDA_Descontos : function( ValorDescontos: String ): Integer; StdCall;
  SWEDA_NumeroOperacoesNaoFiscais : function( NumeroOperacoes: String ): Integer; StdCall;
  SWEDA_NumeroCuponsCancelados : function( NumeroCancelamentos: String ): Integer; StdCall;
  SWEDA_NumeroIntervencoes : function( NumeroIntervencoes: String ): Integer; StdCall;
  SWEDA_NumeroSubstituicoesProprietario : function( NumeroSubstituicoes: String ): Integer; StdCall;
  SWEDA_UltimoItemVendido : function( NumeroItem: String ): Integer; StdCall;
  SWEDA_ClicheProprietario : function( Cliche: String ): Integer; StdCall;
  SWEDA_NumeroCaixa : function( NumeroCaixa: String ): Integer; StdCall;
  SWEDA_NumeroLoja : function( NumeroLoja: String ): Integer; StdCall;
  SWEDA_SimboloMoeda : function( SimboloMoeda: String ): Integer; StdCall;
  SWEDA_MinutosLigada : function( Minutos: String ): Integer; StdCall;
  SWEDA_MinutosImprimindo : function( Minutos: String ): Integer; StdCall;
  SWEDA_VerificaModoOperacao : function( Modo: string ): Integer; StdCall;
  SWEDA_VerificaEpromConectada : function( Flag: String ): Integer; StdCall;
  SWEDA_FlagsFiscais : function( Var Flag: Integer ): Integer; StdCall;
  SWEDA_ValorPagoUltimoCupom : function( ValorCupom: String ): Integer; StdCall;
  SWEDA_DataHoraImpressora : function( Data: String; Hora: String ): Integer; StdCall;
  SWEDA_ContadoresTotalizadoresNaoFiscais : function( Contadores: String ): Integer; StdCall;
  SWEDA_VerificaTotalizadoresNaoFiscais : function( Totalizadores: String ): Integer; StdCall;
  SWEDA_DataHoraReducao : function( Data: String; Hora: String ): Integer; StdCall;
  SWEDA_DataMovimento : function( Data: String ): Integer; StdCall;
  SWEDA_VerificaTruncamento : function( Flag: string ): Integer; StdCall;
  SWEDA_Acrescimos : function( ValorAcrescimos: String ): Integer; StdCall;
  SWEDA_ContadorBilhetePassagem : function( ContadorPassagem: String ): Integer; StdCall;
  SWEDA_VerificaAliquotasIss : function( Flag: String ): Integer; StdCall;
  SWEDA_VerificaFormasPagamento : function( Formas: String ): Integer; StdCall;
  SWEDA_VerificaRecebimentoNaoFiscal : function( Recebimentos: String ): Integer; StdCall;
  SWEDA_VerificaDepartamentos : function( Departamentos: String ): Integer; StdCall;
  SWEDA_VerificaTipoImpressora : function( Var TipoImpressora: Integer ): Integer; StdCall;
  SWEDA_VerificaTotalizadoresParciais : function( Totalizadores: String ): Integer; StdCall;
  SWEDA_RetornoAliquotas : function( Aliquotas: String ): Integer; StdCall;
  SWEDA_RetornoImpressora : function( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall;
  SWEDA_FI_RetornoImpressoraMFD : function( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall;
  SWEDA_RetornoImpressoraMFD : function( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall;
  SWEDA_VerificaEstadoImpressora : function( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall;
  SWEDA_VerificaEstadoImpressoraMFD : function( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall;
  SWEDA_DadosUltimaReducao : function( DadosReducao: String ): Integer; StdCall;
  SWEDA_InicioFimCOOsMFD : function( COOInicial: String; COOFinal: String ): Integer; StdCall;
  SWEDA_RelatorioTipo60Mestre : function : Integer; StdCall;
  SWEDA_NumeroReducoes : function( Reducoes: String ): Integer; StdCall;
  SWEDA_MonitoramentoPapel : function( Var Linhas: Integer): Integer; StdCall;
  SWEDA_VerificaIndiceAliquotasIss : function( Flag: String ): Integer; StdCall;
  SWEDA_ValorFormaPagamento : function( FormaPagamento: String; Valor: String ): Integer; StdCall;
  SWEDA_ValorTotalizadorNaoFiscal : function( Totalizador: String ): Integer; StdCall;
  // Funções de Autenticação e Gaveta de Dinheiro
  SWEDA_Autenticacao : function:Integer; StdCall;
  SWEDA_ProgramaCaracterAutenticacao : function( Parametros: String ): Integer; StdCall;
  SWEDA_AcionaGaveta : function:Integer; StdCall;
  SWEDA_VerificaEstadoGaveta : function( Var EstadoGaveta: Integer ): Integer; StdCall;
  SWEDA_Mensagem_Aplicacao : function ( pszLinha01: String ): Integer; StdCall;

  // <- Impressora Sweda( Térmica ) - convecf.dll

  ////////////////////////////////////////////////////////////////////////////////
  //Declaracao da Dll Integradora Elgin.Dll - Elgin ->
  ////////////////////////////////////////////////////////////////////////////////

  // Específicas Elgin MFD
  Elgin_FI_RetornoImpressora : function ( var i:integer; ErrorMsg:string):integer;StdCall;
  Elgin_FI_CancelaItemNaoFiscalMFD : function (strNroItem:string): integer; StdCall;
  Elgin_FI_AcrescimoItemNaoFiscalMFD : function (strNroItem:string; strAcrescDesc:string; strTipoAcrescDesc:string; strValor:string): integer; StdCall;
  Elgin_FI_VendaBruta  : function ( VendaBruta: String ): Integer; StdCall;
  Elgin_FI_VendaLiquida : function ( VendaLiquida: String ): Integer; StdCall;
  Elgin_FI_TotalDocTroco : function ( TotalDocTroco: String ): Integer; StdCall;
  Elgin_FI_TotalDiaTroco : function ( TotalDiaTroco: String ): Integer; StdCall;

  // Funções de Inicialização
  Elgin_FI_FI_AlteraSimboloMoeda : function ( SimboloMoeda: String ): Integer; StdCall;
  Elgin_FI_ProgramaAliquota : function ( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall;
  Elgin_FI_ProgramaHorarioVerao : function : Integer; StdCall;
  Elgin_FI_NomeiaDepartamento : function ( Indice: Integer; Departamento: String ): Integer; StdCall;
  Elgin_FI_NomeiaTotalizadorNaoSujeitoIcms : function ( Indice: Integer; Totalizador: String ): Integer; StdCall;
  Elgin_FI_ProgramaArredondamento : function : Integer; StdCall;
  Elgin_FI_ProgramaTruncamento : function : Integer; StdCall;
  Elgin_FI_LinhasEntreCupons : function ( Linhas: Integer ): Integer; StdCall;
  Elgin_FI_EspacoEntreLinhas : function ( Dots: Integer ): Integer; StdCall;
  Elgin_FI_VerificaZPendente : function ( Var Flag: Integer ): Integer; StdCall;

  // Funções do Cupom Fiscal
  Elgin_FI_AbreCupom : function ( CGC_CPF: String ): Integer; StdCall;
  Elgin_FI_VendeItem : function ( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall;
  Elgin_FI_VendeItemDepartamento : function ( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall;
  Elgin_FI_CancelaItemAnterior : function : Integer; StdCall;
  Elgin_FI_CancelaItemGenerico : function ( NumeroItem: String ): Integer; StdCall;
  Elgin_FI_CancelaCupom : function : Integer; StdCall;
  Elgin_FI_FechaCupomResumido : function ( FormaPagamento: String; Mensagem: String ): Integer; StdCall;
  Elgin_FI_FechaCupom  : function ( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall;
  Elgin_FI_ResetaImpressora : function : Integer; StdCall;
  Elgin_FI_IniciaFechamentoCupom : function ( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall;
  Elgin_FI_EfetuaFormaPagamento : function ( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall;
  Elgin_FI_EfetuaFormaPagamentoDescricaoForma : function ( FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall;
  Elgin_FI_TerminaFechamentoCupom : function ( Mensagem: String): Integer; StdCall;
  Elgin_FI_EstornoFormasPagamento : function ( FormaOrigem: String; FormaDestino: String; Valor: String ): Integer; StdCall;
  Elgin_FI_DescontoItem           : function ( cNumeroItem, cAcresDesc, cTipoAcresDesc, cValorAcresDesc: String  ): Integer; StdCall;
  Elgin_FI_CorteGuilhotina   : function ( TipoCorte:integer): Integer; StdCall;

  // Funções dos Relatórios Fiscais
  Elgin_FI_LeituraX : function : Integer; StdCall;
  Elgin_FI_ReducaoZ : function ( Data: String; Hora: String ): Integer; StdCall;
  Elgin_FI_AbreRelatorioGerencial : function ( Texto: String ): Integer; StdCall;
  Elgin_FI_RelatorioGerencial : function ( Texto: String ): Integer; StdCall;
  Elgin_FI_FechaRelatorioGerencial : function : Integer; StdCall;
  Elgin_FI_LeituraMemoriaFiscalData : function (DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall;
  Elgin_FI_LeituraMemoriaFiscalReducao : function (ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall;
  Elgin_FI_LeituraMemoriaFiscalSerialData: function (DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall;
  Elgin_FI_LeituraMemoriaFiscalSerialReducao : function (ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall;

  // Funções das Operações Não Fiscais
  Elgin_FI_RecebimentoNaoFiscal : function ( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall;
  Elgin_FI_AbreComprovanteNaoFiscalVinculado : function ( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall;
  Elgin_FI_UsaComprovanteNaoFiscalVinculado : function ( Texto: String ): Integer; StdCall;
  Elgin_FI_FechaComprovanteNaoFiscalVinculado : function : Integer; StdCall;
  Elgin_FI_Sangria : function ( Valor: String ): Integer; StdCall;
  Elgin_FI_Suprimento : function ( Valor: String; FormaPagamento: String ): Integer; StdCall;

  // Funções de Informações da Impressora
  Elgin_FI_NumeroSerie : function ( NumeroSerie: String ): Integer; StdCall;
  Elgin_FI_SubTotal : function ( SubTotal: String ): Integer; StdCall;
  Elgin_FI_NumeroCupom : function ( NumeroCupom: String ): Integer; StdCall;
  Elgin_FI_LeituraXSerial : function : Integer; StdCall;
  Elgin_FI_VersaoFirmware : function ( VersaoFirmware: String ): Integer; StdCall;
  Elgin_FI_CGC_IE : function ( CGC: String; IE: String ): Integer; StdCall;
  Elgin_FI_CNPJ_IE : function (CNPJ: string; IE: string):Integer;stdcall;
  Elgin_FI_GrandeTotal : function ( GrandeTotal: String ): Integer; StdCall;
  Elgin_FI_Cancelamentos : function ( ValorCancelamentos: String ): Integer; StdCall;
  Elgin_FI_Descontos : function ( ValorDescontos: String ): Integer; StdCall;
  Elgin_FI_NumeroOperacoesNaoFiscais : function ( NumeroOperacoes: String ): Integer; StdCall;
  Elgin_FI_NumeroCuponsCancelados : function ( NumeroCancelamentos: String ): Integer; StdCall;
  Elgin_FI_NumeroIntervencoes : function ( NumeroIntervencoes: String ): Integer; StdCall;
  Elgin_FI_NumeroReducoes : function ( NumeroReducoes: String ): Integer; StdCall;
  Elgin_FI_NumeroSubstituicoesProprietario : function ( NumeroSubstituicoes: String ): Integer; StdCall;
  Elgin_FI_UltimoItemVendido : function ( NumeroItem: String ): Integer; StdCall;
  Elgin_FI_ClicheProprietario : function ( Cliche: String ): Integer; StdCall;
  Elgin_FI_NumeroCaixa : function ( NumeroCaixa: String ): Integer; StdCall;
  Elgin_FI_NumeroLoja : function ( NumeroLoja: String ): Integer; StdCall;
  Elgin_FI_SimboloMoeda : function ( SimboloMoeda: String ): Integer; StdCall;
  Elgin_FI_MinutosLigada : function ( Minutos: String ): Integer; StdCall;
  Elgin_FI_MinutosImprimindo : function ( Minutos: String ): Integer; StdCall;
  Elgin_FI_VerificaModoOperacao : function ( Modo: string ): Integer; StdCall;
  Elgin_FI_FlagsFiscais : function ( Var Flag: Integer ): Integer; StdCall;
  Elgin_FI_FlagsFiscaisStr : function (FlagFiscal: String): Integer; StdCall;
  Elgin_FI_ValorPagoUltimoCupom : function ( ValorCupom: String ): Integer; StdCall;
  Elgin_FI_DataHoraImpressora : function ( Data: String; Hora: String ): Integer; StdCall;
  Elgin_FI_ContadoresTotalizadoresNaoFiscais : function ( Contadores: String ): Integer; StdCall;
  Elgin_FI_VerificaTotalizadoresNaoFiscais : function ( Totalizadores: String ): Integer; StdCall;
  Elgin_FI_DataHoraReducao : function ( Data: String; Hora: String ): Integer; StdCall;
  Elgin_FI_DataMovimento : function ( Data: String ): Integer; StdCall;
  Elgin_FI_VerificaTruncamento : function ( Flag: string ): Integer; StdCall;
  Elgin_FI_Acrescimos : function ( ValorAcrescimos: String ): Integer; StdCall;
  Elgin_FI_VerificaAliquotasIss : function ( Flag: String ): Integer; StdCall;
  Elgin_FI_VerificaFormasPagamento : function ( Formas: String ): Integer; StdCall;
  Elgin_FI_VerificaRecebimentoNaoFiscal : function ( Recebimentos: String ): Integer; StdCall;
  Elgin_FI_VerificaDepartamentos : function ( Departamentos: String ): Integer; StdCall;
  Elgin_FI_VerificaTipoImpressora : function ( Var TipoImpressora: Integer ): Integer; StdCall;
  Elgin_FI_VerificaTipoImpressoraStr : function ( Var TipoImpressora: String ): Integer; StdCall;
  Elgin_FI_VerificaTotalizadoresParciais : function ( Totalizadores: String ): Integer; StdCall;
  Elgin_FI_RetornoAliquotas : function ( Aliquotas: String ): Integer; StdCall;
  Elgin_FI_VerificaEstadoImpressora : function ( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall;
  Elgin_FI_VerificaEstadoImpressoraStr : function (ACK: String; ST1: String; ST2: String ): Integer; StdCall;
  Elgin_FI_DadosUltimaReducao : function ( DadosReducao: String ): Integer; StdCall;
  Elgin_FI_VerificaIndiceAliquotasIss : function ( Flag: String ): Integer; StdCall;
  Elgin_FI_ValorFormaPagamento : function ( FormaPagamento: String; Valor: String ): Integer; StdCall;
  Elgin_FI_ValorTotalizadorNaoFiscal : function ( Totalizador: String; Valor: String ): Integer; StdCall;
  Elgin_FI_VerificaSensorPoucoPapelMFD : function ( Flag: String ): Integer; StdCall;
  Elgin_FI_LeArquivoRetorno : function (sCupom: String): Integer; StdCall;

  // Funções de Autenticação e Gaveta de Dinheiro
  Elgin_FI_Autenticacao : function :Integer; StdCall;
  Elgin_FI_ProgramaCaracterAutenticacao : function ( Parametros: String ): Integer; StdCall;
  Elgin_FI_AcionaGaveta : function :Integer; StdCall;
  Elgin_FI_VerificaEstadoGaveta : function ( Var EstadoGaveta: Integer ): Integer; StdCall;
  Elgin_FI_VerificaEstadoGavetaStr : function ( EstadoGaveta: String ): Integer; StdCall;
  Elgin_FI_AbreBilhetePassagem : function ( ImprimeValorFinal: string; ImprimeEnfatizado: string; Embarque: string; Destino: string; Linha: string; Prefixo: string; Agente: string; Agencia: string; Data: string; Hora: string; Poltrona: string; Plataforma: string ): Integer; StdCall;

  // Funções de Impressão de Cheques

  Elgin_FI_ProgramaMoedaSingular : function ( MoedaSingular: String ): Integer; StdCall;
  Elgin_FI_ProgramaMoedaPlural : function ( MoedaPlural: String ): Integer; StdCall;
  Elgin_FI_CancelaImpressaoCheque : function : Integer; StdCall;
  Elgin_FI_VerificaStatusCheque : function ( Var StatusCheque: Integer ): Integer; StdCall;
  Elgin_FI_ImprimeCheque : function ( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer; StdCall;
  Elgin_FI_IncluiCidadeFavorecido : function ( Cidade: String; Favorecido: String ): Integer; StdCall;
  Elgin_FI_ImprimeCopiaCheque : function : Integer; StdCall;

  // Outras Funções
  Elgin_FI_AbrePortaSerial : function : Integer; StdCall;
  Elgin_FI_FechaPortaSerial : function :Integer; StdCall;
  Elgin_FI_MapaResumo : function :Integer; StdCall;
  Elgin_FI_AberturaDoDia : function ( ValorCompra: string; FormaPagamento: string ): Integer; StdCall;
  Elgin_FI_FechamentoDoDia : function : Integer; StdCall;
  Elgin_FI_ImprimeConfiguracoesImpressora : function :Integer; StdCall;
  Elgin_FI_ImprimeDepartamentos : function : Integer; StdCall;
  Elgin_FI_RelatorioTipo60Analitico : function : Integer; StdCall;
  Elgin_FI_RelatorioTipo60Mestre : function : Integer; StdCall;
  Elgin_FI_VerificaImpressoraLigada : function : Integer; StdCall;
  Elgin_FI_DadosSintegra : function ( DataInicial: string; DataFinal: string ): integer; StdCall;
  Elgin_FI_MarcaModeloTipoImpressoraMFD : function( Marca, Modelo, Tipo : String ): Integer; StdCall;

  // Funções da MFD
  Elgin_FI_DownloadMF  : function ( Arquivo: String ): Integer; StdCall;
  Elgin_FI_DownloadMFD : function ( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall;
   ////////////////////////////////////////////////////////////////////////////////
  //<- Declaracao da Dll Integradora Elgin.Dll - Elgin
  ////////////////////////////////////////////////////////////////////////////////

   ////////////////////////////////////////////////////////////////////////////////
  //--- > Declaracao da Dll Integradora InterfaceEpson.dll  - Epson
  ////////////////////////////////////////////////////////////////////////////////
  Epson_FI_ObterDadosImpressora : function (pszDadosImpressora: String) : integer; stdcall;
  Epson_FI_SerialObterEstadoCom : function : integer; stdcall;
  Epson_FI_NumeroLoja           : function ( pszDados: String) : integer; stdcall;
  Epson_FI_ObterClicheUsuario   : function (pszDadosUsuario: String) : integer; stdcall;
  Epson_FI_ObterHoraRelogio     : function (szDados : String) : integer; stdcall;
  Epson_FI_HorarioVerao         : function : integer; stdcall;
  Epson_FI_ObterTabelaAliquotas : function (szAliquotas : String) : integer; stdcall;
  Epson_FI_ObterTabelaPagamentos: function (szPagamento : String) : integer; stdcall;
  Epson_FI_ObterTotalAliquotas  : function ( pszAliquotasTotal : String) : integer; stdcall;
  Epson_FI_FiscalDadosUsuario   : function ( pszCNPJ, pszRazaoSocial, pszEndereco1, pszEndereco2 :  String; dwPosicao : Integer) : integer; stdcall;
  Epson_FI_ObterTotalBruto      : function ( pszVendaBruta : String) : integer; stdcall;
  Epson_FI_ObterTotalCancelado  : function ( pszTotalCancelado : string) : integer; stdcall;
  Epson_FI_ObterTotalAcrescimos : function ( pszTotalAcrescimos : String) : integer; stdcall;
  Epson_FI_ObterTotalDescontos  : function ( pszTotalDescontos : String) : integer; stdcall;
  Epson_FI_AbrirPortaSerial     : function ( dwBaudRate: Integer; wCommPort: Integer ): Integer; StdCall;
  Epson_FI_FecharPorta          : function : Integer; StdCall;

  Epson_FI_AbreCupom : function( pszCnpj: PChar; pszRazaoSocial: PChar; pszAdress1: PChar;
                             pszAdress2: PChar; dwPosicao: Integer ): Integer; StdCall;

  Epson_FI_CancelarCupom        : function : integer; stdcall;
  Epson_FI_CancelaItemGenerico  : function ( pszNumeroCupom : String ) : Integer; stdcall;

  Epson_FI_VenderItem   : function ( pszCodigo: PChar; pszDescricao: PChar; pszQuantidade: PChar;
                                 dwQuantCasasDecimais: Integer; pszUnidadey: PChar; pszUnidadeyPrice: PChar;
                                 dwPrecoCasasDecimais: Integer; pszAliquotas: PChar; dwLinhas:Integer ): Integer; StdCall;

  Epson_FI_DescontoItem : function( pszValor : String; dwCasasDecimais : Integer; bDesconto, bPercentagem : Boolean ) : Integer; StdCall;

  Epson_FI_EfetuaFormaPagamento : function ( pszNumeroPagamento: PChar; pszValorPagamento: PChar; dwCasasDecimais: Integer;
                                  pszDescricao1: PChar; pszDescricao2: PChar ): Integer; StdCall;

  Epson_FI_FechaCupom           : function( bCortarPapel: Boolean; bAdicional:Boolean ): Integer; StdCall;

  Epson_FI_TotalizaCupom        : function( pszValor: String; dwCasasDecimais: Integer; bDesconto, bPercentagem: boolean  ): Integer; StdCall;
  Epson_FI_SubTotal             : function( pszSubTotal: String ): Integer;stdcall;

  Epson_FI_RelatorioGerencial                : function ( pszNumeroRelatorio: String ): integer; stdcall;
  Epson_FI_FechaRelatorioGerencial           : function ( bCortarPapel: Boolean ):Integer;StdCall;
  Epson_FI_AbreComprovanteNaoFiscalVinculado : function ( pszNumeroPagamento, pszValor: String; dwCasasDecimais: Integer; pszParcelas: String ): Integer; stdcall;
  Epson_FI_RecebimentoNaoFiscal              : function ( pszNumeroPagamento, pszValorPagamento : String;
                                                         dwCasasDecimais : Integer; pszDescricao1, pszDescricao2 : String ): Integer; StdCall;
  Epson_FI_UsaComprovanteNaoFiscalVinculado : function ( pszLinha : PChar ): Integer; stdcall;

  Epson_FI_DescontoAcrescimoItem   : function ( pszValor: String; dwCasasDecimais: Integer; bDesconto: Boolean; bPercentagem: Boolean ): Integer; StdCall;
  Epson_FI_AbrirDia                : function : Integer; stdcall;
  Epson_FI_ReduzaoZ                : function ( pszData : PChar; pszHora : PChar; chHorarioVerao: Integer; pszCRZ: PChar ) : Integer; stdcall;
  Epson_FI_LeituraX                : function : Integer; stdcall;
  Epson_FI_ObterEstadoCupom        : function ( pszEstado : String ) : Integer; stdcall;
  Epson_FI_ObterNumeroUltimoItem   : function ( pszDados : String ) : Integer; stdcall;
  Epson_FI_ObterTabelaNaoFiscais   : function ( pszTabelaNaoFiscais : String ) : Integer; stdcall;
  Epson_FI_DataMovimento           : function ( pszDataHora : String ) : Integer; stdcall;
  Epson_FI_ObterDadosJornada       : function ( pszDados : String ) : Integer; stdcall;
  Epson_FI_EstadoCupom             : function ( pszEstado : String ) : Integer; stdcall;
  Epson_FI_ObterContadores         : function ( pszEstado : String ) : Integer; stdcall;
  Epson_FI_ObterEstadoImpressora   : function ( pszEstado : String ) : Integer; stdcall;
  Epson_FI_CGC_IE                  : function ( pszDadosUsuario : String ) : Integer; stdcall;
  Epson_FI_VersaoDLL               : function ( pszVersao : String ) : Integer; stdcall;
  Epson_FI_ObterMensagemErro       : function ( pszCodigoErro : String; pszMensagemErro : String ) : Integer; stdcall;
  Epson_FI_Log                     : function ( pszPath: String;  dwAction: Integer ): Integer; stdcall;
  Epson_FI_Sangria                 : function ( pszValor: String; dwCasasDecimais: Integer ): Integer; stdcall;
  Epson_FI_Suprimento              : function ( pszValor: String; dwCasasDecimais: Integer ): Integer; stdcall;
  Epson_FI_MensagemCupom           : function ( pszLinhaTexto1, pszLinhaTexto2, pszLinhaTexto3, pszLinhaTexto4,
                                               pszLinhaTexto5, pszLinhaTexto6, pszLinhaTexto7, pszLinhaTexto8: PChar ): Integer; stdcall;
  Epson_FI_AcionaGuilhotina        : function : Integer; stdcall;
  Epson_FI_AcionaGaveta            : function : Integer; stdcall;
  Epson_FI_EntreLinhas             : function( pszEspacos: String ): Integer; stdcall;
  Elgin_FI_AumentaDescricaoItem    : function( Descricao: String ): Integer; StdCall;

  Epson_FI_LeituraMemoriaFiscalData: function ( pszInicio : String; pszFim : String;
                                      dwTipoImpressao : Integer; pszBuffer : String;
                                      pszArquivo : String; pdwTamanhoBuffer : Integer;
                                      dwTamBuffer : Integer ) : Integer; stdcall;
  EPSON_Fiscal_Mensagem_Aplicacao : function( pszLinha01 : String; pszLinha02 : String ) : Integer; stdcall;
  Epson_FI_DadosUltimaReducao     : function( pszLastRZData : String ): Integer; stdcall;

   ////////////////////////////////////////////////////////////////////////////////
  //  <--- Declaracao da Dll Integradora InterfaceEpson.dll  - Epson
  ////////////////////////////////////////////////////////////////////////////////


implementation

uses uprincipal, uFuncoes;

Function USER_RetornoImpressora( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ) : String;
Var liACK     : Integer;
    liST1     : Integer;
    liST2     : Integer;
    liST3     : Integer;
    liRetorno : Integer;
    lsErro    : String;
    lsErroEstendido: String;
Begin
   Result := '';

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Enviando comando de consulta do Retorno do ECF...';
   End;

   liACK := 0;
   liST1 := 0;
   liST2 := 0;
   liSt3 := 0;
   Case fFabricanteECF Of
      feBematech :
      Begin
         If ( UpperCase( Trim( gsModeloECF ) ) = UpperCase( Trim( 'MP20FI' ) ) ) Or
            ( UpperCase( Trim( gsModeloECF ) ) = UpperCase( Trim( 'MP40FI' ) ) ) Then
         Begin
            liRetorno := Bematech_FI_RetornoImpressora( liACK, liST1, liST2 );
         End
         Else
            liRetorno := Bematech_FI_RetornoImpressoraMFD( liACK, liST1, liST2, liSt3 );
         If liRetorno <> 1 Then
         Begin
            Result := 'Não foi possível obter o retorno do ECF!';
            Exit;
         End;
      End;
      feSweda :
      Begin
         liRetorno := SWEDA_FI_RetornoImpressoraMFD( liACK, liST1, liST2, liSt3 );
         If liRetorno <> 1 Then
         Begin
            Result := 'Não foi possível obter o retorno do ECF!';
            Exit;
         End;
      End;
      feDaruma :
      Begin
         liRetorno := Daruma_FI_RetornoImpressora ( liACK, liST1, liST2 );
         If liRetorno <> 1 Then
         Begin
            Result := 'Não foi possível obter o retorno do ECF!';
            Exit;
         End;
      End;
   End;

   lsErro := '';
   Case fFabricanteECF Of
      feElgin :
      Begin
         liACK := 0;
         lsErro := IncDigito( '', ' ', 100, 0 );
         liRetorno := Elgin_FI_RetornoImpressora( liACK, lsErro );
         If liRetorno <> 1 Then
         Begin
            Result := 'Não foi possível obter o retorno do ECF!';
            Exit;
         End;
      End;
      feEpson :
      Begin
         {If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando comando de consulta do Retorno do ECF...';
            fsLabel.Update;
         End;

         lsEstado := IncDigito( '', ' ', 20, 0 );
         liRetorno := Epson_FI_ObterEstadoImpressora( lsEstado );
         lsEstado := Copy( Trim( lsEstado ), 17, 20 );
         If liRetorno <> 0 Then
            CaixaMensagem( 'Não foi obter o retorno do ECF. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando comando de consulta da mensagem de erro do Retorno do ECF...';
            fsLabel.Update;
         End;

         If lsEstado = '0000' Then
            lsErro := ''
         Else
         Begin
            lsErro := IncDigito( '', ' ', 100, 0 );
            liRetorno := Epson_FI_ObterMensagemErro( lsEstado, lsErro );
            lsErro := Trim( lsErro );
            If liRetorno <> 0 Then
            Begin
               lsErro := 'Retorno do ECF inválido!';
               CaixaMensagem( 'Não foi obter a mensagem de erro do retorno do ECF. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );
            End;
         End;}
      End
      Else // Bematech / SWEDA / Daruma
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Analizando parâmetros ACK, ST1, ST2 do ECF...';
         End;

         lsErro := 'Byte ACK indicativo de recebimento não retornado pelo ECF !';
         If liACK = 6 Then
         Begin
            lsErro := '';

            // CodIficando o ST1
            If liSt1 >= 128 Then                  // bit 7
            Begin
               liSt1  := liSt1 - 128;
               lsErro := 'Fim de Papel';
            End
            Else If liSt1 >= 64 Then                  // bit 6
            Begin
               liSt1  := liSt1 - 64;
               //If NOT giniParam.ReadBool( 'Fiscal', 'libECFPoucoPapel', True ) Then
                  lsErro := 'Pouco Papel';
            End
            Else If liSt1 >= 32 Then                  // bit 5
            Begin
               liSt1  := liSt1 - 32;
               lsErro := 'Erro no Relógio';
            End
            Else If liSt1 >= 16 Then                  // bit 4
            Begin
               liSt1  := liSt1 - 16;
               lsErro := 'Impressora em Erro';
            End
            Else If liSt1 >= 8 Then                  // bit 3
            Begin
               liSt1  := liSt1 - 8;
               lsErro := 'Comando não iniciado com ESC';
            End
            Else If liSt1 >= 4 Then                  // bit 2
            Begin
               liSt1  := liSt1 - 4;
               lsErro := 'Comando Inexistente';
            End
            Else If liSt1 >= 2 Then                  // bit 1
            Begin
               liSt1  := liSt1 - 2;
               lsErro := 'Cupom Aberto';
            End
            Else If liSt1 >= 1 Then                  // bit 0
            Begin
               liSt1  := liSt1 - 1;
               lsErro := 'Número de Parâmetro(s) Inválido(s)';
            End;

            // CodIficando o ST2
            If liSt2 >= 128 Then                  // bit 7
            Begin
               liSt2 := liSt2 - 128;
               If Trim( lsErro ) <> '' Then
                 lsErro := lsErro + ' - ';
               lsErro := lsErro + 'Tipo de Parâmetro de Comando Inválido';
            End
            Else If liSt2 >= 64 Then                  // bit 6
            Begin
               liSt2 := liSt2 - 64;
               If Trim( lsErro ) <> '' Then
                 lsErro := lsErro + ' - ';
               lsErro := lsErro + 'Memória Fiscal Lotada';
            End
            Else If liSt2 >= 32 Then                  // bit 5
            Begin
               liSt2 := liSt2 - 32;
               If Trim( lsErro ) <> '' Then
                 lsErro := lsErro + ' - ';
               lsErro := lsErro + 'Erro na Memória RAM';
            End
            Else If liSt2 >= 16 Then                  // bit 4
            Begin
               liSt2 := liSt2 - 16;
               If Trim( lsErro ) <> '' Then
                 lsErro := lsErro + ' - ';
               lsErro := lsErro + 'Alíquota Não Programada';
            End
            Else If liSt2 >= 8 Then                  // bit 3
            Begin
               liSt2 := liSt2 - 8;
               If Trim( lsErro ) <> '' Then
                 lsErro := lsErro + ' - ';
               lsErro := lsErro + 'Capacidade de Alíquotas Lotada';
            End
            Else If liSt2 >= 4 Then                  // bit 2
            Begin
               liSt2 := liSt2 - 4;
               If Trim( lsErro ) <> '' Then
                 lsErro := lsErro + ' - ';
               lsErro := lsErro + 'Cancelamento Não Permitido';
            End
            Else If liSt2 >= 2 Then                  // bit 1
            Begin
               liSt2 := liSt2 - 2;
               If Trim( lsErro ) <> '' Then
                 lsErro := lsErro + ' - ';
               lsErro := lsErro + 'CNPJ/IE do Proprietário Não Programado';
            End
            Else If liSt2 >= 1 Then                  // bit 0
            Begin
               liSt2 := liSt2 - 1;
               If Trim( lsErro ) <> '' Then
                 lsErro := lsErro + ' - ';
               lsErro := lsErro + 'Comando não executado!';
            End;
         End;
      End;
   End;

   If ( fFabricanteECF = feBematech ) And
      ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
      ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) Then
   Begin
      If liSt3 <> 0 Then
         lsErro := lsErro + ' Estendido : ' + IntToStr( liSt3 );
   End
   Else If ( fFabricanteECF = feDaruma ) And
           ( UpperCase( Trim( gsModeloECF ) ) = 'FS600' ) Then
   Begin
      If Trim( lsErro ) <> '' Then
      Begin
         lsErroEstendido := IncDigito( '', ' ', 4, 0 );
         liRetorno := Daruma_FI_RetornaErroExtendido( lsErroEstendido );
         If liRetorno <> 1 Then
         Begin
            Result := 'Não foi possível obter o retorno do ECF!';
            Exit;
         End;
         lsErro := lsErro + ' Estendido : ' + lsErroEstendido;
      End;
   End;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
   End;

   If Trim( lsErro ) <> '' Then
   Begin
      Result := 'Messagem de erro do ECF ao receber o comando : ' + lsErro;
      Exit;
   End;
End;

Function USER_CapturaAliquotas( fFabricanteECF : TFabricanteECF;  fsLabel : TLabel = Nil ) : TStringList;
Var llstTemp : TStringList;
    lsAliquotasECF : String;
    lsTemp         : String;
    liRetorno      : Integer;
    liCont         : Integer;
Begin
   llstTemp := TStringList.Create;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Consultando alíquotas cadastradas no ECF...';
   End;

   Case fFabricanteECF Of
      feBematech :
      Begin
         lsAliquotasECF := IncDigito( ' ', ' ', 79, 0 );
         liRetorno := Bematech_FI_RetornoAliquotas( lsAliquotasECF );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não é possível obter as alíquotas cadastradas no ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            Result := llstTemp;
            FreeAndNil( llstTemp );
            Exit;
         End;

         lsTemp := '';
         liCont := 0;
         lsAliquotasECF := Trim( lsAliquotasECF );
         While Length( lsAliquotasECF ) > 0 Do
         Begin
            liCont := liCont + 1;
            llstTemp.Add( FormatFloat( '00', liCont ) + ';' + Copy( lsAliquotasECF, 1, 2 ) + ',' + Copy( lsAliquotasECF, 3, 2 ) );

            Delete( lsAliquotasECF, 1, 5 );
         End;
      End;
      feDaruma :
      Begin
         lsAliquotasECF := IncDigito( ' ', ' ', 79, 0 );
         liRetorno      := Daruma_FI_RetornoAliquotas( lsAliquotasECF );
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não é possível obter as alíquotas cadastradas no ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            Result := llstTemp;
            FreeAndNil( llstTemp );
            Exit;
         End;

         lsTemp := '';
         liCont := 0;
         lsAliquotasECF := Trim( lsAliquotasECF );
         While Length( lsAliquotasECF ) > 0 Do
         Begin
            liCont := liCont + 1;
            llstTemp.Add( FormatFloat( '00', liCont ) + ';' + Copy( lsAliquotasECF, 1, 2 ) + ',' + Copy( lsAliquotasECF, 3, 2 ) );

            Delete( lsAliquotasECF, 1, 5 );
         End;
      End;
      feSweda :
      Begin
         lsAliquotasECF := IncDigito( ' ', ' ', 79, 0 );
         liRetorno := Sweda_RetornoAliquotas( lsAliquotasECF );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não é possível obter as alíquotas cadastradas no ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            Result := llstTemp;
            FreeAndNil( llstTemp );
            Exit;
         End;

         lsTemp := '';
         liCont := 0;
         lsAliquotasECF := Trim( lsAliquotasECF );
         While Length( lsAliquotasECF ) > 0 Do
         Begin
            liCont := liCont + 1;
            llstTemp.Add( FormatFloat( '00', liCont ) + ';' + Copy( lsAliquotasECF, 1, 2 ) + ',' + Copy( lsAliquotasECF, 3, 2 ) );

            Delete( lsAliquotasECF, 1, 5 );
         End;
      End;
      feEpson :
      Begin
         lsAliquotasECF := IncDigito( ' ', ' ', 553, 0 );
         liRetorno      := Epson_FI_ObterTabelaAliquotas( lsAliquotasECF );
         If ( liRetorno <> 0 ) Then
         Begin
            CaixaMensagem( 'Não é possível obter as alíquotas cadastradas no ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            Result := llstTemp;
            FreeAndNil( llstTemp );
            Exit;
         End;

         lsTemp := '';
         liCont := 0;
         lsAliquotasECF := Trim( lsAliquotasECF );
         While Length( lsAliquotasECF ) > 0 Do
         Begin
            liCont := liCont + 1;
            llstTemp.Add( FormatFloat( '00', liCont ) + ';' + Copy( lsAliquotasECF, 1, 2 ) + ',' + Copy( lsAliquotasECF, 3, 2 ) );

            Delete( lsAliquotasECF, 1, 5 );
         End;
      End;
   End;
   USER_CapturaAliquotas := llstTemp;
End;

Function USER_AbrirCupom( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ) : String;
Var //lsMandarFiscal : String;
    lsRetorno      : String;
    lsData         : String;
    lsHora         : String;
    lsErro         : String;
    liRetorno      : Integer;
    lsNumeroCupom  : String;

    //lcdsVendas          : TClientDataSet;
    lSystemTime         : TSystemTime;
    //lpRetorno           : PChar;
    lsDataMovECF        : String;
    lsDataSis           : String;
    lsHoraSis           : String;
    lsDataECF           : String;
    //lsSeqNT             : String;
   // lsTemp              : String;
    lsEstadoTruncamento : String;
    lsReducaoZ          : String;
    szCRZ               : String;
    liDIferenca         : Integer;
    //ldData              : TDate;
Begin
   lsNumeroCupom := 'ERRO';
   Try
      Try
         gbECFArredonda := False;
         Case fFabricanteECF Of
            feNone :
            Begin
               lsNumeroCupom := IncZero( '0', 6 );
            End;
            feBematech :
            Begin
               gbECFArredonda := True;
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando o nº de série do ECF...';
               End;

               {// -> Capturando o Nº de Série
               gsSerieECF := IncDigito( '', ' ', 15, 0 );
               liRetorno  := Bematech_FI_NumeroSerie( gsSerieECF );
               gsSerieECF := Trim( gsSerieECF );
               If liRetorno <> 1 Then
               Begin
                  CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;
               // -> Capturando o Nº de Série

               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando o modelo do ECF...';
                  fsLabel.Update;
               End;

               gsModeloECF := IncDigito( '', ' ', 10, 0 );
               Bematech_FI_ModeloImpressora( gsModeloECF );
               gsModeloECF := Trim( gsModeloECF );

               // -> Capturando o Nº de Série ( MP-25 )
               If ( Trim( gsModeloECF ) <> '' ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP2000FI' ) ) ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) Then
               Begin
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := 'Capturando o nº de série do ECF( MFD )...';
                     fsLabel.Update;
                  End;

                  gbECFArredonda := False;
                  gsSerieECF := IncDigito( '', ' ', 20, 0 );
                  liRetorno  := Bematech_FI_NumeroSerieMFD( gsSerieECF );
                  gsSerieECF := Trim( gsSerieECF );
                  If liRetorno <> 1 Then
                  Begin
                     CaixaMensagem( 'Não é possível obter o nº de série do ECF MFD! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                     If fsLabel <> Nil Then
                     Begin
                        fsLabel.Caption := '';
                        fsLabel.Update;
                     End;
                     Exit;
                  End;
               End;
               // <- Capturando o Nº de Série ( MP-25 )}

               // -> Capturando a data/hora da última Redução Z
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando a data/hora de última Redução Z...';
               End;

               lsData    := IncDigito( '', ' ', 6, 0 );
               lsHora    := IncDigito( '', ' ', 6, 0 );
               liRetorno := Bematech_FI_DataHoraReducao( lsData, lsHora );
               If ( liRetorno <> 0 ) and
                  ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                  End;
                  Exit;
               End;

               If Copy( lsData, 1, 6 ) <> '000000' Then  // Quando está "zerado" é porque o movimento ainda não foi aberto
               Begin
                  lsData := Copy( lsData, 1, 2 ) + '/' +
                            Copy( lsData, 3, 2 ) + '/' +
                            '20' + Copy( lsData, 5, 2 );
                  If ( StrToDate( lsData ) > gsdata_mov ) Then
                  Begin
                     CaixaMensagem( 'O movimento do ECF já foi encerrado para a data "' +
                                     FormatDateTime('dd/mm/yyyy', gsdata_mov ) + '"!!!' + #13 +
                                    'Entre em contato com a gerência!!!', ctAviso, [ cbOk ], 0 );
                     If fsLabel <> Nil Then
                     Begin
                        fsLabel.Caption := '';
                     End;
                     Exit;
                  End;
               end;
               // <- Capturando a data/hora da última Redução Z

               // -> Verificando se há cupom aberto
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Verificando se há cupom aberto...';
                  fsLabel.Update;
               End;

               If USER_CupomAberto( fFabricanteECF, 'F', fsLabel ) Then
               Begin
                  CaixaMensagem( 'Há um cupom aberto e será cancelado!!!', ctAviso, [ cbOk ], 0 );

                  USER_CancelaCupom( fFabricanteECF, 'F', fsLabel );
               End;
               // <- Verificando se há cupom aberto

               // -> Verificando o Truncamento
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Verificando o trucamento...';
                  fsLabel.Update;
               End;

               lsRetorno := IncDigito( '', ' ', 1, 0 );
               liRetorno := Bematech_FI_VerificaTruncamento( lsRetorno );
               If ( liRetorno <> 0 ) and
                  ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Não é possível Verificar o truncamento do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;

               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Resposta recebida do ECF ( RX : "' + lsRetorno + '" )';
                  fsLabel.Update;
               End;

               If ( lsRetorno = '1' ) Or ( lsRetorno = '' ) Or (  Trim( gsSerieECF )  <> Trim( gsSerieECF ) ) Then
                  gbECFArredonda := False;

               {If ( Trim( gsModeloECF ) <> '' ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP2000FI' ) ) ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) Then
               Begin
                  If ( lsRetorno = '0' ) Or ( lsRetorno = '' ) Then
                  Begin
                     If fsLabel <> Nil Then
                     Begin
                        fsLabel.Caption := 'Não foi possível habilitar o TRUNCAMENTO do ECF! ' +
                                             'Entre em contato o técnico responsável pelo ECF!!!';
                        fsLabel.Update;
                     End;

                     liRetorno := Bematech_FI_ProgramaTruncamento;
                     If ( liRetorno <> 0 ) and
                        ( liRetorno <> 1 ) Then
                     Begin
                        CaixaMensagem( 'Não foi possível habilitar o TRUNCAMENTO do ECF! ' +
                                       'Entre em contato o técnico responsável pelo ECF!!!', ctAviso, [ cbOk ], 0 );
                        Exit;
                     end;
                  End;
               End;}
               // <- Verificando o Truncamento

               // -> Abrindo o cupom
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Abrindo o cupom fiscal...';
                  fsLabel.Update;
               End;

               liRetorno := Bematech_FI_AbreCupom( '' );
               If ( liRetorno <> 0 ) and
                  ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao abrir Cupom!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;
               // <- Abrindo o cupom

               lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
               If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
               Begin
                  CaixaMensagem( lsErro, ctAviso, [ cbOk ], 0 );
                  Exit;
               End;

               // -> Capturando a hora de abertura do cupom
               lsData    := IncDigito( '', ' ', 6, 0 );
               lsHora    := IncDigito( '', ' ', 6, 0 );
               liRetorno := Bematech_FI_DataHoraImpressora( lsData, lsHora );
               If ( liRetorno <> 0 ) and
                  ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Não é possível obter a data/hora do ECF !!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;

               lsHora := FormatDateTime( 'hh:mm', Now );
               If Copy( lsHora, 1, 6 ) <> '000000' Then  // Quando está "zerado" é porque o movimento ainda não foi aberto
               Begin
                  lsHora := Copy( lsHora, 1, 2 ) + ':' +
                            Copy( lsHora, 3, 2 );
               end;
               gsHoraECF := lsHora;
               // <- Capturando a hora de abertura do cupom

               // -> Capturando o número do cupom
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Consultando nº do cupom cupom aberto...';
                  fsLabel.Update;
               End;

               lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
               liRetorno := Bematech_FI_NumeroCupom( lsNumeroCupom );
               If ( liRetorno <> 0 ) and
                  ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao abrir Cupom (KP)!!!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;
               // <- Capturando o número do cupom
            End;
            feCorisco :
            Begin
               lsNumeroCupom := '';
            End;
            feDaruma :
            Begin
               // <- Capturando o Nº de Série
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando o nº de série do ECF...';
                  fsLabel.Update;
               End;

               gsSerieECF := IncDigito( '', ' ', 15, 0 );
               liRetorno  := Daruma_FI_NumeroSerie( gsSerieECF );
               If ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Não é possível obter o nº de série do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;
               // <- Capturando o Nº de Série

               // -> Sincronizando a data/hora atuais com o ECF
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando a data/hora atuais do ECF...';
                  fsLabel.Update;
               End;

               If USER_SincronizarDataHora( fFabricanteECF, fsLabel ) = StrToDateTime( '31/12/1899 00:00:00' ) Then
               Begin
                  CaixaMensagem( 'Data/Hora não foi sincronizada com o ECF', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               end;
               // -> Sincronizando a data/hora atuais com o ECF

               // -> Capturando a data/hora da última Redução Z
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando a data/hora de última Redução Z...';
                  fsLabel.Update;
               End;

               lsData    := IncDigito( '', ' ', 6, 0 );
               lsHora    := IncDigito( '', ' ', 6, 0 );
               liRetorno := Daruma_FI_DataHoraReducao( lsData, lsHora );
               If ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;

               If Copy( lsData, 1, 6 ) <> '000000' Then  // Quando está "zerado" é porque o movimento ainda não foi aberto
               Begin
                  lsData := Copy( lsData, 1, 2 ) + '/' +
                            Copy( lsData, 3, 2 ) + '/' +
                            '20' + Copy( lsData, 5, 2 );
                  If ( StrToDate( lsData ) > gsdata_mov ) Then
                  Begin
                     CaixaMensagem( 'O movimento do ECF já foi encerrado para a data "' +
                                     FormatDateTime('dd/mm/yyyy', gsdata_mov ) + '"!!!' + #13 +
                                    'Entre em contato com a gerência!!!', ctAviso, [ cbOk ], 0 );
                     If fsLabel <> Nil Then
                     Begin
                        fsLabel.Caption := '';
                        fsLabel.Update;
                     End;
                     Exit;
                  End;
               end;
               // <- Capturando a data/hora da última Redução Z

               // -> Verificando se há cupom aberto
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Verificando se há cupom aberto...';
                  fsLabel.Update;
               End;

               If USER_CupomAberto( fFabricanteECF, 'F', fsLabel ) Then
               Begin
                  CaixaMensagem( 'Há um cupom aberto e será cancelado!!!', ctAviso, [ cbOk ], 0 );

                  USER_CancelaCupom( fFabricanteECF, 'F', fsLabel );
               End;
               // <- Verificando se há cupom aberto

               // -> Verificando o Truncamento
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Verificando o trucamento...';
                  fsLabel.Update;
               End;

               lsRetorno := IncDigito( '', ' ', 1, 0 );
               liRetorno := Daruma_FI_VerificaTruncamento( lsRetorno );
               If ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Não é possível Verificar o truncamento do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;

               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Resposta recebida do ECF ( RX : "' + lsRetorno + '" )';
                  fsLabel.Update;
               End;

               If ( lsRetorno = '1' ) Or ( lsRetorno = '' ) Then
               Begin
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := 'A função de arredondamento do ECF está desabilitada!!! ' +
                                          'Entre em contato o técnico responsável pelo ECF!!!';
                     fsLabel.Update;
                  End;

                  liRetorno := Daruma_FI_ProgramaArredondamento;
                  If ( liRetorno <> 1 ) Then
                  Begin
                     CaixaMensagem( 'A função de arredondamento do ECF está desabilitada! ' +
                                    'Entre em contato o técnico responsável pelo ECF!!!', ctAviso, [ cbOk ], 0 );
                     Exit;
                  end;
               End;
               // <- Verificando o Truncamento

               // -> Abrindo o cupom
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Abrindo o cupom fiscal...';
                  fsLabel.Update;
               End;

               liRetorno := Daruma_FI_AbreCupom( '' );
               If ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao abrir Cupom!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;
               // <- Abrindo o cupom

               // -> Capturando o número do cupom
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Consultando nº do cupom cupom aberto...';
                  fsLabel.Update;
               End;

               lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
               liRetorno := Daruma_FI_NumeroCupom( lsNumeroCupom );
               If ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao abrir Cupom (KP)!!!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;
               // <- Capturando o número do cupom
            End;
            feSchalter :
            Begin
               lsNumeroCupom := '';
            End;
            feSweda :
            Begin
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando o nº de série do ECF...';
                  fsLabel.Update;
               End;

               // -> Capturando o Nº de Série
               gsSerieECF := IncDigito( '', ' ', 25, 0 );
               liRetorno  := SWEDA_NumeroSerie( gsSerieECF );
               gsSerieECF := Trim( gsSerieECF );
               If liRetorno <> 1 Then
               Begin
                  CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;
               // <- Capturando o Nº de Série

               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando data e hora do ECF...';
                  fsLabel.Update;
               End;

               lsDataECF := IncDigito( ' ', ' ', 6, 0 );
               lsHora := IncDigito( ' ', ' ', 6, 0 );
               liRetorno := SWEDA_DataHoraImpressora( lsDataECF, lsHora );
               If liRetorno <> 1 Then
               Begin
                  CaixaMensagem( 'Não é possível obter a data/hora de movimento do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End
               Else
               Begin
                  If ( UpperCase( Trim( gsUFEmp ) ) = 'BA' ) And // Bahia
                     ( UpperCase( Trim( gsUFEmp ) ) = 'AL' ) Then // Alagoas
                  Begin
                     lsDataSis := FormatDateTime( 'dd/mm/yy', Now );
                     lsHoraSis := FormatDateTime( 'hh:mm:ss', Now );

                     lsDataMovECF := IncDigito( '', ' ', 6, 0 );
                     liRetorno    := SWEDA_DataMovimento( lsDataMovECF );
                     If liRetorno <> 1 Then
                     Begin
                        CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar ler a data de movimento do ECF!', ctErro, [ cbOK ], 0 );
                        Exit;
                     End;
                     lsDataMovECF := Copy( lsDataMovECF, 1, 2 ) + '/' + Copy( lsDataMovECF, 3, 2 ) + '/' + Copy( lsDataMovECF, 5, 2 );

                     If lsDataMovECF <> '00/00/00' Then
                     Begin
                        If fsLabel <> Nil Then
                        Begin
                           fsLabel.Caption := 'Validando o relógio do Windows com o ECF...';
                           fsLabel.Update;
                        End;

                        If ( Copy( SubstString( lsDataSis, '/' ), 1, 2 ) <> Copy( SubstString( lsDataMovECF, '/' ), 1, 2 ) ) Or
                           ( Copy( SubstString( lsDataSis, '/' ), 3, 2 ) <> Copy( SubstString( lsDataMovECF, '/' ), 3, 2 ) ) Or
                           ( Copy( SubstString( lsDataSis, '/' ), 5, 2 ) <> Copy( SubstString( lsDataMovECF, '/' ), 5, 2 ) ) Then
                        Begin
                           CaixaMensagem( 'A data de movimento do ECF ("' + lsDataMovECF + '") dIfere da data do computador("' + lsDataSis + '")!', ctAviso, [ cbOk ], 0 );
                           If fsLabel <> Nil Then
                           Begin
                              fsLabel.Caption := '';
                              fsLabel.Update;
                           End;
                           Exit;
                        End;
                         {
                        liDIferenca := Round( DIfHoras( StrToDate( lsDataMovECF ),
                                                        StrToDate( lsDataMovECF ),
                                                        StrToTime( lsHoraSis ),
                                                        StrToTime( Copy( lsHora, 1, 2 ) + ':' + Copy( lsHora, 3, 2 ) + ':' + Copy( lsHora, 5, 2 ) ) ) );

                                                        }
                        If liDIferenca > 900 Then
                        Begin
                           CaixaMensagem( 'A hora de movimento do ECF ("' + lsHora + '") dIfere da data do computador("' + lsHoraSis + '")!', ctAviso, [ cbOk ], 0 );
                           If fsLabel <> Nil Then
                           Begin
                              fsLabel.Caption := '';
                              fsLabel.Update;
                           End;
                           Exit;
                        End;
                     End;
                  End
                  Else
                  Begin
                     If fsLabel <> Nil Then
                     Begin
                        fsLabel.Caption := 'Sincronizando o relógio do Windows com o ECF...';
                        fsLabel.Update;
                     End;

                     With lSystemTime Do
                     Begin
                        //Definindo o dia do sistema
                        wDay   := StrToInt( FormatDateTime( 'dd', Now ) );
                        wMonth := StrToInt( FormatDateTime( 'mm', Now ) );
                        wYear  := StrToInt( FormatDateTime( 'yyyy', Now ) );

                        //Definindo a hora do sistema
                        wHour   := StrToInt( Copy( lsHora, 1, 2 ) ); //hora
                        wMinute := StrToInt( Copy( lsHora, 3, 2 ) ); //minutos
                        wSecond := StrToInt( Copy( lsHora, 5, 2 ) ); //segundos
                     End;
                     //Colocar a hora e data do sistema
                     SetLocalTime( lSystemTime );
                  End;
               End;
               // <- Capturando a data/hora atuais do ECF

               // -> Verificando se há cupom FISCAL aberto
               If USER_CupomAberto( fFabricanteECF, 'F', fsLabel ) Then
               Begin
                  CaixaMensagem( 'Há um cupom FISCAL aberto e será cancelado!', ctAviso, [ cbOk ], 0 );

                  USER_CancelaCupom( fFabricanteECF, 'F', fsLabel );
               End;
               // <- Verificando se há cupom FISCAL aberto

               SWEDA_ProgramaArredondamento;
               lsEstadoTruncamento := IncDigito( ' ', ' ', 1, 0 );
               liRetorno := SWEDA_VerificaTruncamento( lsEstadoTruncamento );
               If liRetorno <> 1 Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar Verificar o status do arredondamento no ECF!', ctAviso, [ cbOk ], 0 );
                  Exit;
               End;
               If ( UpperCase( Trim( lsEstadoTruncamento ) ) = '1' ) Or
                  ( UpperCase( Trim( lsEstadoTruncamento ) ) = '' ) Then
               Begin
                  gbECFArredonda := False;
                  {If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := 'A função de arredondamento do ECF está desabilitada! ' +
                                          'Entre em contato o técnico responsável pelo ECF!';
                     fsLabel.Update;
                  End;

                  If giniParam.ReadBool( 'Fiscal', 'CriticaTotalECF', True ) Then
                  Begin
                     CaixaMensagem( 'A função de arredondamento do ECF está desabilitada! ' +
                                    'Entre em contato o técnico responsável pelo ECF!', ctAviso, [ cbOk ], 0 );

                     Exit;
                  End;}
               End;

               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Consultando nº do cupom cupom aberto...';
                  fsLabel.Update;
               End;

               // -> Abrindo o cupom
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Abrindo o cupom fiscal...';
                  fsLabel.Update;
               End;

               liRetorno := SWEDA_AbreCupom( '' );
               If liRetorno <> 1 Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao abrir Cupom!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;
               // <- Abrindo o cupom

               lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
               If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
               Begin
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := 'Enviando comando de consulta da data/hora da última Redução Z...';
                     fsLabel.Update;;
                  End;

                  lsReducaoZ := '';
                  lsData     := IncDigito( '', ' ', 6, 0 );
                  lsHora     := IncDigito( '', ' ', 6, 0 );
                  liRetorno  := SWEDA_DataHoraReducao( lsData, lsHora );
                  If liRetorno = 1 Then
                  Begin
                     If lsData = '000000' Then
                        lsReducaoZ := 'Não houve nenhuma redução Z neste ECF!'
                     Else
                     Begin
                        lsData := Copy( lsData, 1, 2 ) + '/' + Copy( lsData, 3, 2 ) + '/' + Copy( lsData, 5, 2 );
                        lsHora := Copy( lsHora, 1, 2 ) + ':' + Copy( lsHora, 3, 2 ) + ':' + Copy( lsHora, 5, 2 );
                        lsReducaoZ := 'Data/Hora da última redução : ' + lsData + ' ' + lsHora;
                     End;
                  End;
                  If Trim( lsReducaoZ ) = '' Then
                     CaixaMensagem( lsErro, ctInforma, [ cbOk ], 0 )
                  Else
                     CaixaMensagem( lsErro + #13 + lsReducaoZ, ctInforma, [ cbOk ], 0 );

                  Exit;
               End;

               lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
               liRetorno := SWEDA_NumeroCupom( lsNumeroCupom );
               If liRetorno <> 1 Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar capturar o nº do cupom!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;
               lsNumeroCupom := IncZero( IntToStr( StrToInt( lsNumeroCupom ) ), 6 );

               {lqryVendas              := TQuery.Create( Nil );
               lqryVendas.DatabaseName := Dtm1.DbPrincipal.DatabaseName;
               lqryVendas.SessionName  := Dtm1.DbPrincipal.SessionName;
               lqryVendas.SQL.Text     := 'Select SeqNT From Vendas '+
                                            'Where Data=:parData And '+
                                            '      NumCupom=:parNumCupom And ' +
                                            '      SerieECF=:parSerieECF';
               lqryVendas.ParamByName( 'parData' ).AsDateTime   := SoData( gdDtMov );
               lqryVendas.ParamByName( 'parNumCupom' ).AsString := lsNumeroCupom;
               lqryVendas.ParamByName( 'parSerieECF' ).AsString := gsSerieECF;
               lqryVendas.Open;
               If NOT lqryVendas.IsEmpty Then
               Begin
                  USER_AbrirCupom := 'ERRO';
                  CaixaMensagem( 'O cupom "' + lsNumeroCupom + '" retornado pelo ECF já está associado a venda "' + lqryVendas.FieldByName( 'SEQNT' ).AsString + '"!', ctAviso, [cbOK], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := 'O cupom "' + lsNumeroCupom + '" retornado pelo ECF está associado a venda "' + lqryVendas.FieldByName( 'SEQNT' ).AsString + '"!';
                     fsLabel.Update;
                  End;
                  FreeAndNil( lqryVendas );
                  Exit;
               End;
               FreeAndNil( lqryVendas );}

               // -> Capturando a data/hora da última Redução Z
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando data de movimento do ECF...';
                  fsLabel.Update;
               End;
               SWEDA_DataMovimento( lsDataECF );

               lsDataECF := Copy( lsDataECF, 1, 2 ) + '/' + Copy( lsDataECF, 3, 2 ) + '/' + Copy( lsDataECF, 5, 2 );
               If StrToDateDef( lsDataECF, StrToDate( '01/01/1990' ) ) = StrToDate( '01/01/1990' ) Then
               Begin
                  CaixaMensagem( 'A data de movimento( "' + lsDataECF + '" ) retornada pelo ECF é inválida! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;

               If ( StrToDate( lsDataECF ) > SoData( gsdata_mov ) ) Then
               Begin
                  CaixaMensagem( 'O movimento do ECF já foi encerrado para a data "' +
                                  FormatDateTime( 'dd/mm/yyyy', gsdata_mov ) + '"!' + #13 +
                                 'Entre em contato com a gerência!', ctAviso, [ cbOk ], 0 );

                  // -> Verificando se há cupom FISCAL aberto
                  If USER_CupomAberto( fFabricanteECF, 'F', fsLabel ) Then
                  Begin
                     CaixaMensagem( 'Há um cupom FISCAL aberto e será cancelado!', ctAviso, [ cbOk ], 0 );

                     USER_CancelaCupom( fFabricanteECF, 'F', fsLabel );
                  End;
                  // <- Verificando se há cupom FISCAL aberto

                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;

                  Exit;
               End
               Else If ( StrToDate( lsDataECF ) < SoData( gsdata_mov ) ) Then // Movimento do ECF memor que o movimento do Sistema
               Begin
                  CaixaMensagem( 'O movimento do ECF precisa ser fechado! ( Data do ECF: "' +
                                  FormatDateTime( 'dd/mm/yyyy', StrToDate( lsDataECF ) ) + '" )!', ctAviso, [ cbOk ], 0 );

                  // -> Verificando se há cupom FISCAL aberto
                  If USER_CupomAberto( fFabricanteECF, 'F', fsLabel ) Then
                  Begin
                     CaixaMensagem( 'Há um cupom FISCAL aberto e será cancelado!', ctAviso, [ cbOk ], 0 );

                     USER_CancelaCupom( fFabricanteECF, 'F', fsLabel );
                  End;
                  // <- Verificando se há cupom FISCAL aberto

                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;

                  Exit;
               End;
               // <- Capturando a data/hora da última Redução Z

               // -> Capturando o número do cupom
               {If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Consultando nº do cupom cupom aberto...';
                  fsLabel.Update;
               End;

               lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
               liRetorno := SWEDA_NumeroCupom( lsNumeroCupom );
               If liRetorno <> 1 Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar capturar o nº do cupom!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;}
               // <- Capturando o número do cupom
            End;
            feElgin :
            Begin
               gbECFArredonda := True;
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando o nº de série do ECF...';
                  fsLabel.Update;
               End;

               // -> Capturando o Nº de Série
               gsSerieECF := IncDigito( '', ' ', 20, 0 );
               liRetorno  := Elgin_FI_NumeroSerie( gsSerieECF );
               gsSerieECF := Trim( gsSerieECF );
               If liRetorno <> 1 Then
               Begin
                  CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;
               // <- Capturando o Nº de Série

                // -> Capturando a data/hora da última Redução Z
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando a data/hora de última Redução Z...';
                  fsLabel.Update;
               End;

               lsData    := IncDigito( '', ' ', 6, 0 );
               lsHora    := IncDigito( '', ' ', 6, 0 );
               liRetorno := Elgin_FI_DataHoraReducao( lsData, lsHora );
               If ( liRetorno <> 0 ) and
                  ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;

               If Copy( lsData, 1, 6 ) <> '000000' Then  // Quando está "zerado" é porque o movimento ainda não foi aberto
               Begin
                  lsData := Copy( lsData, 1, 2 ) + '/' +
                            Copy( lsData, 3, 2 ) + '/' +
                            '20' + Copy( lsData, 5, 2 );
                  If ( StrToDate( lsData ) > gsdata_mov ) Then
                  Begin
                     CaixaMensagem( 'O movimento do ECF já foi encerrado para a data "' +
                                     FormatDateTime('dd/mm/yyyy', gsdata_mov ) + '"!!!' + #13 +
                                    'Entre em contato com a gerência!!!', ctAviso, [ cbOk ], 0 );
                     If fsLabel <> Nil Then
                     Begin
                        fsLabel.Caption := '';
                        fsLabel.Update;
                     End;
                     Exit;
                  End;
               end;
               // <- Capturando a data/hora da última Redução Z

               // -> Verificando se há cupom aberto
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Verificando se há cupom aberto...';
                  fsLabel.Update;
               End;

               If USER_CupomAberto( fFabricanteECF, 'F', fsLabel ) Then
               Begin
                  CaixaMensagem( 'Há um cupom aberto e será cancelado!!!', ctAviso, [ cbOk ], 0 );

                  USER_CancelaCupom( fFabricanteECF, 'F', fsLabel );
               End;
               // <- Verificando se há cupom aberto

               // -> Verificando o Truncamento
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Verificando o trucamento...';
                  fsLabel.Update;
               End;

               lsRetorno := IncDigito( '', ' ', 1, 0 );
               liRetorno := Elgin_FI_VerificaTruncamento( lsRetorno );
               If ( liRetorno <> 0 ) and
                  ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Não é possível Verificar o truncamento do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;

               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Resposta recebida do ECF ( RX : "' + lsRetorno + '" )';
                  fsLabel.Update;
               End;

               If ( lsRetorno = '1' ) Or ( lsRetorno = '' ) Or ( ( Trim( gsSerieECF ) ) <> Trim( gsSerieECF ) ) Then
                  gbECFArredonda := False;

               {If ( Trim( gsModeloECF ) <> '' ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP2000FI' ) ) ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) Then
               Begin
                  If ( lsRetorno = '0' ) Or ( lsRetorno = '' ) Then
                  Begin
                     If fsLabel <> Nil Then
                     Begin
                        fsLabel.Caption := 'Não foi possível habilitar o TRUNCAMENTO do ECF! ' +
                                             'Entre em contato o técnico responsável pelo ECF!!!';
                        fsLabel.Update;
                     End;

                     liRetorno := Elgin_FI_ProgramaTruncamento;
                     If ( liRetorno <> 0 ) and
                        ( liRetorno <> 1 ) Then
                     Begin
                        CaixaMensagem( 'Não foi possível habilitar o TRUNCAMENTO do ECF! ' +
                                       'Entre em contato o técnico responsável pelo ECF!!!', ctAviso, [ cbOk ], 0 );
                        Exit;
                     end;
                  End;
               End;}
               // <- Verificando o Truncamento

               // -> Abrindo o cupom
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Abrindo o cupom fiscal...';
                  fsLabel.Update;
               End;

               liRetorno := Elgin_FI_AbreCupom( '' );
               If ( liRetorno <> 0 ) and
                  ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao abrir Cupom!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;
               // <- Abrindo o cupom

               lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
               If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
               Begin
                  CaixaMensagem( lsErro, ctAviso, [ cbOk ], 0 );
                  Exit;
               End;

               // -> Capturando a hora de abertura do cupom
               lsData    := IncDigito( '', ' ', 6, 0 );
               lsHora    := IncDigito( '', ' ', 6, 0 );
               liRetorno := Elgin_FI_DataHoraImpressora( lsData, lsHora );
               If ( liRetorno <> 0 ) and
                  ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Não é possível obter a data/hora do ECF !!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;

               lsHora := FormatDateTime( 'hh:mm', Now );
               If Copy( lsHora, 1, 6 ) <> '000000' Then  // Quando está "zerado" é porque o movimento ainda não foi aberto
               Begin
                  lsHora := Copy( lsHora, 1, 2 ) + ':' +
                            Copy( lsHora, 3, 2 );
               end;
               gsHoraECF := lsHora;
               // <- Capturando a hora de abertura do cupom

               // -> Capturando o número do cupom
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Consultando nº do cupom cupom aberto...';
                  fsLabel.Update;
               End;

               lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
               liRetorno := Elgin_FI_NumeroCupom( lsNumeroCupom );
               If ( liRetorno <> 0 ) and
                  ( liRetorno <> 1 ) Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao abrir Cupom!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;
               // <- Capturando o número do cupom
            End;
            feEpson :
            Begin
               gbECFArredonda := True;

               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando o nº de série do ECF...';
                  fsLabel.Update;
               End;

               // -> Capturando o Nº de Série
               gsSerieECF := IncDigito( '', ' ', 110, 0 );
               liRetorno  := Epson_FI_ObterDadosImpressora( gsSerieECF );
               gsSerieECF := Trim( Copy( Trim( gsSerieECF ), 1, 20 ) );
               If liRetorno <> 0 Then
               Begin
                  CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;
               // <- Capturando o Nº de Série

               // -> Capturando a data/hora da última Redução Z
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Capturando a data/hora de última Redução Z...';
                  fsLabel.Update;
               End;

               lsData := IncDigito( ' ', ' ', 70, 0 );
               liRetorno := Epson_FI_ObterDadosJornada( lsData );
               lsHora := Copy( Trim( lsData ), 23, 6 );
               lsData := Copy( Trim( lsData ), 15, 4 ) + Copy( lsData, 21, 2 );
               If ( liRetorno <> 0 ) Then
               Begin
                  CaixaMensagem( 'Não é possível obter a data da última redução Z do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;
                  Exit;
               End;
               lsData := Trim( lsData );
               lsHora := Trim( lsHora );
               If Copy( lsData, 1, 6 ) <> '000000' Then  // Quando está "zerado" é porque o movimento ainda não foi aberto
               Begin
                  lsData := Copy( lsData, 1, 2 ) + '/' +
                            Copy( lsData, 3, 2 ) + '/' +
                            '20' + Copy( lsData, 5, 2 );
                  If ( StrToDate( lsData ) > gsdata_mov ) Then
                  Begin
                     CaixaMensagem( 'O movimento do ECF já foi encerrado para a data "' +
                                     FormatDateTime('dd/mm/yyyy', gsdata_mov ) + '"!!!' + #13 +
                                    'Entre em contato com a gerência!!!', ctAviso, [ cbOk ], 0 );
                     If fsLabel <> Nil Then
                     Begin
                        fsLabel.Caption := '';
                        fsLabel.Update;
                     End;
                     Exit;
                  End;
               end;
               // <- Capturando a data/hora da última Redução Z

               // -> Verificando se há cupom aberto
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Verificando se há cupom aberto...';
                  fsLabel.Update;
               End;


               If USER_CupomAberto( fFabricanteECF, 'F', fsLabel ) Then
               Begin
                  CaixaMensagem( 'Há um cupom aberto e será cancelado!!!', ctAviso, [ cbOk ], 0 );

                  USER_CancelaCupom( fFabricanteECF, 'F', fsLabel );
               End;
               // <- Verificando se há cupom aberto
               Begin
                   If fsLabel <> Nil Then
                   Begin
                      fsLabel.Caption := 'Verificando limite de horários para vendas...';
                      fsLabel.Update;
                   End;

                   //         1         2         3         4         5         6         7
                   //123456789.123456789.123456789.123456789.123456789.123456789.123456789.
                   //2505200708065425052007080636000080000000000004002996000050000091110
                   lsRetorno  := IncDigito( '', ' ', 70, 0 );
                   liRetorno  := Epson_FI_ObterDadosJornada( lsRetorno );
                   If liRetorno <> 0 Then
                   Begin
                      CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao consultar os dados da jornada fiscal!', ctErro, [ cbOK ], 0 );
                      Exit;
                   End;
                   If Copy( Trim( lsRetorno ), 66, 1 ) = '1' Then // Limite de horário para vendas atingido
                   Begin
                      lsDataMovECF := IncDigito( '', ' ', 15, 0 );
                      liRetorno    := Epson_FI_DataMovimento( lsDataMovECF );
                      lsDataMovECF := Copy( Trim( lsDataMovECF ), 1, 4 ) + Copy( Trim( lsDataMovECF ), 7, 2 );
                      If liRetorno <> 0 Then
                      Begin
                        //
                      End;

                      lsDataMovECF := Copy( lsDataMovECF, 1, 2 ) + '/' + Copy( lsDataMovECF, 3, 2 ) + '/' + Copy( lsDataMovECF, 5, 2 );

                      If StrToDate( lsDataMovECF ) >= gsdata_mov Then
                         CaixaMensagem( 'O limite para vendas no movimento de "' + lsDataMovECF + '" no ECF foi atingido! Realize o fechamento do dia!', ctAviso, [ cbOk ], 0 )
                      Else
                         CaixaMensagem( 'O limite para vendas no movimento de "' + lsDataMovECF + '" no ECF foi atingido! Efetue a redução Z!', ctAviso, [ cbOk ], 0 );

                      If CaixaMensagem( 'Deseja emitir a reduçãoZ agora ?', ctConfirma, [ cbSimNao ], 0 ) Then
                      Begin
                         lsData := FormatDateTime( 'ddmmyyyy', Now );
                         lsHora := FormatDateTime( 'hhmmss', Now );
                         szCRZ  := IncDigito( '', ' ', 4, 0 );
                         liRetorno := Epson_FI_ReduzaoZ( PChar( lsData ), PChar( lsHora ), 9, PChar( szCRZ ) );
                         If liRetorno <> 0 Then
                         Begin
                            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao solicitar da Redução Z para o ECF!', ctErro, [ cbOk ], 0 );
                            Exit;
                         End;
                         liRetorno := Epson_FI_AbrirDia();
                         If liRetorno <> 0 Then
                         Begin
                            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao Abrir o dia no ECF!', ctErro, [ cbOk ], 0 );
                            Exit;
                         End;
                      End;
                      Exit;
                   End;
               End;

               // -> Abrindo o cupom
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Abrindo o cupom fiscal...';
                  fsLabel.Update;
               End;

               liRetorno := Epson_FI_AbreCupom( '', '', '', '', 3 );
               If ( liRetorno <> 0 ) Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao abrir Cupom!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;
               // <- Abrindo o cupom

               // -> Capturando o número do cupom
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Consultando nº do cupom cupom aberto...';
                  fsLabel.Update;
               End;

               lsNumeroCupom := IncDigito( '', ' ', 100, 0 );
               liRetorno  := Epson_FI_ObterContadores( lsNumeroCupom );
               lsNumeroCupom := Copy( Trim( lsNumeroCupom ), 1, 6 );
               If ( liRetorno <> 0 ) Then
               Begin
                  CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao abrir Cupom (KP)!!!', ctErro, [ cbOK ], 0 );
                  Exit;
               End;
               // <- Capturando o número do cupom
            End;
         End;
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := '';
            fsLabel.Update;
         End;
      Except
         On E: Exception Do
         Begin
            CaixaMensagem( 'Não foi possível abrir o cupom fiscal! ' + E.Message, ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
   Finally
      USER_AbrirCupom := Trim( lsNumeroCupom );
   End;
End;

Function USER_CancelaCupom( fFabricanteECF : TFabricanteECF; fTipoCupom : Char = 'F'; fsLabel : TLabel = Nil ) : Boolean;
Var liRetorno      : Integer;
    lsUltimoItem   : String;
    //lsStatus       : String;
    //lsMandarFiscal : String;
    //CharBuffer     : Array [0..2000] Of Char;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando cupom aberto...';
           fsLabel.Update;
        End;

        If USER_CupomAberto( fFabricanteECF, fTipoCupom, fsLabel ) Then
        Begin
           // <- Enviando um Produto para poder cancelar os cupons que não tenha produtos
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Verificando se o cupom aberto tem algum item lançado...';
              fsLabel.Update;
           End;

           lsUltimoItem := IncDigito( ' ', ' ', 4, 0 );
           liRetorno := Bematech_FI_UltimoItemVendido( lsUltimoItem );
           If liRetorno <> 1 Then
           Begin
              CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao consultar o nº do último item vendido!', ctErro, [ cbOk ], 0 );
              Exit;
           End;
           If IncZero( Trim( lsUltimoItem ), 4 ) = '0000' Then
           Begin
              If fsLabel <> Nil Then
              Begin
                 fsLabel.Caption := 'Enviando item de cancelamento...';
                 fsLabel.Update;
              End;

                     //USER_VendeItem( fFabricanteECF, fsCodItem      , fsDescricaoItem, fsSitTrib, frQuant, frPreco, fiQtdeDecimais, frVlr_Desc, fsLabel );
              If NOT USER_VendeItem( fFabricanteECF, '0000000000000', 'Cancelamento', 'FF', 1, 0.01, 2, 0, fsLabel ) Then
              Begin
                 CaixaMensagem( 'Erro ao enviar o item de cancelamento para o ECF!', ctErro, [ cbOk ], 0 );
                 Exit;
              End;
           End;
           // -> Enviando um Produto para poder cancelar os cupons que não tenha produtos
        End;

        // -> Cancelando cupom aberto
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Cancelando cupom fiscal aberto...';
           fsLabel.Update;
        End;

        liRetorno := Bematech_FI_CancelaCupom;
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao enviar o comando de cancelamento do cupom!', ctErro, [ cbOk ], 0 );
           Exit;
        End;
        // <- Cancelando cupom aberto
     End;
     feDaruma :
     Begin
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando cupom aberto...';
           fsLabel.Update;
        End;

        If USER_CupomAberto( fFabricanteECF, fTipoCupom, fsLabel ) Then
        Begin
           // <- Enviando um Produto para poder cancelar os cupons que não tenha produtos
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Verificando se o cupom aberto tem algum item lançado...';
              fsLabel.Update;
           End;

           lsUltimoItem := IncDigito( ' ', ' ', 4, 0 );
           liRetorno := Daruma_FI_UltimoItemVendido( lsUltimoItem );
           If liRetorno <> 1 Then
           Begin
              CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao consultar o nº do último item vendido!', ctErro, [ cbOk ], 0 );
              Exit;
           End;
           If IncZero( Trim( lsUltimoItem ), 4 ) = '0000' Then
           Begin
              If fsLabel <> Nil Then
              Begin
                 fsLabel.Caption := 'Enviando item de cancelamento...';
                 fsLabel.Update;
              End;

              If NOT USER_VendeItem( fFabricanteECF, '0000000000000', 'Cancelamento', 'FF', 1, 0.01, 2, 0, fsLabel ) Then
              Begin
                 CaixaMensagem( 'Erro ao enviar o item de cancelamento para o ECF!', ctErro, [ cbOk ], 0 );
                 Exit;
              End;
           End;
           // -> Enviando um Produto para poder cancelar os cupons que não tenha produtos
        End;

        // -> Cancelando cupom aberto
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Cancelando cupom fiscal aberto...';
           fsLabel.Update;
        End;

        liRetorno := Daruma_FI_CancelaCupom;
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao enviar o comando de cancelamento do cupom!', ctErro, [ cbOk ], 0 );
           Exit;
        End;
        // <- Cancelando cupom aberto
     End;
     feSweda :
     Begin
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando cupom aberto...';
           fsLabel.Update;
        End;

        If USER_CupomAberto( fFabricanteECF, fTipoCupom, fsLabel ) Then
        Begin
           // <- Enviando um Produto para poder cancelar os cupons que não tenha produtos
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Verificando se o cupom aberto tem algum item lançado...';
              fsLabel.Update;
           End;

           lsUltimoItem := IncDigito( ' ', ' ', 4, 0 );
           liRetorno := SWEDA_UltimoItemVendido( lsUltimoItem );
           If liRetorno <> 1 Then
           Begin
              CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao consultar o nº do último item vendido!', ctErro, [ cbOk ], 0 );
              Exit;
           End;
           If IncZero( Trim( lsUltimoItem ), 4 ) = '0000' Then
           Begin
              If fsLabel <> Nil Then
              Begin
                 fsLabel.Caption := 'Enviando item de cancelamento...';
                 fsLabel.Update;
              End;

              If NOT USER_VendeItem( fFabricanteECF, '0000000000001', 'Cancelamento', 'FF', 1, 0.01, 2, 0, fsLabel ) Then
              Begin
                 CaixaMensagem( 'Erro ao enviar o item de cancelamento para o ECF!', ctErro, [ cbOk ], 0 );
                 Exit;
              End;
           End;
           // -> Enviando um Produto para poder cancelar os cupons que não tenha produtos
        End;

        // -> Cancelando cupom aberto
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Cancelando cupom fiscal aberto...';
           fsLabel.Update;
        End;

        liRetorno := SWEDA_CancelaCupom;
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao enviar o comando de cancelamento do cupom!', ctErro, [ cbOk ], 0 );
           Exit;
        End;
        // <- Cancelando cupom aberto
     End;
     feElgin :
     Begin
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando cupom aberto...';
           fsLabel.Update;
        End;

        If USER_CupomAberto( fFabricanteECF, fTipoCupom, fsLabel ) Then
        Begin
           // <- Enviando um Produto para poder cancelar os cupons que não tenha produtos
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Verificando se o cupom aberto tem algum item lançado...';
              fsLabel.Update;
           End;

           lsUltimoItem := IncDigito( ' ', ' ', 4, 0 );
           liRetorno := Elgin_FI_UltimoItemVendido( lsUltimoItem );
           If liRetorno <> 1 Then
           Begin
              CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao consultar o nº do último item vendido!', ctErro, [ cbOk ], 0 );
              Exit;
           End;
           If IncZero( Trim( lsUltimoItem ), 4 ) = '0000' Then
           Begin
              If fsLabel <> Nil Then
              Begin
                 fsLabel.Caption := 'Enviando item de cancelamento...';
                 fsLabel.Update;
              End;

              If NOT USER_VendeItem( fFabricanteECF, '0000000000000', 'Cancelamento', 'FF', 1, 0.01, 2, 0, fsLabel   ) Then
              Begin
                 CaixaMensagem( 'Erro ao enviar o item de cancelamento para o ECF!', ctErro, [ cbOk ], 0 );
                 Exit;
              End;
           End;
           // -> Enviando um Produto para poder cancelar os cupons que não tenha produtos
        End;

        // -> Cancelando cupom aberto
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Cancelando cupom fiscal aberto...';
           fsLabel.Update;
        End;

        liRetorno := Elgin_FI_CancelaCupom();
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao enviar o comando de cancelamento do cupom!', ctErro, [ cbOk ], 0 );
           Exit;
        End;
        // <- Cancelando cupom aberto
     End;
     feEpson :
     Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando cupom aberto...';
            fsLabel.Update;
         End;

         If USER_CupomAberto( fFabricanteECF, 'F', fsLabel ) Then
         Begin
            // - > Enviando um Produto para poder cancelar os cupons que não tenha produtos
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando se o cupom aberto tem algum item lançado...';
               fsLabel.Update;
            End;

            lsUltimoItem := IncDigito( ' ', ' ', 10, 0 );
            liRetorno    := Epson_FI_ObterNumeroUltimoItem( lsUltimoItem );
            lsUltimoItem := Trim( Copy ( lsUltimoItem, 1, 5  ) );
            If liRetorno <> 0 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao consultar o nº do último item vendido!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
           If IncZero( Trim( lsUltimoItem ), 4 ) = '0000' Then
            Begin
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Enviando item de cancelamento...';
                  fsLabel.Update;
               End;

               If NOT USER_VendeItem( fFabricanteECF, '0000000000000', 'Cancelamento', 'F', 1, 0.01, 2, 0, fsLabel ) Then
               Begin
                  CaixaMensagem( 'Erro ao enviar o item de cancelamento para o ECF!', ctErro, [ cbOk ], 0 );
                  Exit;
               End;
            End;
            // <- Enviando um Produto para poder cancelar os cupons que não tenha produtos
         End;

         // -> Cancelando cupom aberto
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Cancelando cupom fiscal aberto...';
            fsLabel.Update;
         End;

         liRetorno := Epson_FI_CancelarCupom();
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao enviar o comando de cancelamento do cupom!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Cancelando cupom aberto
     End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
End;

Function USER_VendeItem( fFabricanteECF : TFabricanteECF; fsCodItem : String; fsDescricaoItem : String; fsSitTrib : String; frQuant : Real; frPreco : Real; fiQtdeDecimais : Integer; frVlr_Desc: Real = 0; fsLabel : TLabel = Nil ) : Boolean;
Var lsdtsTemp         : TSimpleDataSet;
    lsMandarFiscal    : String;
    lsErro            : String;
    lsAliquotas       : String;
    lsTemp            : String;
    lsQuantidade      : String;
    AcresDesc         : String;
    TipoAcresDesc     : String;
    lsUltimoItem      : String;
    liCont            : Integer;
    liRetorno         : Integer;
    lrVlrAliquota     : Real;
    liBasePreco       : Real;
    llstTemp          : TStringList;
    lqrySitTributaria : TSQLQuery;
    ldspSitTributaria : TDataSetProvider;
    lcdsSitTributaria : TClientDataSet;

Begin
   Result := False;

   fsCodItem := SubstString( fsCodItem, '.', '0' );
   If Trim( fsCodItem ) = '' Then
   Begin
      CaixaMensagem( 'Código do item para o ECF não informado', ctAviso, [ cbOk ], 0 );
      exit;
   end;
   If Trim( fsDescricaoItem ) = '' Then
   Begin
      CaixaMensagem( 'Descrição do item para o ECF não informado', ctAviso, [ cbOk ], 0 );
      exit;
   end;
   If Trim( fsSitTrib ) = '' Then
   Begin
      CaixaMensagem( 'Situação tributária do item para o ECF não informado', ctAviso, [ cbOk ], 0 );
      exit;
   end;

   If ( gECFemUso = feBematech  ) Or ( gECFemUso = feDaruma ) Then // Bematech ou Daruma
   Begin
      If ( fsSitTrib <> 'FF' ) And ( fsSitTrib <> 'II' ) And ( fsSitTrib <> 'NN' ) Then
      Begin
         llstTemp := USER_CapturaAliquotas( gECFemUso, fsLabel );

         If StrToIntDef( fsSitTrib, 1000 ) > llstTemp.Count Then
         Begin
            CaixaMensagem( 'A alíquota "' + fsSitTrib + '" do item "' + fsCodItem + '"  não está cadastrada no ECF!', ctInforma, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'A alíquota "' + fsSitTrib + '" do item "' + fsCodItem + '"  não está cadastrada no ECF!';
               fsLabel.Update;
            End;
            Exit;
         End;
         lrVlrAliquota := StrToFloat( Copy( llstTemp[ StrToInt( fsSitTrib ) - 1 ], Pos( ';', llstTemp[ StrToInt( fsSitTrib ) - 1 ] ) + 1, 255 ) );

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Validando dados da alíquota...';
            fsLabel.Update;
         End;

         lsdtsTemp                     := TSimpleDataSet.Create( Nil );
         lsdtsTemp.Connection          := frmprincipal.dbxprincipal;
         lsdtsTemp.DataSet.CommandText := 'SELECT AliqICMS.ICMS1, ' +
                                          'AliqICMS.RedBase ' +
                                          'FROM T_AliquotasECF AliqECF, ' +
                                          '     T_AliquotasICMS AliqICMS '+
                                          'WHERE AliqECF.Cod_ImpFiscal=:parCod_ImpFiscal AND '+
                                          '      AliqECF.Cod_AliquotaECF=:parCod_AliquotaECF AND '+
                                          '      AliqICMS.Codigo=AliqECF.Cod_AliquotaICMS';
         //lsdtsTemp.DataSet.ParamByName( 'parCod_Emp' ).AsString         := gsCod_Emp;
        // lsdtsTemp.DataSet.ParamByName( 'parCod_ImpFiscal' ).AsString   := FormatFloat( '00', Registro( 'Modelo_ImpFiscalCheckout', trInteger, -1, raLer) );
         lsdtsTemp.DataSet.ParamByName( 'parCod_AliquotaECF' ).AsString := fsSitTrib;
         lsdtsTemp.Open;
         If lsdtsTemp.IsEmpty Then
         Begin
            CaixaMensagem( 'Alíquota "' + fsSitTrib + '" do item "' + fsCodItem + '" não cadastrada!', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Alíquota "' + fsSitTrib + '" do item "' + fsCodItem + '" não cadastrada!';
               fsLabel.Update;
            End;
            FreeAndNil( lsdtsTemp );
            Exit;
         End;

         // -> Ramon - 25/05/2006 17:50
         //    Se a aliquota de ICMS estiver dIferente (ECF e Sistema) e
         // não tiver Redução de Base de Cálculo.
         If ( Arredondar( lrVlrAliquota, 2 ) <> Arredondar( lsdtsTemp.FieldByName( 'ICMS1' ).AsFloat, 2 ) ) and
            ( lsdtsTemp.FieldByName( 'RedBase' ).AsFloat = 0 ) Then
         Begin
            CaixaMensagem( 'O valor no cadastro ( ' + FormatFloat( '0.00', lsdtsTemp.FieldByName( 'ICMS1' ).AsFloat ) +
                           '% ) da alíquota "' + fsSitTrib + '" dIfere do valor do ECF( ' + FormatFloat( '0.00', lrVlrAliquota ) + '% )!', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'O valor no cadastro ( ' + FormatFloat( '0.00', lsdtsTemp.FieldByName( 'ICMS1' ).AsFloat ) +
                                    '% ) da alíquota "' + fsSitTrib + '" dIfere do valor do ECF( ' + FormatFloat( '0.00', lrVlrAliquota ) + '% )!';
               fsLabel.Update;
            End;
            FreeAndNil( lsdtsTemp );
            Exit;
         End;
         // <- Se a aliquota de ICMS estiver dIferente (ECF e Sistema) e
         // não tiver Redução de Base de Cálculo.

         FreeAndNil( lsdtsTemp );
      End;
   End;

   If frQuant <=0 Then
   Begin
      CaixaMensagem( 'Quantidade do item para o ECF não informado', ctAviso, [ cbOk ], 0 );
      exit;
   End;
   If fiQtdeDecimais < 0 Then
   Begin
      CaixaMensagem( 'Quantidade de decimais do item para o ECF não informado', ctAviso, [ cbOk ], 0 );
      exit;
   End;
   If frPreco <=0 Then
   Begin
      CaixaMensagem( 'Preço do item para o ECF não informado', ctAviso, [ cbOk ], 0 );
      exit;
   End;

   Case fFabricanteECF Of
      feBematech :
      Begin
       // -> Aumenta a descricao do item
        If Length( Trim( fsDescricaoItem ) ) > 29 Then
        Begin
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Aumentando a descrição do item no cupom...';
              fsLabel.Update;
           End;

           liRetorno := Bematech_FI_AumentaDescricaoItem( Trim( fsDescricaoItem ) + #13 );
           If ( liRetorno <> 0 ) and
              ( liRetorno <> 1 ) Then
           Begin
              CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar aumentar a descrição do item "' + fsCodItem + '" no ECF!!!', ctErro, [ cbOK ], 0 );
              Exit;
           End;
        End;
        // <- Aumenta a descricao do item

        // -> Imprimindo o item
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Imprimindo de item no cupom...';
           fsLabel.Update;
        End;

        { *** O Desconto foi passado em R$ (Valor) para que não
              tivessemos problema com arredondamento. *** }
        liRetorno := Bematech_FI_VendeItem( fsCodItem,
                                            Copy( fsDescricaoItem, 1, 29 ),
                                            fsSitTrib,
                                            'F',
                                            FormatFloat( '0000000', ( frQuant * 1000 ) ),
                                            fiQtdeDecimais,
                                            FormatFloat( '000', ( frPreco * 100 ) ),
                                            '$',
                                            FormatFloat( '00000000', frVlr_Desc * 100 ) );
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar imprimir o item "' + fsCodItem + '" no ECF!!!', ctErro, [ cbOK ], 0 );
           Exit;
        End;

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
           fsLabel.Update;;
        End;

        lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
        If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
        Begin
           USER_VendeItem := False;
           CaixaMensagem( lsErro, ctAviso, [ cbOk ], 0 );
           Exit;
        End;
        // <- Imprimindo o item
      End;
      feCorisco :
      Begin
         {lsMandarFiscal := #27 + '0I' + IncZero( fsCodItem, 6 ) + Copy( fsDescricaoItem, 1, 48 ) + #13+#13+#13 + fsSitTrib + IncZero( IntToStr( Round( frQuant * 1000 ) ), 6 ) + IncZero( '0', 9 ) + IncZero( IntToStr( Round( frPreco * 100 ) ), 9 );
         If fiQtdeDecimais = 3 Then // Item especial  - 3 Casas decimais 0,000
            lsMandarFiscal := #27 + '0i' + IntToStr( StrToInt( fsCodItem ) - 1 ) + fsSitTrib + IncZero( IntToStr( Round( frQuant * 1000 ) ), 6 )+ IncZero( '0', 9 ) + IncZero( IntToStr( Round( frPreco * 1000 ) ), 9 );
         //Oi0T01000000
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando comando de impressão de item do cupom ( ' + lsMandarFiscal + ' )...';
            fsLabel.Update;
         End;
         eEnviaString( lsMandarFiscal );}
      End;
      feDaruma :
      Begin
        // -> Aumenta a descricao do item
        If Length( Trim( fsDescricaoItem ) ) > 29 Then
        Begin
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Aumentando a descrição do item no cupom...';
              fsLabel.Update;
           End;

           liRetorno := Daruma_FI_AumentaDescricaoItem( PChar( Trim( fsDescricaoItem ) + #13 ) );
           If ( liRetorno <> 1 ) Then
           Begin
              CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar aumentar a descrição do item "' + fsCodItem + '" no ECF!!!', ctErro, [ cbOK ], 0 );
              Exit;
           End;
        End;
        // <- Aumenta a descricao do item

        // -> Imprimindo o item
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Imprimindo de item no cupom...';
           fsLabel.Update;
        End;

        { *** O Desconto foi passado em R$ (Valor) para que não
              tivessemos problema com arredondamento. *** }
        liRetorno := Daruma_FI_VendeItem( fsCodItem,
                                          Copy( fsDescricaoItem, 1, 29 ),
                                          fsSitTrib,
                                          'F',
                                          FormatFloat( '0000000', ( frQuant * 1000 ) ),
                                          fiQtdeDecimais,
                                          FormatFloat( '000', ( frPreco * 100 ) ),
                                          '$',
                                          FormatFloat( '00000000', frVlr_Desc * 100 ) );
        If ( liRetorno <> 1 ) Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar imprimir o item "' + fsCodItem + '" no ECF!!!', ctErro, [ cbOK ], 0 );
           Exit;
        End;
        // <- Imprimindo o item
     End;
     feSweda :
     Begin
        // -> Aumenta a descricao do item
        If Length( Trim( fsDescricaoItem ) ) > 29 Then
        Begin
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Aumentando a descrição do item no cupom...';
              fsLabel.Update;
           End;

           liRetorno := SWEDA_AumentaDescricaoItem( Trim( fsDescricaoItem ) + #13 );
           If ( liRetorno <> 0 ) and
              ( liRetorno <> 1 ) Then
           Begin
              CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar aumentar a descrição do item "' + fsCodItem + '" no ECF!!!', ctErro, [ cbOK ], 0 );
              Exit;
           End;
        End;
        // <- Aumenta a descricao do item

        // -> Imprimindo o item
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Imprimindo de item no cupom...';
           fsLabel.Update;
        End;

        { *** O Desconto foi passado em R$ (Valor) para que não
              tivessemos problema com arredondamento. *** }
        liRetorno := SWEDA_VendeItem( fsCodItem,
                                            Copy( fsDescricaoItem, 1, 29 ),
                                            fsSitTrib,
                                            'F',
                                            FormatFloat( '0000000', ( frQuant * 1000 ) ),
                                            fiQtdeDecimais,
                                            FormatFloat( '000', ( frPreco * 100 ) ),
                                            '$',
                                            FormatFloat( '00000000', frVlr_Desc * 100 ) );
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar imprimir o item "' + fsCodItem + '" no ECF!!!', ctErro, [ cbOK ], 0 );
           Exit;
        End;

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
           fsLabel.Update;;
        End;

        lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
        If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
        Begin
           USER_VendeItem := False;
           CaixaMensagem( lsErro, ctAviso, [ cbOk ], 0 );
           Exit;
        End;
        // <- Imprimindo o item
     End;
     feElgin :
     Begin
        fsSitTrib := UpperCase( Trim( fsSitTrib ) );
        If ( fsSitTrib <> 'FF' ) And ( fsSitTrib <> 'II' ) And ( fsSitTrib <> 'NN' ) Then
        Begin
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Consultando alíquotas cadastradas no ECF ( TX : ' + lsMandarFiscal + ' )...';
              fsLabel.Update;
           End;
           lsAliquotas := IncDigito( ' ', ' ', 79, 0 );
           liRetorno := Elgin_FI_RetornoAliquotas( lsAliquotas );
           If liRetorno <> 1 Then
           Begin
              CaixaMensagem( 'Não é possível obter as alíquotas cadastradas no ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
              USER_VendeItem := False;
              Exit;
           End;

           lsTemp := '';
           liCont := 0;
           lrVlrAliquota := 0;
           lsAliquotas := Trim( lsAliquotas );
           While Length( lsAliquotas ) > 0 Do
           Begin
              lsTemp := lsTemp + #13 + 'T0' + IntToStr( liCont ) + ' : ' + Copy( lsAliquotas, 1, 2 ) + ',' + Copy( lsAliquotas, 3, 2 ) + ' %';
              If StrToIntDef( fsSitTrib, 1000 ) = liCont Then
                 lrVlrAliquota := StrToFloatDef( Copy( lsAliquotas, 1, 4 ), 0 ) / 100;

              liCont := liCont + 1;
              Delete( lsAliquotas, 1, 5 );
           End;
           If StrToIntDef( fsSitTrib, 1000 ) > liCont Then
           Begin
              CaixaMensagem( 'A alíquota "' + fsSitTrib + '" não está cadastrada no ECF!', ctInforma, [ cbOk ], 0 );
              If fsLabel <> Nil Then
              Begin
                 fsLabel.Caption := 'A alíquota "' + fsSitTrib + '" não está cadastrada no ECF!';
                 fsLabel.Update;
              End;
              USER_VendeItem := False;
              Exit;
           End;

           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Validando dados da alíquota...';
              fsLabel.Update;
           End;

           lqrySitTributaria               := TSQLQuery.Create( Application );
           lqrySitTributaria.SQLConnection := frmprincipal.dbxprincipal;

           ldspSitTributaria         := TDataSetProvider.Create( Application );
           ldspSitTributaria.DataSet := lqrySitTributaria;
           ldspSitTributaria.Name    := 'ldspSitTributaria';

           lcdsSitTributaria         := TClientDataSet.Create( Application );

           Try
              Try
                 lqrySitTributaria.Close;
                 lqrySitTributaria.Params.Clear;
                 lqrySitTributaria.SQL.Text := 'SELECT AliqICMS.ICMS1, ' +
                                               '       AliqICMS.RedBase ' +
                                               'FROM T_AliquotasECF AliqECF, ' +
                                               '     T_AliquotasICMS AliqICMS '+
                                               'WHERE AliqECF.Cod_ImpFiscal=:parCod_ImpFiscal AND '+
                                               '      AliqECF.Cod_AliquotaECF=:parCod_AliquotaECF AND '+
                                               '      AliqICMS.Codigo=AliqECF.Cod_AliquotaICMS';
                 lqrySitTributaria.ParamByName( 'parCod_AliquotaECF' ).AsString := fsSitTrib;
                 //lqrySitTributaria.ParamByName( 'parCod_ImpFiscal' ).AsString   := FormatFloat( '00', Registro( 'Modelo_ImpFiscalCheckout', trInteger, -1, raLer ) );

                 lcdsSitTributaria.Close;
                 lcdsSitTributaria.ProviderName := ldspSitTributaria.Name;
                 lcdsSitTributaria.Open;
                 If lcdsSitTributaria.IsEmpty Then
                 Begin
                    CaixaMensagem( 'Alíquota "' + fsSitTrib + '" não cadastrada!', ctAviso, [ cbOk ], 0 );
                    If fsLabel <> Nil Then
                    Begin
                       fsLabel.Caption := 'Alíquota "' + fsSitTrib + '" não cadastrada!';
                       fsLabel.Update;
                    End;

                    USER_VendeItem := False;
                    Exit;
                 End;
                 If Arredondar( lrVlrAliquota, 2 ) <> Arredondar( lcdsSitTributaria.FieldByName( 'ICMS1' ).AsFloat, 2 ) Then
                 Begin
                    CaixaMensagem( 'O valor no cadastro ( ' + FormatFloat( '0.00', lcdsSitTributaria.FieldByName( 'ICMS1' ).AsFloat ) +
                                   '% ) da alíquota "' + fsSitTrib + '" dIfere do valor do ECF( ' + FormatFloat( '0.00', lrVlrAliquota ) + '% )!', ctAviso, [ cbOk ], 0 );
                    If fsLabel <> Nil Then
                    Begin
                       fsLabel.Caption := 'O valor no cadastro ( ' + FormatFloat( '0.00', lcdsSitTributaria.FieldByName( 'ICMS1' ).AsFloat ) +
                                            '% ) da alíquota "' + fsSitTrib + '" dIfere do valor do ECF( ' + FormatFloat( '0.00', lrVlrAliquota ) + '% )!';
                       fsLabel.Update;
                    End;

                    USER_VendeItem := False;
                    Exit;
                 End;
              Except
                 On E: Exception Do
                 Begin
                    CaixaMensagem( 'Não foi possível comparar os valores das Alíquotas com o ECF! ' + #13 + E.Message, ctErro, [ cbOk ], 0 );
                    If fsLabel <> Nil Then
                    Begin
                       fsLabel.Caption := 'Não foi possível comparar os valores das Alíquotas com o ECF!';
                       fsLabel.Update;
                    End;

                    USER_VendeItem := False;
                    Exit;
                 End;
              end;
           Finally
              lcdsSitTributaria.Close;
              FreeAndNil( lcdsSitTributaria );

              FreeAndNil( ldspSitTributaria );

              lqrySitTributaria.Close;
              FreeAndNil( lqrySitTributaria );
           end;
        End;

        If frQuant <=0 Then
        Begin
           CaixaMensagem( 'Qtde. do item para o ECF não informada!', ctAviso, [ cbOk ], 0 );
           USER_VendeItem := False;
           Exit;
        End;
        If fiQtdeDecimais < 0 Then
        Begin
           CaixaMensagem( 'Qtde de decimais do item para o ECF não informada!', ctAviso, [ cbOk ], 0 );
           USER_VendeItem := False;
           Exit;
        End;
        If frPreco <= 0 Then
        Begin
           CaixaMensagem( 'Preço do item para o ECF não informado!', ctAviso, [ cbOk ], 0 );
           USER_VendeItem := False;
           Exit;
        End;

        // -> Imprimindo o item
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Imprimindo de item no cupom...';
           fsLabel.Update;
        End;

        liBasePreco := 10;
        For liCont := 1 To fiQtdeDecimais - 1 Do
           liBasePreco := liBasePreco * 10;

        If ( frQuant * frPreco ) <> ( Arredondar( frQuant * frPreco, 2 ) ) Then
           frQuant := ( Arredondar( frQuant * frPreco, 2 ) / frPreco ) + 0.0005;

       lsQuantidade := FormatFloat( '0000.000',( frQuant ) );

       liRetorno := Elgin_FI_VendeItem( fsCodItem,
                                           Copy( fsDescricaoItem, 1, 29 ),
                                           fsSitTrib,
                                           'F',
                                           lsQuantidade,
                                           fiQtdeDecimais,
                                           FormatFloat( '00000000', ( frPreco * liBasePreco ) ),
                                           '%',
                                           FormatFloat( '0000', 0 ) );
        If liRetorno <> 1 Then
        Begin

           lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
           If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
           Begin
              USER_VendeItem := False;
              CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
              Exit;
           End;

           //CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar vender item  "' + fsCodItem + '" no ECF!', ctErro, [ cbOK ], 0 );
           //USER_VendeItem := False;
           //Exit;
        End;

        lsUltimoItem := IncDigito( '', '', 4, 0 );
        liRetorno    := Elgin_FI_UltimoItemVendido( lsUltimoItem );
        lsUltimoItem := Trim( lsUltimoItem );
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar capturar o ultimo item vendido "' + fsCodItem + '" no ECF!', ctErro, [ cbOK ], 0 );
           USER_VendeItem := False;
           Exit;
        End;

        If Arredondar( frVlr_Desc, 2  ) > 0 Then
        Begin
           AcresDesc     := 'D';
           TipoAcresDesc := '$';
           liRetorno     := Elgin_FI_DescontoItem( lsUltimoItem, AcresDesc, TipoAcresDesc, FormatFloat( '0', frVlr_Desc * 100 ) );
           If liRetorno <> 1 Then
           Begin
             CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar enviar o desconto do item "' + fsCodItem + '" no ECF!', ctErro, [ cbOK ], 0 );
             USER_VendeItem := False;
             Exit;
           End;
        End;

        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar imprimir o item "' + fsCodItem + '" no ECF!', ctErro, [ cbOK ], 0 );
           USER_VendeItem := False;
           Exit;
        End;
        // <- Imprimindo o item

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
           fsLabel.Update;;
        End;

        lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
        If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
        Begin
           USER_VendeItem := False;
           CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
           Exit;
        End;
     End;
     feEpson :
     Begin
        fsSitTrib := Trim( fsSitTrib );
        If ( fsSitTrib <> 'F' ) And ( fsSitTrib <> 'I' ) And ( fsSitTrib <> 'N' ) Then
        Begin
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Consultando alíquotas cadastradas no ECF ( TX : ' + lsMandarFiscal + ' )...';
              fsLabel.Update;
           End;
           lsAliquotas := IncDigito( '', ' ', 553, 0 );
           liRetorno := Epson_FI_ObterTabelaAliquotas( lsAliquotas );
           If liRetorno <> 0 Then
           Begin
              CaixaMensagem( 'Não é possível obter as alíquotas cadastradas no ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
              USER_VendeItem := False;
              Exit;
           End;

           lrVlrAliquota := -1;
           lsAliquotas := Trim( lsAliquotas );
           While Length( lsAliquotas ) > 0 Do
           Begin
              If UpperCase( Trim( fsSitTrib ) ) = UpperCase( Copy( lsAliquotas, 1, 2 ) ) Then
              Begin
                 lrVlrAliquota := StrToFloatDef( Copy( lsAliquotas, 3, 4 ), 0 ) / 100;
                 Break;
              End;

              Delete( lsAliquotas, 1, 23 );
           End;
           If Arredondar( lrVlrAliquota, 2 ) <= 0 Then
           Begin
              CaixaMensagem( 'A alíquota "' + fsSitTrib + '" não está cadastrada no ECF!', ctInforma, [ cbOk ], 0 );
              If fsLabel <> Nil Then
              Begin
                 fsLabel.Caption := 'A alíquota "' + fsSitTrib + '" não está cadastrada no ECF!';
                 fsLabel.Update;
              End;
              USER_VendeItem := False;
              Exit;
           End;

           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Validando dados da alíquota...';
              fsLabel.Update;
           End;

           lsdtsTemp                     := TSimpleDataSet.Create( Nil );
           lsdtsTemp.Connection          := frmprincipal.dbxprincipal;
           lsdtsTemp.DataSet.CommandText := 'SELECT AliqICMS.ICMS1, ' +
                                            'AliqICMS.RedBase ' +
                                            'FROM T_AliquotasECF AliqECF, ' +
                                            '     T_AliquotasICMS AliqICMS '+
                                            'WHERE AliqECF.Cod_ImpFiscal=:parCod_ImpFiscal AND '+
                                            '      AliqECF.Cod_AliquotaECF=:parCod_AliquotaECF AND '+
                                            '      AliqICMS.Codigo=AliqECF.Cod_AliquotaICMS';
           //lsdtsTemp.DataSet.ParamByName( 'parCod_Emp' ).AsString         := gsCod_Emp;
           //lsdtsTemp.DataSet.ParamByName( 'parCod_ImpFiscal' ).AsString   := FormatFloat( '00', Registro( 'Modelo_ImpFiscalCheckout', trInteger, -1, raLer ) );
           lsdtsTemp.DataSet.ParamByName( 'parCod_AliquotaECF' ).AsString := fsSitTrib;
           lsdtsTemp.Open;
           If lsdtsTemp.IsEmpty Then
           Begin
              CaixaMensagem( 'Alíquota "' + fsSitTrib + '" do item "' + fsCodItem + '" não cadastrada!', ctAviso, [ cbOk ], 0 );
              If fsLabel <> Nil Then
              Begin
                 fsLabel.Caption := 'Alíquota "' + fsSitTrib + '" do item "' + fsCodItem + '" não cadastrada!';
                 fsLabel.Update;
              End;
              FreeAndNil( lsdtsTemp );
              Exit;
           End;
           FreeAndNil( lsdtsTemp );
        End;

        If frQuant <=0 Then
        Begin
           CaixaMensagem( 'Qtde. do item para o ECF não informada!', ctAviso, [ cbOk ], 0 );
           USER_VendeItem := False;
           Exit;
        End;
        If fiQtdeDecimais < 0 Then
        Begin
           CaixaMensagem( 'Qtde de decimais do item para o ECF não informada!', ctAviso, [ cbOk ], 0 );
           USER_VendeItem := False;
           Exit;
        End;
        If frPreco <= 0 Then
        Begin
           CaixaMensagem( 'Preço do item para o ECF não informado!', ctAviso, [ cbOk ], 0 );
           USER_VendeItem := False;
           Exit;
        End;

        // -> Imprimindo o item
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Imprimindo de item no cupom...';
           fsLabel.Update;
        End;

        liBasePreco := 10;
        For liCont := 1 To fiQtdeDecimais - 1 Do
           liBasePreco := liBasePreco * 10;

       // If giniParam.ReadBool( 'Fiscal', 'RecalculoQtde', False ) Then
        //Begin
           If ( frQuant * frPreco ) <> ( Arredondar( frQuant * frPreco, 2 ) ) Then
              frQuant := ( Arredondar( frQuant * frPreco, 2 ) / frPreco ) + 0.0005;
       // End;

       lsQuantidade := FormatFloat( '0', frQuant * 1000 );
       liRetorno    := Epson_FI_VenderItem( PChar( fsCodItem ),
                                            PChar( Copy ( fsDescricaoItem, 1, 29 ) ),
                                            PChar( lsQuantidade ),
                                            3,
                                            PChar( 'UN' ),
                                            PChar( FormatFloat( '0', frPreco * liBasePreco ) ),
                                            fiQtdeDecimais,
                                            PChar( fsSitTrib ),
                                            1 );


        If Arredondar( frVlr_Desc, 2  ) > 0 Then
        Begin
           liRetorno := Epson_FI_DescontoItem( FormatFloat( '000', frVlr_Desc * 100 ), 2, True, False );
           If liRetorno <> 0 Then
           Begin
             CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar enviar o desconto do item "' + fsCodItem + '" no ECF!', ctErro, [ cbOK ], 0 );
             USER_VendeItem := False;
             Exit;
           End;
        End;
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
           fsLabel.Update;;
        End;

        If liRetorno <> 0 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar imprimir o item "' + fsCodItem + '" no ECF!', ctErro, [ cbOK ], 0 );
           USER_VendeItem := False;
           Exit;
        End;
        // <- Imprimindo o item

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := '';
           fsLabel.Update;
        End;
     End;
   End;
   Result := True;
End;

Function USER_DadosUltimaReducaoZ( fFabricanteECF : TFabricanteECF; var fsDadosUltimaReducaoZ : String; fsLabel: TLabel = Nil ) : Boolean;
var lsDadosUltimaReducaoZ : String;
    lsEstadoECF  : String; 
    liRetorno    : Integer;
Begin
   fsDadosUltimaReducaoZ := '';
   USER_DadosUltimaReducaoZ := False;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Capturando dados da última redução Z do ECF...';
      fsLabel.Update;
   End;

   liRetorno := 0;

   lsDadosUltimaReducaoZ := IncDigito( '', ' ', 631, 0 );
   Case fFabricanteECF Of
      feBematech : liRetorno := Bematech_FI_DadosUltimaReducao( lsDadosUltimaReducaoZ );
      feDaruma   : liRetorno := Daruma_FI_DadosUltimaReducao( lsDadosUltimaReducaoZ );
      feSweda    : liRetorno := SWEDA_DadosUltimaReducao( lsDadosUltimaReducaoZ );
      feElgin    : liRetorno := Elgin_FI_DadosUltimaReducao( lsDadosUltimaReducaoZ );
      feEpson    :
      Begin
         lsDadosUltimaReducaoZ := IncDigito( '', ' ', 1167, 0 );
         liRetorno             := Epson_FI_DadosUltimaReducao( lsDadosUltimaReducaoZ );
         If liRetorno <> 0 Then // Deu Errado
         Begin
            lsEstadoECF  := IncDigito( '', ' ', 50, 0 );
            liRetorno := Epson_FI_ObterEstadoImpressora( lsEstadoECF );
            If liRetorno <> 0 Then // Deu Errado
            Begin
               CaixaMensagem( 'Após consultar os Dados da Última Redução Z ' +
                              'não foi possível obter o retorno do estado do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := '';
                  fsLabel.Update;
               End;
               Exit;
            End;
         End;
      End;
   End;
   lsDadosUltimaReducaoZ := Trim( lsDadosUltimaReducaoZ );

   // BEMATECH : Na MP 25 o firmware está com problema está retornando "0" mesmo
   // quando comando está correto
   If ( ( ( fFabricanteECF <> feBematech ) And ( fFabricanteECF <> feEpson ) ) And
        ( liRetorno <> 1 ) ) Or
      ( ( fFabricanteECF = feBematech ) And
        ( ( liRetorno <> 0 ) And ( liRetorno <> 1 ) ) ) Then // Deu errado
      //( ( fFabricanteECF = feEpson ) And
      //  ( liRetorno <> 0 ) ) Then // Deu errado
   Begin
      CaixaMensagem( 'Não é possível ler os dados da última redução Z no ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctInforma, [ cbOk ], 0 );
      Exit;
   End
   Else
   Begin
      fsDadosUltimaReducaoZ := lsDadosUltimaReducaoZ;
      USER_DadosUltimaReducaoZ := True;
   End;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;
End;

Function USER_ImportarUltimaReducaoZ( fFabricanteECF : TFabricanteECF; fbDataMovAtual : Boolean; fsLabel : TLabel = Nil ) : Boolean;
Var lsdtsReducoesZ      : TSimpleDataSet;
    lsdtsTemp           : TSimpleDataSet;
    trdNrTransacao: TTransactionDesc;

    lqryModific: TSQLQuery;

    ldData_UltimaReducao: TDate;
    ldData_MovReducao   : TDate;
    lsHora_UltimaReducao: String;
    lrVlr_SubsTributaria: Real;
    lrVlr_Isentas       : Real;
    lrVlr_NaoIncidencia : Real;
    lrVlr_TotalISS      : Real;
    lrVlr_ISS           : Real;
    lrVlr_VendaLiquida  : Real;
    lrVlr_BaseICMS      : Real;
    lrVlr_ICMS          : Real;
    lrVlr_GrandeTotal   : Real;
    lrVlr_Cancelamentos : Real;
    lrVlr_Descontos     : Real;

    liRetorno           : Integer;
    liCont              : Integer;
    liCont2             : Integer;
    liQtdeAliq          : Integer;
    lsSerieECF          : String;
    lsCOOf              : String;
    lsCOOi              : String;
    lsTextoOBS          : String;
    lsNumeroReducaoZ    : String;
    lsCupomReducaoZ     : String;
    lsData, lsHora      : String;
    lsNumeroEquipamento : String;
    lsReinicioOperacao  : String;
    lsNrCaixa           : String;
    lrVlr_VendaBruta    : Real;

    llstVlr_Tributados, llstArqRetorno: TStringList;
    lsAliquota, lsValor, lsIndiceISS, lsTipo_Tributacao: String;
    lsAliquotasISS, lsTextoAliquota, lsTextoValores, lsTextoTMP: String;
    lrAliquota, lrValor: Real;

    lsDadosReducaoZ     : String;
Begin
   {
      Esta função não possui tratamento de transações, ele deve ser feito
   na rotina que chama a função.
   }

   USER_ImportarUltimaReducaoZ := False;

   ldData_MovReducao    := StrToDate( '01/01/1980' );
   ldData_UltimaReducao := StrToDate( '01/01/1980' );
   llstVlr_Tributados   := TStringList.Create;
   llstArqRetorno       := TStringList.Create;

   lrVlr_VendaBruta     := 0;
   lrVlr_VendaLiquida   := 0;
   lrVlr_SubsTributaria := 0;
   lrVlr_NaoIncidencia  := 0;
   lrVlr_Isentas        := 0;
   lrVlr_BaseICMS       := 0;
   lrVlr_ICMS           := 0;
   lrVlr_TotalISS       := 0;
   lrVlr_ISS            := 0;
   lrVlr_GrandeTotal    := 0;
   lrVlr_Cancelamentos  := 0;
   lrVlr_Descontos      := 0;

   Case fFabricanteECF Of
      feBematech :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o nº de série do ECF...';
            fsLabel.Update;
         End;

         // -> Capturando o Nº de Série
         lsSerieECF := IncDigito( '', ' ', 15, 0 );
         liRetorno  := Bematech_FI_NumeroSerie( lsSerieECF );
         lsSerieECF := Trim( lsSerieECF );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         // -> Capturando o Nº de Série

         gsModeloECF := IncDigito( '', ' ', 10, 0 );
         Bematech_FI_ModeloImpressora( gsModeloECF );
         gsModeloECF := Trim( gsModeloECF );

         // -> Ativando parâmetro para impressoras MFD
         If ( Trim( gsModeloECF ) <> '' ) And
            ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
            ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP2000FI' ) ) ) And
            ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) Then
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Capturando o nº de série do ECF( MFD )...';
               fsLabel.Update;
            End;

            lsSerieECF := IncDigito( '', ' ', 20, 0 );
            liRetorno  := Bematech_FI_NumeroSerieMFD( lsSerieECF );
            lsSerieECF := Trim( lsSerieECF );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Não é possível obter o nº de série do ECF MFD! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := '';
                  fsLabel.Update;
               End;
               Exit;
            End;
         End;
         // <- Capturando o Nº de Série ( MP-25 )

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando a data da última redução...';
            fsLabel.Update;
         End;

         lsData    := IncDigito( '', ' ', 6, 0 );
         lsHora    := IncDigito( '', ' ', 6, 0 );
         liRetorno := Bematech_FI_DataHoraReducao( lsData, lsHora );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;

         // -> Se a data estiver em '000000' é porque não há redução z para ser capturada
         If lsData = '000000' Then
            exit;
         // <- Se a data estiver em '000000' é porque não há redução z para ser capturada

         ldData_UltimaReducao := StrToDate( Copy( lsData, 1, 2 ) + '/' +
                                            Copy( lsData, 3, 2 ) + '/' +
                                            '20' + Copy( lsData, 5, 2 ) );
         lsHora_UltimaReducao := Copy( lsHora, 1, 2 ) + ':' +
                                 Copy( lsHora, 3, 2 ) + ':' +
                                 Copy( lsHora, 5, 2 );

         lsDadosReducaoZ := IncDigito( '', ' ', 631, 0 );
         liRetorno       := Bematech_FI_DadosUltimaReducao( lsDadosReducaoZ );
         // Na MP 25 o firmware está com problema está retornando "0" mesmo
         // quando comando está correto
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao ler os dados da última Redução Z', ctErro, [ cbOK ], 0 );
            Exit;
         End;

         {
              Modo de Redução Z.........................:   2 bytes (se 00 redução por comando, se 01 redução automática)
         123
         01,
         ----
              Grande Total..............................:  18 bytes
                1         2
         456789.123456789.12
         000000000000872221,
         ----
              Cancelamentos.............................:  14 bytes
         2       3
         3456789.1234567
         00000000066018,
         ----
              Descontos.................................:  14 bytes
         3     4      5
         89.123456789.12
         00000000000000,
         ----
              Tributos..................................:  64 bytes
         5       6         7         8         9         10        11
         3456789.123456789.123456789.123456789.123456789.123456789.1234567
         0000000000000000000000000000000000000000000000000000000000000000,
         ----
              Totalizadores Parciais Tributados.........: 266 bytes
         11  12        13        14        15        16        17        18        19        20        21        22        23        24        25         26       27        28        29        30        31        32        33        34        35        36        37        38
         89.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.1234
         00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041190000000000000000000000000000,
         123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234
         ----
              Sangria...................................:  14 bytes
         38    39      40
         56789.12456789.
         00000000000000,
         ----
              Suprimentos...............................:  14 bytes
         40       41
         123456789.12345
         00000000000000,
         ----
              Totalizadores não sujeitos ao ICMS........: 126 bytes
         41   42        43        44        45        46        47        48        49        50        51        52        53        54
         6789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.12
         000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
         ----
              Contadores dos TP's não sujeitos ao ICMSl.:  36 bytes
         54        55        56      57
         3456789.123456789.123456789.123456789
         000000000000000000000000000000000000,
         ----
              Contador de ordem de operação.............:   6 bytes
         58
         .123456
         000056,
         ----
              Contador de operações não sujeitas ao ICMS:   6 bytes
         58  59
         789.123
         000008,
         ----
              Número de Alíquotas cadastradas...........:   2 bytes
         59
         45
         00
         ----
              Data do movimento.........................:   6 bytes
         59   60
         6789.12
         270404,
         ----
              Acréscimos................................:  14 bytes
         60      61
         3456789.1234567
         00000000000000,
         ----
              Acréscimo financeiro......................:  14 bytes
         61 62        63
         89.123456789.1
         00000000000000
         }

         lrVlr_GrandeTotal    := StrToFloat( Copy( lsDadosReducaoZ,  4, 18 ) ) / 100;
         lrVlr_Cancelamentos  := StrToFloat( Copy( lsDadosReducaoZ, 23, 14 ) ) / 100;
         lrVlr_Descontos      := StrToFloat( Copy( lsDadosReducaoZ, 38, 14 ) ) / 100;
         lsCupomReducaoZ      := Copy( lsDadosReducaoZ, 579, 6 );

         lsData               := Copy( lsDadosReducaoZ, 596, 6 );
         ldData_MovReducao    := StrToDate( Copy( lsData, 1, 2 ) + '/' +
                                            Copy( lsData, 3, 2 ) + '/' +
                                            '20' + Copy( lsData, 5, 2 ) );
      End;
      feDaruma :
      Begin
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Capturando o nº de série do ECF...';
           fsLabel.Update;
        End;

        lsSerieECF := IncDigito( '', ' ', 15, 0 );
        liRetorno  := Daruma_FI_NumeroSerie( lsSerieECF );
        If ( liRetorno <> 0 ) and
           ( liRetorno <> 1 ) Then
        Begin
           CaixaMensagem( 'Não é possível obter o nº de série do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := '';
              fsLabel.Update;
           End;
           Exit;
        End;

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Capturando a data da última redução...';
           fsLabel.Update;
        End;

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Capturando a data da última redução...';
           fsLabel.Update;
        End;

        lsData    := IncDigito( '', ' ', 6, 0 );
        lsHora    := IncDigito( '', ' ', 6, 0 );
        liRetorno := Daruma_FI_DataHoraReducao( lsData, lsHora );
        If ( liRetorno <> 1 ) Then
        Begin
           CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := '';
              fsLabel.Update;
           End;
           Exit;
        End;

        ldData_UltimaReducao := StrToDate( Copy( lsData, 1, 2 ) + '/' +
                                           Copy( lsData, 3, 2 ) + '/' +
                                           '20' + Copy( lsData, 5, 2 ) );
        lsHora_UltimaReducao := Copy( lsHora, 1, 2 ) + ':' +
                                Copy( lsHora, 3, 2 ) + ':' +
                                Copy( lsHora, 5, 2 );

        lsDadosReducaoZ := IncDigito( '', ' ', 631, 0 );
        liRetorno       := Daruma_FI_DadosUltimaReducao( lsDadosReducaoZ );
        If ( liRetorno <> 1 ) Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao ler os dados da última Redução Z', ctErro, [ cbOK ], 0 );
           Exit;
        End;

        {
             Modo de Redução Z.........................:   2 bytes (se 00 redução por comando, se 01 redução automática)
        123
        01,
        ----
             Grande Total..............................:  18 bytes
               1         2
        456789.123456789.12
        000000000000872221,
        ----
             Cancelamentos.............................:  14 bytes
        2       3
        3456789.1234567
        00000000066018,
        ----
             Descontos.................................:  14 bytes
        3     4      5
        89.123456789.12
        00000000000000,
        ----
             Tributos..................................:  64 bytes
        5       6         7         8         9         10        11
        3456789.123456789.123456789.123456789.123456789.123456789.1234567
        0000000000000000000000000000000000000000000000000000000000000000,
        ----
             Totalizadores Parciais Tributados.........: 266 bytes
        11  12        13        14        15        16        17        18        19        20        21        22        23        24        25         26       27        28        29        30        31        32        33        34        35        36        37        38
        89.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.1234
        00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041190000000000000000000000000000,
        123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234
        ----
             Sangria...................................:  14 bytes
        38    39      40
        56789.12456789.
        00000000000000,
        ----
             Suprimentos...............................:  14 bytes
        40       41
        123456789.12345
        00000000000000,
        ----
             Totalizadores não sujeitos ao ICMS........: 126 bytes
        41   42        43        44        45        46        47        48        49        50        51        52        53        54
        6789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.12
        000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
        ----
             Contadores dos TP's não sujeitos ao ICMSl.:  36 bytes
        54        55        56      57
        3456789.123456789.123456789.123456789
        000000000000000000000000000000000000,
        ----
             Contador de ordem de operação.............:   6 bytes
        58
        .123456
        000056,
        ----
             Contador de operações não sujeitas ao ICMS:   6 bytes
        58  59
        789.123
        000008,
        ----
             Número de Alíquotas cadastradas...........:   2 bytes
        59
        45
        00
        ----
             Data do movimento.........................:   6 bytes
        59   60
        6789.12
        270404,
        ----
             Acréscimos................................:  14 bytes
        60      61
        3456789.1234567
        00000000000000,
        ----
             Acréscimo financeiro......................:  14 bytes
        61 62        63
        89.123456789.1
        00000000000000
        }

        lrVlr_GrandeTotal    := StrToFloat( Copy( lsDadosReducaoZ,  4, 18 ) ) / 100;
        lrVlr_Cancelamentos  := StrToFloat( Copy( lsDadosReducaoZ, 23, 14 ) ) / 100;
        lrVlr_Descontos      := StrToFloat( Copy( lsDadosReducaoZ, 38, 14 ) ) / 100;
        lsCupomReducaoZ      := Copy( lsDadosReducaoZ, 579, 6 );

        lsData               := Copy( lsDadosReducaoZ, 596, 6 );
        ldData_MovReducao    := StrToDate( Copy( lsData, 1, 2 ) + '/' +
                                           Copy( lsData, 3, 2 ) + '/' +
                                           '20' + Copy( lsData, 5, 2 ) );
     End;
     feSweda :
     Begin
        // -> Lendo os dados da ultima Redução Z
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Lendo os dados da última Redução Z...';
           fsLabel.Update;
        End;

        lsDadosReducaoZ := IncDigito( '', ' ', 631, 0 );
        liRetorno       := SWEDA_DadosUltimaReducao( lsDadosReducaoZ );
        // Na MP 25 o firmware está com problema está retornando "0" mesmo
        // quando comando está correto
        If ( liRetorno <> 0 ) And
           ( liRetorno <> 1 ) Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao ler os dados da última Redução Z!', ctErro, [ cbOK ], 0 );
           Exit;
        End;
        // <- Lendo os dados da ultima Redução Z

        // -> Verificando se existe a data da última redução Z( Impressora nova( zerada ) não tem )
        If Copy( lsDadosReducaoZ, 596, 6 ) = '000000' Then
        Begin
           USER_ImportarUltimaReducaoZ := True;
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := '';
              fsLabel.Update;
           End;
           Exit;
        End;
        // <- Verificando se existe a data da última redução Z( Impressora nova( zerada ) não tem )

        {frmMenu.BarraStatus.Panels[ 3 ].Text := 'Capturando data de movimento do ECF...';
        frmMenu.BarraStatus.Update;

        lsData    := IncDigito( '', ' ', 6, 0 );
        liRetorno := SWEDA_DataMovimento( lsData );
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar ler a data de movimento do ECF!', ctErro, [ cbOK ], 0 );
           Exit;
        End;
        lsData := Copy( lsData, 1, 2 ) + '/' + Copy( lsData, 3, 2 ) + '/' + Copy( lsData, 5, 2 );

        If ( lsData = '00/00/00' ) And // O movimento ainda não foi aberto
           ( Copy( lsDadosReducaoZ, 1, 2 ) = '01' ) Then // A redução Z foi tirada automaticamente pelo ECF
        Begin
           // -> Imprimindo a Redução Z
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Requisitando gravação dos dados de fechamento do dia...';
              fsLabel.Update;
           End;

           liRetorno := SWEDA_FechamentoDoDia;
           If liRetorno <> 1 Then
           Begin
              CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao solicitar da Redução Z para o ECF!', ctErro, [ cbOk ], 0 );
              Exit;
           End;
           // <- Imprimindo Redução Z
        End;}

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando da data de Mov. da Redução do ECF...';
           fsLabel.Update;
        End;

        ldData_MovReducao := StrToDate( Copy( lsDadosReducaoZ, 596, 2 ) + '/' +
                                        Copy( lsDadosReducaoZ, 598, 2 ) + '/' +
                                        Copy( lsDadosReducaoZ, 600, 2 ) );

        liCont := 0;
        While Trim( lsSerieECF ) = '' Do // Não foi possível obter o número do ECF
        Begin
           liCont := liCont + 1;
           // -> Capturando o Nº de Série
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Capturando o nº de série do ECF( ' + IntToStr( liCont ) + 'ª tentativa )...';
              fsLabel.Update;
           End;

           lsSerieECF := IncDigito( '', ' ', 15, 0 );
           liRetorno  := SWEDA_NumeroSerie( lsSerieECF );
           lsSerieECF := Trim( lsSerieECF );
           If liRetorno <> 1 Then
           Begin
              CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
              If fsLabel <> Nil Then
              Begin
                 fsLabel.Caption := '';
                 fsLabel.Update;
              End;
              Exit;
           End;
           If Trim( lsSerieECF ) <> '' Then
              Break;

           Sleep( 500 );
           If liCont >= 3 Then
           Begin
              liCont := 0;
              If NOT CaixaMensagem( 'Número de Série não retornado pela impressora fiscal, tentar novamente?', ctConfirma, [ cbSimNao ], 0 ) Then
                 Exit;
           End;
        End;
        // <- Capturando o Nº de Série

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Capturando o modelo do ECF...';
           fsLabel.Update;
        End;

        {gsModeloECF := IncDigito( '', ' ', 10, 0 );
        SWEDA_ModeloImpressora( gsModeloECF );
        gsModeloECF := Trim( gsModeloECF );

        // -> Capturando o Nº de Série ( MFD )
        If ( Copy( Trim( lsSerieECF ), 1, 2 ) = 'BE' ) Or
           ( ( Trim( gsModeloECF ) <> '' ) And
             ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
             ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) ) Then
        Begin
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := 'Capturando o Nº de série do ECF MFD( ' + IntToStr( liCont ) + 'ª tentativa )...';
              fsLabel.Update;
           End;

           liCont := 0;
           While Trim( lsSerieECF ) = '' Do // Não foi possível obter o número do ECF
           Begin
              liCont := liCont + 1;

              lsSerieECF := IncDigito( '', ' ', 20, 0 );
              liRetorno  := SWEDA_NumeroSerieMFD( lsSerieECF );
              lsSerieECF := Trim( lsSerieECF );
              If liRetorno <> 1 Then
              Begin
                 CaixaMensagem( 'Não é possível obter o nº de série do ECF MFD! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                 If fsLabel <> Nil Then
                 Begin
                    fsLabel.Caption := '';
                    fsLabel.Update;
                 End;
                 Exit;
              End;
              If Trim( lsSerieECF ) <> '' Then
                 Break;

              Sleep( 500 );
              If liCont >= 3 Then
              Begin
                 liCont := 0;
                 If NOT CaixaMensagem( 'Número de Série MFD não retornado pela impressora fiscal, tentar novamente?', ctConfirma, [ cbSimNao ], 0 ) Then
                    Exit;
              End;
           End;
           // <- Capturando o Nº de Série
        End;
        // <- Capturando o Nº de Série ( MFD )}

        If Trim( lsSerieECF ) = '' Then
           Exit;

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando se os dados da última Redução Z já foram importados...';
           fsLabel.Update;
        End;

        // -> Capturando o Nº do PDV( Caixa )
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Capturando o nº do PDV do ECF...';
           fsLabel.Update;
        End;
        lsNrCaixa := IncDigito( '', ' ', 4, 0 );
        liRetorno := SWEDA_NumeroCaixa( lsNrCaixa );
        lsNrCaixa := Trim( lsNrCaixa );
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Não é possível obter o nº do PDV do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := '';
              fsLabel.Update;
           End;
           Exit;
        End;
        // <- Capturando o Nº do PDV( Caixa )

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Verificando totais da Redução Z do ECF...';
           fsLabel.Update;
        End;

        lrVlr_GrandeTotal    := StrToFloatDef( Copy( lsDadosReducaoZ,  4, 18 ), 0 ) / 100;
        lrVlr_Cancelamentos  := StrToFloatDef( Copy( lsDadosReducaoZ, 23, 14 ), 0 ) / 100;
        lrVlr_Descontos      := StrToFloatDef( Copy( lsDadosReducaoZ, 38, 14 ), 0 ) / 100;
        lsCupomReducaoZ      := Copy( lsDadosReducaoZ, 579, 6 );

        // -> Capturando a data da última Redução Z
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Capturando a data da última redução...';
           fsLabel.Update;
        End;

        lsData    := IncDigito( '', ' ', 6, 0 );
        lsHora    := IncDigito( '', ' ', 6, 0 );
        liRetorno := SWEDA_DataHoraReducao( lsData, lsHora );
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := '';
              fsLabel.Update;
           End;
           Exit;
        End;

        If lsData = '000000' Then // Impressora fiscal sem redução Z
        Begin
           //lsData := '010101';
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := '';
              fsLabel.Update;
           End;
           USER_ImportarUltimaReducaoZ := True;
           Exit;
        End;
        lsData := Copy( lsData, 1, 2 ) + '/' +
                  Copy( lsData, 3, 2 ) + '/' +
                  '20' + Copy( lsData, 5, 2 );

        If StrToDateDef( lsData, StrToDate( '01/01/1990' ) ) = StrToDate( '01/01/1990' ) Then
        Begin
           CaixaMensagem( 'A data última redução Z( "' + lsData + '" ) retornada pelo ECF é inválida! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := '';
              fsLabel.Update;
           End;
           Exit;
        End;

        ldData_UltimaReducao := StrToDate( lsData );
        lsHora_UltimaReducao := Copy( lsHora, 1, 2 ) + ':' +
                                Copy( lsHora, 3, 2 ) + ':' +
                                Copy( lsHora, 5, 2 );
        // <- Capturando a data da última Redução Z

        // -> Lendo os COO Inicial e Final
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Gerando arquivo de retorno Sintegra tipo 60 Mestre...';
           fsLabel.Update;
        End;

        liRetorno := SWEDA_RelatorioTipo60Mestre;
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ler os COOs iniciais e finais da Redução Z( Função : Relatório tipo 60 Mestre )!', ctErro, [ cbOK ], 0 );
           Exit;
        End;

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Localizando arquivo de retorno Sintegra tipo 60 Mestre...';
           fsLabel.Update;
        End;

        If NOT FileExists( 'C:\RETORNO.TXT' ) Then
        Begin
           CaixaMensagem( 'Arquivo "C:\Retorno.txt" não localizado!', ctErro, [ cbOK ], 0 );
           Exit;
        End;

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Lendo arquivo de retorno Sintegra tipo 60 Mestre...';
           fsLabel.Update;
        End;

        llstArqRetorno := TStringList.Create;
        Try
           llstArqRetorno.LoadFromFile( 'C:\Retorno.Txt' );
           While llstArqRetorno.Count > 0 Do
           Begin
              If AnsiLowerCase( Copy( llstArqRetorno[ 0 ], 1, 11 ) ) = AnsiLowerCase( 'COO inicial' ) Then
                 lsCOOi           := Trim( Copy( llstArqRetorno[ 0 ], 28, Length( llstArqRetorno[ 0 ] ) ) )
              Else If AnsiLowerCase( Copy( llstArqRetorno[ 0 ], 1,  9 ) ) = AnsiLowerCase( 'COO final' ) Then
                 lsCOOf           := Trim( Copy( llstArqRetorno[ 0 ], 28, Length( llstArqRetorno[ 0 ] ) ) )
              Else If AnsiLowerCase( Copy( llstArqRetorno[ 0 ], 1, 20 ) ) = AnsiLowerCase( 'Contador de reduções' ) Then
                 lsNumeroReducaoZ := Trim( Copy( llstArqRetorno[ 0 ], 28, Length( llstArqRetorno[ 0 ] ) ) )
              Else If AnsiLowerCase( Copy( llstArqRetorno[ 0 ], 1, 20 ) ) = AnsiLowerCase( 'Reinicio de Operação' ) Then
                 lsReinicioOperacao := Trim( Copy( llstArqRetorno[ 0 ], 28, Length( llstArqRetorno[ 0 ] ) ) );
              llstArqRetorno.Delete( 0 );
           End;
        Finally
           FreeAndNil( llstArqRetorno );
        End;
        // <- Lendo os COO Inicial e Final

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Lendo índices das alíquotas de ISS...';
           fsLabel.Update;
        End;
        lsAliquotasISS := IncDigito( '', ' ', 48, 0 );
        SWEDA_VerificaIndiceAliquotasIss( lsAliquotasISS );
        //liRetorno      := SWEDA_VerificaIndiceAliquotasIss( lsAliquotasISS );

        // -> Capturando os valores vendidos
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Lendo valores das alíquotas de ICMS/ISS do ECF...';
           fsLabel.Update;
        End;

        lsTextoAliquota := Copy( lsDadosReducaoZ, 053, 064 );
        lsTextoValores  := Copy( lsDadosReducaoZ, 118, 266 );

        //Modo de Redução Z (01 redução automática)  => 00,
        //Grande Total                               => 000000000000006091,
        //Cancelamentos                              => 00000000000001,
        //Descontos                                  => 00000000000000,
        //Tributos                                   => 1700250005000000000000000000000000000000000000000000000000000000,
        //Totalizadores Parciais Tributados          => 00000000005040000000000010500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
        //Sangria                                    => 00000000000000,
        //Suprimentos                                => 00000000000000,
        //Totalizadores não sujeitos ao ICMS         => 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
        //Contadores dos TP's não sujeitos ao ICMSl  => 000000000000000000000000000000000000,
        //Contador de ordem de operação              => 000004,
        //Contador de operações não sujeitas ao ICMS => 000000,
        //Número de Alíquotas cadastradas            => 03,
        //Data do movimento                          => 240805,
        //Acréscimos                                 => 00000000000000,
        //Acréscimo financeiro                       => 00000000000000
        {For liCont := 1 To 19 Do
        Begin
           lsValor    := Copy( lsTextoValores, 1, 14 );
           lrValor    := StrToFloatDef( lsValor, 0 ) / 100;
           If liCont <= 16 Then      // Valores tributados ( 17%, 7%, 25%, etc... )
           Begin
              lsAliquota := Copy( lsTextoAliquota, 1, 4 );
              lrAliquota := StrToFloatDef( lsAliquota, 0 ) / 100;

              lsTipo_Tributacao    := 'TRI'; // Tributáveis através de ICMS
              If Pos( FormatFloat( '00', liCont ), lsAliquotasISS ) <> 0 Then
                 lsTipo_Tributacao := 'ISS';

              llstVlr_Tributados.Add( lsAliquota + '|' + lsTipo_Tributacao + '|' + lsValor );
              If UpperCase( Trim( lsTipo_Tributacao ) ) = UpperCase( Trim( 'ISS' ) ) Then
              Begin
                 lrVlr_TotalISS := lrVlr_TotalISS + lrValor;
                 lrVlr_ISS      := lrVlr_ISS + Arredondar( lrValor * ( lrAliquota / 100 ), 2 );
              End
              Else
              Begin
                 lrVlr_BaseICMS := lrVlr_BaseICMS + lrValor;
                 lrVlr_ICMS     := lrVlr_ICMS + Arredondar( lrValor * ( lrAliquota / 100 ), 2 );
              End;
           End
           Else If liCont = 17 Then // Isentas
              lrVlr_Isentas        := lrValor
           Else If liCont = 18 Then // Não incidência
              lrVlr_NaoIncidencia  := lrValor
           Else If liCont = 19 Then // Substituição tributária
              lrVlr_SubsTributaria := lrValor;

           //lrVlr_VendaLiquida := lrValor + lrVlr_VendaLiquida;
           If ( lsTipo_Tributacao <> 'ISS' ) or
              ( liCont >= 17 ) Then // Isentas, Não incidência e Substituição tributária
           Begin
              lrVlr_VendaLiquida := lrVlr_VendaLiquida + lrValor;
           end;

           Delete( lsTextoAliquota, 1,  4 );
           Delete( lsTextoValores , 1, 14 );
        End;}
        // <- Capturando os valores vendidos
     End;
     // <- Lendo os dados da ultima Redução Z
    // -> Lendo os dados da ultima Redução Z
     feElgin :
     Begin
        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Capturando o nº de série do ECF...';
           fsLabel.Update;
        End;

        // -> Capturando o Nº de Série
        lsSerieECF := IncDigito( '', ' ', 20, 0 );
        liRetorno  := Elgin_FI_NumeroSerie( lsSerieECF );
        lsSerieECF := Trim( lsSerieECF );
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := '';
              fsLabel.Update;
           End;
           Exit;
        End;
        // <- Capturando o Nº de Série ( MP-25 )

        If fsLabel <> Nil Then
        Begin
           fsLabel.Caption := 'Capturando a data da última redução...';
           fsLabel.Update;
        End;

        lsData    := IncDigito( '', ' ', 6, 0 );
        lsHora    := IncDigito( '', ' ', 6, 0 );
        liRetorno := Elgin_FI_DataHoraReducao( lsData, lsHora );
        If ( liRetorno <> 0 ) and
           ( liRetorno <> 1 ) Then
        Begin
           CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
           If fsLabel <> Nil Then
           Begin
              fsLabel.Caption := '';
              fsLabel.Update;
           End;
           Exit;
        End;

        // -> Se a data estiver em '000000' é porque não há redução z para ser capturada
        If lsData = '000000' Then
           exit;
        // <- Se a data estiver em '000000' é porque não há redução z para ser capturada

        ldData_UltimaReducao := StrToDate( Copy( lsData, 1, 2 ) + '/' +
                                           Copy( lsData, 3, 2 ) + '/' +
                                           '20' + Copy( lsData, 5, 2 ) );
        lsHora_UltimaReducao := Copy( lsHora, 1, 2 ) + ':' +
                                Copy( lsHora, 3, 2 ) + ':' +
                                Copy( lsHora, 5, 2 );

        lsDadosReducaoZ := IncDigito( '', ' ', 631, 0 );
        liRetorno       := Elgin_FI_DadosUltimaReducao( lsDadosReducaoZ );
        // Na MP 25 o firmware está com problema está retornando "0" mesmo
        // quando comando está correto
        If ( liRetorno <> 0 ) and
           ( liRetorno <> 1 ) Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao ler os dados da última Redução Z', ctErro, [ cbOK ], 0 );
           Exit;
        End;

        {
             Modo de Redução Z.........................:   2 bytes (se 00 redução por comando, se 01 redução automática)
        123
        01,
        ----
             Grande Total..............................:  18 bytes
               1         2
        456789.123456789.12
        000000000000872221,
        ----
             Cancelamentos.............................:  14 bytes
        2       3
        3456789.1234567
        00000000066018,
        ----
             Descontos.................................:  14 bytes
        3     4      5
        89.123456789.12
        00000000000000,
        ----
             Tributos..................................:  64 bytes
        5       6         7         8         9         10        11
        3456789.123456789.123456789.123456789.123456789.123456789.1234567
        0000000000000000000000000000000000000000000000000000000000000000,
        ----
             Totalizadores Parciais Tributados.........: 266 bytes
        11  12        13        14        15        16        17        18        19        20        21        22        23        24        25         26       27        28        29        30        31        32        33        34        35        36        37        38
        89.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.1234
        00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041190000000000000000000000000000,
        123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234123456789.1234
        ----
             Sangria...................................:  14 bytes
        38    39      40
        56789.12456789.
        00000000000000,
        ----
             Suprimentos...............................:  14 bytes
        40       41
        123456789.12345
        00000000000000,
        ----
             Totalizadores não sujeitos ao ICMS........: 126 bytes
        41   42        43        44        45        46        47        48        49        50        51        52        53        54
        6789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.12
        000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
        ----
             Contadores dos TP's não sujeitos ao ICMSl.:  36 bytes
        54        55        56      57
        3456789.123456789.123456789.123456789
        000000000000000000000000000000000000,
        ----
             Contador de ordem de operação.............:   6 bytes
        58
        .123456
        000056,
        ----
             Contador de operações não sujeitas ao ICMS:   6 bytes
        58  59
        789.123
        000008,
        ----
             Número de Alíquotas cadastradas...........:   2 bytes
        59
        45
        00
        ----
             Data do movimento.........................:   6 bytes
        59   60
        6789.12
        270404,
        ----
             Acréscimos................................:  14 bytes
        60      61
        3456789.1234567
        00000000000000,
        ----
             Acréscimo financeiro......................:  14 bytes
        61 62        63
        89.123456789.1
        00000000000000
        }

        lrVlr_GrandeTotal    := StrToFloat( Copy( lsDadosReducaoZ,  4, 18 ) ) / 100;
        lrVlr_Cancelamentos  := StrToFloat( Copy( lsDadosReducaoZ, 23, 14 ) ) / 100;
        lrVlr_Descontos      := StrToFloat( Copy( lsDadosReducaoZ, 38, 14 ) ) / 100;
        lsCupomReducaoZ      := Copy( lsDadosReducaoZ, 579, 6 );

        lsData               := Copy( lsDadosReducaoZ, 596, 6 );
        ldData_MovReducao    := StrToDate( Copy( lsData, 1, 2 ) + '/' +
                                           Copy( lsData, 3, 2 ) + '/' +
                                           '20' + Copy( lsData, 5, 2 ) );
     End;
     feEpson :
     Begin
        /////////////////////////////////////////////
        // Falta implementar as funções para EPSON //
        /////////////////////////////////////////////

         //Da posição 1 até da posição 817
         //                                                                                                                 1                                                                                                         2                                                                                                       3                                                                                                   4                                                                                                   5                                                                                                   6                                                                                                   7                                                                                                    8
         //          1          2           3           4          5           6           7          8           9         .          1         2          3          4         5          6         7          8          9         .          1         2          3         4          5          6         7         8         9         .         1         2         3         4         5         6         7         8         9         .         1         2         3         4         5         6         7         8         9         .         1         2         3         4         5         6         7         8         9         .         1         2         3         4         5         6         7         8         9         .         1         2         3         4         5         6         7         8         9          .          1
         //12345678 9.1234 56789. 123456 789.12 345678 9.1234 56789. 123456 789.12 345678 9.1234 56789. 123456 789.123456789.1234 56789.123456789.1 23456789.12345678 9.123456789.12345 6789.123456789.12 3456789.123456789 .123456789.1234567 89.123456789.1234 56789.123456789.1 23456789.1234567 89.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.1 23456789.1234 56789.1234567
         // Data Z  Hora Z  COO_I  COO_F   CRZ   CRO    GNF    CDC    NFC    CRG     CCF    CFC   CFD    NCN    Totalizador Geral    Cancel. ICMS     Cancel. ISSQN    Cancel. N Fiscal  Desconto ICMS     Desconto ISSQN   Desconto N Fiscal  Acrescimo ICMS    Acrescimo ISSQN   Acresc. N Fiscal Tributos (ICMS, ISSQN, F, I, N, FS, IS, NS)
         //28022008 085542 000234 000256 000015 000001 000069 000000 000000 000009 000119 000018 000000 000000 000000000000862510 00000000000201579 00000000000000000 00000000000000000 00000000000000000 00000000000000000 00000000000000000 00000000000000000 00000000000000000 00000000000000000                                                                                           F     I     N     FS    IS    NS                                                                                                                                                                                                                                                                                                                      000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 0000000000000 0000000000000
         //03032008 175135 000262 000264 000016 000001 000073 000000 000000 000013 000120 000001 000000 000000 000000000000862860 00000000000000350 00000000000000000 00000000000000000 00000000000000000 00000000000000000 00000000000000000 00000000000000000 00000000000000000 00000000000000000                                                                       T0520T1700T2500S0500F     I     N     FS    IS    NS                                                                                                                                                                                                                                                  00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 0000000000000 0000000000000

         // Da posição 818 até a posição 1167
         //                                                                                  9                                                                                                   .                                                                                                   1
         //  2         3         4         5         6         7         8         9         .         1         2         3         4         5         6         7         8         9         .         1         2         3         4         5         6         7         8         9         .         1         2         3         4         5           6
         //89.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.1234567 89 .1234567
         //Totalizadores não fiscais
         //                                                                                                                                                                                                                                                                                                                  0000000000000000000000000000000000 00 14022008
         //                                                                                                                                                                                                                                                                                                                  0000000000000000000000000000000000 04 03032008

         // -> Capturando o Nº de Série
         lsSerieECF := IncDigito( '', ' ', 110, 0 );
         liRetorno  := Epson_FI_ObterDadosImpressora( lsSerieECF );
         lsSerieECF := Trim( Copy( Trim( lsSerieECF ), 1, 20 ) );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         // <- Capturando o Nº de Série

         If NOT USER_DadosUltimaReducaoZ( gECFEmUso, lsDadosReducaoZ, fsLabel ) Then
            Exit;

         // -> Verificando se existe a data da última redução Z( Impressora nova( zerada ) não tem )
         If IncZero( Trim( Copy( lsDadosReducaoZ, 1, 8 ) ), 8 ) = '00000000' Then
         Begin
            USER_ImportarUltimaReducaoZ := True;
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         // <- Verificando se existe a data da última redução Z( Impressora nova( zerada ) não tem )

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando a data de Mov. da Redução do ECF...';
            fsLabel.Update;
         End;

         ldData_MovReducao := StrToDate( Copy( lsDadosReducaoZ, 1160, 2 ) + '/' +
                                         Copy( lsDadosReducaoZ, 1162, 2 ) + '/' +
                                         Copy( lsDadosReducaoZ, 1164, 4 ) );


         {If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando se os dados da última Redução Z já foram importados...';
            fsLabel.Update;
         End;
         liRetorno := VerificaImportacaoReducaoZ( gsSerieECF, ldData_MovReducao, fsLabel );
         Case liRetorno Of
            -1 : // Falha na importação da Redução Z
            Begin
               USER_ImportarUltimaReducaoZ := False;
               Exit;
            End;
            0 : // Redução Z já importada
            Begin
               USER_ImportarUltimaReducaoZ := True;
               Exit;
            End;
         End;}

         If NOT USER_NumeroCaixa( gECFEmUso, lsNrCaixa, fsLabel ) Then
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Não é possível obter o nº do PDV do ECF!';
               fsLabel.Update;
            End;
            Exit;
         End;
         lsNrCaixa := IncZero( lsNrCaixa, 4 );
         lsNumeroEquipamento := lsNrCaixa;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando totais da Redução Z do ECF...';
            fsLabel.Update;
         End;

         lsCupomReducaoZ      := Copy( lsDadosReducaoZ, 21, 6 );
         lrVlr_GrandeTotal    := StrToFloatDef( Copy( lsDadosReducaoZ,  87, 18 ), 0 ) / 100;
         lrVlr_Cancelamentos  := StrToFloatDef( Copy( lsDadosReducaoZ, 105, 17 ), 0 ) / 100;
         lrVlr_Descontos      := StrToFloatDef( Copy( lsDadosReducaoZ, 156, 17 ), 0 ) / 100;

         If NOT USER_DataHoraReducao( gECFEmUso, lsData, lsHora, fsLabel ) Then
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Não é possível obter a data/hora da última redução Z do ECF!';
               fsLabel.Update;
            End;
            Exit;
         End;

         If lsData = '00000000' Then // Impressora fiscal sem redução Z
         Begin
            //lsData := '010101';
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            USER_ImportarUltimaReducaoZ := True;
            Exit;
         End;
         lsData := Copy( lsData, 1, 2 ) + '/' +
                   Copy( lsData, 3, 2 ) + '/' +
                   Copy( lsData, 5, 2 );

         If StrToDateDef( lsData, StrToDate( '01/01/1990' ) ) = StrToDate( '01/01/1990' ) Then
         Begin
            CaixaMensagem( 'A data última redução Z( "' + lsData + '" ) retornada pelo ECF é inválida! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;

         ldData_UltimaReducao := StrToDate( lsData );
         lsHora_UltimaReducao := Copy( lsHora, 1, 2 ) + ':' +
                                 Copy( lsHora, 3, 2 ) + ':' +
                                 Copy( lsHora, 5, 2 );
         // <- Capturando a data da última Redução Z

         // -> Lendo os COO Inicial e Final
         lsCOOi             := Trim( Copy( lsDadosReducaoZ, 15, 6 ) );
         lsCOOf             := Trim( Copy( lsDadosReducaoZ, 21, 6 ) );
         lsNumeroReducaoZ   := Trim( Copy( lsDadosReducaoZ, 27, 6 ) );
         lsReinicioOperacao := Trim( Copy( lsDadosReducaoZ, 33, 6 ) );
         // <- Lendo os COO Inicial e Final

         {If NOT USER_VerificaIndiceAliquotasISS( gECFEmUso, lsAliquotasISS, fsLabel ) Then
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;}

         // -> Capturando os valores vendidos
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Lendo valores das alíquotas de ICMS/ISS do ECF...';
            fsLabel.Update;
         End;

         lsTextoAliquota    := Trim( Copy( lsDadosReducaoZ, 258, 124 ) );
         lsTextoValores     := Trim( Copy( lsDadosReducaoZ, 383, 407 ) );
         For liCont := 1 To 19 Do
         Begin
            If Trim( lsTextoAliquota ) = '' Then
               Break;

            lsValor    := Copy( lsTextoValores, 4, 14 );
            lrValor    := Arredondar( StrToFloatDef( lsValor, 0 ) / 100, 2 );

            lsAliquota := Trim( Copy( lsTextoAliquota, 1, 5 ) );
            lrAliquota := StrToFloatDef( Copy( lsAliquota, 2, 4 ), 0 ) / 100;

            If AnsiSameText( Copy( lsAliquota, 1, 1 ), 'F' ) Then // Substituição tributária
               lrVlr_SubsTributaria := Arredondar( lrVlr_SubsTributaria, 2 ) + Arredondar( lrValor, 2 )
            Else If AnsiSameText( Copy( lsAliquota, 1, 1 ), 'N' ) Then // Não incidência
               lrVlr_NaoIncidencia := Arredondar( lrVlr_NaoIncidencia, 2 ) + Arredondar( lrValor, 2 )
            Else If AnsiSameText( Copy( lsAliquota, 1, 1 ), 'I' ) Then // Isentas
               lrVlr_Isentas := Arredondar( lrVlr_Isentas, 2 ) + Arredondar( lrValor, 2 )
            Else If liCont <= 20 Then // Valores tributados ( 17%, 7%, 25%, etc... )
            Begin
               lsTipo_Tributacao := 'TRI'; // Tributáveis através de ICMS
               If AnsiSameText( Copy( lsTextoAliquota, 1, 1 ), 'S' ) Then
                  lsTipo_Tributacao := 'ISS';

               llstVlr_Tributados.Add( FormatFloat( '0000', Arredondar( lrAliquota, 2 ) * 100 ) + '|' + lsTipo_Tributacao + '|' + lsValor );
               If UpperCase( Trim( lsTipo_Tributacao ) ) = UpperCase( Trim( 'ISS' ) ) Then
               Begin
                  lrVlr_TotalISS := lrVlr_TotalISS + Arredondar( lrValor, 2 );
                  lrVlr_ISS      := lrVlr_ISS + Arredondar( lrValor * ( lrAliquota / 100 ), 2 );
               End
               Else
               Begin
                  lrVlr_BaseICMS := lrVlr_BaseICMS + Arredondar( lrValor, 2 );
                  lrVlr_ICMS     := lrVlr_ICMS + Arredondar( lrValor * ( lrAliquota / 100 ), 2 );
               End;
            End;

            lrVlr_VendaLiquida := Arredondar( Arredondar( lrValor, 2 ) + Arredondar( lrVlr_VendaLiquida, 2 ), 2 );
            If ( AnsiSameText( Copy( lsAliquota, 1, 1 ), 'T' ) ) Or
               ( AnsiSameText( Copy( lsAliquota, 1, 1 ), 'S' ) ) Then
            Begin
               Delete( lsTextoAliquota, 1, 5 );
            End
            Else
               Delete( lsTextoAliquota, 1, 6 );
            Delete( lsTextoValores , 1, 17 );
         End;

         lrVlr_VendaBruta := Arredondar( lrVlr_VendaLiquida, 2 ) +
                             Arredondar( lrVlr_Cancelamentos, 2 ) +
                             Arredondar( lrVlr_Descontos, 2 );

         //USER_ImportarUltimaReducaoZ := True;
         //Exit;
      End;
   End;
   // <- Lendo os dados da ultima Redução Z

   // -> Verificando se já foi feita a importação da "Z"
   lsdtsReducoesZ := TSimpleDataSet.Create( Nil );
   Try
      lsdtsReducoesZ.Connection          := frmprincipal.dbxprincipal;
      lsdtsReducoesZ.DataSet.CommandText := 'SELECT Data_Mov ' +
                                            'FROM T_ReducoesZ ' +
                                            'WHERE Data_Mov=:parData_Mov AND ' +
                                            '      SerieECF=:parSerieECF';
      TrataSQL( lsdtsReducoesZ, gsCod_Emp );
      lsdtsReducoesZ.DataSet.ParamByName( 'parData_Mov' ).AsSQLTimeStamp := DateTimeToSQLTimeStamp( SoData( ldData_MovReducao ) );
      lsdtsReducoesZ.DataSet.ParamByName( 'parSerieECF' ).AsString       := lsSerieECF;
      lsdtsReducoesZ.Open;
      If NOT lsdtsReducoesZ.IsEmpty Then
      Begin
         USER_ImportarUltimaReducaoZ := True;
         //CaixaMensagem( 'Importação da Redução Z do dia "' + FormatDateTime( 'dd/mm/yyyy', ldData_UltimaReducao ) + '" já efetuada!!!', ctAviso, [ cbOK ], 0 );
         Exit;
      End;
   Finally
      FreeAndNil( lsdtsReducoesZ );
   End;
   // <- Verificando se já foi feita a importação da "Z"

   // -> Capturando as aliquotas de ISS
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Verificando índices das alíquotas de ISS...';
      fsLabel.Update;
   End;

   Case fFabricanteECF Of
      feBematech :
      Begin
         lsAliquotasISS := IncDigito( '', ' ', 48, 0 );
         liRetorno      := Bematech_FI_VerificaIndiceAliquotasIss( lsAliquotasISS );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao ler as aliquotas de ISS', ctErro, [ cbOK ], 0 );
            Exit;
         End;
      End;
      feDaruma :
      Begin
         lsAliquotasISS := IncDigito( '', ' ', 48, 0 );
         liRetorno      := Daruma_FI_VerificaIndiceAliquotasIss( lsAliquotasISS );
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao ler as aliquotas de ISS', ctErro, [ cbOK ], 0 );
            Exit;
         End;
      End;
   End;
   // <- Capturando as aliquotas de ISS

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Capturando valores dos impostos...';
      fsLabel.Update;
   End;

   // -> Capturando os valores vendidos
   If fFabricanteECF <> feEpson Then
   Begin
      llstVlr_Tributados.Clear;
      lrVlr_BaseICMS       := 0;
      lrVlr_ICMS           := 0;
      lrVlr_VendaLiquida   := 0;
      lrVlr_Isentas        := 0;
      lrVlr_NaoIncidencia  := 0;
      lrVlr_SubsTributaria := 0;
      lrVlr_VendaBruta     := 0;

      lsTextoAliquota := Copy( lsDadosReducaoZ,  53,  64 );
      lsTextoValores  := Copy( lsDadosReducaoZ, 118, 266 );
      for liCont := 1 to 19 do
      Begin
         lsValor    := Copy( lsTextoValores, 1, 14 );
         lrValor    := StrToFloat( lsValor ) / 100;
         If liCont <= 16 Then      // Valores tributados ( 17%, 7%, 25%, etc... )
         Begin
            lsAliquota := Copy( lsTextoAliquota, 1,  4 );
            lrAliquota := StrToFloat( lsAliquota ) / 100;

            lsTipo_Tributacao    := 'TRI';
            If Pos( FormatFloat( '00', liCont ), lsAliquotasISS ) <> 0 Then
               lsTipo_Tributacao := 'ISS';

            llstVlr_Tributados.Add( lsAliquota + '|' + lsTipo_Tributacao + '|' + lsValor );
            If lsTipo_Tributacao= 'ISS' Then
            Begin
               lrVlr_TotalISS := lrVlr_TotalISS + lrValor;
               If ( Trim( gsModeloECF ) <> '' ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP2000FI' ) ) ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) Then // Truncamento
               Begin
                  lrVlr_ISS := lrVlr_ISS + ( Trunc( ( ( lrValor * ( lrAliquota / 100 ) ) * 100 + 0.00001 ) ) / 100 )
               End
               Else
                  lrVlr_ISS := lrVlr_ISS + Arredondar( lrValor * ( lrAliquota / 100 ), 2 );
            end
            Else
            Begin
               lrVlr_BaseICMS := lrVlr_BaseICMS + lrValor;

               If ( Trim( gsModeloECF ) <> '' ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP2000FI' ) ) ) And
                  ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) Then // Truncamento
               Begin
                  lrVlr_ICMS := lrVlr_ICMS + ( Trunc( ( ( lrValor * ( lrAliquota / 100 ) ) * 100 + 0.00001 ) ) / 100 )
               End  // Arredondamento
               Else
                  lrVlr_ICMS := lrVlr_ICMS + Arredondar( lrValor * ( lrAliquota / 100 ), 2 );
            end;
         end
         Else If liCont = 17 Then // Isentas
            lrVlr_Isentas        := lrValor
         Else If liCont = 18 Then // Não incidência
            lrVlr_NaoIncidencia  := lrValor
         Else If liCont = 19 Then // Substituição tributária
            lrVlr_SubsTributaria := lrValor;

      //lrVlr_VendaLiquida := lrValor + lrVlr_VendaLiquida;
         If ( lsTipo_Tributacao <> 'ISS' ) or
            ( liCont >= 17 ) Then // Isentas, Não incidência e Substituição tributária
         Begin
            lrVlr_VendaLiquida := lrVlr_VendaLiquida + lrValor;
         end;

         Delete( lsTextoAliquota, 01, 04 );
         Delete( lsTextoValores , 01, 14 );
      end;
      // <- Capturando os valores vendidos

      // -> Lendo os COO Inicial e Final
      If fsLabel <> Nil Then
      Begin
         fsLabel.Caption := 'Lendo os COOs iniciais e finais...';
         fsLabel.Update;
      End;

      Case fFabricanteECF Of
         feBematech :
         Begin
            liRetorno := Bematech_FI_RelatorioTipo60Mestre;
            If ( liRetorno <> 0 ) And
               ( liRetorno <> 1 ) Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ler os COOs iniciais e finais da Redução Z', ctErro, [ cbOK ], 0 );
               Exit;
            End;

            If Not FileExists( 'C:\RETORNO.TXT' ) Then
            Begin
               CaixaMensagem( 'Arquivo "C:\Retorno.txt" não localizado', ctErro, [ cbOK ], 0 );
               Exit;
            end;

            llstArqRetorno.Clear;
            llstArqRetorno.LoadFromFile( 'C:\Retorno.Txt' );
            For liCont := 0 To ( llstArqRetorno.Count - 1 ) Do
            Begin
               If LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'COO inicial' ) ) ) = LowerCase( 'COO inicial' ) Then
                  lsCOOi       := Copy( llstArqRetorno[ liCont ], 47, 6 );

               If LowerCase( Copy( llstArqRetorno[ liCont ], 1,  Length( 'COO final' ) ) ) = LowerCase( 'COO final' ) Then
                  lsCOOf       := Copy( llstArqRetorno[ liCont ], 47, 6 );

               If LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'Contador de reduções' ) ) ) = LowerCase( 'Contador de reduções' ) Then
                  lsNumeroReducaoZ := Copy( llstArqRetorno[ liCont ], 49, 4 );

               If LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'Número do equipamento' ) ) ) = LowerCase( 'Número do equipamento' ) Then
                  lsNumeroEquipamento := Copy( llstArqRetorno[ liCont ], 49, 4 );

               If ( LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'Reinicio de Operacao' ) ) ) = LowerCase( 'Reinicio de Operacao' ) ) Or
                  ( LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'Reinicio de Operação' ) ) ) = LowerCase( 'Reinicio de Operação' ) ) Then
               Begin
                  lsReinicioOperacao := Copy( llstArqRetorno[ liCont ], 49, 4 );
                  lsReinicioOperacao := IncZero( lsReinicioOperacao, 4 );
               End;

               If LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'Venda Bruta' ) ) ) = LowerCase( 'Venda Bruta' ) Then
                  lrVlr_VendaBruta    := StrToFloat( SubstString( Copy( llstArqRetorno[ liCont ], 40, 13 ), '.,' ) ) / 100;
            End;
         End;
         feDaruma :
         Begin
            liRetorno := Daruma_FI_RelatorioTipo60Mestre;
            If ( liRetorno <> 1 ) Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ler os COOs iniciais e finais da Redução Z', ctErro, [ cbOK ], 0 );
               Exit;
            End;

            If Not FileExists( 'C:\RETORNO.TXT' ) Then
            Begin
               CaixaMensagem( 'Arquivo "C:\Retorno.txt" não localizado', ctErro, [ cbOK ], 0 );
               Exit;
            End;

            llstArqRetorno.Clear;
            llstArqRetorno.LoadFromFile( 'C:\Retorno.Txt' );
            For liCont := 0 To ( llstArqRetorno.Count - 1 ) Do
            Begin
               If LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'COO inicial' ) ) ) = LowerCase( 'COO inicial' ) Then
                  lsCOOi       := Copy( llstArqRetorno[ liCont ], 47, 6 );
               If LowerCase( Copy( llstArqRetorno[ liCont ], 1,  Length( 'COO final' ) ) ) = LowerCase( 'COO final' ) Then
                  lsCOOf       := Copy( llstArqRetorno[ liCont ], 47, 6 );
               If LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'Contador de reduções' ) ) ) = LowerCase( 'Contador de reduções' ) Then
                  lsNumeroReducaoZ := Copy( llstArqRetorno[ liCont ], 49, 4 );

               If LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'Número do equipamento' ) ) ) = LowerCase( 'Número do equipamento' ) Then
                  lsNumeroEquipamento := Copy( llstArqRetorno[ liCont ], 49, 4 );
               If LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'Reinicio de Operacao' ) ) ) = LowerCase( 'Reinicio de Operacao' ) Then
               Begin
                  lsReinicioOperacao := Copy( llstArqRetorno[ liCont ], 49, 4 );
                  lsReinicioOperacao := IncZero( lsReinicioOperacao, 4 );
               End;
               If LowerCase( Copy( llstArqRetorno[ liCont ], 1, Length( 'Venda Bruta' ) ) ) = LowerCase( 'Venda Bruta' ) Then
                  lrVlr_VendaBruta    := StrToFloat( SubstString( Copy( llstArqRetorno[ liCont ], 40, 13 ), '.,' ) ) / 100;
            End;
         End;
       End;
      // <- Lendo os COO Inicial e Final
   End;

   // -> Transação
   Randomize;
   trdNrTransacao.TransactionID  := Random( 100 );
   trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
   If frmprincipal.dbxprincipal.InTransaction Then
   Begin
      If CaixaMensagem( 'Existe outra transação ativa. Deseja descartá-la?', ctAviso, [ cbSimNao ], 0 ) Then
         frmprincipal.dbxprincipal.RollBack( trdNrTransacao )
      Else
         Exit;
   End;
   frmprincipal.dbxprincipal.StartTransaction( trdNrTransacao );
   // <- Transação

   lqryModific := TSQLQuery.Create( nil );
   Try
      Try
         lqryModific.Close;
         lqryModific.SQLConnection := frmprincipal.dbxprincipal;
         lqryModific.Params.Clear;

         lsTextoOBS := 'Red.: ' + lsNumeroReducaoZ + ' GT: ' + FormatFloat( '0.00', lrVlr_GrandeTotal );

         Try
            lqryModific.Close;
            lqryModific.Params.Clear;
            lqryModific.SQL.Text := ConstruirSQL( tsInsert, 'T_ReducoesZ',
                                    'Cod_Emp;SerieECF;Data_Mov;COO_ReducaoZ;Data_Emissao;'+
                                    'Hora_Emissao;COO_Inicial;COO_Final;Vlr_GrandeTotal;'+
                                    'Vlr_Cancelamentos;Vlr_Descontos;Vlr_VendaLiquida;'+
                                    'Vlr_TotalTributados;Vlr_TotalISS;Vlr_SubstTributaria;'+
                                    'Vlr_Isencao;Vlr_NaoIncidencia;Operador;Data_Cad;'+
                                    'Data_Atu;NumeroReducaoZ;NumeroEquipamento;'+
                                    'ReinicioOperacao;Vlr_VendaBruta;Sincronizado;Cod_Caixa', '' );
            lqryModific.ParamByName( 'parCod_Emp' ).AsString            := gsCod_Emp;
            lqryModific.ParamByName( 'parData_Mov' ).AsSQLTimeStamp     := DateTimeToSQLTimeStamp( SoData( ldData_MovReducao ) );
            lqryModific.ParamByName( 'parCOO_ReducaoZ' ).AsString       := lsCupomReducaoZ;
            lqryModific.ParamByName( 'parData_Emissao' ).AsSQLTimeStamp := DateTimeToSQLTimeStamp( SoData( ldData_UltimaReducao ) );
            lqryModific.ParamByName( 'parHora_Emissao' ).AsString       := lsHora_UltimaReducao;
            lqryModific.ParamByName( 'parCOO_Inicial' ).AsString        := lsCOOi;
            lqryModific.ParamByName( 'parCOO_Final' ).AsString          := lsCOOf;
            lqryModific.ParamByName( 'parVlr_GrandeTotal' ).AsFloat     := Arredondar( lrVlr_GrandeTotal, 2 );
            lqryModific.ParamByName( 'parVlr_Cancelamentos' ).AsFloat   := Arredondar( lrVlr_Cancelamentos, 2 );
            lqryModific.ParamByName( 'parVlr_Descontos' ).AsFloat       := Arredondar( lrVlr_Descontos, 2 );
            lqryModific.ParamByName( 'parVlr_VendaLiquida' ).AsFloat    := Arredondar( lrVlr_VendaLiquida, 2 );
            lqryModific.ParamByName( 'parVlr_TotalTributados' ).AsFloat := Arredondar( lrVlr_BaseICMS, 2 );
            lqryModific.ParamByName( 'parVlr_TotalISS' ).AsFloat        := Arredondar( lrVlr_TotalISS, 2 );
            lqryModific.ParamByName( 'parVlr_SubstTributaria' ).AsFloat := Arredondar( lrVlr_SubsTributaria, 2 );
            lqryModific.ParamByName( 'parVlr_Isencao' ).AsFloat         := Arredondar( lrVlr_Isentas, 2 );
            lqryModific.ParamByName( 'parVlr_NaoIncidencia' ).AsFloat   := Arredondar( lrVlr_NaoIncidencia, 2 );
            lqryModific.ParamByName( 'parOperador' ).AsString           := gsOperador;
            lqryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp     := datetimeToSQLTimeStamp(gsdata_mov );
            lqryModific.ParamByName( 'parData_Atu' ).AsSQLTimeStamp     := datetimeToSQLTimeStamp(gsdata_mov );
            lqryModific.ParamByName( 'parNumeroReducaoZ' ).AsString     := IncDigito( lsNumeroReducaoZ, '0', 10, 0 );
            lqryModific.ParamByName( 'parSerieECF' ).AsString           := lsSerieECF;
            lqryModific.ParamByName( 'parNumeroEquipamento' ).AsString  := lsNumeroEquipamento;
            lqryModific.ParamByName( 'parReinicioOperacao' ).AsString   := lsReinicioOperacao;
            lqryModific.ParamByName( 'parVlr_VendaBruta' ).AsFloat      := Arredondar( lrVlr_VendaBruta, 2 );
            lqryModific.ParamByName( 'parSincronizado' ).AsString       := 'N';
            lqryModific.ParamByName( 'parCod_Caixa' ).AsString          := '001' ;
            lqryModific.ExecSQL;
         Except
            On E: Exception Do
            Begin
               If frmprincipal.dbxprincipal.InTransaction Then
                  frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
               CaixaMensagem( 'Não foi possível gravar os dados na tabela de Reduções Z!' + E.Message, ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End;

         Try
            For liCont := 0 To ( llstVlr_Tributados.Count - 1 ) Do
            Begin
               //           1         2
               // 123456789.123456789.123
               // 0000|TRI|00000000000000
               If IncZero( Trim( Copy( llstVlr_Tributados[ liCont ], 1, 4 ) ), 4 ) <> IncZero( '0', 4 ) Then
               Begin
                  lrAliquota := StrToFloat( Copy( llstVlr_Tributados[ liCont ], 01, 04 ) ) / 100;
                  lrValor    := StrToFloat( Copy( llstVlr_Tributados[ liCont ], 10, 14 ) ) / 100;
                  If Arredondar( lrValor, 0 ) <> 0 Then
                  Begin
                     Try
                        lqryModific.Close;
                        lqryModific.Params.Clear;
                        lqryModific.SQL.Text := ConstruirSQL( tsInsert, 'T_ItensReducoesZ',
                                                'SerieECF;COO_ReducaoZ;Tipo;Descricao;Vlr_Acumulado;'+
                                                'Vlr_Imposto;Data_Mov;Data_Cad;Operador;' +
                                                'NumeroReducaoZ;Cod_Emp;Sincronizado;Perc_Aliquota;Cod_Caixa', '' );
                        lqryModific.ParamByName( 'parCOO_ReducaoZ' ).AsString   := lsCupomReducaoZ;
                        lqryModific.ParamByName( 'parTipo' ).AsString           := Copy( llstVlr_Tributados[ liCont ], 6, 3 );
                        lqryModific.ParamByName( 'parDescricao' ).AsString      := FormatFloat( '00.00', lrAliquota ) + '%';
                        lqryModific.ParamByName( 'parVlr_Acumulado' ).AsFloat   := lrValor;
                        lqryModific.ParamByName( 'parVlr_Imposto' ).AsFloat     := Arredondar( lrValor * ( lrAliquota / 100 ), 2 );
                        lqryModific.ParamByName( 'parPerc_Aliquota' ).AsFloat   := Arredondar( lrAliquota, 2 );
                        lqryModific.ParamByName( 'parData_Mov' ).AsSQLTimeStamp := DateTimeToSQLTimeStamp( ldData_MovReducao );
                        lqryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp := datetimeToSQLTimeStamp(gsdata_mov );
                        lqryModific.ParamByName( 'parOperador' ).AsString       := gsOperador;
                        lqryModific.ParamByName( 'parNumeroReducaoZ' ).AsString := IncDigito( lsNumeroReducaoZ, '0', 10, 0 );
                        lqryModific.ParamByName( 'parSerieECF' ).AsString       := lsSerieECF;
                        lqryModific.ParamByName( 'parCod_Emp' ).AsString        := gsCod_Emp;
                        lqryModific.ParamByName( 'parSincronizado' ).AsString   := 'N';
                        lqryModific.ParamByName( 'parCod_Caixa' ).AsString      := '001';
                        lqryModific.ExecSQL;
                     Except
                        On E: Exception Do
                        Begin
                           CaixaMensagem( 'Não foi possível gravar os dados na tabela de Itens Tributados de Reduções Z! ' + E.Message, ctErro, [ cbOk ], 0 );
                           Exit;
                        End;
                     End;

                     If NOT AnsiSameText( Trim( Copy( llstVlr_Tributados[ liCont ], 6, 3 ) ), 'ISS' ) Then // Diferente de "ISS"
                     Begin
                        Try
                           lqryModific.Close;
                           lqryModific.Params.Clear;
                           lqryModific.SQL.Text := ConstruirSQL( tsInsert, 'T_LivroSai',
                                                   'Cod_Emp;SerieECF;Cod_Cliente;Especie;SeqNFi;SeqNFf;UF;'+
                                                   'Data_Emissao;Serie;Cod_Contabil;Cod_CFOP;Vlr_Nota;'+
                                                   'Vlr_BaseICMS;Perc_ICMS;Vlr_ICMS;Vlr_Isentos;'+
                                                   'Vlr_BaseICMSSubs;Vlr_ICMSSubs;Vlr_Outros;' +
                                                   'Status;Data_Cad;Operador;Observacoes;Sincronizado', '' );
                           lqryModific.ParamByName( 'parCod_Emp' ).AsString            := gsCod_Emp;
                           lqryModific.ParamByName( 'parSerieECF' ).AsString           := lsSerieECF;
                           //lqryModific.ParamByName( 'parCod_Cliente' ).AsString        := gIniParam.ReadString( 'Orcamento', 'Cod_ClienteBalcao', '' );
                           lqryModific.ParamByName( 'parEspecie' ).AsString            := 'CF';
                           lqryModific.ParamByName( 'parSeqNFi' ).AsString             := lsCOOi;
                           lqryModific.ParamByName( 'parSeqNFf' ).AsString             := lsCOOf;
                           lqryModific.ParamByName( 'parUF' ).AsString                 := gsUFEmp;
                           lqryModific.ParamByName( 'parData_Emissao' ).AsSQLTimeStamp := DateTimeTOSQLTimeStamp( SoData( ldData_MovReducao ) );
                           lqryModific.ParamByName( 'parSerie' ).AsString              := 'ECF';
                           lqryModific.ParamByName( 'parCod_Contabil' ).AsString       := '';
                           lqryModific.ParamByName( 'parCod_CFOP' ).AsString           := '5102'; // Venda de Mercadoria Adquirida ou recebida de terceiros
                           lqryModific.ParamByName( 'parVlr_Nota' ).AsFloat            := Arredondar( lrVlr_BaseICMS, 2 );
                           lqryModific.ParamByName( 'parVlr_BaseICMS' ).AsFloat        := Arredondar( lrVlr_BaseICMS, 2 );
                           lqryModific.ParamByName( 'parPerc_ICMS' ).AsFloat           := Arredondar( lrAliquota, 2 );
                           lqryModific.ParamByName( 'parVlr_ICMS' ).AsFloat            := Arredondar( lrVlr_ICMS, 2 );
                           lqryModific.ParamByName( 'parVlr_Isentos' ).AsFloat         := 0.00;
                           lqryModific.ParamByName( 'parVlr_BaseICMSSubs' ).AsFloat    := 0.00;
                           lqryModific.ParamByName( 'parVlr_Outros' ).AsFloat          := 0.00;
                           //lqryModific.ParamByName( 'parVlr_ICMSSubs' ).AsFloat        := lrVlr_SubsTributaria;
                           lqryModific.ParamByName( 'parVlr_ICMSSubs' ).AsFloat        := 0.00;
                           lqryModific.ParamByName( 'parStatus' ).AsString             := ' ';
                           lqryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp     := datetimeToSQLTimeStamp(gsdata_mov );
                           lqryModific.ParamByName( 'parOperador' ).AsString           := gsOperador;
                           lqryModific.ParamByName( 'parObservacoes' ).AsString        := Copy( lsTextoOBS, 1, 50 );
                           lqryModific.ParamByName( 'parSincronizado' ).AsString       := 'N';
                           lqryModific.ExecSQL;

                           //IncDigito( lsNumeroReducaoZ, '0', 10, 0 ); lrVlr_GrandeTotal
                        Except
                           On E: Exception Do
                           Begin
                              If frmprincipal.dbxprincipal.InTransaction Then
                                 frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
                              CaixaMensagem( 'Não foi possível atualizar o livro de saída( Alíquotas Tributadas )! ' + E.Message, ctErro, [ cbSimNao ], 0 );
                              Exit;
                           End;
                        End;
                     End;
                  End;
               End;
            End;
         Except
            On E: Exception Do
            Begin
               CaixaMensagem( 'Não foi possível ler os valores das alíquotas tributavéis da Reduções Z!' + E.Message, ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End;

         If ( Arredondar( lrVlr_SubsTributaria, 2 ) <> 0 ) Or
            ( Arredondar( lrVlr_Isentas, 2 ) <> 0 ) Or
            ( Arredondar( lrVlr_TotalISS, 2 ) <> 0 ) Or
            ( Arredondar( lrVlr_NaoIncidencia, 2 ) <> 0 ) Then
         Begin
            Try
               lqryModific.Close;
               lqryModific.Params.Clear;
               lqryModific.SQL.Text := ConstruirSQL( tsInsert, 'T_LivroSai',
                                       'Cod_Emp;SerieECF;Cod_Cliente;Especie;SeqNFi;SeqNFf;UF;'+
                                       'Data_Emissao;Serie;Cod_Contabil;Cod_CFOP;Vlr_Nota;'+
                                       'Vlr_BaseICMS;Perc_ICMS;Vlr_ICMS;Vlr_Isentos;'+
                                       'Vlr_BaseICMSSubs;Vlr_ICMSSubs;Vlr_Outros;' +
                                       'Status;Data_Cad;Operador;Observacoes;Sincronizado', '' );
               lqryModific.ParamByName( 'parCod_Emp' ).AsString            := gsCod_Emp;
               lqryModific.ParamByName( 'parSerieECF' ).AsString           := lsSerieECF;
               //lqryModific.ParamByName( 'parCod_Cliente' ).AsString        := gIniParam.ReadString( 'Orcamento', 'Cod_ClienteBalcao', '' );
               lqryModific.ParamByName( 'parEspecie' ).AsString            := 'CF';
               lqryModific.ParamByName( 'parSeqNFi' ).AsString             := lsCOOi;
               lqryModific.ParamByName( 'parSeqNFf' ).AsString             := lsCOOf;
               lqryModific.ParamByName( 'parUF' ).AsString                 := gsUFEmp;
               lqryModific.ParamByName( 'parData_Emissao' ).AsSQLTimeStamp := DateTimeTOSQLTimeStamp( SoData( ldData_MovReducao ) );
               lqryModific.ParamByName( 'parSerie' ).AsString              := 'ECF';
               lqryModific.ParamByName( 'parCod_Contabil' ).AsString       := '';
               lqryModific.ParamByName( 'parCod_CFOP' ).AsString           := '5405'; // Venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária, na condição de contribuinte substituído
               lqryModific.ParamByName( 'parVlr_Nota' ).AsFloat            := Arredondar( lrVlr_NaoIncidencia, 2 ) +
                                                                              Arredondar( lrVlr_SubsTributaria, 2 ) +
                                                                              Arredondar( lrVlr_Isentas, 2 ) +
                                                                              Arredondar( lrVlr_TotalISS, 2 );
               lqryModific.ParamByName( 'parVlr_BaseICMS' ).AsFloat        := 0.00;
               lqryModific.ParamByName( 'parPerc_ICMS' ).AsFloat           := 0.00;
               lqryModific.ParamByName( 'parVlr_ICMS' ).AsFloat            := 0.00;
               lqryModific.ParamByName( 'parVlr_Isentos' ).AsFloat         := Arredondar( lrVlr_Isentas, 2 ) + Arredondar( lrVlr_TotalISS, 2 );
               lqryModific.ParamByName( 'parVlr_BaseICMSSubs' ).AsFloat    := 0.00;
               lqryModific.ParamByName( 'parVlr_Outros' ).AsFloat          := Arredondar( lrVlr_NaoIncidencia, 2 ) + Arredondar( lrVlr_SubsTributaria, 2 );
               //lqryModific.ParamByName( 'parVlr_ICMSSubs' ).AsFloat        := lrVlr_SubsTributaria;
               lqryModific.ParamByName( 'parVlr_ICMSSubs' ).AsFloat        := 0.00;
               lqryModific.ParamByName( 'parStatus' ).AsString             := ' ';
               lqryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp     := datetimeToSQLTimeStamp(gsdata_mov );
               lqryModific.ParamByName( 'parOperador' ).AsString           := gsOperador;
               lqryModific.ParamByName( 'parObservacoes' ).AsString        := Copy( lsTextoOBS, 1, 50 );
               lqryModific.ParamByName( 'parSincronizado' ).AsString       := 'N';
               lqryModific.ExecSQL;
               //IncDigito( lsNumeroReducaoZ, '0', 10, 0 ); lrVlr_GrandeTotal
            Except
               On E: Exception Do
               Begin
                  If frmprincipal.dbxprincipal.InTransaction Then
                     frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
                  CaixaMensagem( 'Não foi possível atualizar o livro de saída( Valores NÃO tributáveis )! ' + E.Message, ctErro, [ cbSimNao ], 0 );
                  Exit;
               End;
            End;
            //CaixaMensagem( 'Importação da Redução Z do dia "' + FormatDateTime( 'dd/mm/yyyy', ldData_UltimaReducao ) + '" efetuada!', ctAviso, [ cbOK ], 0 );
         End;
      Except
         On E: Exception Do
         Begin
            If frmprincipal.dbxprincipal.InTransaction Then
               frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
            CaixaMensagem( 'Não foi possível gravar os dados da última redução Z! ' + E.Message, ctErro, [ cbSimNao ], 0 );
            Exit;
         End;
      End;
      If frmprincipal.dbxprincipal.InTransaction Then
         frmprincipal.dbxprincipal.Commit( trdNrTransacao );
   Finally
      lqryModific.Close;
      lqryModific.Prepared := False;
      FreeAndNil( lqryModific );
   End;

   USER_ImportarUltimaReducaoZ := True;
End;

Function USER_ImprimeCheque( fFabricanteECF : TFabricanteECF; fsCodBanco : String; fsFavorecido : String; fsLocalidade : String; fdData : TDate; frValor : Real; fsLabel : TLabel = Nil ) : Boolean;
Var lsMandarFiscal : String;
    //liRetorno      : Integer;
    lxMeses        : Array[ 1..12 ] Of String;
    lsTemp         : String;
    liRetorno      : Integer;
Begin
   Result := False;

   lxMeses[ 01 ] := 'janeiro';
   lxMeses[ 02 ] := 'fevereiro';
   lxMeses[ 03 ] := 'marco';
   lxMeses[ 04 ] := 'abril';
   lxMeses[ 05 ] := 'maio';
   lxMeses[ 06 ] := 'junho';
   lxMeses[ 07 ] := 'julho';
   lxMeses[ 08 ] := 'agosto';
   lxMeses[ 09 ] := 'setembro';
   lxMeses[ 10 ] := 'outubro';
   lxMeses[ 11 ] := 'novembro';
   lxMeses[ 12 ] := 'dezembro';

   Case fFabricanteECF Of
      feBematech :
      Begin
         lsMandarFiscal := #27 + '|62|48|' + #27;
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando comando de impressão de cheque ( ' + lsMandarFiscal + ' )...';
            fsLabel.Update;
         End;
         //liRetorno := FormataTX( lsMandarFiscal );
         //If liRetorno <> 0 Then
         //Begin
         //   CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar imprimir o cheque no ECF!!!', ctErro, [ cbOK ], 0 );
         //   Exit;
         //End;
         While Length( lsMandarFiscal ) < 3000 Do
            lsMandarFiscal := lsMandarFiscal + ' ';

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Lendo as variáveis do ECF( Status do Cheque )...';
            fsLabel.Update;
         End;
         //liRetorno := Le_Variaveis( lsMandarFiscal );
         //If liRetorno = 1 Then
         //Begin
         //   CaixaMensagem( 'Não foi possível ler o Status do Cheque no ECF!!! Erro "' + IntToStr( liRetorno ) + '"', ctErro, [ cbOk ], 0 );
         //   Exit;
         //End;

         lsMandarFiscal := #27 + '|57|' +
                           IncZero( fsCodBanco, 3 ) + '|' +
                           IncZero( FormatFloat( '0', frValor * 100 ), 14 ) + '|' +
                           IncDigito( fsFavorecido, ' ', 45, 1 ) + '|' +
                           IncDigito( fsLocalidade, ' ', 27, 1 ) + '|' +
                           IncZero( FormatDateTime( 'dd', fdData ), 2 ) + '|' +
                           IncDigito( lxMeses[ StrToInt( FormatDateTime( 'mm', fdData ) ) ], ' ', 10, 1 ) + '|' +
                           IncZero( FormatDateTime( 'yyyy', fdData ), 4 ) + '||' +
                           #27;
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando comando de impressão de cheque ( ' + lsMandarFiscal + ' )...';
            fsLabel.Update;
         End;
         //liRetorno := FormataTX( lsMandarFiscal );
         //If liRetorno <> 0 Then
         //Begin
         //   CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar imprimir o cheque no ECF!!!', ctErro, [ cbOK ], 0 );
         //   Exit;
         //End;
      End;
      feCorisco :
      Begin
         CaixaMensagem( 'Função não disponível para este ECF!!!', ctInforma, [ cbOk ], 0 );
         Exit;
      End;
      feDaruma :
      Begin
         CaixaMensagem( 'Função não disponível para este ECF!!!', ctInforma, [ cbOk ], 0 );
         Exit;
      End;
      feSweda :
      Begin
         CaixaMensagem( 'Função não disponível para este ECF!!!', ctInforma, [ cbOk ], 0 );
         Exit;
      End;
      feElgin :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando comando de impressão de cheque ( ' + lsTemp + ' )...';
            fsLabel.Update;
         End;
         liRetorno := Elgin_FI_ImprimeCheque( PChar( IncZero( fsCodBanco, 3 ) ),
                                                 PChar( FormatFloat( '0.00', frValor ) ),
                                                 PChar( Copy( fsFavorecido, 1, 45 ) ),
                                                 PChar( Copy( fsLocalidade, 1, 27 ) ),
                                                 PChar( FormatDateTime( 'dd/mm/yyyy', fdData ) ),
                                                 PChar( '' ) );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar imprimir o cheque no ECF!', ctErro, [ cbOK ], 0 );
            Exit;
         End;
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
End;

Function USER_EstadoECF( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): string;
Var liRetorno: Integer;
    liACK, liSt1, liSt2, liSt3 : integer;
    liCont   : integer;
    lsEstado : String;
    EstadoImp: String;
    lsTexto  : String;
Begin
   USER_EstadoECF := 'ERRO';
   Case fFabricanteECF Of
      feBematech :
      Begin
         // <- Capturando o estado do ECF
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o estado do ECF...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_VerificaEstadoImpressora( liAck, liSt1, liSt2 );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'O ECF não está ligado!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         USER_EstadoECF := FormatFloat( '000', liSt1 ) + ';' + FormatFloat( '000', liSt2 );
         // <- Capturando o estado do ECF
      End;
      feDaruma :
      Begin
         // <- Capturando o estado do ECF
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o estado do ECF...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_VerificaEstadoImpressora( liAck, liSt1, liSt2 );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'O ECF não está ligado!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         USER_EstadoECF := FormatFloat( '000', liSt1 ) + ';' + FormatFloat( '000', liSt2 );
         // <- Capturando o estado do ECF
      End;
      feSweda :
      Begin
         // <- Capturando o estado do ECF
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o estado do ECF...';
            fsLabel.Update;
         End;

         liRetorno := SWEDA_RetornoImpressoraMFD( liAck, liSt1, liSt2, liSt3 );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'O ECF não está ligado!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         USER_EstadoECF := FormatFloat( '000', liSt1 ) + ';' + FormatFloat( '000', liSt2 );
         // <- Capturando o estado do ECF
      End;
      feElgin :
      Begin
         // <- Capturando o estado do ECF
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o estado do ECF...';
            fsLabel.Update;
         End;

         liRetorno := Elgin_FI_VerificaEstadoImpressora( liAck, liSt1, liSt2 );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'O ECF não está ligado!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         USER_EstadoECF := FormatFloat( '000', liSt1 ) + ';' + FormatFloat( '000', liSt2 );
         // <- Capturando o estado do ECF
      End;
      feEpson :
      Begin
         // <- Capturando o estado do ECF
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o estado do ECF...';
            fsLabel.Update;
         End;
         lsEstado := IncDigito( '', ' ', 50, 0 );
         liRetorno   := Epson_FI_ObterEstadoImpressora( lsEstado );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Não foi possível obter o retorno do estado do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption:= '';
               fsLabel.Update;
            End;
            Exit;
         End;
         // - > DecodificaEstado
         lsTexto:='';
         EstadoImp:= '$' + copy( String( lsEstado ), 9,4 );
         If EstadoImp = '$' Then EstadoImp:= '0';
          Repeat
             If (StrtoInt(EstadoImp)) mod 2 = 0 Then
               lsTexto :='0'+ lsTexto
             Else lsTexto := '1' + lsTexto;
               EstadoImp := InttoStr(StrtoInt( EstadoImp )Div 2);
         Until StrtoInt(EstadoImp) <= 1;
            If EstadoImp = '1' Then
               lsTexto :='1'+ lsTexto
            Else;
            For liCont:=1 To ( 16 - length( lsTexto ) ) do
               lsTexto :='0' + lsTexto;
            EstadoImp := lsTexto;
         // < - DecodificaEstado

         If EstadoImp[1] = '1' Then
         Begin
            CaixaMensagem( 'Mecanismo Off Line!' , ctInforma, [ cbOk ], 0 );
         End;
         If EstadoImp[2] = '1' Then
         Begin
            CaixaMensagem( 'Erro de Impressao!' , ctInforma, [ cbOk ], 0 );
         End;
         If EstadoImp[3] = '1' Then
         Begin
            CaixaMensagem( 'Impressora com a tampa aberta!' , ctInforma, [ cbOk ], 0 );
         End;
         USER_EstadoECF := lsEstado;
         // <- Capturando o estado do ECF
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;
End;

Function USER_ECFLigado( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): Boolean;
Begin
   USER_ECFLigado := False;
   Try
      If fsLabel <> Nil Then
      Begin
         fsLabel.Caption := 'Verificando se o ECF está ligado...';
         fsLabel.Update;
      End;

      Case fFabricanteECF Of
         feBematech: USER_ECFLigado := Bematech_FI_VerificaImpressoraLigada = 1;
         feSweda   : USER_ECFLigado := SWEDA_VerificaImpressoraLigada = 1;
         feDaruma  : USER_ECFLigado := Daruma_FI_VerificaImpressoraLigada = 1;
         feElgin   : USER_ECFLigado := Elgin_FI_VerificaImpressoraLigada = 1;
         //feEpson :
      End;
   Except
      On E: Exception Do
      Begin
         CaixaMensagem( 'Não foi possível verificar se o ECF está ligado! ' + E.Message, ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   USER_ECFLigado := True;
End;

Function USER_SincronizarDataHora( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): TDateTime;
var lSystemTime: TSystemTime;
    lsData, lsHora: string;
    lsDescricaoRetorno : String;
    liRetorno: integer;
Begin
   USER_SincronizarDataHora := StrToDateTime( '31/12/1899 00:00:00' );

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Capturando a data/hora atuais do ECF
         lsData    := IncDigito( '', ' ', 6, 0 );
         lsHora    := IncDigito( '', ' ', 6, 0 );
         liRetorno := Bematech_FI_DataHoraImpressora( lsData, lsHora );
         If liRetorno <> 1 Then
         Begin
            lsDescricaoRetorno := '';
            If liRetorno = 0 Then
               lsDescricaoRetorno := 'Erro de comunicação.'
            Else If liRetorno = -1 Then
               lsDescricaoRetorno := 'Erro de execução da função.'
            Else If liRetorno = -4 Then
               lsDescricaoRetorno := 'O arquivo de inicialização BemaFI32.ini não foi encontrado no diretório de sistema do Windows.'
            Else If liRetorno = -5 Then
               lsDescricaoRetorno := 'Erro ao abrir a porta de comunicação.'
            Else If liRetorno = -8 Then
               lsDescricaoRetorno := 'Erro ao criar ou gravar no arquivo STATUS.TXT ou RETORNO.TXT.'
            Else If liRetorno = -27 Then
               lsDescricaoRetorno := 'Status da impressora dIferente de 6,0,0 (ACK, ST1 e ST2).;';

            If Trim( lsDescricaoRetorno ) = '' Then
               CaixaMensagem( 'Não é possível obter a data/hora de movimento do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 )
            Else
               CaixaMensagem( 'Não é possível obter a data/hora de movimento do ECF!!! Retorno : "' + IntToStr( liRetorno ) + ' - ' + lsDescricaoRetorno + '"', ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;

         If Trim( lsData ) = '' Then
         Begin
            CaixaMensagem( 'Data/hora de movimento do ECF retornada em branco! VerIfique o funcionamento do equipamento!', ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;

         With lSystemTime Do
         Begin
            wDay   := StrToInt( Copy( lsData, 1, 2 ) );        // dia
            wMonth := StrToInt( Copy( lsData, 3, 2 ) );        // mês
            wYear  := StrToInt( '20' + Copy( lsData, 5, 2 ) ); // ano

            wHour   := StrToInt( Copy( lsHora, 1, 2 ) ); // hora
            wMinute := StrToInt( Copy( lsHora, 3, 2 ) ); // minutos
            wSecond := StrToInt( Copy( lsHora, 5, 2 ) ); // segundos
         End;

         Try
            SetLocalTime( lSystemTime ); // Atualizando a data/hora do micro
            USER_SincronizarDataHora := SystemTimeToDateTime( lSystemTime );
         Except
            On E: Exception Do
            Begin
               CaixaMensagem( 'Não foi possível gravar a data/hora do ECF' + #13 + E.Message, ctErro, [ cbOk ], 0 );
               USER_SincronizarDataHora := StrToDateTime( '31/12/1899 00:00:00' );
               exit;
            End;
         End;
      End;
      feDaruma :
      Begin
         // -> Capturando a data/hora atuais do ECF
         lsData    := IncDigito( '', ' ', 6, 0 );
         lsHora    := IncDigito( '', ' ', 6, 0 );
         liRetorno := Daruma_FI_DataHoraImpressora( lsData, lsHora );
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não é possível obter a data/hora de movimento do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;

         If Trim( lsData ) = '' Then
         Begin
            CaixaMensagem( 'Data/hora de movimento do ECF retornada em branco! VerIfique o funcionamento do equipamento!', ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;

         With lSystemTime Do
         Begin
            wDay   := StrToInt( Copy( lsData, 1, 2 ) );        // dia
            wMonth := StrToInt( Copy( lsData, 3, 2 ) );        // mês
            wYear  := StrToInt( '20' + Copy( lsData, 5, 2 ) ); // ano

            wHour   := StrToInt( Copy( lsHora, 1, 2 ) ); // hora
            wMinute := StrToInt( Copy( lsHora, 3, 2 ) ); // minutos
            wSecond := StrToInt( Copy( lsHora, 5, 2 ) ); // segundos
         End;

         try
            SetLocalTime( lSystemTime ); // Atualizando a data/hora do micro
            USER_SincronizarDataHora := SystemTimeToDateTime( lSystemTime );
         except
            on E: Exception do
            Begin
               CaixaMensagem( 'Não foi possível gravar a data/hora do ECF' + #13 + E.Message, ctErro, [ cbOk ], 0 );
               USER_SincronizarDataHora := StrToDateTime( '31/12/1899 00:00:00' );
               exit;
            end;
         end;
      End;
      feSweda :
      Begin
         // -> Capturando a data/hora atuais do ECF
         lsData    := IncDigito( '', ' ', 6, 0 );
         lsHora    := IncDigito( '', ' ', 6, 0 );
         liRetorno := Sweda_DataHoraImpressora( lsData, lsHora );
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não é possível obter a data/hora de movimento do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;

         If Trim( lsData ) = '' Then
         Begin
            CaixaMensagem( 'Data/hora de movimento do ECF retornada em branco! VerIfique o funcionamento do equipamento!', ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;

         With lSystemTime Do
         Begin
            wDay   := StrToInt( Copy( lsData, 1, 2 ) );        // dia
            wMonth := StrToInt( Copy( lsData, 3, 2 ) );        // mês
            wYear  := StrToInt( '20' + Copy( lsData, 5, 2 ) ); // ano

            wHour   := StrToInt( Copy( lsHora, 1, 2 ) ); // hora
            wMinute := StrToInt( Copy( lsHora, 3, 2 ) ); // minutos
            wSecond := StrToInt( Copy( lsHora, 5, 2 ) ); // segundos
         End;

         Try
            SetLocalTime( lSystemTime ); // Atualizando a data/hora do micro
            USER_SincronizarDataHora := SystemTimeToDateTime( lSystemTime );
         Except
            On E: Exception Do
            Begin
               CaixaMensagem( 'Não foi possível gravar a data/hora do ECF' + #13 + E.Message, ctErro, [ cbOk ], 0 );
               USER_SincronizarDataHora := StrToDateTime( '31/12/1899 00:00:00' );
               exit;
            End;
         End;
      End;
      feElgin :
      Begin
         // -> Capturando a data/hora atuais do ECF
         lsData    := IncDigito( '', ' ', 6, 0 );
         lsHora    := IncDigito( '', ' ', 6, 0 );
         liRetorno := Elgin_FI_DataHoraImpressora( lsData, lsHora );
         If liRetorno <> 1 Then
         Begin
            lsDescricaoRetorno := '';
            If liRetorno = 0 Then
               lsDescricaoRetorno := 'Erro de comunicação.'
            Else If liRetorno = -1 Then
               lsDescricaoRetorno := 'Erro de execução da função.'
            Else If liRetorno = -4 Then
               lsDescricaoRetorno := 'O arquivo de inicialização Elgin.ini não foi encontrado no diretório de sistema do Windows.'
            Else If liRetorno = -5 Then
               lsDescricaoRetorno := 'Erro ao abrir a porta de comunicação.'
            Else If liRetorno = -8 Then
               lsDescricaoRetorno := 'Erro ao criar ou gravar no arquivo STATUS.TXT ou RETORNO.TXT.'
            Else If liRetorno = -27 Then
               lsDescricaoRetorno := 'Status da impressora dIferente de 6,0,0 (ACK, ST1 e ST2).;';

            If Trim( lsDescricaoRetorno ) = '' Then
               CaixaMensagem( 'Não é possível obter a data/hora de movimento do ECF!!! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 )
            Else
               CaixaMensagem( 'Não é possível obter a data/hora de movimento do ECF!!! Retorno : "' + IntToStr( liRetorno ) + ' - ' + lsDescricaoRetorno + '"', ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;

         If Trim( lsData ) = '' Then
         Begin
            CaixaMensagem( 'Data/hora de movimento do ECF retornada em branco! VerIfique o funcionamento do equipamento!', ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;

         With lSystemTime Do
         Begin
            wDay   := StrToInt( Copy( lsData, 1, 2 ) );        // dia
            wMonth := StrToInt( Copy( lsData, 3, 2 ) );        // mês
            wYear  := StrToInt( '20' + Copy( lsData, 5, 2 ) ); // ano

            wHour   := StrToInt( Copy( lsHora, 1, 2 ) ); // hora
            wMinute := StrToInt( Copy( lsHora, 3, 2 ) ); // minutos
            wSecond := StrToInt( Copy( lsHora, 5, 2 ) ); // segundos
         End;

         Try
            SetLocalTime( lSystemTime ); // Atualizando a data/hora do micro
            USER_SincronizarDataHora := SystemTimeToDateTime( lSystemTime );
         Except
            On E: Exception Do
            Begin
               CaixaMensagem( 'Não foi possível gravar a data/hora do ECF' + #13 + E.Message, ctErro, [ cbOk ], 0 );
               USER_SincronizarDataHora := StrToDateTime( '31/12/1899 00:00:00' );
               exit;
            End;
         End;
      End;
      feEpson :
      Begin
         // -> Capturando a data/hora atuais do ECF
         lsData := IncDigito( ' ', ' ', 15, 0 );
         liRetorno := Epson_FI_ObterHoraRelogio( lsData );
         lsHora := Copy( lsData, 9, 6 );
         lsData := Copy( lsData, 1, 4 ) + Copy( lsData, 7, 2 );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Não é possível obter a data/hora de movimento do ECF!!! Retorno : "' + IntToStr( liRetorno ), ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;

         If Trim( lsData ) = '' Then
         Begin
            CaixaMensagem( 'Data/hora de movimento do ECF retornada em branco! VerIfique o funcionamento do equipamento!', ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;

         With lSystemTime Do
         Begin
            wDay   := StrToInt( Copy( lsData, 1, 2 ) );        // dia
            wMonth := StrToInt( Copy( lsData, 3, 2 ) );        // mês
            wYear  := StrToInt( '20' + Copy( lsData, 5, 2 ) ); // ano

            wHour   := StrToInt( Copy( lsHora, 1, 2 ) ); // hora
            wMinute := StrToInt( Copy( lsHora, 3, 2 ) ); // minutos
            wSecond := StrToInt( Copy( lsHora, 5, 2 ) ); // segundos
         End;

         Try
            SetLocalTime( lSystemTime ); // Atualizando a data/hora do micro
            USER_SincronizarDataHora := SystemTimeToDateTime( lSystemTime );
         Except
            On E: Exception Do
            Begin
               CaixaMensagem( 'Não foi possível gravar a data/hora do ECF' + #13 + E.Message, ctErro, [ cbOk ], 0 );
               USER_SincronizarDataHora := StrToDateTime( '31/12/1899 00:00:00' );
               exit;
            End;
         End;
      End;
   End;
end;

Function USER_NumeroCupom( fFabricanteECF : TFabricanteECF; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): String;
Var liRetorno  : Integer;
    lsNumCupom : String;
Begin
   USER_NumeroCupom := '';

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Consultando nº do último cupom impresso...';
      fsLabel.Update;
   End;
   Case fFabricanteECF Of
      feBematech :
      Begin
        lsNumCupom := IncDigito( '', ' ', 6, 0 );
        liRetorno := Bematech_FI_NumeroCupom( lsNumCupom );
        If liRetorno <> 1 Then
        Begin
           If prbExibirMsgErro Then
              CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar capturar o nº do cupom!', ctErro, [ cbOK ], 0 );
           Exit;
        End;
      End;
      feDaruma :
      Begin
         lsNumCupom := IncDigito( '', ' ', 6, 0 );
         liRetorno := Daruma_FI_NumeroCupom( lsNumCupom );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar capturar o nº do cupom!', ctErro, [ cbOK ], 0 );
            Exit;
         End;
      End;
      feSweda :
      Begin
         lsNumCupom := IncDigito( '', ' ', 6, 0 );
         liRetorno := SWEDA_NumeroCupom( lsNumCupom );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar capturar o nº do cupom!', ctErro, [ cbOK ], 0 );
            Exit;
         End;
      End;
      feElgin :
      Begin
         lsNumCupom := IncDigito( '', ' ', 6, 0 );
         liRetorno := Elgin_FI_NumeroCupom( lsNumCupom );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar capturar o nº do cupom!', ctErro, [ cbOK ], 0 );
            Exit;
         End;
      End;
      feEpson :
      Begin
         lsNumCupom := IncDigito( '', ' ', 100, 0 );
         liRetorno  := Epson_FI_ObterContadores( lsNumCupom );
         lsNumCupom := Copy( Trim( lsNumCupom ), 1, 6 );
         If liRetorno <> 0 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar capturar o nº do cupom!', ctErro, [ cbOK ], 0 );
            Exit;
         End;
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   USER_NumeroCupom := lsNumCupom;
end;

Function USER_CupomAberto( fFabricanteECF : TFabricanteECF; fTipoCupom : Char = 'F'; fsLabel : TLabel = Nil ): Boolean;
var liRetorno        : Integer;
    //lsStatus       : String;
    //lsMandarFiscal : String;
    //CharBuffer     : Array [0..2000] Of Char;
    lsEstado         : String;
Begin
   USER_CupomAberto := False;
   liRetorno        := 0;
   Case fFabricanteECF Of
      feBematech :
      Begin
         If Bematech_FI_FlagsFiscais( liRetorno ) <> 1 Then
         Begin
            CaixaMensagem( 'Erro ao enviar dados para Impressora. Erro : ' + IntToStr( liRetorno ), ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If liRetorno >= 128 Then // Memória Fiscal sem espaço
            liRetorno := liRetorno - 128;
         If liRetorno >= 64 Then
            liRetorno := liRetorno - 64;
         If liRetorno >= 32 Then // Permite cancelar cupom fiscal
            liRetorno := liRetorno - 32;
         If liRetorno >= 16 Then
            liRetorno := liRetorno - 16;
         If liRetorno >= 8 Then // Já houve reduções no dia
            liRetorno := liRetorno - 8;
         If liRetorno >= 4 Then // Horário de Verão Selecionado
            liRetorno := liRetorno - 4;
         If liRetorno >= 2 Then // Fechamento de formas de pagamento iniciado
            liRetorno := liRetorno - 2;

         If liRetorno = 1 Then
            USER_CupomAberto := True;
      End;
      feDaruma :
      Begin
         If Daruma_FI_FlagsFiscais( liRetorno ) <> 1 Then
         Begin
            CaixaMensagem( 'Erro ao enviar dados para Impressora. Erro : ' + IntToStr( liRetorno ), ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If liRetorno >= 128 Then // Memória Fiscal sem espaço
            liRetorno := liRetorno - 128;
         If liRetorno >= 64 Then
            liRetorno := liRetorno - 64;
         If liRetorno >= 32 Then // Permite cancelar cupom fiscal
            liRetorno := liRetorno - 32;
         If liRetorno >= 16 Then
            liRetorno := liRetorno - 16;
         If liRetorno >= 8 Then // Já houve reduções no dia
            liRetorno := liRetorno - 8;
         If liRetorno >= 4 Then // Horário de Verão Selecionado
            liRetorno := liRetorno - 4;
         If liRetorno >= 2 Then // Fechamento de formas de pagamento iniciado
            liRetorno := liRetorno - 2;

         If liRetorno = 1 Then
            USER_CupomAberto := True;
      End;
      feSweda :
      Begin
         If SWEDA_FlagsFiscais( liRetorno ) <> 1 Then
         Begin
            CaixaMensagem( 'Erro ao enviar dados para Impressora. Erro : ' + IntToStr( liRetorno ), ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If liRetorno >= 128 Then // Memória Fiscal sem espaço
            liRetorno := liRetorno - 128;
         If liRetorno >= 64 Then
            liRetorno := liRetorno - 64;
         If liRetorno >= 32 Then // Permite cancelar cupom fiscal
            liRetorno := liRetorno - 32;
         If liRetorno >= 16 Then
            liRetorno := liRetorno - 16;
         If liRetorno >= 8 Then // Já houve reduções no dia
            liRetorno := liRetorno - 8;
         If liRetorno >= 4 Then // Horário de Verão Selecionado
            liRetorno := liRetorno - 4;
         If liRetorno >= 2 Then // Fechamento de formas de pagamento iniciado
            liRetorno := liRetorno - 2;

         If liRetorno = 1 Then
            USER_CupomAberto := True;
      End;
      feElgin :
      Begin
         If Elgin_FI_FlagsFiscais( liRetorno ) <> 1 Then
         Begin
            CaixaMensagem( 'Erro ao enviar dados para Impressora. Erro : ' + IntToStr( liRetorno ), ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If liRetorno >= 128 Then // Memória Fiscal sem espaço
            liRetorno := liRetorno - 128;
         If liRetorno >= 64 Then
            liRetorno := liRetorno - 64;
         If liRetorno >= 32 Then // Permite cancelar cupom fiscal
            liRetorno := liRetorno - 32;
         If liRetorno >= 16 Then
            liRetorno := liRetorno - 16;
         If liRetorno >= 8 Then // Já houve reduções no dia
            liRetorno := liRetorno - 8;
         If liRetorno >= 4 Then // Horário de Verão Selecionado
            liRetorno := liRetorno - 4;
         If liRetorno >= 2 Then // Fechamento de formas de pagamento iniciado
            liRetorno := liRetorno - 2;

         If liRetorno = 1 Then
            USER_CupomAberto := True;
      End;
      feEpson :
      Begin
         // Byte 0-1 : Tipo de Cupom:
         // 00 – Não há cupom aberto.
         // 01 – Cupom Fiscal aberto.
         // 02 – Comprovante de Credito ou Debito aberto.
         // 03 – Cupom de cancelamento de CCD aberto.
         // 04 – Relatório Gerencial aberto.
         // 05 – Cupom Não-Fiscal aberto.

          //         1         2         3         4         5         6
          //123456789.123456789.123456789.123456789.123456789.123456789.
          //0100000800000000000000000000000000000005000500000018002000
          lsEstado := IncDigito( '', ' ', 60, 0 );
          liRetorno := Epson_FI_EstadoCupom( lsEstado );
          lsEstado := Trim( lsEstado );
          If liRetorno <> 0 Then
          Begin
            // CaixaMensagem( 'Erro ao tentar consultar o cupom aberto. Erro : ' + IntToStr( liRetorno ), ctAvisocomLOG, [ cbOk ], 0 );
             Exit;
          End;

          If UpperCase( Trim( fTipoCupom ) ) = 'F' Then // Cupom Fiscal
             USER_CupomAberto := StrToInt( Copy( lsEstado, 1, 2 ) ) = 1
          Else
             USER_CupomAberto := StrToInt( Copy( lsEstado, 1, 2 ) ) > 1;
      End;
   End;
end;

Function USER_JaHouveReducaoZ( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): Boolean;
var liRet, liRetorno: integer;
Begin
   USER_JaHouveReducaoZ := False;
   Case fFabricanteECF Of
      feBematech :
      Begin
         liRet := Bematech_FI_FlagsFiscais( liRetorno );
         If ( liRet <> 0 ) and
            ( liRet <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ao enviar dados para Impressora. Erro : ' + IntToStr( liRetorno ), ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If liRetorno >= 128 Then
            liRetorno := liRetorno - 128;
         If liRetorno >= 64 Then
            liRetorno := liRetorno - 64;
         If liRetorno >= 32 Then
            liRetorno := liRetorno - 32;
         If liRetorno >= 16 Then
            liRetorno := liRetorno - 16;
         If liRetorno >= 8 Then
            USER_JaHouveReducaoZ := True;
      End;
      feDaruma :
      Begin
         liRet := Daruma_FI_FlagsFiscais( liRetorno );
         If ( liRet <> 0 ) and
            ( liRet <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ao enviar dados para Impressora. Erro : ' + IntToStr( liRetorno ), ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If liRetorno >= 128 Then
            liRetorno := liRetorno - 128;
         If liRetorno >= 64 Then
            liRetorno := liRetorno - 64;
         If liRetorno >= 32 Then
            liRetorno := liRetorno - 32;
         If liRetorno >= 16 Then
            liRetorno := liRetorno - 16;
         If liRetorno >= 8 Then
            USER_JaHouveReducaoZ := True;
      End;
      feSweda :
      Begin
         liRet := SWEDA_FlagsFiscais( liRetorno );
         If ( liRet <> 0 ) and
            ( liRet <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ao enviar dados para Impressora. Erro : ' + IntToStr( liRetorno ), ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If liRetorno >= 128 Then
            liRetorno := liRetorno - 128;
         If liRetorno >= 64 Then
            liRetorno := liRetorno - 64;
         If liRetorno >= 32 Then
            liRetorno := liRetorno - 32;
         If liRetorno >= 16 Then
            liRetorno := liRetorno - 16;
         If liRetorno >= 8 Then
            USER_JaHouveReducaoZ := True;
      End;
      feElgin :
      Begin
         liRet := Elgin_FI_FlagsFiscais( liRetorno );
         If ( liRet <> 0 ) and
            ( liRet <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ao enviar dados para Impressora. Erro : ' + IntToStr( liRetorno ), ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If liRetorno >= 128 Then
            liRetorno := liRetorno - 128;
         If liRetorno >= 64 Then
            liRetorno := liRetorno - 64;
         If liRetorno >= 32 Then
            liRetorno := liRetorno - 32;
         If liRetorno >= 16 Then
            liRetorno := liRetorno - 16;
         If liRetorno >= 8 Then
            USER_JaHouveReducaoZ := True;
      End;
   End;
end;

Function USER_TotalizaCupom( fFabricanteECF : TFabricanteECF; prrVlr_Venda: Real; prsTipo_AcreDesc: string; prrVlr_AcreDesc: Real; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
Var liRetorno : Integer;
    lsRetorno : String;
    lsErro    : String;
    lrVlr_Cupom: Real;
Begin
   USER_TotalizaCupom := False;

   // -> Se o valor da venda estiver zero ou negativo
   If prrVlr_Venda <= 0 Then
   Begin
      CaixaMensagem( 'Valor da venda inválido. Entre em contato com a Tec-Soft', ctAviso, [ cbOk ], 0 );
      exit;
   end;
   // <- Se o valor da venda estiver zero ou negativo

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Capturando o subtotal do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o subtotal do cupom...';
            fsLabel.Update;
         End;

         lsRetorno := IncDigito( '', ' ', 14, 0 );
         liRetorno := Bematech_FI_Subtotal( lsRetorno );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom', ctErro, [ cbOk ], 0 );
            End
            Else
            Begin
               {
               LogBookTXT( gsOperador,
                           gsdata_mov,
                           FormatDateTime( 'hh:mm:ss', Now ),
                           'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom. CAIXA ' + frmMenu.lblNome_Caixa.Caption );
                           }
            End;

            Exit;
         End;
         lrVlr_Cupom := StrToFloat( lsRetorno ) / 100;
         // <- Capturando o subtotal do cupom

         // -> Verificando se o valor do cupom está igual ao da venda
         If prsTipo_AcreDesc = 'D' Then
         Begin
            If Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               End
               Else
               Begin
                   {
                  LogBookTXT( gsOperador,
                              gsdata_mov,
                              FormatDateTime( 'hh:mm:ss', Now ),
                              'Valor total do cupom diverge do valor da venda. CAIXA ' + frmMenu.lblNome_Caixa.Caption );
                              }
               End;
               Exit;
            End;
         End
         Else If prsTipo_AcreDesc = 'A' Then
         Begin
            If Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               End
               Else
               Begin
               End;
               Exit;
            End;
         End;
         // <- Verificando se o valor do cupom está igual ao da venda

         // -> Iniciando fechamento do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando início do fechamento do cupom...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_IniciaFechamentoCupom( prsTipo_AcreDesc, '$', FormatFloat( '000', prrVlr_AcreDesc * 100 ) );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar o início do fechamento do cupom', ctErro, [ cbOk ], 0 );
            End
            Else
            Begin
            End;
            Exit;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_TotalizaCupom := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Iniciando fechamento do cupom
      End;
      feDaruma :
      Begin
         // -> Capturando o subtotal do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o subtotal do cupom...';
            fsLabel.Update;
         End;

         lsRetorno := IncDigito( '', ' ', 14, 0 );
         liRetorno := Daruma_FI_Subtotal( lsRetorno );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom', ctErro, [ cbOk ], 0 );
            End
            Else
            Begin
            End;

            Exit;
         End;
         lrVlr_Cupom := StrToFloat( lsRetorno ) / 100;
         // <- Capturando o subtotal do cupom

         // -> Verificando se o valor do cupom está igual ao da venda
         If prsTipo_AcreDesc = 'D' Then
         Begin
            If Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               End
               Else
               Begin
               End;
               Exit;
            End;
         End
         Else If prsTipo_AcreDesc = 'A' Then
         Begin
            If Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               End
               Else
               Begin
               End;
               Exit;
            End;
         End;
         // <- Verificando se o valor do cupom está igual ao da venda

         // -> Iniciando fechamento do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando início do fechamento do cupom...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_IniciaFechamentoCupom( prsTipo_AcreDesc, '$', FormatFloat( '000', prrVlr_AcreDesc * 100 ) );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar o início do fechamento do cupom', ctErro, [ cbOk ], 0 );
            End
            Else
            Begin
            End;
            Exit;
         End;
         // <- Iniciando fechamento do cupom
      End;
      feSweda :
      Begin
         // -> Capturando o subtotal do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o subtotal do cupom...';
            fsLabel.Update;
         End;

         lsRetorno := IncDigito( '', ' ', 14, 0 );
         liRetorno := SWEDA_Subtotal( lsRetorno );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom', ctErro, [ cbOk ], 0 );
            End
            Else
            Begin
            End;

            Exit;
         End;
         lrVlr_Cupom := StrToFloat( lsRetorno ) / 100;
         // <- Capturando o subtotal do cupom

         // -> Verificando se o valor do cupom está igual ao da venda
         If prsTipo_AcreDesc = 'D' Then
         Begin
            If Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               End;
               Exit;
            End;
         End
         Else If prsTipo_AcreDesc = 'A' Then
         Begin
            If Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               End
               Else
               Begin
               End;
               Exit;
            End;
         End;
         // <- Verificando se o valor do cupom está igual ao da venda

         // -> Iniciando fechamento do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando início do fechamento do cupom...';
            fsLabel.Update;
         End;

         liRetorno := SWEDA_IniciaFechamentoCupom( prsTipo_AcreDesc, '$', FormatFloat( '000', prrVlr_AcreDesc * 100 ) );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar o início do fechamento do cupom', ctErro, [ cbOk ], 0 );
            End
            Else
            Begin
            End;
            Exit;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_TotalizaCupom := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Iniciando fechamento do cupom
      End;
      feElgin :
      Begin
         // -> Capturando o subtotal do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o subtotal do cupom...';
            fsLabel.Update;
         End;

         lsRetorno := IncDigito( '', ' ', 14, 0 );
         liRetorno := Elgin_FI_Subtotal( lsRetorno );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            End;

            Exit;
         End;
         lrVlr_Cupom := StrToFloat( lsRetorno ) / 100;
         // <- Capturando o subtotal do cupom

         // -> Verificando se o valor do cupom está igual ao da venda
         If prsTipo_AcreDesc = 'D' Then
         Begin
            If Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               End
               Else
               Begin
               End;
               Exit;
            End;
         End
         Else If prsTipo_AcreDesc = 'A' Then
         Begin
            If Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               End
               Else
               Begin
               End;
               Exit;
            End;
         End;
         // <- Verificando se o valor do cupom está igual ao da venda

         // -> Iniciando fechamento do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando início do fechamento do cupom...';
            fsLabel.Update;
         End;

         liRetorno := Elgin_FI_IniciaFechamentoCupom( prsTipo_AcreDesc, '$', FormatFloat( '000', prrVlr_AcreDesc * 100 ) );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar o início do fechamento do cupom', ctErro, [ cbOk ], 0 );
            End
            Else
            Begin
            End;
            Exit;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_TotalizaCupom := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Iniciando fechamento do cupom
      End;
      feEpson :
      Begin
         // -> Capturando o subtotal do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o subtotal do cupom...';
            fsLabel.Update;
         End;

         lsRetorno := IncDigito( '', ' ', 20, 0 );
         liRetorno := Epson_FI_SubTotal( lsRetorno );
         If liRetorno <> 0 Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom', ctErro, [ cbOk ], 0 );
            End
            Else
            Begin
            End;

            Exit;
         End;
         lrVlr_Cupom := StrToFloat( lsRetorno ) / 100;
         // <- Capturando o subtotal do cupom

         // -> Verificando se o valor do cupom está igual ao da venda
         If UpperCase( Trim( prsTipo_AcreDesc ) ) = 'D' Then // Desconto
         Begin
            If Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               //CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else If UpperCase( Trim( prsTipo_AcreDesc ) ) = 'A' Then // Acréscimo
         Begin
            If Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               //CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               Exit;
            End;
         End;
         // <- Verificando se o valor do cupom está igual ao da venda

         If Arredondar( prrVlr_AcreDesc, 2 ) <> 0 Then
         Begin
            liRetorno := Epson_FI_TotalizaCupom( FormatFloat( '0', prrVlr_AcreDesc * 100 ) , 2, UpperCase( Trim( prsTipo_AcreDesc ) ) = 'D', False );
            If liRetorno <> 0 Then
            Begin
               //CaixaMensagem( 'Não foi possível efetuar o desconto/acréscimo!', ctAvisocomLOG, [ cbOk ], 0 );
               Exit;
            End;
         End;
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   USER_TotalizaCupom := True;
end;

Function USER_FormaPagamento( fFabricanteECF : TFabricanteECF; prsFormaPagamento: string; prrVlr_Recebido: Real; fsLabel: TLabel = Nil ): Boolean;
Var liRetorno           : Integer;
    liCont              : Integer;
    liIndex             : Integer;
    lsNomeTPGECF        : String;
    lsErro              : String;
    llstFormasPagamento : TStringList;
Begin
   USER_FormaPagamento := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Imprimindo forma de pagamento
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da forma de pagamento...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_EfetuaFormaPagamento( prsFormaPagamento, FormatFloat( '000', prrVlr_Recebido * 100 ) );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a impressão da forma de pagamento para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_FormaPagamento := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo forma de pagamento
      End;
      feDaruma :
      Begin
         // -> Imprimindo forma de pagamento
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da forma de pagamento...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_EfetuaFormaPagamento( prsFormaPagamento, FormatFloat( '000', prrVlr_Recebido * 100 ) );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a impressão da forma de pagamento para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo forma de pagamento
      End;
      feSweda :
      Begin
         // -> Imprimindo forma de pagamento
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da forma de pagamento...';
            fsLabel.Update;
         End;

         liRetorno := SWEDA_EfetuaFormaPagamento( prsFormaPagamento, FormatFloat( '000', prrVlr_Recebido * 100 ) );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a impressão da forma de pagamento para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_FormaPagamento := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo forma de pagamento
      End;
      feElgin :
      Begin
         // -> Imprimindo forma de pagamento
         prsFormaPagamento := UpperCase( Copy( prsFormaPagamento, 001, 001 ) ) +
                              UpperCase( Copy( prsFormaPagamento, 002, 015 ) );

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da forma de pagamento...';
            fsLabel.Update;
         End;

         liRetorno := Elgin_FI_EfetuaFormaPagamento( prsFormaPagamento, FormatFloat( '000', prrVlr_Recebido * 100 ) );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a impressão da forma de pagamento para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo forma de pagamento

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso do registro das formas de pgto....';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_FormaPagamento := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
      feEpson :
      Begin
         // -> Imprimindo forma de pagamento
         prsFormaPagamento := AnsiUpperCase( Copy( prsFormaPagamento, 001, 001 ) ) +
                              AnsiLowerCase( Copy( prsFormaPagamento, 002, 015 ) );

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Consultando cadastro da forma de pagamento no ECF...';
            fsLabel.Update;
         End;

         //llstFormasPagamento := TStringList.Create;
         //llstFormasPagamento.Clear;
         llstFormasPagamento := USER_CapturaFormasPagamento( gECFemUso );
         liIndex := -1;
         For liCont := 1 to llstFormasPagamento.Count do
         Begin
            lsNomeTPGECF := Copy( llstFormasPagamento[ liCont - 1 ], 1, Pos( ';', llstFormasPagamento[ liCont - 1 ] ) - 1 );
            If AnsiUpperCase( Trim( lsNomeTPGECF ) ) = AnsiUpperCase( Trim( prsFormaPagamento ) ) Then
            Begin
               prsFormaPagamento := lsNomeTPGECF;
               liIndex := liCont - 1;
               Break;
            End;
         End;
         If liIndex = -1 Then
         Begin
  //          CaixaMensagem( 'Tipo de pagamento "' + prsFormaPagamento + '" não localizado no ECF!', ctAvisocomLOG, [ cbOk ], 0 );
            Exit;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da forma de pagamento...';
            fsLabel.Update;
         End;
         liRetorno := Epson_FI_EfetuaFormaPagamento( PChar( FormatFloat( '0', liIndex + 1 ) ),
                                                     PChar( FormatFloat( '0', prrVlr_Recebido * 100 ) ),
                                                     2,
                                                     PChar( '' ),
                                                     PChar( '' ) );


         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso do registro das formas de pgto....';
            fsLabel.Update;;
         End;
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a impressão da forma de pagamento para o ECF!', ctaviso, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo forma de pagamento

         FreeAndNil( llstFormasPagamento );
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   USER_FormaPagamento := True;
end;

Function USER_FechaCupom( fFabricanteECF : TFabricanteECF; prsMensagem: string; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
Var liRetorno: Integer;
    liCont   : Integer;
    liPosicao: Integer;
    lsErro   : String;
    lsLinha1 : String;
    lsLinha2 : String;
    lsLinha3 : String;
    lsLinha4 : String;
    lsLinha5 : String;
    lsLinha6 : String;
    lsLinha7 : String;
    lsLinha8 : String;
    lsLinha  : String;

Begin
   USER_FechaCupom := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Finalizando o cupom fiscal
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a finalização do cupom fiscal...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_TerminaFechamentoCupom( prsMensagem );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a finalização do cupom fiscal para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_FechaCupom := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Finalizando o cupom fiscal
      End;
      feDaruma :
      Begin
         // -> Finalizando o cupom fiscal
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a finalização do cupom fiscal...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_TerminaFechamentoCupom( prsMensagem );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a finalização do cupom fiscal para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Finalizando o cupom fiscal
      End;
      feSweda :
      Begin
         // -> Finalizando o cupom fiscal
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a finalização do cupom fiscal...';
            fsLabel.Update;
         End;

         liRetorno := SWEDA_TerminaFechamentoCupom( prsMensagem );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a finalização do cupom fiscal para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da impressão do item do cupom...';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_FechaCupom := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Finalizando o cupom fiscal
      End;
      feElgin :
      Begin
         // -> Finalizando o cupom fiscal
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a finalização do cupom fiscal...';
            fsLabel.Update;
         End;

         liRetorno := Elgin_FI_TerminaFechamentoCupom( prsMensagem );
         If liRetorno <> 1 Then
         Begin
            //CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a finalização do cupom fiscal para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Finalizando o cupom fiscal

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso do fechamento do cupom fiscal....';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_FechaCupom := False;
            CaixaMensagem( lsErro, ctConfirma, [ cbSimNao ], 0 );
            Exit;
         End;
      End;
      // <- Finalizando o cupom fiscal
      feEpson :
      Begin
         // -> Finalizando o cupom fiscal
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a finalização do cupom fiscal...';
            fsLabel.Update;
         End;

         lsLinha1 := ' ';
         lsLinha2 := ' ';
         lsLinha3 := ' ';
         lsLinha4 := ' ';
         lsLinha5 := ' ';
         lsLinha6 := ' ';
         lsLinha7 := ' ';
         lsLinha8 := ' ';
         For liCont := 1 To 8 Do
         Begin
            liPosicao := Pos( #13#10, Copy( prsMensagem, 1, 56 ) );
            If liPosicao <= 0 Then
            Begin
               liPosicao := 56;
               lsLinha := Copy( prsMensagem, 1, liPosicao );
            End
            Else
               lsLinha := Copy( prsMensagem, 1, liPosicao - 1 );

            Case liCont Of
               1 : lsLinha1 := lsLinha;
               2 : lsLinha2 := lsLinha;
               3 : lsLinha3 := lsLinha;
               4 : lsLinha4 := lsLinha;
               5 : lsLinha5 := lsLinha;
               6 : lsLinha6 := lsLinha;
               7 : lsLinha7 := lsLinha;
               8 : lsLinha8 := lsLinha;
            End;
            If Pos( #10#13, Copy( prsMensagem, 1, 56 ) ) > 0 Then
               Delete( prsMensagem, 1, liPosicao )
            Else
               Delete( prsMensagem, 1, liPosicao + 1 );
         End;

         liRetorno := Epson_FI_MensagemCupom( PChar( lsLinha1 ),
                                              PChar( lsLinha2 ),
                                              PChar( lsLinha3 ),
                                              PChar( lsLinha4 ),
                                              PChar( Trim( lsLinha5 ) ),
                                              PChar( Trim( lsLinha6 ) ),
                                              PChar( Trim( lsLinha7 ) ),
                                              PChar( Trim( lsLinha8 ) ) );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a mensagem do cupom fiscal para o ECF!', ctaviso, [ cbOk ], 0 );
            Exit;
         End;

         liRetorno := Epson_FI_FechaCupom( True, False );
         If liRetorno <> 0 Then
         Begin
            //CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar a finalização do cupom fiscal para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Finalizando o cupom fiscal

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso do fechamento do cupom fiscal....';
            fsLabel.Update;;
         End;
      End;
      // <- Finalizando o cupom fiscal
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   USER_FechaCupom := True;
end;

Function USER_AbrirCupomNaoFiscalVinculado( fFabricanteECF : TFabricanteECF; prsFormaPagamento: string; prrVlr_Recebido: Real; prsNumeroCupom: string; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
Var liRetorno          : Integer;
    liCont             : Integer;
    liIndex            : Integer;
    llstFormasPagamento: TStringList;
    lsNumeroCupom      : String;
    lsNomeTPGECF       : String;
    lsErro             : String; 
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Abrindo cupom não fiscal vinculado
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Abrindo cupom não fiscal vinculado...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado( prsFormaPagamento, FormatFloat( '000', prrVlr_Recebido * 100 ), prsNumeroCupom );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao abrir cupom não fiscal vinculado!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abrindo cupom não fiscal vinculado

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da abertura do cupom não fiscal vinculado....';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
      feDaruma :
      Begin
         // -> Abrindo cupom não fiscal vinculado
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Abrindo cupom não fiscal vinculado...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_AbreComprovanteNaoFiscalVinculado( prsFormaPagamento, FormatFloat( '000', prrVlr_Recebido * 100 ), prsNumeroCupom );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao abrir cupom não fiscal vinculado!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abrindo cupom não fiscal vinculado
      End;
      feSweda :
      Begin
         // -> Abrindo cupom não fiscal vinculado
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Abrindo cupom não fiscal vinculado...';
            fsLabel.Update;
         End;

         liRetorno := SWEDA_AbreComprovanteNaoFiscalVinculado( prsFormaPagamento, FormatFloat( '000', prrVlr_Recebido * 100 ), prsNumeroCupom );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao abrir cupom não fiscal vinculado!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abrindo cupom não fiscal vinculado
      End;
      feElgin :
      Begin
         // -> Abrindo cupom não fiscal vinculado
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Abrindo cupom não fiscal vinculado...';
            fsLabel.Update;
         End;
         prsFormaPagamento := UpperCase( Copy( prsFormaPagamento, 001, 001 ) ) +
                              UpperCase( Copy( prsFormaPagamento, 002, 015 ) );

         liRetorno := Elgin_FI_AbreComprovanteNaoFiscalVinculado( prsFormaPagamento, FormatFloat( '000', prrVlr_Recebido * 100 ), prsNumeroCupom );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao abrir cupom não fiscal vinculado!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abrindo cupom não fiscal vinculado
      End;
      feEpson :
      Begin
         // -> Abrindo cupom não fiscal vinculado
         prsFormaPagamento := AnsiUpperCase( Copy( prsFormaPagamento, 001, 001 ) ) +
                              AnsiLowerCase( Copy( prsFormaPagamento, 002, 015 ) );

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Consultando cadastro da forma de pagamento no ECF...';
            fsLabel.Update;
         End;

         //llstFormasPagamento := TStringList.Create;
         //llstFormasPagamento.Clear;
         llstFormasPagamento := USER_CapturaFormasPagamento( gECFemUso );
         liIndex := -1;
         For liCont := 1 to llstFormasPagamento.Count do
         Begin
            lsNomeTPGECF := Copy( llstFormasPagamento[ liCont - 1 ], 1, Pos( ';', llstFormasPagamento[ liCont - 1 ] ) - 1 );
            If AnsiUpperCase( Trim( lsNomeTPGECF ) ) = AnsiUpperCase( Trim( prsFormaPagamento ) ) Then
            Begin
               prsFormaPagamento := lsNomeTPGECF;
               liIndex := liCont - 1;
               Break;
            End;
         End;
         If liIndex = -1 Then
         Begin
            CaixaMensagem( 'Tipo de pagamento "' + prsFormaPagamento + '" não localizado no ECF!', ctaviso, [ cbOk ], 0 );
            Exit;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Abrindo cupom não fiscal vinculado...';
            fsLabel.Update;
         End;

         liRetorno := Epson_FI_AbreComprovanteNaoFiscalVinculado( PChar( FormatFloat( '0', liIndex + 1 ) ),
                                                                  PChar( FormatFloat( '0', prrVlr_Recebido * 100 ) ),
                                                                  2,
                                                                  '1' );
         If liRetorno <> 0 Then
         Begin
            //CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao abrir cupom não fiscal vinculado!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abrindo cupom não fiscal vinculado

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da abertura do cupom não fiscal vinculado....';
            fsLabel.Update;;
         End;
         FreeAndNil( llstFormasPagamento );

         lsNumeroCupom := IncDigito( '', ' ', 100, 0 );
         liRetorno     := Epson_FI_ObterContadores( lsNumeroCupom );
         lsNumeroCupom := Copy( Trim( lsNumeroCupom ), 1, 6 );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar capturar o nº do cupom!', ctErro, [ cbOK ], 0 );
            Exit;
         End;
         // Se o número capturado for igual ao número do cupom fiscal
         // signIfica que o cupom Vinculado não foi aberto
         // VerIfique se os parâmetros passados para a função condizem com os
         // dados do cupom fiscal
         If lsNumeroCupom = prsNumeroCupom Then
            Exit;
        // <- Capturando o número do cupom
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
end;

Function USER_ImprimirNaoFiscalNaoVinculado( fFabricanteECF : TFabricanteECF; fsTipo : String; frValor : Real; fsNomeTPG : String; fsLabel : TLabel = Nil ) : Boolean;
Var lsTotalizadores      : String;
    lsTemp               : String;
    lsErro               : String;
    liRetorno            : Integer;
    liCont               : Integer;
    lbTotalizadorExiste  : Boolean;
    //CharBuffer           : Array [0..2000] Of Char;
Begin
   Result := False;
   Case fFabricanteECF Of
      feBematech :
      Begin
         fsNomeTPG := AnsiUpperCase( Copy( fsNomeTPG, 1, 1 ) ) +
                      AnsiLowerCase( Copy( fsNomeTPG, 2, 15 ) );
         fsTipo := UpperCase( Trim( fsTipo ) );
         If fsTipo = 'SA' Then // Sangria
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de sangria...';
               fsLabel.Update;
            End;

            liRetorno := Bematech_FI_Sangria( PChar( FormatFloat( '0.00', frValor ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir a sangria no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else If fsTipo = 'SU' Then // Suprimento ( Entrada )
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de suprimento...';
               fsLabel.Update;
            End;

            liRetorno := Bematech_FI_Suprimento( PChar( FormatFloat( '0.00', frValor ) ), PChar( Copy( fsNomeTPG, 1, 16 ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o suprimento no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando existência do totalizador parcial "' + fsTipo + '"...';
               fsLabel.Update;
            End;

            lsTotalizadores := IncDigito( ' ', ' ', 179, 0 );
            liRetorno := Bematech_FI_VerificaTotalizadoresNaoFiscais( lsTotalizadores );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Não é possível obter os totalizadores parciais não sujeitos ao ICMS do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
               Exit;
            End;
            liCont := 0;
            lbTotalizadorExiste := False;
            While Length( lsTotalizadores ) > 0 Do
            Begin
               lsTemp := '';
               If Pos( ',', lsTotalizadores ) = 0 Then
               Begin
                  lsTemp          := Trim( Copy( lsTotalizadores, 1, Length( lsTotalizadores ) ) );
                  lsTotalizadores := '';
               End
               Else
               Begin
                  lsTemp := Trim( Copy( lsTotalizadores, 1, Pos( ',', lsTotalizadores ) - 1 ) );
                  Delete( lsTotalizadores, 1, Pos( ',', lsTotalizadores ) );
               End;

               If Trim( lsTemp ) <> '' Then
               Begin
                  liCont := liCont + 1;
                  If liCont = StrToIntDef( fsTipo, 0 ) Then
                  Begin
                     fsNomeTPG := Trim( lsTemp );
                     lbTotalizadorExiste := True;
                     Break;
                  End;
               End;
            End;
            If NOT lbTotalizadorExiste Then
            Begin
               CaixaMensagem( 'Tipo de Cupom Não Fiscal Não Vinculado "' + fsTipo + '" desconhecido!', ctInforma, [ cbOk ], 0 );
               Exit;
            End;

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom não fiscal não vinculado...';
               fsLabel.Update;
            End;

            liRetorno := Bematech_FI_RecebimentoNaoFiscal( PChar( fsTipo ), PChar( FormatFloat( '0.00', frValor ) ), PChar( Copy( fsNomeTPG, 1, 16 ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o cupom não fiscal não vinculado no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := '';
            fsLabel.Update;
         End;
      End;
      feDaruma :
      Begin
         fsNomeTPG := AnsiUpperCase( Copy( fsNomeTPG, 1, 1 ) ) +
                      AnsiLowerCase( Copy( fsNomeTPG, 2, 15 ) );
         fsTipo := UpperCase( Trim( fsTipo ) );
         If fsTipo = 'SA' Then // Sangria
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de sangria...';
               fsLabel.Update;
            End;

            liRetorno := Daruma_FI_Sangria( PChar( FormatFloat( '0.00', frValor ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir a sangria no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else If fsTipo = 'SU' Then // Suprimento ( Entrada )
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de suprimento...';
               fsLabel.Update;
            End;

            liRetorno := Daruma_FI_Suprimento( PChar( FormatFloat( '0.00', frValor ) ), PChar( Copy( fsNomeTPG, 1, 16 ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o suprimento no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando existência do totalizador parcial "' + fsTipo + '"...';
               fsLabel.Update;
            End;

            lsTotalizadores := IncDigito( ' ', ' ', 179, 0 );
            liRetorno := Daruma_FI_VerificaTotalizadoresNaoFiscais( lsTotalizadores );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Não é possível obter os totalizadores parciais não sujeitos ao ICMS do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
               Exit;
            End;
            liCont := 0;
            lbTotalizadorExiste := False;
            While Length( lsTotalizadores ) > 0 Do
            Begin
               lsTemp := '';
               If Pos( ',', lsTotalizadores ) = 0 Then
               Begin
                  lsTemp          := Trim( Copy( lsTotalizadores, 1, Length( lsTotalizadores ) ) );
                  lsTotalizadores := '';
               End
               Else
               Begin
                  lsTemp := Trim( Copy( lsTotalizadores, 1, Pos( ',', lsTotalizadores ) - 1 ) );
                  Delete( lsTotalizadores, 1, Pos( ',', lsTotalizadores ) );
               End;

               If Trim( lsTemp ) <> '' Then
               Begin
                  liCont := liCont + 1;
                  If liCont = StrToIntDef( fsTipo, 0 ) Then
                  Begin
                     fsNomeTPG := Trim( lsTemp );
                     lbTotalizadorExiste := True;
                     Break;
                  End;
               End;
            End;
            If NOT lbTotalizadorExiste Then
            Begin
               CaixaMensagem( 'Tipo de Cupom Não Fiscal Não Vinculado "' + fsTipo + '" desconhecido!', ctInforma, [ cbOk ], 0 );
               Exit;
            End;

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom não fiscal não vinculado...';
               fsLabel.Update;
            End;

            liRetorno := Daruma_FI_RecebimentoNaoFiscal( PChar( fsTipo ), PChar( FormatFloat( '0.00', frValor ) ), PChar( Copy( fsNomeTPG, 1, 16 ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o cupom não fiscal não vinculado no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := '';
            fsLabel.Update;
         End;
      End;
      feSweda :
      Begin
         fsNomeTPG := AnsiUpperCase( Copy( fsNomeTPG, 1, 1 ) ) +
                      AnsiLowerCase( Copy( fsNomeTPG, 2, 15 ) );
         fsTipo := UpperCase( Trim( fsTipo ) );
         If fsTipo = 'SA' Then // Sangria
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de sangria...';
               fsLabel.Update;
            End;

            liRetorno := SWEDA_Sangria( PChar( FormatFloat( '0.00', frValor ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir a sangria no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else If fsTipo = 'SU' Then // Suprimento ( Entrada )
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de suprimento...';
               fsLabel.Update;
            End;

            liRetorno := SWEDA_Suprimento( PChar( FormatFloat( '0.00', frValor ) ), PChar( Copy( fsNomeTPG, 1, 16 ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o suprimento no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando existência do totalizador parcial "' + fsTipo + '"...';
               fsLabel.Update;
            End;

            lsTotalizadores := IncDigito( ' ', ' ', 179, 0 );
            liRetorno := SWEDA_VerificaTotalizadoresNaoFiscais( lsTotalizadores );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Não é possível obter os totalizadores parciais não sujeitos ao ICMS do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
               Exit;
            End;
            liCont := 0;
            lbTotalizadorExiste := False;
            While Length( lsTotalizadores ) > 0 Do
            Begin
               lsTemp := '';
               If Pos( ',', lsTotalizadores ) = 0 Then
               Begin
                  lsTemp          := Trim( Copy( lsTotalizadores, 1, Length( lsTotalizadores ) ) );
                  lsTotalizadores := '';
               End
               Else
               Begin
                  lsTemp := Trim( Copy( lsTotalizadores, 1, Pos( ',', lsTotalizadores ) - 1 ) );
                  Delete( lsTotalizadores, 1, Pos( ',', lsTotalizadores ) );
               End;

               If Trim( lsTemp ) <> '' Then
               Begin
                  liCont := liCont + 1;
                  If liCont = StrToIntDef( fsTipo, 0 ) Then
                  Begin
                     fsNomeTPG := Trim( lsTemp );
                     lbTotalizadorExiste := True;
                     Break;
                  End;
               End;
            End;
            If NOT lbTotalizadorExiste Then
            Begin
               CaixaMensagem( 'Tipo de Cupom Não Fiscal Não Vinculado "' + fsTipo + '" desconhecido!', ctInforma, [ cbOk ], 0 );
               Exit;
            End;

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom não fiscal não vinculado...';
               fsLabel.Update;
            End;

            liRetorno := SWEDA_RecebimentoNaoFiscal( PChar( fsTipo ), PChar( FormatFloat( '0.00', frValor ) ), PChar( Copy( fsNomeTPG, 1, 16 ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o cupom não fiscal não vinculado no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := '';
            fsLabel.Update;
         End;
      End;
      feElgin :
      Begin
         fsNomeTPG := AnsiUpperCase( Copy( fsNomeTPG, 1, 1 ) ) +
                      AnsiLowerCase( Copy( fsNomeTPG, 2, 15 ) );
         fsTipo := UpperCase( Trim( fsTipo ) );
         If fsTipo = 'SA' Then // Sangria
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de sangria...';
               fsLabel.Update;
            End;

            liRetorno := Elgin_FI_Sangria( PChar( FormatFloat( '0.00', frValor ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir a sangria no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else If fsTipo = 'SU' Then // Suprimento ( Entrada )
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de suprimento...';
               fsLabel.Update;
            End;

            liRetorno := Elgin_FI_Suprimento( PChar( FormatFloat( '0.00', frValor ) ), PChar( Copy( fsNomeTPG, 1, 16 ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o suprimento no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando existência do totalizador parcial "' + fsTipo + '"...';
               fsLabel.Update;
            End;

            lsTotalizadores := IncDigito( ' ', ' ', 179, 0 );
            liRetorno := Elgin_FI_VerificaTotalizadoresNaoFiscais( lsTotalizadores );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Não é possível obter os totalizadores parciais não sujeitos ao ICMS do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
               Exit;
            End;
            liCont := 0;
            lbTotalizadorExiste := False;
            While Length( lsTotalizadores ) > 0 Do
            Begin
               lsTemp := '';
               If Pos( ',', lsTotalizadores ) = 0 Then
               Begin
                  lsTemp          := Trim( Copy( lsTotalizadores, 1, Length( lsTotalizadores ) ) );
                  lsTotalizadores := '';
               End
               Else
               Begin
                  lsTemp := Trim( Copy( lsTotalizadores, 1, Pos( ',', lsTotalizadores ) - 1 ) );
                  Delete( lsTotalizadores, 1, Pos( ',', lsTotalizadores ) );
               End;

               If Trim( lsTemp ) <> '' Then
               Begin
                  liCont := liCont + 1;
                  If liCont = StrToIntDef( fsTipo, 0 ) Then
                  Begin
                     lbTotalizadorExiste := True;
                     Break;
                  End;
               End;
            End;
            If NOT lbTotalizadorExiste Then
            Begin
               CaixaMensagem( 'Tipo de Cupom Não Fiscal Não Vinculado "' + fsTipo + '" desconhecido!', ctInforma, [ cbOk ], 0 );
               Exit;
            End;

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom não fiscal não vinculado...';
               fsLabel.Update;
            End;

            liRetorno := Elgin_FI_RecebimentoNaoFiscal( PChar( fsTipo ), PChar( FormatFloat( '0.00', frValor ) ), PChar( Copy( fsNomeTPG, 1, 16 ) ) );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o cupom não fiscal não vinculado no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da impressão do não fiscal não vinculado...';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_ImprimirNaoFiscalNaoVinculado := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := '';
            fsLabel.Update;
         End;
      End;
      feEpson :
      Begin
         fsNomeTPG := AnsiUpperCase( Copy( fsNomeTPG, 1, 1 ) ) +
                      AnsiLowerCase( Copy( fsNomeTPG, 2, 15 ) );
         fsTipo := UpperCase( Trim( fsTipo ) );
         If fsTipo = 'SA' Then // Sangria
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de sangria...';
               fsLabel.Update;
            End;

            liRetorno := Epson_FI_Sangria( FormatFloat( '0', frValor * 100 ) , 2 );
            If liRetorno <> 0 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir a sangria no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else If fsTipo = 'SU' Then // Suprimento ( Entrada )
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de suprimento...';
               fsLabel.Update;
            End;

            liRetorno := Epson_FI_Suprimento( FormatFloat( '0', frValor * 100 ) , 2 );
            If liRetorno <> 0 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o suprimento no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End
         Else
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando existência do totalizador parcial "' + fsTipo + '"...';
               fsLabel.Update;
            End;

            lsTotalizadores := IncDigito( '', ' ', 681, 0 );
            liRetorno       := Epson_FI_ObterTabelaNaoFiscais( lsTotalizadores );
            lsTotalizadores := Copy ( Trim( lsTotalizadores ), 2, 16 );
            If liRetorno <> 0 Then
            Begin
               CaixaMensagem( 'Não é possível obter os totalizadores parciais não sujeitos ao ICMS do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
               Exit;
            End;
            liCont := 0;
            lbTotalizadorExiste := False;
            While Length( lsTotalizadores ) > 0 Do
            Begin
               lsTemp := '';
               If Pos( ',', lsTotalizadores ) = 0 Then
               Begin
                  lsTemp          := Trim( Copy( lsTotalizadores, 1, Length( lsTotalizadores ) ) );
                  lsTotalizadores := '';
               End
               Else
               Begin
                  lsTemp := Trim( Copy( lsTotalizadores, 1, Pos( ',', lsTotalizadores ) - 1 ) );
                  Delete( lsTotalizadores, 1, Pos( ',', lsTotalizadores ) );
               End;

               If Trim( lsTemp ) <> '' Then
               Begin
                  liCont := liCont + 1;
                  If liCont = StrToIntDef( fsTipo, 0 ) Then
                  Begin
                     lbTotalizadorExiste := True;
                     Break;
                  End;
               End;
            End;
            If NOT lbTotalizadorExiste Then
            Begin
               CaixaMensagem( 'Tipo de Cupom Não Fiscal Não Vinculado "' + fsTipo + '" desconhecido!', ctInforma, [ cbOk ], 0 );
               Exit;
            End;

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom não fiscal não vinculado...';
               fsLabel.Update;
            End;

            {liRetorno := Epson_FI_RecebimentoNaoFiscal( 1, ( FormatFloat( '0.00', frValor ) ), 2  ,' ', ' ' );
            If liRetorno <> 0 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o cupom não fiscal não vinculado no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;}
         End;

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da impressão do não fiscal não vinculado...';
            fsLabel.Update;;
         End;
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;
   Result := True;
End;

Function USER_RelatorioGerencial( fFabricanteECF : TFabricanteECF; prsTexto: string; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
Var liRetorno : Integer;
    lsErro    : String;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Imprimindo relatório gerencial
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão do relatóio gerencial...';
            fsLabel.Update;
         End;

         If prsTexto = '' Then
            prsTexto := ' ';

         liRetorno := Bematech_FI_RelatorioGerencial( prsTexto );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão do relatório gerencial para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo relatório gerencial
      End;
      feDaruma :
      Begin
         // -> Imprimindo relatório gerencial
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão do relatóio gerencial...';
            fsLabel.Update;
         End;

         If prsTexto = '' Then
            prsTexto := ' ';

         liRetorno := Daruma_FI_RelatorioGerencial( prsTexto );
         If ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão do relatório gerencial para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo relatório gerencial
      End;
      feSweda :
      Begin
         // -> Imprimindo relatório gerencial
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão do relatóio gerencial...';
            fsLabel.Update;
         End;

         If prsTexto = '' Then
            prsTexto := ' ';

         liRetorno := SWEDA_RelatorioGerencial( prsTexto );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão do relatório gerencial para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo relatório gerencial
      End;
      feElgin :
      Begin
         // -> Imprimindo relatório gerencial
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão do relatório gerencial...';
            fsLabel.Update;
         End;

         If Trim( prsTexto ) = '' Then
            prsTexto := ' ';

         liRetorno := Elgin_FI_AbreRelatorioGerencial( PChar( prsTexto ) );
         //liRetorno := Elgin_FI_RelatorioGerencial( PChar( prsTexto ) );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao solicitar o relatório gerencial ao ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo relatório gerencial

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da abertura do rel. gerencial....';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_RelatorioGerencial := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
      feEpson : 
      Begin
         // -> Imprimindo relatório gerencial
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão do relatório gerencial...';
            fsLabel.Update;
         End;

         If Trim( prsTexto ) = '' Then
            prsTexto := '1';

         liRetorno := Epson_FI_RelatorioGerencial( prsTexto );
         If liRetorno <> 0 Then
         Begin
            //CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao solicitar o relatório gerencial ao ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo relatório gerencial
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
end;

Function USER_FechaRelatorioGerencial( fFabricanteECF : TFabricanteECF; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
Var liRetorno : Integer;
    lsStatus  : String;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Fechando relatório gerencial
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando fechamento do relatóio gerencial...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_FechaRelatorioGerencial;
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar fechamento do relatório gerencial para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Fechando relatório gerencial
      End;
      feDaruma :
      Begin
         // -> Fechando relatório gerencial
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando fechamento do relatóio gerencial...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_FechaRelatorioGerencial;
         If ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar fechamento do relatório gerencial para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Fechando relatório gerencial
      End;
      feSweda :
      Begin
         {// -> Fechando Comprovante não Fiscal Vinculado
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando se há um Comprovante não Fiscal Vinculado aberto...';
            fsLabel.Update;
         End;

         lsStatus  := IncDigito( ' ', ' ', 2, 0 );
         liRetorno := SWEDA_StatusComprovanteNaoFiscalVinculado( lsStatus );
         lsStatus  := Trim( lsStatus );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao consultar o Status do Comprovante Não Fiscal Vinculado no ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If Trim( lsStatus ) = '1' Then // Comprovante Não Fiscal Vinculado Aberto
         Begin
            // -> Fechando Comprovante não Fiscal Vinculado
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Enviando fechamento do Comprovante não Fiscal Vinculado...';
               fsLabel.Update;
            End;

            liRetorno := SWEDA_FechaComprovanteNaoFiscalVinculado;
            liRetorno := SWEDA_FechaComprovanteNaoFiscalVinculado;
            If liRetorno <> 1 Then
            Begin
               If prbExibirMsgErro Then
                  CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar fechamento do Comprovante não Fiscal Vinculado para o ECF!!!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
            // <- Fechando Comprovante não Fiscal Vinculado
         End
         Else
         Begin}
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando se há um relatório gerencial aberto...';
               fsLabel.Update;
            End;

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando se há um Comprovante não Fiscal Vinculado aberto...';
               fsLabel.Update;
            End;

            lsStatus  := IncDigito( ' ', ' ', 2, 0 );
            liRetorno := SWEDA_StatusComprovanteNaoFiscalVinculado( lsStatus );
            lsStatus  := Trim( lsStatus );
            If liRetorno <> 1 Then
            Begin
               If prbExibirMsgErro Then
                  CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao consultar o Status do Comprovante Não Fiscal Vinculado no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;

            If Trim( lsStatus ) = '0' Then // Comprovante Não Fiscal Vinculado Fechado
            Begin
               lsStatus  := IncDigito( ' ', ' ', 2, 0 );
               liRetorno := SWEDA_StatusRelatorioGerencial( lsStatus );
               lsStatus  := Trim( lsStatus );
               If liRetorno <> 1 Then
               Begin
                  If prbExibirMsgErro Then
                     CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao consultar o Status do Rel. Gerencial no ECF!', ctErro, [ cbOk ], 0 );
                  Exit;
               End;
            End;
            If Trim( lsStatus ) = '1' Then // Comprovante não fiscal vinculado Aberto ou Relatório Gerencial Aberto
            Begin
               // -> Fechando relatório gerencial
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Enviando fechamento do relatóio gerencial...';
                  fsLabel.Update;
               End;

               liRetorno := SWEDA_FechaRelatorioGerencial;
               If liRetorno <> 1 Then
               Begin
                  If prbExibirMsgErro Then
                     CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar fechamento do relatório gerencial para o ECF!!!', ctErro, [ cbOk ], 0 );
                  Exit;
               End
               Else
                  SWEDA_FechaRelatorioGerencial;
               // <- Fechando relatório gerencial
            End;
         //End;
      End;
      feElgin :
      Begin
         // -> Fechando relatório gerencial
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando fechamento do relatório gerencial...';
            fsLabel.Update;
         End;

         liRetorno := Elgin_FI_FechaRelatorioGerencial;
         If liRetorno <> 1 Then
         Begin
            //CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar fechamento do relatório gerencial para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Fechando relatório gerencial

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso do fechamento do rel. gerencial....';
            fsLabel.Update;;
         End;

         {lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_FechaRelatorioGerencial := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;}
      End;
      feEpson :
      Begin
         // -> Fechando relatório gerencial
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando fechamento do relatório gerencial...';
            fsLabel.Update;
         End;

         liRetorno := Epson_FI_FechaRelatorioGerencial( True );
         If liRetorno <> 0 Then
         Begin
            //CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar fechamento do relatório gerencial para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Fechando relatório gerencial

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso do fechamento do rel. gerencial....';
            fsLabel.Update;;
         End;
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
end;

Function USER_UsaComprovanteNaoFiscalVinculado( fFabricanteECF : TFabricanteECF; prsTexto: string; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
Var liRetorno: Integer;
    lsErro: String;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Usando o comprovante não fiscal vinculado
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando utilização do comprovante não fiscal vinculado...';
            fsLabel.Update;
         End;

         If prsTexto = '' Then
            prsTexto := ' ';

         If Pos( #13#10, prsTexto ) = 0 Then
            prsTexto := prsTexto + #13#10;

         liRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( prsTexto );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar utilização do comprovante não fiscal vinculado para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Usando o comprovante não fiscal vinculado
      End;
      feDaruma :
      Begin
         // -> Usando o comprovante não fiscal vinculado
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando utilização do comprovante não fiscal vinculado...';
            fsLabel.Update;
         End;

         If prsTexto = '' Then
            prsTexto := ' ';

         liRetorno := Daruma_FI_UsaComprovanteNaoFiscalVinculado( prsTexto );
         If ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar utilização do comprovante não fiscal vinculado para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Usando o comprovante não fiscal vinculado
      End;
      feSweda :
      Begin
         // -> Usando o comprovante não fiscal vinculado
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando utilização do comprovante não fiscal vinculado...';
            fsLabel.Update;
         End;

         If prsTexto = '' Then
            prsTexto := ' ';

         If Pos( #13#10, prsTexto ) = 0 Then
            prsTexto := prsTexto + #13#10;

         liRetorno := SWEDA_UsaComprovanteNaoFiscalVinculado( prsTexto );
         If liRetorno <> 1 Then
         Begin
            If prbExibirMsgErro Then
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar utilização do comprovante não fiscal vinculado para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Usando o comprovante não fiscal vinculado
      End;
      feElgin :
      Begin
         If prsTexto = '' Then
            prsTexto := ' ';

         If Pos( #13#10, prsTexto ) = 0 Then
            prsTexto := prsTexto + #13#10;

         liRetorno := Elgin_FI_UsaComprovanteNaoFiscalVinculado( prsTexto );
         If liRetorno <> 1 Then
         Begin
            //CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar utilização do comprovante não fiscal vinculado para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Usando o comprovante não fiscal vinculado

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso do uso do comprovante não fiscal vinculado....';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Pos( UpperCase( 'Pouco Papel' ), UpperCase( lsErro ) ) > 0 Then
         Begin
            CaixaMensagem( 'O ECF está com pouco papel!', ctAviso, [ cbOk ], 0 );
         End
         Else If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_UsaComprovanteNaoFiscalVinculado := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
      feEpson :
      Begin
         //If prsTexto = '' Then
         //   prsTexto := ' ';
         //If Pos( #13#10, prsTexto ) = 0 Then
         //   prsTexto := prsTexto + #13#10;


         liRetorno := Epson_FI_UsaComprovanteNaoFiscalVinculado( PChar( prsTexto ) );
         If liRetorno <> 0 Then
         Begin
            //CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar utilização do comprovante não fiscal vinculado para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Usando o comprovante não fiscal vinculado

         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_UsaComprovanteNaoFiscalVinculado := False;
            CaixaMensagem( 'Não foi possível imprimir a linha do comprovante no ECF! ' + lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
end;

Function USER_LeituraX( fFabricanteECF : TFabricanteECF; fsLabel: TLabel = Nil ): Boolean;
Var liRetorno: Integer;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Imprimindo Leitura X
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da Leitura X...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_LeituraX;
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da Leitura X para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo Leitura X
      End;
      feDaruma :
      Begin
         // -> Imprimindo Leitura X
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da Leitura X...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_LeituraX;
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da Leitura X para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo Leitura X
      End;
      feSweda :
      Begin
         // -> Imprimindo Leitura X
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da Leitura X...';
            fsLabel.Update;
         End;

         liRetorno := SWEDA_LeituraX;
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da Leitura X para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo Leitura X
      End;
      feElgin :
      Begin
         // -> Imprimindo Leitura X
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da Leitura X...';
            fsLabel.Update;
         End;

         liRetorno := Elgin_FI_LeituraX;
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da Leitura X para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo Leitura X
      End;
      feEpson :
      Begin
         // -> Imprimindo Leitura X
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da Leitura X...';
            fsLabel.Update;
         End;
         // <- Imprimindo Leitura X
         liRetorno := Epson_FI_LeituraX();
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao solicitar da Leitura X para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo Leitura X
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
end;

Function USER_ReducaoZ( fFabricanteECF : TFabricanteECF; fsLabel: TLabel = Nil ): Boolean;
Var liRetorno: Integer;
    lsErro   : String;
    lsData   : String;
    lsHora   : String;
    szCRZ    : String;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Imprimindo a Redução Z
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da Redução Z...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_FechamentoDoDia;
         // Na MP 25 o firmware está com problema está retornando "0" mesmo
         // quando comando está correto
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da Redução Z para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo Redução Z
      End;
      feDaruma :
      Begin
         // -> Imprimindo a Redução Z
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da Redução Z...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_FechamentoDoDia;
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar o fechamento do dia fiscal para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;

         liRetorno := Daruma_FI_ReducaoZ( PChar( '' ), PChar( '' ) );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da Redução Z para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo Redução Z
      End;
      feSweda :
      Begin
         // -> Imprimindo a Redução Z
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da Redução Z...';
            fsLabel.Update;
         End;

         liRetorno := SWEDA_FechamentoDoDia;
         // Na MP 25 o firmware está com problema está retornando "0" mesmo
         // quando comando está correto
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da Redução Z para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo Redução Z
      End;
      feElgin :
      Begin
         // -> Imprimindo a Redução Z
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da Redução Z...';
            fsLabel.Update;
         End;

         liRetorno := Elgin_FI_FechamentoDoDia;
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao solicitar da Redução Z para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo Redução Z

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da emissão da Redução Z...';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_ReducaoZ := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
          // <- Imprimindo Redução Z
      End;
      feEpson :
      Begin
         // -> Imprimindo a Redução Z
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando impressão da Redução Z...';
            fsLabel.Update;
         End;

         lsData := FormatDateTime( 'ddmmyyyy', Now );
         lsHora := FormatDateTime( 'hhmmss', Now );
         szCRZ  := IncDigito( '', ' ', 4, 0 );
         liRetorno := Epson_FI_ReduzaoZ( PChar( lsData ), PChar( lsHora ), 9, PChar( szCRZ ) );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao solicitar da Redução Z para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Imprimindo Redução Z
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
end;

Function USER_AberturaDia( fFabricanteECF : TFabricanteECF; prrVlr_Abertura: Real; prsFormaPagamento: string; fsLabel: TLabel = Nil ): Boolean;
Var liRetorno: Integer;
    lsErro   : String;
    lsRetorno: String;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Abertura do dia
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a abertura do dia...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_AberturaDoDia( FormatFloat( '0', prrVlr_Abertura * 100 ), prsFormaPagamento );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar abertura do dia para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abertura do dia
      End;
      feDaruma :
      Begin
         // -> Abertura do dia
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a abertura do dia...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_AberturaDoDia( FormatFloat( '0', prrVlr_Abertura * 100 ), prsFormaPagamento );
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar abertura do dia para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abertura do dia
      End;
      feSweda :
      Begin
         // -> Abertura do dia
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a abertura do dia...';
            fsLabel.Update;
         End;

         liRetorno := SWEDA_AberturaDoDia( FormatFloat( '0', prrVlr_Abertura * 100 ), prsFormaPagamento );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar abertura do dia para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abertura do dia
      End;
      feElgin :
      Begin
         // -> Abertura do dia
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a abertura do dia...';
            fsLabel.Update;
         End;
         prsFormaPagamento := UpperCase( Copy( prsFormaPagamento, 001, 001 ) ) +
                              UpperCase( Copy( prsFormaPagamento, 002, 015 ) );

         liRetorno := Elgin_FI_AberturaDoDia( PChar( FormatFloat( '0.00', prrVlr_Abertura ) ), PChar( '' ) );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar abertura do dia para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abertura do dia

         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando sucesso da Abertura do Dia...';
            fsLabel.Update;;
         End;

         lsErro := USER_RetornoImpressora( fFabricanteECF, fsLabel );
         If Trim( lsErro ) <> '' Then // Erro retornado pelo ECF
         Begin
            USER_AberturaDia := False;
            CaixaMensagem( lsErro, ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
      feEpson :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Solicitando abertura do dia...';
            fsLabel.Update;
         End;
         //         1         2         3         4         5         6         7
         //123456789.123456789.123456789.123456789.123456789.123456789.123456789.
         //2905200713305829052007133019000150000000000005002995000092000095100
         lsRetorno  := IncDigito( '', ' ', 70, 0 );
         liRetorno  := Epson_FI_ObterDadosJornada( lsRetorno );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao consultar os dados da jornada fiscal!', ctErro, [ cbOK ], 0 );
            Exit;
         End;
         If Copy( Trim( lsRetorno ), 66, 1 ) = '1' Then // Limite de horário para vendas atingido
         Begin
            CaixaMensagem( 'O limite de horário para vendas foi atingido! Realize a impressão da redução Z.', ctErro, [ cbOK ], 0 );
            Exit;
         End;
         If Copy( Trim( lsRetorno ), 65, 1 ) = '1' Then // Redução Z Já emitida
            CaixaMensagem( 'O dia já encontra-se aberto no ECF!', ctaviso, [ cbOK ], 0 )
         Else
         Begin
            liRetorno := Epson_FI_AbrirDia();
            If liRetorno <> 0 Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao Abrir o dia no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End;

         If NOT USER_Suprimento( fFabricanteECF, prrVlr_Abertura, prsFormaPagamento ) Then
         Begin
           // CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o suprimento no ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
end;

Function USER_MemoriaFiscal( fFabricanteECF : TFabricanteECF; prdDataI, prdDataF: TDateTime; prsReducaoI, prsReducaoF: string; prbMeioMagnetico: Boolean; fsLabel: TLabel = Nil ): Boolean;
var liRetorno : Integer;
    liTamBuff : Integer;
    liniParam : TInIfile;
    PathArray : Array[0..64] Of Char;
    lsPathINI : String;
    lsPathWin : String;
    lsTipo    : String;
    lsDadosMFD: String;
    lsDataIni : String;
    lsDataFim : String;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Memória Fiscal
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a impressão da memória fiscal...';
            fsLabel.Update;
         End;

         If ( Trim( prsReducaoI ) <> '' ) and ( Trim( prsReducaoF ) <> '' ) Then
         Begin
            If prbMeioMagnetico Then
               liRetorno := Bematech_FI_LeituraMemoriaFiscalSerialReducao( prsReducaoI, prsReducaoF )
            Else
               liRetorno := Bematech_FI_LeituraMemoriaFiscalReducao( prsReducaoI, prsReducaoF )
         end
         Else
         Begin
            If prbMeioMagnetico Then
               liRetorno := Bematech_FI_LeituraMemoriaFiscalSerialData( FormatDateTime( 'dd/mm/yyyy', prdDataI ), FormatDateTime( 'dd/mm/yyyy', prdDataF ) )
            Else
               liRetorno := Bematech_FI_LeituraMemoriaFiscalData( FormatDateTime( 'dd/mm/yyyy', prdDataI ), FormatDateTime( 'dd/mm/yyyy', prdDataF ) )
         end;

         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da memória fiscal para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If prbMeioMagnetico Then
         Begin
            // -> 1ª Tentativa - Procurando diretório do Windows
           // lsPathWin := GetDOSEnvVar( 'WinDir' );
            // <- 1ª Tentativa - Procurando diretório do Windows

            // -> 2ª Tentativa - Procurando diretório do Windows
            If lsPathWin = '' Then
            Begin
               Try
                  FillChar( PathArray, SizeOf( PathArray ), #0 );
                  GetWindowsDirectory( PathArray, 255 );
                  lsPathWin := Format( '%s', [ PathArray ] );
               Except
                 //
               End;
            End;
            // <- 2ª Tentativa - Procurando diretório do Windows

            // -> 3ª Tentativa - Procurando diretório do Windows
            If lsPathWin = '' Then
            Begin
               lsPathWin := 'C:\';
               If DirectoryExists( 'C:\WinNT' ) Then
                  lsPathWin := 'C:\WinNT\'
               Else If DirectoryExists( 'C:\Windows' ) Then
                  lsPathWin := 'C:\Windows\'
               Else If DirectoryExists( 'D:\WinNT' ) Then
                  lsPathWin := 'D:\WinNT\'
               Else If DirectoryExists( 'D:\Windows' ) Then
                  lsPathWin := 'D:\Windows\';
            End;
            // <- 3ª Tentativa - Procurando diretório do Windows

            If lsPathWin[ Length(lsPathWin) ] <> '\' Then
              lsPathWin := lsPathWin + '\';

            If FileExists( lsPathWin + 'System32\BEMAFI32.INI' ) Then
               lsPathINI := lsPathWin + 'System32\BEMAFI32.INI'
            Else If FileExists( lsPathWin + 'System\BEMAFI32.INI' ) Then
               lsPathINI := lsPathWin + 'System\BEMAFI32.INI'
            Else If FileExists( gsPath + 'BEMAFI32.INI' ) Then
               lsPathINI := gsPath + 'BEMAFI32.INI'
            Else
            Begin
               CaixaMensagem( 'Arquivo de configuração da Bemafi32.DLL não localizado!', ctErro, [ cbOk ], 0 );
               Exit;
            End;

            liniParam := TInIfile.Create( lsPathINI );
            If FileExists( Trim( liniParam.ReadString( 'Sistema', 'Path', 'C:\' ) ) + 'Retorno.txt' ) Then
               ShellExecute(Application.Handle, 'open', PChar( Trim( liniParam.ReadString( 'Sistema', 'Path', 'C:\' ) ) + 'Retorno.txt' ), PChar( '' ), PChar( '' ), SW_SHOW);
            FreeAndNil( liniParam );
         End;
         // <- Memória Fiscal
      End;
      feDaruma :
      Begin
         // -> Memória Fiscal
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a impressão da memória fiscal...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_LeituraMemoriaFiscalData( FormatDateTime( 'dd/mm/yyyy', prdDataI ), FormatDateTime( 'dd/mm/yyyy', prdDataF ) );
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da memória fiscal para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Memória Fiscal
      End;
      feSweda :
      Begin
         // -> Memória Fiscal
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a impressão da memória fiscal...';
            fsLabel.Update;
         End;

         If ( Trim( prsReducaoI ) <> '' ) and ( Trim( prsReducaoF ) <> '' ) Then
         Begin
            If prbMeioMagnetico Then
               liRetorno := SWEDA_LeituraMemoriaFiscalSerialReducao( prsReducaoI, prsReducaoF )
            Else
               liRetorno := SWEDA_LeituraMemoriaFiscalReducao( prsReducaoI, prsReducaoF )
         end
         Else
         Begin
            If prbMeioMagnetico Then
               liRetorno := SWEDA_LeituraMemoriaFiscalSerialData( FormatDateTime( 'dd/mm/yyyy', prdDataI ), FormatDateTime( 'dd/mm/yyyy', prdDataF ) )
            Else
               liRetorno := SWEDA_LeituraMemoriaFiscalData( FormatDateTime( 'dd/mm/yyyy', prdDataI ), FormatDateTime( 'dd/mm/yyyy', prdDataF ) )
         end;

         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da memória fiscal para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If prbMeioMagnetico Then
         Begin
            // -> 1ª Tentativa - Procurando diretório do Windows
           // lsPathWin := GetDOSEnvVar( 'WinDir' );
            // <- 1ª Tentativa - Procurando diretório do Windows

            // -> 2ª Tentativa - Procurando diretório do Windows
            If lsPathWin = '' Then
            Begin
               Try
                  FillChar( PathArray, SizeOf( PathArray ), #0 );
                  GetWindowsDirectory( PathArray, 255 );
                  lsPathWin := Format( '%s', [ PathArray ] );
               Except
                 //
               End;
            End;
            // <- 2ª Tentativa - Procurando diretório do Windows

            // -> 3ª Tentativa - Procurando diretório do Windows
            If lsPathWin = '' Then
            Begin
               lsPathWin := 'C:\';
               If DirectoryExists( 'C:\WinNT' ) Then
                  lsPathWin := 'C:\WinNT\'
               Else If DirectoryExists( 'C:\Windows' ) Then
                  lsPathWin := 'C:\Windows\'
               Else If DirectoryExists( 'D:\WinNT' ) Then
                  lsPathWin := 'D:\WinNT\'
               Else If DirectoryExists( 'D:\Windows' ) Then
                  lsPathWin := 'D:\Windows\';
            End;
            // <- 3ª Tentativa - Procurando diretório do Windows

            If lsPathWin[ Length(lsPathWin) ] <> '\' Then
              lsPathWin := lsPathWin + '\';

            If FileExists( lsPathWin + 'System32\Conversor.INI' ) Then
               lsPathINI := lsPathWin + 'System32\Conversor.INI'
            Else If FileExists( lsPathWin + 'System\Conversor.INI' ) Then
               lsPathINI := lsPathWin + 'System\Conversor.INI'
            Else If FileExists( gsPath + 'Conversor.INI' ) Then
               lsPathINI := gsPath + 'Conversor.INI'
            Else
            Begin
               CaixaMensagem( 'Arquivo de configuração da ConvECF.DLL não localizado!', ctErro, [ cbOk ], 0 );
               Exit;
            End;

            liniParam := TInIfile.Create( lsPathINI );
            If FileExists( Trim( liniParam.ReadString( 'Sistema', 'Path', 'C:\' ) ) + 'Retorno.txt' ) Then
               ShellExecute(Application.Handle, 'open', PChar( Trim( liniParam.ReadString( 'Sistema', 'Path', 'C:\' ) ) + 'Retorno.txt' ), PChar( '' ), PChar( '' ), SW_SHOW);
            FreeAndNil( liniParam );
         End;
         // <- Memória Fiscal
      End;
      feElgin :
      Begin
         // -> Memória Fiscal
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a impressão da memória fiscal...';
            fsLabel.Update;
         End;

         If ( Trim( prsReducaoI ) <> '' ) and ( Trim( prsReducaoF ) <> '' ) Then
         Begin
            lsTipo := 'c'; //FlagLeitura ( Completa )
            If prbMeioMagnetico Then
            Begin
               liRetorno := Elgin_FI_LeituraMemoriaFiscalReducao( prsReducaoI, prsReducaoF, lsTipo )
            end
            Else
            Begin
               liRetorno := Elgin_FI_LeituraMemoriaFiscalReducao( prsReducaoI, prsReducaoF, lsTipo )
            End;
         end
         Else
         Begin
            lsTipo := 'c'; //FlagLeitura ( Completa )
            If prbMeioMagnetico Then
            Begin
               liRetorno := Elgin_FI_LeituraMemoriaFiscalSerialData( FormatDateTime( 'dd/mm/yyyy', prdDataI ), FormatDateTime( 'dd/mm/yyyy', prdDataF ), lsTipo )
            End
            Else
            Begin
               liRetorno := Elgin_FI_LeituraMemoriaFiscalData( FormatDateTime( 'dd/mm/yyyy', prdDataI ), FormatDateTime( 'dd/mm/yyyy', prdDataF ),  lsTipo )
            end;
         end;

         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da memória fiscal para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;

         If prbMeioMagnetico Then
         Begin
            // -> 1ª Tentativa - Procurando diretório do Windows
         //   lsPathWin := GetDOSEnvVar( 'WinDir' );
            // <- 1ª Tentativa - Procurando diretório do Windows

            // -> 2ª Tentativa - Procurando diretório do Windows
            If lsPathWin = '' Then
            Begin
               Try
                  FillChar( PathArray, SizeOf( PathArray ), #0 );
                  GetWindowsDirectory( PathArray, 255 );
                  lsPathWin := Format( '%s', [ PathArray ] );
               Except
                 //
               End;
            End;
            // <- 2ª Tentativa - Procurando diretório do Windows

            // -> 3ª Tentativa - Procurando diretório do Windows
            If lsPathWin = '' Then
            Begin
               lsPathWin := 'C:\';
               If DirectoryExists( 'C:\WinNT' ) Then
                  lsPathWin := 'C:\WinNT\'
               Else If DirectoryExists( 'C:\Windows' ) Then
                  lsPathWin := 'C:\Windows\'
               Else If DirectoryExists( 'D:\WinNT' ) Then
                  lsPathWin := 'D:\WinNT\'
               Else If DirectoryExists( 'D:\Windows' ) Then
                  lsPathWin := 'D:\Windows\';
            End;
            // <- 3ª Tentativa - Procurando diretório do Windows

            If lsPathWin[ Length(lsPathWin) ] <> '\' Then
              lsPathWin := lsPathWin + '\';

            If FileExists( lsPathWin + 'System32\Elgin.INI' ) Then
               lsPathINI := lsPathWin + 'System32\Elgin.INI'
            Else If FileExists( lsPathWin + 'System\Elgin.INI' ) Then
               lsPathINI := lsPathWin + 'System\Elgin.INI'
            Else If FileExists( gsPath + 'Elgin.INI' ) Then
               lsPathINI := gsPath + 'Elgin.INI'
            Else
            Begin
               CaixaMensagem( 'Arquivo de configuração da Elgin.Ini não localizado!', ctErro, [ cbOk ], 0 );
               Exit;
            End;

            liniParam := TInIfile.Create( lsPathINI );
            If FileExists( Trim( liniParam.ReadString( 'Sistema', 'Path', 'C:\' ) ) + 'Retorno.txt' ) Then
               ShellExecute(Application.Handle, 'open', PChar( Trim( liniParam.ReadString( 'Sistema', 'Path', 'C:\' ) ) + 'Retorno.txt' ), PChar( '' ), PChar( '' ), SW_SHOW);
            FreeAndNil( liniParam );
         End;
         // <- Memória Fiscal
      End;
      feEpson :
      Begin
         // -> Memória Fiscal
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando a impressão da memória fiscal...';
            fsLabel.Update;
         End;

         If ( Trim( prsReducaoI ) <> '' ) and ( Trim( prsReducaoF ) <> '' ) Then
         Begin
            liTamBuff  := 1024;
            lsDadosMFD := IncDigito( '', ' ', 1024, 0 );
            If prbMeioMagnetico Then
            Begin
               liRetorno  := Epson_FI_LeituraMemoriaFiscalData( prsReducaoI, prsReducaoF, 06, lsDadosMFD, 'C:\Retorno.txt', liTamBuff, 1024 )
            End
            Else
            Begin
               liRetorno  := Epson_FI_LeituraMemoriaFiscalData( prsReducaoI, prsReducaoF, 18, lsDadosMFD, 'C:\Retorno.txt', liTamBuff, 1024 )
            End;
         End
         Else
         Begin
            liTamBuff  := 1024;
            lsDadosMFD := IncDigito( ' ', ' ', 1024, 0 );
            lsDataIni  :=( FormatDateTime( 'ddmmyyyy', prdDataI ) );
            lsDataFim  :=( FormatDateTime( 'ddmmyyyy', prdDataF ) );
            If prbMeioMagnetico Then
            Begin
               liRetorno  := Epson_FI_LeituraMemoriaFiscalData( lsDataIni, lsDataFim, 07, lsDadosMFD, 'C:\MemoriaFiscal.txt', liTamBuff, 1024 )
            End
            Else
            Begin
               liRetorno  := Epson_FI_LeituraMemoriaFiscalData( lsDataIni, lsDataFim, 19, lsDadosMFD, 'C:\MemoriaFiscal.txt', liTamBuff, 1024 )
            End;
         End;

         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar impressão da memória fiscal para o ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Memória Fiscal
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
End;

Function USER_CancelaItem( fFabricanteECF : TFabricanteECF; prsSeqItem : string; fsLabel : TLabel = Nil ) : Boolean;
var lsErro    : string;
    liRetorno : Integer;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Cancelamento do item
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando o cancelamento do item...';
            fsLabel.Update;
         End;

         Bematech_FI_CancelaItemGenerico( prsSeqItem );
         If lsErro <> '' Then
         Begin
            CaixaMensagem( '"' + lsErro + '" ao cancelar item no ECF', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
         // <- Cancelamento do item
      End;
      feDaruma :
      Begin
         // -> Cancelamento do item
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando o cancelamento do item...';
            fsLabel.Update;
         End;

         Daruma_FI_CancelaItemGenerico( prsSeqItem );
         If lsErro <> '' Then
         Begin
            CaixaMensagem( '"' + lsErro + '" ao cancelar item no ECF', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
         // <- Cancelamento do item
      End;
      feSweda :
      Begin
         // -> Cancelamento do item
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando o cancelamento do item...';
            fsLabel.Update;
         End;

         SWEDA_CancelaItemGenerico( prsSeqItem );
         If lsErro <> '' Then
         Begin
            CaixaMensagem( '"' + lsErro + '" ao cancelar item no ECF', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
         // <- Cancelamento do item
      End;
      feElgin :
      Begin
         // -> Cancelamento do item
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando o cancelamento do item...';
            fsLabel.Update;
         End;

         liRetorno := Elgin_FI_CancelaItemGenerico( prsSeqItem );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar o cancelamento do item para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
      feEpson :
      Begin
         // -> Cancelamento do item
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Enviando o cancelamento do item...';
            fsLabel.Update;
         End;

         liRetorno := Epson_FI_CancelaItemGenerico( prsSeqItem );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao enviar o cancelamento do item para o ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
        // <- Cancelamento do item
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
end;

Function USER_AbrirGaveta( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): Boolean;
var liRetorno: integer;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Abrindo a gaveta
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Abrindo a gaveta...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_AcionaGaveta;
         // Na MP 25 o firmware está com problema está retornando "0" mesmo
         // quando comando está correto
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao tentar abrir a gaveta!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abrindo a gaveta
      End;
      feDaruma :
      Begin
         // -> Abrindo a gaveta
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Abrindo a gaveta...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_AcionaGaveta;
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao tentar abrir a gaveta!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abrindo a gaveta
      End;
      feSweda :
      Begin
         // -> Abrindo a gaveta
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Abrindo a gaveta...';
            fsLabel.Update;
         End;

         liRetorno := SWEDA_AcionaGaveta;
         // Na MP 25 o firmware está com problema está retornando "0" mesmo
         // quando comando está correto
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao tentar abrir a gaveta!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abrindo a gaveta
      End;
      feElgin :
      Begin
         // -> Abrindo a gaveta
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Abrindo a gaveta...';
            fsLabel.Update;
         End;

         liRetorno := Elgin_FI_AcionaGaveta;
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao tentar abrir a gaveta!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abrindo a gaveta
      End;
      feEpson :
      Begin
         // -> Abrindo a gaveta
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Abrindo a gaveta...';
            fsLabel.Update;
         End;

         liRetorno := Epson_FI_AcionaGaveta;
         If ( liRetorno <> 0 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao tentar abrir a gaveta!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Abrindo a gaveta
      End;
   End;   
   Result := True;
end;

Function USER_CancelaUltimoCupom( fFabricanteECF : TFabricanteECF; prsOperadorCancel: String; fsLabel : TLabel = Nil ): boolean;
var lsdtsTemp: TSimpleDataSet;
    lqryModific: TSQLQuery;
    trdNrTransacao: TTransactionDesc;

    lsSerieECF, lsNumeroCupom, lsSeqPedVenda: string;
    liRetorno: integer;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o nº de série do ECF...';
            fsLabel.Update;
         End;

         // -> Capturando o Nº de Série
         lsSerieECF := IncDigito( '', ' ', 15, 0 );
         liRetorno  := Bematech_FI_NumeroSerie( lsSerieECF );
         lsSerieECF := Trim( lsSerieECF );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         // -> Capturando o Nº de Série

         gsModeloECF := IncDigito( '', ' ', 10, 0 );
         Bematech_FI_ModeloImpressora( gsModeloECF );
         gsModeloECF := Trim( gsModeloECF );

         // -> Ativando parâmetro para impressoras MFD
         If ( Trim( gsModeloECF ) <> '' ) And
            ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
            ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP2000FI' ) ) ) And
            ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) Then
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Capturando o nº de série do ECF( MFD )...';
               fsLabel.Update;
            End;

            lsSerieECF := IncDigito( '', ' ', 20, 0 );
            liRetorno  := Bematech_FI_NumeroSerieMFD( lsSerieECF );
            lsSerieECF := Trim( lsSerieECF );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Não é possível obter o nº de série do ECF MFD! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := '';
                  fsLabel.Update;
               End;
               Exit;
            End;
         End;
         // <- Capturando o Nº de Série ( MP-25 )

         // -> Consultando o número do último cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Consultando o número do último cupom...';
            fsLabel.Update;
         End;

         lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
         liRetorno     := Bematech_FI_NumeroCupom( lsNumeroCupom );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao consultar o número do último cupom!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Consultando o número do último cupom
      End;
      feDaruma :
      Begin
         // -> Consultando o número de série do ECF
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Consultando o número de série do ECF...';
            fsLabel.Update;
         End;

         lsSerieECF := IncDigito( '', ' ', 15, 0 );
         liRetorno  := Daruma_FI_NumeroSerie( lsSerieECF );
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao consultar o número do último cupom!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Consultando o número de série do ECF

         // -> Consultando o número do último cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Consultando o número do último cupom...';
            fsLabel.Update;
         End;

         lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
         liRetorno     := Daruma_FI_NumeroCupom( lsNumeroCupom );
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao consultar o número do último cupom!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;

         lsNumeroCupom := FormatFloat( '000000', StrToInt( lsNumeroCupom ) - 1 );
         // <- Consultando o número do último cupom
      End;
      feSweda :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o nº de série do ECF...';
            fsLabel.Update;
         End;

         // -> Capturando o Nº de Série
         lsSerieECF := IncDigito( '', ' ', 15, 0 );
         liRetorno  := SWEDA_NumeroSerie( lsSerieECF );
         lsSerieECF := Trim( lsSerieECF );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         // -> Capturando o Nº de Série

         // -> Consultando o número do último cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Consultando o número do último cupom...';
            fsLabel.Update;
         End;

         lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
         liRetorno     := SWEDA_NumeroCupom( lsNumeroCupom );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao consultar o número do último cupom!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Consultando o número do último cupom
      End;
      feElgin :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o nº de série do ECF...';
            fsLabel.Update;
         End;

         // -> Capturando o Nº de Série
         lsSerieECF := IncDigito( '', ' ', 25, 0 );
         liRetorno  := Elgin_FI_NumeroSerie( lsSerieECF );
         lsSerieECF := Trim( lsSerieECF );
         If liRetorno <> 1 Then
         Begin
            CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         // <- Capturando o Nº de Série

         // -> Consultando o número do último cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Consultando o número do último cupom...';
            fsLabel.Update;
         End;

         lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
         liRetorno     := Elgin_FI_NumeroCupom( lsNumeroCupom );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao consultar o número do último cupom!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Consultando o número do último cupom
      End;
      feEpson :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o nº de série do ECF...';
            fsLabel.Update;
         End;

         // -> Capturando o Nº de Série
         lsSerieECF := IncDigito( '', ' ', 110, 0 );
         liRetorno  := Epson_FI_ObterDadosImpressora( lsSerieECF );
         lsSerieECF := Trim( Copy( Trim( lsSerieECF ), 1, 20 ) );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := '';
               fsLabel.Update;
            End;
            Exit;
         End;
         // <- Capturando o Nº de Série

         // -> Consultando o número do último cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Consultando o número do último cupom...';
            fsLabel.Update;
         End;

         lsNumeroCupom := IncDigito( '', ' ', 100, 0 );
         liRetorno     := Epson_FI_ObterContadores( lsNumeroCupom );
         lsNumeroCupom := Copy( Trim( lsNumeroCupom ), 1, 6 );
         If ( liRetorno <> 0 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao consultar o número do último cupom!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Consultando o número do último cupom
      End;
   End;
   If Trim( lsNumeroCupom ) = '' Then
   Begin
      CaixaMensagem( 'Não foi possível encontrar o número do último cupom fiscal', ctAviso, [ cbOk ], 0 );
      exit;
   end;

   lsdtsTemp                     := TSimpleDataSet.Create( Nil );
   lsdtsTemp.Connection          := frmprincipal.dbxprincipal;
   lsdtsTemp.DataSet.CommandText := 'SELECT SeqPedVenda, Sincronizado FROM T_PedVendas '+
                                    'WHERE Data_Pedido=:parData_Pedido AND '+
                                    'SerieECF=:parSerieECF AND '+
                                    'NumeroCupom=:parNumeroCupom AND '+
                                    'Status<>:parStatus';
   TrataSQL( lsdtsTemp, gsCod_Emp );
   lsdtsTemp.DataSet.ParamByName( 'parData_Pedido' ).AsSQLTimeStamp := datetimeToSQLTimeStamp(gsdata_mov );
   lsdtsTemp.DataSet.ParamByName( 'parSerieECF' ).AsString          := lsSerieECF;
   lsdtsTemp.DataSet.ParamByName( 'parNumeroCupom' ).AsString       := lsNumeroCupom;
   lsdtsTemp.DataSet.ParamByName( 'parStatus' ).AsString            := 'C';
   lsdtsTemp.Open;
   If lsdtsTemp.IsEmpty Then
   Begin
      FreeAndNil( lsdtsTemp );
      CaixaMensagem( 'Cupom fiscal ' + lsNumeroCupom + ' não localizado, efetue o cancelamento no retaguarda', ctAviso, [ cbOk ], 0 );
      exit;
   end;
   lsSeqPedVenda := lsdtsTemp.FieldByName( 'SeqPedVenda' ).AsString;

   // -> Transação
   trdNrTransacao.TransactionID  := 1;
   trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
   If frmprincipal.dbxprincipal.InTransaction Then
   Begin
      If CaixaMensagem( 'Existe outra transação ativa. Deseja descartá-la?', ctAviso, [ cbSimNao ], 0 ) Then
         frmprincipal.dbxprincipal.RollBack( trdNrTransacao )
      Else
         Exit;
   End;
   frmprincipal.dbxprincipal.StartTransaction( trdNrTransacao );
   // <- Transação

   lsdtsTemp.Close;
   lsdtsTemp.DataSet.CommandText := 'SELECT Cod_Produto, Cod_Setor, Qtde_Atendida, Fator '+
                                    'FROM T_ItensPedVendas '+
                                    'WHERE SeqPedVenda=:parSeqPedVenda';
   TrataSQL( lsdtsTemp, gsCod_Emp );
   lsdtsTemp.DataSet.ParamByName( 'parSeqPedVenda' ).AsString := lsSeqPedVenda;
   lsdtsTemp.Open;
   While Not lsdtsTemp.EOF Do
   Begin
      Begin
         frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
         FreeAndNil( lsdtsTemp );
         CaixaMensagem( 'Não foi possível atualizar o estoque do produtos ' + lsdtsTemp.FieldByName( 'Cod_Produto' ).AsString, ctAviso, [ cbOk ], 0 );
         exit;
      End;

      lsdtsTemp.Next;
   End;

   Try
      lqryModific               := TSQLQuery.Create( Nil );
      lqryModific.SQLConnection := frmprincipal.dbxprincipal;
      lqryModific.SQL.Text      := 'UPDATE T_PedVendas SET Status=:parStatus, '+
                                   'Sincronizado=:parSincronizado, MotivoCancel=:parMotivoCancel '+
                                   'WHERE Cod_Emp=:parCod_Emp AND SeqPedVenda=:parSeqPedVenda';
      lqryModific.ParamByName( 'parStatus' ).AsString       := 'C';
      lqryModific.ParamByName( 'parMotivoCancel' ).AsString := 'CANC. ULTIMO CUPOM';
      lqryModific.ParamByName( 'parSincronizado' ).AsString := 'N';

      lqryModific.ParamByName( 'parCod_Emp' ).AsString      := gsCod_Emp;
      lqryModific.ParamByName( 'parSeqPedVenda' ).AsString  := lsSeqPedVenda;
      lqryModific.ExecSQL;
   Except
      On E: Exception Do
      Begin
         frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
         FreeAndNil( lsdtsTemp );
         FreeAndNil( lqryModific );
         CaixaMensagem( 'Não foi possível cancelar o Pedido de Venda ' + #13 + E.Message, ctErro, [ cbOk ], 0 );
         exit;
      End;
   End;

   Try
      lqryModific.Close;
      lqryModific.SQL.Text := 'UPDATE T_ItensPedVendas SET Status=:parStatus, '+
                              'Sincronizado=:parSincronizado '+
                              'WHERE Cod_Emp=:parCod_Emp AND SeqPedVenda=:parSeqPedVenda';
      lqryModific.ParamByName( 'parStatus' ).AsString       := 'C';
      lqryModific.ParamByName( 'parSincronizado' ).AsString := 'N';

      lqryModific.ParamByName( 'parCod_Emp' ).AsString      := gsCod_Emp;
      lqryModific.ParamByName( 'parSeqPedVenda' ).AsString  := lsSeqPedVenda;
      lqryModific.ExecSQL;
   Except
      On E: Exception Do
      Begin
         frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
         FreeAndNil( lsdtsTemp );
         FreeAndNil( lqryModific );
         CaixaMensagem( 'Não foi possível cancelar os Itens do Pedido de Venda ' + #13 + E.Message, ctErro, [ cbOk ], 0 );
         exit;
      End;
   End;

   Try
      // -> Retornando o valor utilizado pela carta de crédito
      lsdtsTemp.Close;
      lsdtsTemp.DataSet.CommandText := 'SELECT SeqCartaCredito, Vlr_Recebido, '+
                                       'Sincronizado, SincronizadoCTC '+
                                       'FROM T_Recebimentos '+
                                       'WHERE SeqPedVenda=:parSeqPedVenda AND '+
                                       'Cod_TpPgto=:parCod_TpPgto';
      TrataSQL( lsdtsTemp, gsCod_Emp );
      lsdtsTemp.DataSet.ParamByName( 'parSeqPedVenda' ).AsString := lsSeqPedVenda;
      lsdtsTemp.DataSet.ParamByName( 'parCod_TpPgto' ).AsString  := 'CTC';
      lsdtsTemp.Open;

      While not lsdtsTemp.EOF Do
      Begin
         lqryModific.Close;
         lqryModific.SQLConnection := frmprincipal.dbxprincipal;

         If ( lsdtsTemp.FieldByName( 'SincronizadoCTC' ).AsString = 'S' ) then   // Se já foi sincronizado no servidor
         Begin
         //   lqryModific.SQLConnection := frmMenu.dbxServidor;
         End;

         lqryModific.SQL.Text := 'UPDATE T_CartasCredito ' +
                                 'SET Vlr_Utilizado=Vlr_Utilizado - :parVlr_Utilizado, '+
                                 '    Status=:parStatus, ' +
                                 '    Imprimir=:parImprimir, '+
                                 '    Sincronizado=:parSincronizado '+
                                 'WHERE SeqCartaCredito=:parSeqCartaCredito';
         TrataSQL( lqryModific, gsCod_Emp );
         lqryModific.ParamByName( 'parSeqCartaCredito' ).AsString  := lsdtsTemp.FieldByName( 'SeqCartaCredito' ).AsString;

         lqryModific.ParamByName( 'parVlr_Utilizado' ).AsFloat     := lsdtsTemp.FieldByName( 'Vlr_Recebido' ).AsFloat;
         lqryModific.ParamByName( 'parStatus' ).AsString           := 'E';
         lqryModific.ParamByName( 'parImprimir' ).AsString         := 'S';
         lqryModific.ParamByName( 'parSincronizado' ).AsString     := 'N';
         lqryModific.ExecSQL;

         lsdtsTemp.Next;
      End;
      lqryModific.Close;
      lqryModific.SQLConnection := frmprincipal.dbxprincipal;
      // <- Retornando o valor utilizado pela carta de crédito

  	  lqryModific.Close;
      lqryModific.SQL.Text := 'UPDATE T_Recebimentos SET Status=:parStatus, '+
                              'Sincronizado=:parSincronizado '+
                              'WHERE Cod_Emp=:parCod_Emp AND SeqPedVenda=:parSeqPedVenda';
      lqryModific.ParamByName( 'parStatus' ).AsString       := 'C';
      lqryModific.ParamByName( 'parSincronizado' ).AsString := 'N';

      lqryModific.ParamByName( 'parCod_Emp' ).AsString      := gsCod_Emp;
      lqryModific.ParamByName( 'parSeqPedVenda' ).AsString  := lsSeqPedVenda;
      lqryModific.ExecSQL;
   Except
      On E: Exception Do
      Begin
         frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
         FreeAndNil( lsdtsTemp );
         FreeAndNil( lqryModific );
         CaixaMensagem( 'Não foi possível cancelar os Recebimentos ' + #13 + E.Message, ctErro, [ cbOk ], 0 );
         exit;
      End;
   End;

   // -> Contas a Receber
   Try
      lqryModific.Close;
      lqryModific.SQL.Text := ConstruirSQL( tsInsert, 'T_CtasRecebidas',
                                            'Agencia;Banco;Cheque;Cod_CaixaBaixa;' +
                                            'Cod_CaixaEmissao;Cod_Cliente;Cod_CtoCusto;'+
                                            'Cod_ContabilCRED;Cod_ContabilDEB;Cod_Emp;'+
                                            'Cod_TpPgto;Cod_TpPgtoORIGEM;Codigo;Conta;'+
                                            'Data_Emissao;Data_Cad;Data_Pgto;Data_Vencto;'+
                                            'Docto;Encargos;Estacao;Vlr_Juros;Obs;Operador;'+
                                            'Qtde_Parcelas;NrAgrup;SeqFatura;SeqBordero;'+
                                            'SeqPedVenda;SeqNotaFiscal;Status;Perc_Juros;'+
                                            'TpBaixa;Tipo_Juros;Vlr_AReceber;Vlr_Baixa;'+
                                            'Vlr_Recebido;Perc_DescFin;Tipo_Operacao;'+
                                            'Perc_DescADM;CNPJCPF;Perc_Multa;Vlr_Multa;'+
                                            'Vlr_TarIfa;Vlr_Cartorio;NossoNumero;'+
                                            'MotivoCancel;Sincronizado', '' );
      lqryModific.Prepared := True;

      lsdtsTemp.Close;
      lsdtsTemp.DataSet.CommandText := 'SELECT Codigo, Agencia, Banco, Conta, Cheque, '+
                                       'Cod_CaixaBaixa, Cod_CaixaEmissao, Cod_Cliente, '+
                                       'Cod_CtoCusto, Cod_ContabilCRED, Cod_ContabilDEB, '+
                                       'Cod_Emp, Cod_TpPgto, Data_Cad, Data_Emissao, '+
                                       'Data_Vencto, Docto, NossoNumero, Encargos, '+
                                       'Estacao, Vlr_Juros, Operador, Qtde_Parcelas, '+
                                       'NrAgrup, SeqFatura, SeqBordero, SeqPedVenda, '+
                                       'SeqNotaFiscal, Perc_Juros, Tipo_Juros, Vlr_AReceber, '+
                                       'Perc_DescFin, Tipo_Operacao, Perc_DescADM, '+
                                       'Perc_Multa, Vlr_Multa, Vlr_TarIfa, Vlr_Cartorio, '+
                                       'Obs, CNPJCPF '+
                                       'FROM T_CtasReceber '+
                                       'WHERE SeqPedVenda=:parSeqPedVenda';
      TrataSQL( lsdtsTemp, gsCod_Emp );
      lsdtsTemp.DataSet.ParamByName( 'parSeqPedVenda' ).AsString := lsSeqPedVenda;
      lsdtsTemp.Open;
      While not lsdtsTemp.EOF Do
      Begin
         lqryModific.Close;
         lqryModific.ParamByName( 'parAgencia' ).AsString            := lsdtsTemp.FieldByName( 'Agencia' ).AsString;
         lqryModific.ParamByName( 'parBanco' ).AsString              := lsdtsTemp.FieldByName( 'Banco' ).AsString;
         lqryModific.ParamByName( 'parConta' ).AsString              := lsdtsTemp.FieldByName( 'Conta' ).AsString;
         lqryModific.ParamByName( 'parCheque' ).AsString             := lsdtsTemp.FieldByName( 'Cheque' ).AsString;
         lqryModific.ParamByName( 'parCod_CaixaBaixa' ).AsString     := lsdtsTemp.FieldByName( 'Cod_CaixaBaixa' ).AsString;
         lqryModific.ParamByName( 'parCod_CaixaEmissao' ).AsString   := lsdtsTemp.FieldByName( 'Cod_CaixaEmissao' ).AsString;
         lqryModific.ParamByName( 'parCod_Cliente' ).AsString        := lsdtsTemp.FieldByName( 'Cod_Cliente' ).AsString;
         lqryModific.ParamByName( 'parCod_CtoCusto' ).AsString       := lsdtsTemp.FieldByName( 'Cod_CtoCusto' ).AsString;
         lqryModific.ParamByName( 'parCod_ContabilCRED' ).AsString   := lsdtsTemp.FieldByName( 'Cod_ContabilCRED' ).AsString;
         lqryModific.ParamByName( 'parCod_ContabilDEB' ).AsString    := lsdtsTemp.FieldByName( 'Cod_ContabilDEB' ).AsString;
         lqryModific.ParamByName( 'parCod_Emp' ).AsString            := lsdtsTemp.FieldByName( 'Cod_Emp' ).AsString;
         lqryModific.ParamByName( 'parCod_TpPgto' ).AsString         := lsdtsTemp.FieldByName( 'Cod_TpPgto' ).AsString;
         lqryModific.ParamByName( 'parCod_TpPgtoORIGEM' ).AsString   := lsdtsTemp.FieldByName( 'Cod_TpPgto' ).AsString;
         lqryModific.ParamByName( 'parCodigo' ).AsString             := Sequencia( 'Codigo', True, 'T_CtasRecebidas', frmprincipal.dbxprincipal, gsCod_Emp );
         lqryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp     := lsdtsTemp.FieldByName( 'Data_Cad' ).AsSQLTimeStamp;
         lqryModific.ParamByName( 'parData_Emissao' ).AsSQLTimeStamp := lsdtsTemp.FieldByName( 'Data_Emissao' ).AsSQLTimeStamp;
         lqryModific.ParamByName( 'parData_Pgto' ).AsSQLTimeStamp    := datetimeToSQLTimeStamp(gsdata_mov );
         lqryModific.ParamByName( 'parData_Vencto' ).AsSQLTimeStamp  := lsdtsTemp.FieldByName( 'Data_Vencto' ).AsSQLTimeStamp;
         lqryModific.ParamByName( 'parDocto' ).AsString              := lsdtsTemp.FieldByName( 'Docto' ).AsString;
         lqryModific.ParamByName( 'parNossoNumero' ).AsString        := lsdtsTemp.FieldByName( 'NossoNumero' ).AsString;
         lqryModific.ParamByName( 'parEncargos' ).AsFloat            := lsdtsTemp.FieldByName( 'Encargos' ).AsFloat;
         lqryModific.ParamByName( 'parEstacao' ).AsString            := lsdtsTemp.FieldByName( 'Estacao' ).AsString;
         lqryModific.ParamByName( 'parVlr_Juros' ).AsFloat           := lsdtsTemp.FieldByName( 'Vlr_Juros' ).AsFloat;
         lqryModific.ParamByName( 'parOperador' ).AsString           := lsdtsTemp.FieldByName( 'Operador' ).AsString;
         lqryModific.ParamByName( 'parQtde_Parcelas' ).AsInteger     := lsdtsTemp.FieldByName( 'Qtde_Parcelas' ).AsInteger;
         lqryModific.ParamByName( 'parNrAgrup' ).AsString            := lsdtsTemp.FieldByName( 'NrAgrup' ).AsString;
         lqryModific.ParamByName( 'parSeqFatura' ).AsString          := lsdtsTemp.FieldByName( 'SeqFatura' ).AsString;
         lqryModific.ParamByName( 'parSeqBordero' ).AsString         := lsdtsTemp.FieldByName( 'SeqBordero' ).AsString;
         lqryModific.ParamByName( 'parSeqPedVenda' ).AsString        := lsdtsTemp.FieldByName( 'SeqPedVenda' ).AsString;
         lqryModific.ParamByName( 'parSeqNotaFiscal' ).AsString      := lsdtsTemp.FieldByName( 'SeqNotaFiscal' ).AsString;
         lqryModific.ParamByName( 'parStatus' ).AsString             := 'C';
         lqryModific.ParamByName( 'parPerc_Juros' ).AsFloat          := lsdtsTemp.FieldByName( 'Perc_Juros' ).AsFloat;
         lqryModific.ParamByName( 'parTpBaixa' ).AsString            := 'CA';
         lqryModific.ParamByName( 'parTipo_Juros' ).AsString         := lsdtsTemp.FieldByName( 'Tipo_Juros' ).AsString;
         lqryModific.ParamByName( 'parVlr_AReceber' ).AsFloat        := lsdtsTemp.FieldByName( 'Vlr_AReceber' ).AsFloat;
         lqryModific.ParamByName( 'parVlr_Baixa' ).AsFloat           := lsdtsTemp.FieldByName( 'Vlr_AReceber' ).AsFloat;
         lqryModific.ParamByName( 'parVlr_Recebido' ).AsFloat        := lsdtsTemp.FieldByName( 'Vlr_AReceber' ).AsFloat;
         lqryModific.ParamByName( 'parPerc_DescFin' ).AsFloat        := lsdtsTemp.FieldByName( 'Perc_DescFin' ).AsFloat;
         lqryModific.ParamByName( 'parTipo_Operacao' ).AsString      := lsdtsTemp.FieldByName( 'Tipo_Operacao' ).AsString;
         lqryModific.ParamByName( 'parPerc_DescADM' ).AsFloat        := lsdtsTemp.FieldByName( 'Perc_DescADM' ).AsFloat;
         lqryModific.ParamByName( 'parPerc_Multa' ).AsFloat          := lsdtsTemp.FieldByName( 'Perc_Multa' ).AsFloat;
         lqryModific.ParamByName( 'parVlr_Multa' ).AsFloat           := lsdtsTemp.FieldByName( 'Vlr_Multa' ).AsFloat;
         lqryModific.ParamByName( 'parVlr_TarIfa' ).AsFloat          := lsdtsTemp.FieldByName( 'Vlr_TarIfa' ).AsFloat;
         lqryModific.ParamByName( 'parVlr_Cartorio' ).AsFloat        := lsdtsTemp.FieldByName( 'Vlr_Cartorio' ).AsFloat;
         lqryModific.ParamByName( 'parObs' ).AsString                := lsdtsTemp.FieldByName( 'Obs' ).AsString;
         lqryModific.ParamByName( 'parCNPJCPF' ).AsString            := lsdtsTemp.FieldByName( 'CNPJCPF' ).AsString;
         lqryModific.ParamByName( 'parMotivoCancel' ).AsString       := 'CANCELAMENTO CUPOM FISCAL ' + lsSerieECF + ' ' + lsNumeroCupom;
         lqryModific.ParamByName( 'parSincronizado' ).AsString       := 'N';
         lqryModific.ExecSQL;

         lsdtsTemp.Next;
      End;
      lqryModific.Prepared := False;

      lqryModific.Close;
      lqryModific.SQL.Text := 'DELETE FROM T_CtasReceber '+
                              'WHERE Cod_Emp=:parCod_Emp AND '+
                              'Codigo=:parCodigo';
      lqryModific.Prepared := True;

      lsdtsTemp.First;
      While not lsdtsTemp.EOF Do
      Begin
         lqryModific.Close;
         lqryModific.ParamByName( 'parCod_Emp' ).AsString := gsCod_Emp;
         lqryModific.ParamByName( 'parCodigo' ).AsString  := lsdtsTemp.FieldByName( 'Codigo' ).AsString;
         lqryModific.ExecSQL;

         lsdtsTemp.Next;
      End;
      lqryModific.Prepared := False;
   Except
      On E: Exception Do
      Begin
         frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
         FreeAndNil( lsdtsTemp );
         FreeAndNil( lqryModific );
         CaixaMensagem( 'Não foi possível cancelar os Contas a Receber ' + #13 + E.Message, ctErro, [ cbOk ], 0 );
         exit;
      End;
   End;
   // <- Contas a Receber

   // -> Cancelando o último cupom
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Cancelando o último cupom...';
      fsLabel.Update;
   End;

   Case fFabricanteECF Of
      feBematech :
      Begin
         liRetorno := Bematech_FI_CancelaCupom;
         If ( liRetorno <> 1 ) Then
         Begin
            frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
            FreeAndNil( lsdtsTemp );
            FreeAndNil( lqryModific );
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao tentar cancelar o último cupom !!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
      feDaruma :
      Begin
         liRetorno := Daruma_FI_CancelaCupom;
         If ( liRetorno <> 1 ) Then
         Begin
            frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
            FreeAndNil( lsdtsTemp );
            FreeAndNil( lqryModific );
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao tentar cancelar o último cupom !!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
      feSweda :
      Begin
         liRetorno := SWEDA_CancelaCupom;
         If ( liRetorno <> 1 ) Then
         Begin
            frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
            FreeAndNil( lsdtsTemp );
            FreeAndNil( lqryModific );
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao tentar cancelar o último cupom !!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
      feElgin :
      Begin
         liRetorno := Elgin_FI_CancelaCupom;
         If ( liRetorno <> 1 ) Then
         Begin
            frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
            FreeAndNil( lsdtsTemp );
            FreeAndNil( lqryModific );
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao tentar cancelar o último cupom !!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
      feEpson :
      Begin
         liRetorno := Epson_FI_CancelarCupom();
         If ( liRetorno <> 0 ) Then
         Begin
            frmprincipal.dbxprincipal.RollBack( trdNrTransacao );
            FreeAndNil( lsdtsTemp );
            FreeAndNil( lqryModific );
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao tentar cancelar o último cupom !!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
   End;
   // <- Cancelando o último cupom

   frmprincipal.dbxprincipal.Commit( trdNrTransacao );

   lqryModific.Close;
   FreeAndNil( lqryModific );

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := True;
End;

Function USER_CapturaFormasPagamento( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): TStringList;
var llstFormasPagamento: TStringList;
    lsTexto, lsFormasPagamento,lsRetorno,lsTemp: string;
    liRetorno, liCont: integer;
Begin
   llstFormasPagamento := TStringList.Create;
   llstFormasPagamento.Clear;

   Result := llstFormasPagamento;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Verificando as formas pagamento
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando as formas pagamento...';
            fsLabel.Update;
         End;

         lsFormasPagamento := IncDigito( '', ' ', 3016, 0 );
         liRetorno := Bematech_FI_VerificaFormasPagamento( lsFormasPagamento );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao Verificar as formas pagamento do ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Verificando as formas pagamento

         try
            for liCont := 1 to 52 do
            Begin
               { Descricao da forma de pagamento.....................: 16 bytes
                 Valor acumulado (2 casas decimais)..................: 20 bytes
                 Valor recebido no último cupom (2 casas decimais)...: 20 bytes
                 Valor indicando se a forma foi usada para a emissão
                   do cupom não fiscal vinculado (1 usado, 0 não usado): 1 byte }

               //           1          2         3          4         5
               // 123456789.123456 789.123456789.123456 789.123456789.123456 78
               // 123456789.123456 123456789.123456789. 123456789.123456789. 1
               // Dinheiro         00000000000000041558 00000000000000001558 0,
               lsTexto := Copy( lsFormasPagamento, 1, 58 );

               If UpperCase( Trim( Copy( lsTexto, 1, 16 ) ) ) = UpperCase( 'Valor Recebido' ) Then
               Begin
                  Delete( lsFormasPagamento, 1, 58 );
                  continue;
               end;

               If StrToFloat( Copy( lsTexto, 17, 20 ) ) > 0 Then
                  llstFormasPagamento.Add( Copy( lsTexto, 1, 16 ) + ';' + FormatFloat( '0.00', StrToFloat( Copy( lsTexto, 17, 20 ) ) / 100 ) );

               Delete( lsFormasPagamento, 1, 58 );
            End;
         Except
            On E: Exception Do
            Begin
               Result := llstFormasPagamento;

               CaixaMensagem( 'Não foi possível capturar os valores das formas de pagamento ' + #13 + E.Message, ctAviso, [ cbOk ], 0 );
               exit;
            End;
         End;
      End;
      feDaruma :
      Begin
         // -> Verificando as formas pagamento
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando as formas pagamento...';
            fsLabel.Update;
         End;

         lsFormasPagamento := IncDigito( '', ' ', 1027, 0 );
         liRetorno := Daruma_FI_VerificaFormasPagamentoEx( lsFormasPagamento );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao Verificar as formas pagamento do ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Verificando as formas pagamento

         try
            for liCont := 1 to 18 do
            Begin
               { Descricao da forma de pagamento.....................: 16 bytes
                 Valor acumulado (2 casas decimais)..................: 20 bytes
                 Valor recebido no último cupom (2 casas decimais)...: 20 bytes
                 Valor indicando se a forma foi usada para a emissão
                   do cupom não fiscal vinculado (1 usado, 0 não usado): 1 byte }

               //           1          2         3          4         5
               // 123456789.123456 789.123456789.123456 789.123456789.123456 78
               // 123456789.123456 123456789.123456789. 123456789.123456789. 1
               // Dinheiro         00000000000000041558 00000000000000001558 0,
               lsTexto := Copy( lsFormasPagamento, 1, 57 );

               If UpperCase( Trim( Copy( lsTexto, 1, 16 ) ) ) = UpperCase( 'Valor Recebido' ) Then
               Begin
                  Delete( lsFormasPagamento, 1, 57 );
                  continue;
               End;

               If StrToFloat( Copy( lsTexto, 17, 20 ) ) > 0 Then
                  llstFormasPagamento.Add( Copy( lsTexto, 1, 16 ) + ';' + FormatFloat( '0.00', StrToFloat( Copy( lsTexto, 17, 20 ) ) / 100 ) );

               Delete( lsFormasPagamento, 1, 57 );
            End;
         Except
            On E: Exception Do
            Begin
               Result := llstFormasPagamento;

               CaixaMensagem( 'Não foi possível capturar os valores das formas de pagamento ' + #13 + E.Message, ctAviso, [ cbOk ], 0 );
               exit;
            End;
         End;
      End ;
      feSweda :
      Begin
         // -> Verificando as formas pagamento
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando as formas pagamento...';
            fsLabel.Update;
         End;

         lsFormasPagamento := IncDigito( '', ' ', 3016, 0 );
         liRetorno := SWEDA_VerificaFormasPagamento( lsFormasPagamento );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao Verificar as formas pagamento do ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Verificando as formas pagamento

         try
            for liCont := 1 to 52 do
            Begin
               { Descricao da forma de pagamento.....................: 16 bytes
                 Valor acumulado (2 casas decimais)..................: 20 bytes
                 Valor recebido no último cupom (2 casas decimais)...: 20 bytes
                 Valor indicando se a forma foi usada para a emissão
                   do cupom não fiscal vinculado (1 usado, 0 não usado): 1 byte }

               //           1          2         3          4         5
               // 123456789.123456 789.123456789.123456 789.123456789.123456 78
               // 123456789.123456 123456789.123456789. 123456789.123456789. 1
               // Dinheiro         00000000000000041558 00000000000000001558 0,
               lsTexto := Copy( lsFormasPagamento, 1, 58 );

               If UpperCase( Trim( Copy( lsTexto, 1, 16 ) ) ) = UpperCase( 'Valor Recebido' ) Then
               Begin
                  Delete( lsFormasPagamento, 1, 58 );
                  continue;
               End;

               If StrToFloat( Copy( lsTexto, 17, 20 ) ) > 0 Then
                  llstFormasPagamento.Add( Copy( lsTexto, 1, 16 ) + ';' + FormatFloat( '0.00', StrToFloat( Copy( lsTexto, 17, 20 ) ) / 100 ) );

               Delete( lsFormasPagamento, 1, 58 );
            End;
         Except
            On E: Exception Do
            Begin
               Result := llstFormasPagamento;

               CaixaMensagem( 'Não foi possível capturar os valores das formas de pagamento ' + #13 + E.Message, ctAviso, [ cbOk ], 0 );
               exit;
            End;
         End;
      End;
      feElgin :
      Begin
         // -> Verificando as formas pagamento
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando as formas pagamento...';
            fsLabel.Update;
         End;

         lsFormasPagamento := IncDigito( '', ' ', 3016, 0 );
         liRetorno := Elgin_FI_VerificaFormasPagamento( lsFormasPagamento );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao Verificar as formas pagamento do ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Verificando as formas pagamento

         try
            for liCont := 1 to 52 do
            Begin
               { Descricao da forma de pagamento.....................: 16 bytes
                 Valor acumulado (2 casas decimais)..................: 20 bytes
                 Valor recebido no último cupom (2 casas decimais)...: 20 bytes
                 Valor indicando se a forma foi usada para a emissão
                   do cupom não fiscal vinculado (1 usado, 0 não usado): 1 byte }

               //           1          2         3          4         5
               // 123456789.123456 789.123456789.123456 789.123456789.123456 78
               // 123456789.123456 123456789.123456789. 123456789.123456789. 1
               // Dinheiro         00000000000000041558 00000000000000001558 0,
               lsTexto := Copy( lsFormasPagamento, 1, 58 );

               If UpperCase( Trim( Copy( lsTexto, 1, 16 ) ) ) = UpperCase( 'Valor Recebido' ) Then
               Begin
                  Delete( lsFormasPagamento, 1, 58 );
                  continue;
               End;

               If StrToFloat( Copy( lsTexto, 17, 20 ) ) > 0 Then
                  llstFormasPagamento.Add( Copy( lsTexto, 1, 16 ) + ';' + FormatFloat( '0.00', StrToFloat( Copy( lsTexto, 17, 20 ) ) / 100 ) );

               Delete( lsFormasPagamento, 1, 58 );
            End;
         Except
            On E: Exception Do
            Begin
               Result := llstFormasPagamento;

               CaixaMensagem( 'Não foi possível capturar os valores das formas de pagamento ' + #13 + E.Message, ctAviso, [ cbOk ], 0 );
               exit;
            End;
         End;
      End;
      feEpson :
      Begin
         // -> Consultando descrição da forma de pagamento no ECF
         lsRetorno := IncDigito( '', ' ', 881, 0 );
         liRetorno := Epson_FI_ObterTabelaPagamentos( lsRetorno );
         lsRetorno := Trim( lsRetorno );
         If  liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' consultar a descrição das formas de pagamento do ECF!', ctErro, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Erro ' + IntToStr( liRetorno ) + ' consultar a descrição das formas de pagamento do ECF!';
               fsLabel.Update;
            End;
            Exit;
         End;

         While Length( lsRetorno ) > 0 Do
         Begin
            lsTemp := Trim( Copy( lsRetorno, 3, 15 ) ) + ';' + Trim( Copy( lsRetorno, 31, 13 ) );
            If Trim( lsTemp ) <> '' Then
               llstFormasPagamento.Add( lsTemp );
            Delete( lsRetorno, 1, 44 );
         End;
         // <- Consultando descrição da forma de pagamento no ECF
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := llstFormasPagamento;
end;

Function USER_CapturaValorSangria( fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ): Real;
var lsTotalizadoresParciais: string;
    lsVlr_Sangria : String;
    liRetorno : integer;
    liPosicao : Integer;
    lrVlr_Sangria: Real;
Begin
   Result := 0;

   lrVlr_Sangria := 0;
   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Verificando os totalizados parciais
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando os totalizados parciais...';
            fsLabel.Update;
         End;

         lsTotalizadoresParciais := IncDigito( '', ' ', 445, 0 );
         liRetorno := Bematech_FI_VerificaTotalizadoresParciais( lsTotalizadoresParciais );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao Verificar os totalizados parciais do ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Verificando os totalizados parciais

         try
            lrVlr_Sangria := StrToFloat( Copy( lsTotalizadoresParciais, 398, 14 ) ) / 100;
         except
            on E: Exception do
            Begin
               Result := 0;

               CaixaMensagem( 'Não foi possível capturar os valores das formas de pagamento ' + #13 + E.Message, ctAviso, [ cbOk ], 0 );
               exit;
            end;
         end;
      End;
      feDaruma :
      Begin
         // -> Verificando os totalizados parciais
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando os totalizados parciais...';
            fsLabel.Update;
         End;

         lsTotalizadoresParciais := IncDigito( '', ' ', 445, 0 );
         liRetorno := Daruma_FI_VerificaTotalizadoresParciais( lsTotalizadoresParciais );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao Verificar os totalizados parciais do ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Verificando os totalizados parciais

         try
            lrVlr_Sangria := StrToFloat( Copy( lsTotalizadoresParciais, 398, 14 ) ) / 100;
         except
            on E: Exception do
            Begin
               Result := 0;

               CaixaMensagem( 'Não foi possível capturar os valores das formas de pagamento ' + #13 + E.Message, ctAviso, [ cbOk ], 0 );
               exit;
            end;
         end;
      End;
      feSweda :
      Begin
         // -> Verificando os totalizados parciais
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando os totalizados parciais...';
            fsLabel.Update;
         End;

         lsTotalizadoresParciais := IncDigito( '', ' ', 445, 0 );
         liRetorno := SWEDA_VerificaTotalizadoresParciais( lsTotalizadoresParciais );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao Verificar os totalizados parciais do ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Verificando os totalizados parciais

         try
            lrVlr_Sangria := StrToFloat( Copy( lsTotalizadoresParciais, 398, 14 ) ) / 100;
         except
            on E: Exception do
            Begin
               Result := 0;

               CaixaMensagem( 'Não foi possível capturar os valores das formas de pagamento ' + #13 + E.Message, ctAviso, [ cbOk ], 0 );
               exit;
            end;
         end;
      End;
      feElgin :
      Begin
         // -> Verificando os totalizados parciais
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando os totalizados parciais...';
            fsLabel.Update;
         End;

         lsTotalizadoresParciais := IncDigito( '', ' ', 445, 0 );
         liRetorno := Elgin_FI_VerificaTotalizadoresParciais( lsTotalizadoresParciais );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao Verificar os totalizados parciais do ECF!!!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
         // <- Verificando os totalizados parciais

         try
            lrVlr_Sangria := StrToFloat( Copy( lsTotalizadoresParciais, 398, 14 ) ) / 100;
         except
            on E: Exception do
            Begin
               Result := 0;

               CaixaMensagem( 'Não foi possível capturar os valores das formas de pagamento ' + #13 + E.Message, ctAviso, [ cbOk ], 0 );
               exit;
            end;
         end;
      End;
      feEpson :
      Begin
         // -> Verificando os totalizados parciais
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Verificando os totalizados parciais...';
            fsLabel.Update;
         End;

         lsTotalizadoresParciais := IncDigito( '', ' ', 681, 0 );
         liRetorno               := Epson_FI_ObterTabelaNaoFiscais( lsTotalizadoresParciais );
         lsTotalizadoresParciais := Trim( lsTotalizadoresParciais );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Não é possível consultar a sangria no ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            Exit;
         End;

         liPosicao := Pos( 'SANGRIA', UpperCase( lsTotalizadoresParciais ) );
         If liPosicao = 0 Then
         Begin
            CaixaMensagem( 'Totalizador não fiscal "SANGRIA" não localizado no ECF!', ctAviso, [ cbOk ], 0 );
            Exit;
         End;

         //         1       2
         //123456789.123456789.123456789.123456789.
         //01Sangria        00000000001200001
         lsVlr_Sangria := Copy( lsTotalizadoresParciais, liPosicao + 15, 13 );

         try
            lrVlr_Sangria := StrToFloat( lsVlr_Sangria ) / 100;
         except
            on E: Exception do
            Begin
               Result := 0;

               CaixaMensagem( 'Valor da sangria inválido( ' + lsVlr_Sangria + ' )! ' + #13 + E.Message, ctAviso, [ cbOk ], 0 );
               exit;
            end;
         end;
      End;
   End;
   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

   Result := lrVlr_Sangria;
end;

Function USER_Sangria( fFabricanteECF : TFabricanteECF; prrValor: Real; fsLabel : TLabel = Nil ): Boolean;
var liRetorno: integer;
Begin
   USER_Sangria := False;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Efetuando sangria...';
      fsLabel.Update;
   End;

   Case fFabricanteECF Of
      feBematech :
      Begin
         liRetorno := Bematech_FI_Sangria( FormatFloat( '0.00', prrValor ) );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não foi possível efeturar a sangria! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
      feDaruma :
      Begin
         liRetorno := Daruma_FI_Sangria( FormatFloat( '0.00', prrValor ) );
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não foi possível efeturar a sangria! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
      feSweda :
      Begin
         liRetorno := SWEDA_Sangria( FormatFloat( '0.00', prrValor ) );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não foi possível efeturar a sangria! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
      feElgin :
      Begin
         liRetorno := Elgin_FI_Sangria( FormatFloat( '0.00', prrValor ) );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não foi possível efeturar a sangria! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
      feEpson :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Imprimindo cupom de sangria...';
            fsLabel.Update;
         End;

         liRetorno := Epson_FI_Sangria( FormatFloat( '0', prrValor * 100 ) , 2 );
         If liRetorno <> 0 Then
         Begin
            CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir a sangria no ECF!', ctErro, [ cbOk ], 0 );
            Exit;
         End;
      End;
   End;
   USER_Sangria := True;
end;

Function USER_Suprimento( fFabricanteECF : TFabricanteECF; prrValor: Real; prsTpPgto: string; fsLabel : TLabel = Nil ): Boolean;
var liRetorno: integer;
Begin
   USER_Suprimento := False;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Efetuando suprimento...';
      fsLabel.Update;
   End;

   Case fFabricanteECF Of
      feBematech :
      Begin
         prsTpPgto := AnsiUpperCase( Copy( Trim( prsTpPgto ), 1, 1 ) ) + AnsiLowerCase( Trim( Copy( Trim( prsTpPgto ), 2, 15 ) ) );
         liRetorno := Bematech_FI_Suprimento( FormatFloat( '0.00', prrValor ),
                                              prsTpPgto ) ;
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não foi possível efeturar o suprimento! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
      feDaruma :
      Begin
         prsTpPgto := Copy( Trim( prsTpPgto ), 1, 16 );
         liRetorno := Daruma_FI_Suprimento( FormatFloat( '0.00', prrValor ),
                                             prsTpPgto ) ;
         If ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não foi possível efeturar o suprimento! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
      feSweda :
      Begin
         prsTpPgto := AnsiUpperCase( Copy( Trim( prsTpPgto ), 1, 1 ) ) + AnsiLowerCase( Trim( Copy( Trim( prsTpPgto ), 2, 15 ) ) );
         liRetorno := SWEDA_Suprimento( FormatFloat( '0.00', prrValor ),
                                              prsTpPgto ) ;
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não foi possível efeturar o suprimento! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
      feElgin :
      Begin
         prsTpPgto := AnsiUpperCase( Copy( Trim( prsTpPgto ), 1, 1 ) ) + AnsiLowerCase( Trim( Copy( Trim( prsTpPgto ), 2, 15 ) ) );
         liRetorno := Elgin_FI_Suprimento( FormatFloat( '0.00', prrValor ),
                                              prsTpPgto ) ;
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            CaixaMensagem( 'Não foi possível efeturar o suprimento! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
      feEpson :
      Begin
         prsTpPgto := AnsiUpperCase( Copy( Trim( prsTpPgto ), 1, 1 ) ) + AnsiLowerCase( Trim( Copy( Trim( prsTpPgto ), 2, 15 ) ) );
         If Arredondar( prrValor, 2 ) <> 0 Then
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Imprimindo cupom de suprimento...';
               fsLabel.Update;
            End;

            liRetorno := Epson_FI_Suprimento( FormatFloat( '0', prrValor * 100 ) , 2 );
            If liRetorno <> 0 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar emitir o suprimento no ECF!', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End;
      End;
   End;   
   USER_Suprimento := True;
end;

Function USER_SubtotalCupom( fFabricanteECF : TFabricanteECF; prrVlr_Venda: Real; prsTipo_AcreDesc: string; prrVlr_AcreDesc: Real; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
var liRetorno: integer;
    lsRetorno: string;
    lrVlr_Cupom: Real;
Begin
   Result := False;

   // -> Se o valor da venda estiver zero ou negativo
   If prrVlr_Venda <= 0 Then
   Begin
      CaixaMensagem( 'Valor da venda inválido. Entre em contato com a Tec-Soft', ctAviso, [ cbOk ], 0 );
      exit;
   end;
   // <- Se o valor da venda estiver zero ou negativo

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Capturando o subtotal do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o subtotal do cupom...';
            fsLabel.Update;
         End;

         lsRetorno := IncDigito( '', ' ', 14, 0 );
         liRetorno := Bematech_FI_Subtotal( lsRetorno );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         lrVlr_Cupom := StrToFloatDef( lsRetorno, 0 ) / 100;
         // <- Capturando o subtotal do cupom

         // -> Verificando se o valor do cupom está igual ao da venda
         If prsTipo_AcreDesc = 'D' Then
         Begin
            If Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom R$ ' + FormatFloat( '0.00', Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) ) +
                                 ' diverge do valor da venda R$ ' + FormatFloat( '0.00', Arredondar( prrVlr_Venda, 2 ) ), ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               end;
               Exit;
            end;
         end
         Else If prsTipo_AcreDesc = 'A' Then
         Begin
            If Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom R$ ' + FormatFloat( '0.00', Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) ) +
                                 ' diverge do valor da venda R$ ' + FormatFloat( '0.00', Arredondar( prrVlr_Venda, 2 ) ), ctAviso, [ cbOk ], 0 );
                  //CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               end;
               Exit;
            end;
         end;
         // <- Verificando se o valor do cupom está igual ao da venda
      End;
      feDaruma :
      Begin
         // -> Capturando o subtotal do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o subtotal do cupom...';
            fsLabel.Update;
         End;

         lsRetorno := IncDigito( '', ' ', 14, 0 );
         liRetorno := Daruma_FI_Subtotal( lsRetorno );
         If ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         lrVlr_Cupom := StrToFloat( lsRetorno ) / 100;
         // <- Capturando o subtotal do cupom

         // -> Verificando se o valor do cupom está igual ao da venda
         If prsTipo_AcreDesc = 'D' Then
         Begin
            If Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom R$ ' + FormatFloat( '0.00', Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) ) +
                                 ' diverge do valor da venda R$ ' + FormatFloat( '0.00', Arredondar( prrVlr_Venda, 2 ) ), ctAviso, [ cbOk ], 0 );
                  //CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               end;
               Exit;
            end;
         end
         Else If prsTipo_AcreDesc = 'A' Then
         Begin
            If Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom R$ ' + FormatFloat( '0.00', Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) ) +
                                 ' diverge do valor da venda R$ ' + FormatFloat( '0.00', Arredondar( prrVlr_Venda, 2 ) ), ctAviso, [ cbOk ], 0 );
                  //CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               end;
               Exit;
            end;
         end;
         // <- Verificando se o valor do cupom está igual ao da venda
      End;
      feSweda :
      Begin
         // -> Capturando o subtotal do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o subtotal do cupom...';
            fsLabel.Update;
         End;

         lsRetorno := IncDigito( '', ' ', 14, 0 );
         liRetorno := SWEDA_Subtotal( lsRetorno );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         lrVlr_Cupom := StrToFloatDef( lsRetorno, 0 ) / 100;
         // <- Capturando o subtotal do cupom

         // -> Verificando se o valor do cupom está igual ao da venda
         If prsTipo_AcreDesc = 'D' Then
         Begin
            If Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom R$ ' + FormatFloat( '0.00', Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) ) +
                                 ' diverge do valor da venda R$ ' + FormatFloat( '0.00', Arredondar( prrVlr_Venda, 2 ) ), ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               end;
               Exit;
            end;
         end
         Else If prsTipo_AcreDesc = 'A' Then
         Begin
            If Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom R$ ' + FormatFloat( '0.00', Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) ) +
                                 ' diverge do valor da venda R$ ' + FormatFloat( '0.00', Arredondar( prrVlr_Venda, 2 ) ), ctAviso, [ cbOk ], 0 );
                  //CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               end;
               Exit;
            end;
         end;
         // <- Verificando se o valor do cupom está igual ao da venda
      End;
      feElgin :
      Begin
         // -> Capturando o subtotal do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o subtotal do cupom...';
            fsLabel.Update;
         End;

         lsRetorno := IncDigito( '', ' ', 14, 0 );
         liRetorno := Elgin_FI_Subtotal( lsRetorno );
         If  ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         lrVlr_Cupom := StrToFloatDef( lsRetorno, 0 ) / 100;
         // <- Capturando o subtotal do cupom

         // -> Verificando se o valor do cupom está igual ao da venda
         If prsTipo_AcreDesc = 'D' Then
         Begin
            If Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom R$ ' + FormatFloat( '0.00', Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) ) +
                                 ' diverge do valor da venda R$ ' + FormatFloat( '0.00', Arredondar( prrVlr_Venda, 2 ) ), ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               end;
               Exit;
            end;
         end
         Else If prsTipo_AcreDesc = 'A' Then
         Begin
            If Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom R$ ' + FormatFloat( '0.00', Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) ) +
                                 ' diverge do valor da venda R$ ' + FormatFloat( '0.00', Arredondar( prrVlr_Venda, 2 ) ), ctAviso, [ cbOk ], 0 );
                  //CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               end;
               Exit;
            end;
         end;
         // <- Verificando se o valor do cupom está igual ao da venda
      End;
      feEpson :
      Begin
         // -> Capturando o subtotal do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Capturando o subtotal do cupom...';
            fsLabel.Update;
         End;

         lsRetorno := IncDigito( '', ' ', 20, 0 );
         liRetorno := Epson_FI_SubTotal( lsRetorno );
         If ( liRetorno <> 0 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao capturar o subtotal do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         lrVlr_Cupom := StrToFloatDef( lsRetorno, 0 ) / 100;
         // <- Capturando o subtotal do cupom

         // -> Verificando se o valor do cupom está igual ao da venda
         If prsTipo_AcreDesc = 'D' Then
         Begin
            If Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom R$ ' + FormatFloat( '0.00', Arredondar( lrVlr_Cupom - prrVlr_AcreDesc, 2 ) ) +
                                 ' diverge do valor da venda R$ ' + FormatFloat( '0.00', Arredondar( prrVlr_Venda, 2 ) ), ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               end;
               Exit;
            end;
         end
         Else If prsTipo_AcreDesc = 'A' Then
         Begin
            If Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) <> Arredondar( prrVlr_Venda, 2 ) Then
            Begin
               If prbExibirMsgErro Then
               Begin
                  CaixaMensagem( 'Valor total do cupom R$ ' + FormatFloat( '0.00', Arredondar( lrVlr_Cupom + prrVlr_AcreDesc, 2 ) ) +
                                 ' diverge do valor da venda R$ ' + FormatFloat( '0.00', Arredondar( prrVlr_Venda, 2 ) ), ctAviso, [ cbOk ], 0 );
                  //CaixaMensagem( 'Valor total do cupom diverge do valor da venda', ctAviso, [ cbOk ], 0 );
               end
               Else
               Begin
               end;
               Exit;
            end;
         end;
         // <- Verificando se o valor do cupom está igual ao da venda
      End;
   End;
   Result := True;
end;

Function USER_EspacoEntreLinhas( fFabricanteECF : TFabricanteECF; priEspacoEntreLinhas: Integer; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): Boolean;
var liRetorno: integer;
    //lrVlr_Cupom: Real;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
         // -> Alterando o espaço entre linhas do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Alterando espaço entre linhas do cupom...';
            fsLabel.Update;
         End;

         liRetorno := Bematech_FI_EspacoEntreLinhas( 0 ); // Coloca sempre o tamanho default
         If ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao alterar o espaço entre linhas do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         // <- Alterando o espaço entre linhas do cupom
      End;
      feDaruma :
      Begin
         // -> Alterando o espaço entre linhas do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Alterando espaço entre linhas do cupom...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_EspacoEntreLinhas( 0 ); // Coloca sempre o tamanho default
         If ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao alterar o espaço entre linhas do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         // <- Alterando o espaço entre linhas do cupom
      End;
      feSweda :
      Begin
         // -> Alterando o espaço entre linhas do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Alterando espaço entre linhas do cupom...';
            fsLabel.Update;
         End;

         liRetorno := SWEDA_EspacoEntreLinhas( 0 ); // Coloca sempre o tamanho default
         If ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao alterar o espaço entre linhas do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         // <- Alterando o espaço entre linhas do cupom
      End;
      feElgin :
      Begin
         // -> Alterando o espaço entre linhas do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Alterando espaço entre linhas do cupom...';
            fsLabel.Update;
         End;

         liRetorno := Elgin_FI_EspacoEntreLinhas( 0 ); // Coloca sempre o tamanho default
         If ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao alterar o espaço entre linhas do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         // <- Alterando o espaço entre linhas do cupom
      End;
      feEpson :
      Begin
         // -> Alterando o espaço entre linhas do cupom
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Alterando espaço entre linhas do cupom...';
            fsLabel.Update;
         End;

         liRetorno := Epson_FI_EntreLinhas( '0' ); // Coloca sempre o tamanho default
         If ( liRetorno <> 0 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao alterar o espaço entre linhas do cupom', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         // <- Alterando o espaço entre linhas do cupom
      End;
   End;
   Result := True;
end;

Function USER_DataMovimento( fFabricanteECF : TFabricanteECF; var fsDataMovECF : String; fsLabel: TLabel = Nil ) : String;
var lsData    : String;
    liRetorno : Integer;
Begin
   USER_DataMovimento := '000000';
   Case fFabricanteECF Of
      feBematech :
      Begin
         lsData    := IncDigito( '', ' ', 6, 0 );
         liRetorno := Bematech_FI_DataMovimento( lsData );
         If liRetorno <> 1 Then // Deu errado
            CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF! Retorno : "' + IntToStr( liRetorno ) + '", deseja tentar novamente?', ctInforma, [ cbOk ], 0 )
         Else
            USER_DataMovimento := lsData;
      End;
      feDaruma :
      Begin
         lsData    := IncDigito( '', ' ', 6, 0 );
         liRetorno := Daruma_FI_DataMovimento( lsData );
         If liRetorno <> 1 Then // Deu errado
            CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF! Retorno : "' + IntToStr( liRetorno ) + '", deseja tentar novamente?', ctInforma, [ cbOk ], 0 )
         Else
            USER_DataMovimento := lsData;
      End;
      feSweda :
      Begin
         lsData    := IncDigito( '', ' ', 6, 0 );
         liRetorno := SWEDA_DataMovimento( lsData );
         If liRetorno <> 1 Then // Deu errado
            CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF! Retorno : "' + IntToStr( liRetorno ) + '", deseja tentar novamente?', ctInforma, [ cbOk ], 0 )
         Else
            USER_DataMovimento := lsData;
      End;
      feElgin :
      Begin
         lsData    := IncDigito( '', ' ', 6, 0 );
         liRetorno := Elgin_FI_DataMovimento( lsData );
         If liRetorno <> 1 Then // Deu errado
            CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF! Retorno : "' + IntToStr( liRetorno ) + '", deseja tentar novamente?', ctInforma, [ cbOk ], 0 )
         Else
            USER_DataMovimento := lsData;
      End;
      feEpson :
      Begin
         lsData    := IncDigito( '', ' ', 15, 0 );
         liRetorno := Epson_FI_DataMovimento( lsData );
         lsData    := Copy( Trim( lsData ), 1, 4 ) + Copy( Trim( lsData ), 7, 2 );
         If liRetorno <> 0 Then // Deu errado
            CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF! Retorno : "' + IntToStr( liRetorno ) + '", deseja tentar novamente?', ctInforma, [ cbOk ], 0 )
         Else
            USER_DataMovimento := lsData;
      End;
   End;
   fsDataMovECF := lsData;

End;

Function USER_ProgramaFormasPagamento( fFabricanteECF : TFabricanteECF; prsTexto_FormasPagamento: string; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ) : Boolean;
var liRetorno: integer;
Begin
   Result := False;

   Case fFabricanteECF Of
      feBematech :
      Begin
        //
      End;
      feDaruma :
      Begin
         // -> Adicionando as formas de pagamento
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Adicionando as formas de pagamento...';
            fsLabel.Update;
         End;

         liRetorno := Daruma_FI_ProgramaFormasPagamento( prsTexto_FormasPagamento );
         If ( liRetorno <> 0 ) and
            ( liRetorno <> 1 ) Then
         Begin
            If prbExibirMsgErro Then
            Begin
               CaixaMensagem( 'Erro ' + IntToStr( liRetorno ) + ' ao adicionar as formas de pagamento', ctErro, [ cbOk ], 0 );
            end
            Else
            Begin
            end;

            Exit;
         End;
         // <- Adicionando as formas de pagamento
      End;
      feSweda :
      Begin
        //
      End;
   End;
   Result := True;
end;

Function USER_VersaoECF( fFabricanteECF : TFabricanteECF; prbExibirMsgErro : Boolean = True; fsLabel: TLabel = Nil ): string;
var lsVersao: String;
    liRetorno : Integer;
Begin
   USER_VersaoECF := '';
   Case fFabricanteECF Of
      feBematech :
      Begin
         lsVersao  := IncDigito( '', ' ', 4, 0 );
         liRetorno := Bematech_FI_VersaoFirmware( lsVersao );
         If liRetorno <> 1 Then // Deu errado
            CaixaMensagem( 'Não foi possível obter a Versão do Firmware! Retorno : "' + IntToStr( liRetorno ) + '", deseja tentar novamente?', ctAviso, [ cbOk ], 0 )
         Else
            USER_VersaoECF := lsVersao;
      End;
      feDaruma :
      Begin
        lsVersao  := IncDigito( '', ' ', 4, 0 );
        liRetorno := Daruma_FI_VersaoFirmware( lsVersao );
        If liRetorno <> 1 Then // Deu errado
           CaixaMensagem( 'Não foi possível obter a Versão do Firmware! Retorno : "' + IntToStr( liRetorno ) + '", deseja tentar novamente?', ctAviso, [ cbOk ], 0 )
        Else
           USER_VersaoECF := lsVersao;
      End;
      feSweda :
      Begin
         lsVersao  := IncDigito( '', ' ', 4, 0 );
         liRetorno := SWEDA_VersaoFirmware( lsVersao );
         If liRetorno <> 1 Then // Deu errado
            CaixaMensagem( 'Não foi possível obter a Versão do Firmware! Retorno : "' + IntToStr( liRetorno ) + '", deseja tentar novamente?', ctAviso, [ cbOk ], 0 )
         Else
            USER_VersaoECF := lsVersao;
      End;
      feElgin :
      Begin
         lsVersao  := IncDigito( '', ' ', 4, 0 );
         liRetorno := Elgin_FI_VersaoFirmware( lsVersao );
         If liRetorno <> 1 Then // Deu errado
            CaixaMensagem( 'Não foi possível obter a Versão do Firmware! Retorno : "' + IntToStr( liRetorno ) + '", deseja tentar novamente?', ctAviso, [ cbOk ], 0 )
         Else
            USER_VersaoECF := lsVersao;
      End;
      feEpson :
      Begin
         lsVersao := IncDigito( ' ', ' ', 10, 0 );
         liRetorno:= Epson_FI_VersaoDLL( lsVersao );
         lsVersao := Trim( SubstString( lsVersao, '.,', '', True ) );
         If liRetorno <> 0 Then // Deu errado
            CaixaMensagem( 'Não foi possível obter a Versão do Firmware! Retorno : "' + IntToStr( liRetorno ) + '", deseja tentar novamente?', ctAviso, [ cbOk ], 0 )
         Else
            USER_VersaoECF := lsVersao;
      End;
   End;
End;

Function USER_ModeloECF( fFabricanteECF : TFabricanteECF; var fsModeloECF : String; fsLabel: TLabel = Nil ) : Boolean;
var lsModeloECF : String;
    lsMarca     : String;
    lsTipo      : String;
    liRetorno   : Integer;
    liCont      : Integer;
Begin
   fsModeloECF := '0000';
   USER_ModeloECF := False;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Capturando o modelo do ECF...';
      fsLabel.Update;
   End;

   liRetorno := 0;
   fsModeloECF   := '';

   liCont := 0;
   While True Do
   Begin
      liCont := liCont + 1;

      If fsLabel <> Nil Then
      Begin
         fsLabel.Caption := 'Capturando o modelo do ECF( ' + IntToStr( liCont ) + 'ª tentativa )...';
         fsLabel.Update;
      End;

      Case fFabricanteECF Of
         feBematech :
         Begin
            lsModeloECF := IncDigito( '', ' ', 10, 0 );
            liRetorno := Bematech_FI_ModeloImpressora( lsModeloECF );
            lsModeloECF := Trim( lsModeloECF );
         End;
         feDaruma :
         Begin
            liRetorno := Daruma_FI_VerificaModeloECF();
            Case liRetorno Of
               1:
               Begin
                  lsModeloECF := 'FS345'; // FS345 - Impressora de varejo.
                  liRetorno := 1;
               End;
               2:
               Begin
                  lsModeloECF := 'FS318'; // FS318 - Impressora para restaurantes.
                  liRetorno := 1;
               End;
               3:
               Begin
                  lsModeloECF := 'FS2000'; // FS2000 - Impressora de duas estações.
                  liRetorno := 1;
               End;
               4:
               Begin
                  lsModeloECF := 'FS600'; // FS600 - MFD (térmica) - Impressora de varejo .
                  liRetorno := 1;
               End;
               Else
                  lsModeloECF := '';
            End;
         End;
         feSweda :
         Begin
            lsMarca     := IncDigito( '', ' ', 15, 0 );
            lsModeloECF := IncDigito( '', ' ', 20, 0 );
            lsTipo      := IncDigito( '', ' ', 7, 0 );
            liRetorno   := SWEDA_MarcaModeloTipoImpressoraMFD( lsMarca, lsModeloECF, lsTipo );
            lsMarca     := UpperCase( Trim( lsMarca ) ); // 'SWEDA          '
            lsModeloECF := UpperCase( Trim( lsModeloECF ) ); // 'IF S-9000I          '
            lsTipo      := UpperCase( Trim( lsTipo ) ); // 'ECF-IF '
         End;
         feElgin :
         Begin
            lsMarca     := IncDigito( '', ' ', 15, 0 );
            lsModeloECF := IncDigito( '', ' ', 20, 0 );
            lsTipo      := IncDigito( '', ' ', 7, 0 );
            liRetorno   := Elgin_FI_MarcaModeloTipoImpressoraMFD( lsMarca, lsModeloECF, lsTipo );
            lsMarca     := UpperCase( Trim( lsMarca ) ); // 'SWEDA          '
            lsModeloECF := UpperCase( Trim( lsModeloECF ) ); // 'IF S-9000I          '
            lsTipo      := UpperCase( Trim( lsTipo ) ); // 'ECF-IF '
         End;
         feEpson :
         Begin
            lsModeloECF := IncDigito( '', ' ', 110, 0 );
            liRetorno := Epson_FI_ObterDadosImpressora( lsModeloECF );
            lsModeloECF := Trim( Copy( Trim( lsModeloECF ), 61, 20 ) );
         End;
      End;

      If ( ( fFabricanteECF <> feEpson ) And ( liRetorno <> 1 ) ) Or
         ( ( fFabricanteECF = feEpson ) And ( liRetorno <> 0 ) ) Then // Deu errado
      Begin
         If NOT CaixaMensagem( 'Não foi possível obter o modelo do ECF( Retorno : ' + IntToStr( liRetorno ) + ' ), tentar obtê-lo novamente?', ctConfirma, [ cbSimNao ], 0 ) Then
            Exit;
      End
      Else
      Begin
         lsModeloECF := Trim( lsModeloECF );
         If lsModeloECF <> '' Then
            Break
         Else If NOT CaixaMensagem( 'O modelo do ECF foi retornado em branco, tentar obtê-lo novamente?', ctConfirma, [ cbSimNao ], 0 ) Then
            Exit;
      End;
   End;

   fsModeloECF := lsModeloECF;
   USER_ModeloECF := True;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;
End;

Function USER_NumeroSerie( fFabricanteECF : TFabricanteECF; var fsNumeroSerie : String; var fsModeloECF : String; fsLabel: TLabel = Nil ) : Boolean;
var lsNumeroSerie : String;
    lsModeloECF   : String;
    liRetorno     : Integer;
    liCont        : Integer;
    liContMFD     : Integer;
Begin
   fsNumeroSerie := '0000';
   USER_NumeroSerie := False;

   liRetorno := 0;
   liCont := 0;
   While True Do
   Begin
      liCont := liCont + 1;

      If fsLabel <> Nil Then
      Begin
         fsLabel.Caption := 'Capturando o número de série do ECF( ' + IntToStr( liCont ) + 'ª tentativa )...';
         fsLabel.Update;
      End;

      Case fFabricanteECF Of
         feBematech :
         Begin
             fsModeloECF   := '';

            lsNumeroSerie := IncDigito( '', ' ', 15, 0 );
            liRetorno     := Bematech_FI_NumeroSerie( lsNumeroSerie );
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Não é possível obter o nº de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
               Exit;
            End;

            If NOT USER_ModeloECF( fFabricanteECF, lsModeloECF, fsLabel ) Then
               Exit;

            // -> Capturando o Nº de Série ( MP-25 )
            If ( UpperCase( Trim( lsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
               ( UpperCase( Trim( lsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) Then
            Begin
               liContMFD := 0;
               While True Do
               Begin
                  liContMFD := liContMFD + 1;

                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := 'Capturando o número de série do ECF MFD( ' + IntToStr( liContMFD ) + 'ª tentativa )...';
                     fsLabel.Update;
                  End;

                  // -> Capturando o Nº de Série MFD
                  lsNumeroSerie := IncDigito( '', ' ', 20, 0 );
                  liRetorno  := Bematech_FI_NumeroSerieMFD( lsNumeroSerie );
                  lsNumeroSerie := Trim( lsNumeroSerie );
                  // <- Capturando o Nº de Série MFD
                  If liRetorno <> 1 Then
                  Begin
                     CaixaMensagem( 'Não é possível obter o nº de série do ECF MFD! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );
                     Exit;
                  End;

                  If ( Length( lsNumeroSerie ) >= 19 ) Or ( lsNumeroSerie = 'EMULADOR' ) Then
                     Break
                  Else If NOT CaixaMensagem( 'O Nº de série do ECF MFD( "' + lsModeloECF + '" ) foi retornado com menos de 19 caracteres( "' + lsNumeroSerie + '" ), tentar obtê-lo novamente?', ctConfirma, [ cbSimNao ], 0 ) Then
                  Begin
                     Exit;
                  End;
               End;
            End;
            // <- Capturando o Nº de Série ( MP-25 )
         End;
         feDaruma :
         Begin
            lsNumeroSerie := IncDigito( '', ' ', 15, 0 );
            liRetorno := Daruma_FI_NumeroSerie( lsNumeroSerie );
         End;
         feSweda :
         Begin
            lsNumeroSerie := IncDigito( '', ' ', 25, 0 );
            liRetorno := SWEDA_NumeroSerie( lsNumeroSerie );
         End;
         feElgin :
         Begin
            lsNumeroSerie := IncDigito( '', ' ', 20, 0 );
            liRetorno := Elgin_FI_NumeroSerie( lsNumeroSerie );
         End;
         feEpson :
         Begin
            lsNumeroSerie := IncDigito( '', ' ', 110, 0 );
            liRetorno := Epson_FI_ObterDadosImpressora( lsNumeroSerie );
            lsNumeroSerie := Trim( Copy( Trim( lsNumeroSerie ), 1, 20 ) );
         End;
      End;
      lsNumeroSerie := Trim( lsNumeroSerie );
      If Trim( lsNumeroSerie )  <> '' Then // Nº de série capturado com sucesso
         Break;

      If NOT CaixaMensagem( 'O número de série do ECF foi retornado em branco, deseja tentar novamente?', ctConfirma, [ cbSimNao ], 0 ) Then
         Exit;
   End;

   If ( ( fFabricanteECF <> feEpson ) And ( liRetorno <> 1 ) ) Or
      ( ( fFabricanteECF = feEpson ) And ( liRetorno <> 0 ) ) Then // Deu errado
   Begin
      CaixaMensagem( 'Não é possível obter o número de série do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctInforma, [ cbOk ], 0 );
      Exit;
   End
   Else
   Begin
      fsNumeroSerie := lsNumeroSerie;
      If fFabricanteECF = feBematech Then
         fsModeloECF   := lsModeloECF;
      USER_NumeroSerie := True;
   End;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;
End;

Function USER_DataHoraReducao( fFabricanteECF : TFabricanteECF; var fsData : String; var fsHora : String; fsLabel: TLabel = Nil ) : Boolean;
var lsData    : String;
    lsHora    : String;
    liRetorno : Integer;
Begin
   fsData := '000000';
   fsHora := '000000';
   USER_DataHoraReducao := False;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Capturando a data/hora da última redução Z do ECF...';
      fsLabel.Update;
   End;

   liRetorno := 0;

   lsData := IncDigito( '', ' ', 6, 0 );
   lsHora := IncDigito( '', ' ', 6, 0 );
   Case fFabricanteECF Of
      feBematech : liRetorno := Bematech_FI_DataHoraReducao( lsData, lsHora );
      feDaruma : liRetorno := Daruma_FI_DataHoraReducao( lsData, lsHora );
      feSweda : liRetorno := SWEDA_DataHoraReducao( lsData, lsHora );
      feElgin : liRetorno := Elgin_FI_DataHoraReducao( lsData, lsHora );
      feEpson :
      Begin
         lsData := IncDigito( '', ' ', 70, 0 );
         liRetorno := Epson_FI_ObterDadosJornada( lsData );
         lsHora := Copy( Trim( lsData ), 23, 6 );
         lsData := Copy( Trim( lsData ), 15, 4 ) + Copy( lsData, 21, 2 );
      End;
   End;
   lsData := Trim( lsData );
   lsHora := Trim( lsHora );

   If ( ( fFabricanteECF <> feEpson ) And ( liRetorno <> 1 ) ) Or
      ( ( fFabricanteECF = feEpson ) And ( liRetorno <> 0 ) ) Then // Deu errado
   Begin
      CaixaMensagem( 'Não é possível obter a data/hora da última redução Z do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctInforma, [ cbOk ], 0 );
      Exit;
   End
   Else
   Begin
      fsData := lsData;
      fsHora := lsHora;
      USER_DataHoraReducao := True;
   End;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;
End;

Function USER_NumeroCaixa( fFabricanteECF : TFabricanteECF; var fsNumeroCaixa : String; fsLabel: TLabel = Nil ) : Boolean;
var lsNumeroCaixa : String;
    liRetorno     : Integer;
Begin
   fsNumeroCaixa := '0000';
   USER_NumeroCaixa := False;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Capturando o número do caixa no ECF...';
      fsLabel.Update;
   End;

   liRetorno := 0;

   lsNumeroCaixa := IncDigito( '', ' ', 4, 0 );
   Case fFabricanteECF Of
      feBematech : liRetorno := Bematech_FI_NumeroCaixa( lsNumeroCaixa );
      feDaruma : liRetorno := Daruma_FI_NumeroCaixa( lsNumeroCaixa );
      feSweda : liRetorno := SWEDA_NumeroCaixa( lsNumeroCaixa );
      feElgin : liRetorno := Elgin_FI_NumeroCaixa( lsNumeroCaixa );
      feEpson :
      Begin
         lsNumeroCaixa := IncDigito( '', ' ', 10, 0 );
         liRetorno := Epson_FI_NumeroLoja( lsNumeroCaixa );
         lsNumeroCaixa := Trim( Copy( Trim( lsNumeroCaixa ), 1, 3 ) );
      End;
   End;
   lsNumeroCaixa := Trim( lsNumeroCaixa );

   If fFabricanteECF = feDaruma Then
   Begin
      If fsLabel <> Nil Then
      Begin
         fsLabel.Caption := 'Capturando o número do caixa no ECF( Verificando modelo do ECF )...';
         fsLabel.Update;
      End;

      USER_ModeloECF( fFabricanteECF, gsModeloECF, fsLabel );
      If UpperCase( Trim( gsModeloECF ) ) = UpperCase( Trim( 'FS345' ) ) Then
         lsNumeroCaixa := '0001';
   End;

   If ( ( fFabricanteECF <> feEpson ) And ( liRetorno <> 1 ) ) Or
      ( ( fFabricanteECF = feEpson ) And ( liRetorno <> 0 ) ) Then // Deu errado
   Begin
      CaixaMensagem( 'Não é possível obter o número do caixa no ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctInforma, [ cbOk ], 0 );
      Exit;
   End
   Else
   Begin
      fsNumeroCaixa := lsNumeroCaixa;
      USER_NumeroCaixa := True;
   End;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;

end;

Function USER_NumeroLoja( fFabricanteECF : TFabricanteECF; var fsNumeroLoja : String;  fsLabel: TLabel = Nil  ) : Boolean;
var lsNumeroLoja : String;
    liRetorno    : Integer;
Begin
   fsNumeroLoja := '0000';
   USER_NumeroLoja := False;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Capturando o número da loja no ECF...';
      fsLabel.Update;
   End;

   liRetorno := 0;

   lsNumeroLoja := IncDigito( '', ' ', 4, 0 );
   Case fFabricanteECF Of
      feBematech : liRetorno := Bematech_FI_NumeroLoja( lsNumeroLoja );
      feDaruma   : liRetorno := Daruma_FI_NumeroLoja( lsNumeroLoja );
      feSweda    : liRetorno := SWEDA_NumeroLoja( lsNumeroLoja );
      feElgin    : liRetorno := Elgin_FI_NumeroLoja( lsNumeroLoja );
      feEpson :
      Begin
         lsNumeroLoja := IncDigito( '', ' ', 10, 0 );
         liRetorno := Epson_FI_NumeroLoja( lsNumeroLoja );
         lsNumeroLoja := Trim( Copy( Trim( lsNumeroLoja ), 4, 6 ) );
      End;
   End;
   lsNumeroLoja := Trim( lsNumeroLoja );

   If fFabricanteECF = feDaruma Then
   Begin
      If fsLabel <> Nil Then
      Begin
         fsLabel.Caption := 'Capturando o número da Loja no ECF( Verificando modelo do ECF )...';
         fsLabel.Update;
      End;

      USER_ModeloECF( fFabricanteECF, gsModeloECF, fsLabel );
      If UpperCase( Trim( gsModeloECF ) ) = UpperCase( Trim( 'FS345' ) ) Then
         lsNumeroLoja := '0001';
   End;

   If ( ( fFabricanteECF <> feEpson ) And ( liRetorno <> 1 ) ) Or
      ( ( fFabricanteECF = feEpson ) And ( liRetorno <> 0 ) ) Then // Deu errado
   Begin
      CaixaMensagem( 'Não é possível obter o número do caixa no ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctInforma, [ cbOk ], 0 );
      Exit;
   End
   Else
   Begin
      fsNumeroLoja := lsNumeroLoja;
      USER_NumeroLoja := True;
   End;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption:= '';
      fsLabel.Update;
   End;
End;

Function USER_CNPJIEIMUsuario( fFabricanteECF : TFabricanteECF; out fsCNPJ : String; out fsInscricaoEstadual : String; out fsInscricaoMunicipal : String; fsLabel : Tlabel = Nil ) : Boolean;
Var lsRetorno : String;
    liRetorno : Integer;
Begin
   USER_CNPJIEIMUsuario := False;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Consultando o CNPJ/IE/IM  do Usuário do ECF...';
      fsLabel.Update;
   End;

   liRetorno := -1;
   fsCNPJ               := IncDigito( '', ' ', 18, 0 );
   fsInscricaoEstadual  := IncDigito( '', ' ', 15, 0 );
   fsInscricaoMunicipal := IncDigito( '', ' ', 15, 0 );
   Case fFabricanteECF Of
      feBematech  : liRetorno := Bematech_FI_CGC_IE( fsCNPJ, fsInscricaoEstadual );
      feSweda     : liRetorno := SWEDA_CGC_IE( fsCNPJ, fsInscricaoEstadual );
      feDaruma    : liRetorno := Daruma_FI_CGC_IE( fsCNPJ, fsInscricaoEstadual );
      feElgin     : liRetorno := Elgin_FI_CGC_IE( fsCNPJ, fsInscricaoEstadual );
      feEpson :
      Begin
         lsRetorno := IncDigito( '', ' ', 50, 0 );
         liRetorno := Epson_FI_CGC_IE( lsRetorno );
         fsCNPJ               := Copy( Trim( lsRetorno ), 1, 18 );
         fsInscricaoEstadual  := Copy( Trim( lsRetorno ), 19, 15 );
         fsInscricaoMunicipal := Copy( Trim( lsRetorno ), 34, 15 );
      End;
   End;
   fsCNPJ := Trim( SubstString( fsCNPJ, './-() ', '', True ) );
   fsInscricaoEstadual := Trim( SubstString( fsInscricaoEstadual, './-() ', '', True ) );
   fsInscricaoMunicipal := Trim( SubstString( fsInscricaoMunicipal, './-() ', '', True ) );

   If ( fFabricanteECF <> feEpson ) And ( liRetorno <> 1 ) Or
      ( fFabricanteECF = feEpson ) And ( liRetorno <> 0 ) Then
   Begin
      CaixaMensagem( 'Não foi possível obter os dados do usuário do ECF! Retorno do ECF : ' + IntToStr( liRetorno ), ctaviso, [ cbOk ], 0 );
      Exit;
   End;
   USER_CNPJIEIMUsuario := True;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;
End;

Function USER_VersaoFirmware( fFabricanteECF : TFabricanteECF; var fsVersaoFirmware : String; fsLabel: Tlabel = Nil ) : Boolean;
var lsVersaoFirmware : String;
    liRetorno        : Integer;
Begin
   fsVersaoFirmware := '0000';
   USER_VersaoFirmware := False;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Capturando a versão do firmware do ECF...';
      fsLabel.Update;
   End;

   liRetorno := 0;

   lsVersaoFirmware := IncDigito( '', ' ', 8, 0 );
   Case fFabricanteECF Of
      feBematech : liRetorno := Bematech_FI_VersaoFirmware( lsVersaoFirmware );
      feDaruma   : liRetorno := Daruma_FI_VersaoFirmware( lsVersaoFirmware );
      feSweda    : liRetorno := SWEDA_VersaoFirmware( lsVersaoFirmware );
      feElgin    : liRetorno := Elgin_FI_VersaoFirmware( lsVersaoFirmware );
      feEpson :
      Begin
         lsVersaoFirmware := IncDigito( '', ' ', 110, 0 );
         liRetorno        := Epson_FI_ObterDadosImpressora( lsVersaoFirmware );
         lsVersaoFirmWare := Copy ( Trim( lsVersaoFirmWare ), 101, 107 );
      End;
   End;
   lsVersaoFirmware := Trim( lsVersaoFirmware );

   If ( ( fFabricanteECF <> feEpson ) And ( liRetorno <> 1 ) ) Or
      ( ( fFabricanteECF = feEpson ) And ( liRetorno <> 0 ) ) Then // Deu errado
   Begin
      CaixaMensagem( 'Não é possível obter a versão do firmware do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctInforma, [ cbOk ], 0 );
      Exit;
   End
   Else
   Begin
      fsVersaoFirmware := lsVersaoFirmware;
      USER_VersaoFirmware := True;
   End;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;
End;

Function USER_VerificaTotalizadoresNaoFiscais( fFabricanteECF : TFabricanteECF; var fsVerificaTotalizadoresNaoFiscais : String; fsLabel: Tlabel = Nil ) : Boolean;
var lsVerificaTotalizadoresNaoFiscais : String;
    lsTemp                            : String;
    liRetorno                         : Integer;
Begin
   fsVerificaTotalizadoresNaoFiscais := '0000';
   USER_VerificaTotalizadoresNaoFiscais := False;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Capturando os totalizadores não fiscais do ECF...';
      fsLabel.Update;
   End;

   liRetorno := 0;

   lsVerificaTotalizadoresNaoFiscais := IncDigito( '', ' ', 179, 0 );
   Case fFabricanteECF Of
      feBematech : liRetorno:= Bematech_FI_VerificaTotalizadoresNaoFiscais( lsVerificaTotalizadoresNaoFiscais );
      feDaruma : liRetorno  := Daruma_FI_VerificaTotalizadoresNaoFiscais( lsVerificaTotalizadoresNaoFiscais );
      feSweda : liRetorno   := SWEDA_ValorTotalizadorNaoFiscal( lsVerificaTotalizadoresNaoFiscais );
      feElgin : liRetorno   := Elgin_FI_VerificaTotalizadoresNaoFiscais( lsVerificaTotalizadoresNaoFiscais );
      feEpson :
      Begin
         lsTemp := IncDigito( '', ' ', 681, 0 );
         liRetorno := Epson_FI_ObterTabelaNaoFiscais( lsTemp );

         //         1         2          3
         //123456789.123456789.123456789.1234
         //01Sangria        0000000000000000002Fundo de Troco 0000000000000000003RECARGA CELULAR0000000000000000004               0000000000000000005
         lsVerificaTotalizadoresNaoFiscais := '';;
         While Trim( lsTemp ) <> '' Do
         Begin
            If Trim( Copy( lsTemp, 3, 15 ) ) <> '' Then
            Begin
               If Trim( lsVerificaTotalizadoresNaoFiscais ) <> '' Then
                  lsVerificaTotalizadoresNaoFiscais := lsVerificaTotalizadoresNaoFiscais + ',';
               lsVerificaTotalizadoresNaoFiscais := lsVerificaTotalizadoresNaoFiscais + Copy( lsTemp, 3, 15 );
            End;
            Delete( lsTemp, 1, 34 );
         End;
      End;
   End;
   lsVerificaTotalizadoresNaoFiscais := Trim( lsVerificaTotalizadoresNaoFiscais );

   If ( ( fFabricanteECF <> feEpson ) And ( liRetorno <> 1 ) ) Or
      ( ( fFabricanteECF = feEpson ) And ( liRetorno <> 0 ) ) Then // Deu errado
   Begin
      CaixaMensagem( 'Não é possível capturar os totalizadores não fiscais do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctInforma, [ cbOk ], 0 );
      Exit;
   End
   Else
   Begin
      fsVerificaTotalizadoresNaoFiscais := lsVerificaTotalizadoresNaoFiscais;
      USER_VerificaTotalizadoresNaoFiscais := True;
   End;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := '';
      fsLabel.Update;
   End;
End;

Function InitDLLECF( fFabricanteECF : TFabricanteECF; fiPortaECF : Integer; fsPath : String; fsLabel : TLabel = Nil ) : Boolean;
var liniParam       : TInIfile;
    lFabricanteECF  : TFabricanteECF;
    PathArray       : Array[0..64] Of Char;
    lsPathINI       : String;
    lsPathWin       : String;
    lsVersaoDll     : String;
    cFlag           : String;
    liAtivaDesativa : Integer;
    liRetorno       : Integer;
    ErrMode         : Word;
Begin
   If gECFemUso <> feNone Then
   Begin
      InitDLLECF := True;
      Exit;
   End;

   lFabricanteECF := fFabricanteECF;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Localizando pasta do Windows para carregamento de DLL do ECF...';
      fsLabel.Update;
   End;

   // -> 1ª Tentativa - Procurando diretório do Windows
  // lsPathWin := GetDOSEnvVar( 'WinDir' );
   // <- 1ª Tentativa - Procurando diretório do Windows

   // -> 2ª Tentativa - Procurando diretório do Windows
   If lsPathWin = '' Then
   Begin
      Try
         FillChar( PathArray, SizeOf( PathArray ), #0 );
         GetWindowsDirectory( PathArray, 255 );
         lsPathWin := Format( '%s', [ PathArray ] );
      Except
        //
      End;
   End;
   // <- 2ª Tentativa - Procurando diretório do Windows

   // -> 3ª Tentativa - Procurando diretório do Windows
   If lsPathWin = '' Then
   Begin
      lsPathWin := 'C:\';
      If DirectoryExists( 'C:\WinNT' ) Then
         lsPathWin := 'C:\WinNT\'
      Else If DirectoryExists( 'C:\Windows' ) Then
         lsPathWin := 'C:\Windows\'
      Else If DirectoryExists( 'D:\WinNT' ) Then
         lsPathWin := 'D:\WinNT\'
      Else If DirectoryExists( 'D:\Windows' ) Then
         lsPathWin := 'D:\Windows\';
   End;
   // <- 3ª Tentativa - Procurando diretório do Windows

   If lsPathWin[ Length(lsPathWin) ] <> '\' Then
     lsPathWin := lsPathWin + '\';

   Case fFabricanteECF Of
      feCorisco :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Carregando DLL do ECF Corisco...';
            fsLabel.Update;
         End;

         If NOT FileExists( fsPath + 'ECFCOM32.DLL' ) Then
            fsPath := '';

         If DLLECFHandle = 0 Then
         Begin
            ErrMode   := SetErrorMode( SEM_NOOPENFILEERRORBOX );
            DLLECFHandle := LoadLibrary( PChar( fsPath + 'ECFCOM32.DLL' ) );
            SetErrorMode( ErrMode );
            If DLLECFHandle = 0 Then
            Begin
               DLLECFHandle := INVALID_HANDLE_VALUE;
               CaixaMensagem( 'A DLL do ECF Corisco não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )', ctaviso, [ cbOk ], 0 );
               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'A DLL do ECF Corisco não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )';
                  fsLabel.Update;
               End;
            End
            Else
            Begin
               @eAbrePorta                := GetProcAddress( DLLECFHandle, 'eAbrePorta' );
               @eFechaPorta               := GetProcAddress( DLLECFHandle, 'eFechaPorta' );
               @eHouveEtx                 := GetProcAddress( DLLECFHandle, 'eHouveEtx' );
               @eLimpafEtx                := GetProcAddress( DLLECFHandle, 'eLimpafEtx' );
               @efQtdRxBuf                := GetProcAddress( DLLECFHandle, 'efQtdRxBuf' );
               @eEnviaString              := GetProcAddress( DLLECFHandle, 'eEnviaString' );
               @eRecebeString             := GetProcAddress( DLLECFHandle, 'eRecebeString' );
               @eStatusDoModem            := GetProcAddress( DLLECFHandle, 'eStatusDoModem' );
               @eTimeoutDeTransmissao     := GetProcAddress( DLLECFHandle, 'eTimeoutDeTransmissao' );
               @ePegaTimeoutDeTransmissao := GetProcAddress( DLLECFHandle, 'ePegaTimeoutDeTransmissao' );
               @eVersao                   := GetProcAddress( DLLECFHandle, 'eVersao' );

               //InitDLLECF := True;
               gECFemUso := feCorisco;
            End;
         End;
      End;
      feBematech :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Carregando DLL do ECF Bematech...';
            fsLabel.Update;
         End;

         If NOT FileExists( fsPath + 'BEMAFI32.DLL' ) Then
            fsPath := '';

         If FileExists( lsPathWin + 'System32\BEMAFI32.INI' ) Then
            lsPathINI := lsPathWin + 'System32\BEMAFI32.INI'
         Else If FileExists( lsPathWin + 'System\BEMAFI32.INI' ) Then
            lsPathINI := lsPathWin + 'System\BEMAFI32.INI'
         Else If FileExists( gsPath + 'BEMAFI32.INI' ) Then
            lsPathINI := gsPath + 'BEMAFI32.INI'
         Else
         Begin
            CaixaMensagem( 'Arquivo de configuração Bemafi32.INI da DLL da Bematech não localizado( Path Windows : ' + lsPathWin + ' )!', ctErro, [ cbOk ], 0 );
            InitDLLECF := False;
            Exit;
         End;
         liniParam := TInIfile.Create( lsPathINI );
         If UpperCase( Trim( liniParam.ReadString( 'Sistema', 'Porta', '' ) ) ) <> 'COM' + IntToStr( fiPortaECF + 1 ) Then
         Begin
            If CaixaMensagem( 'A porta de comunicação do ECF no Bemafi32.INI( ' + liniParam.ReadString( 'Sistema', 'Porta', '' ) +
                              ' ) dIfere da configuração do Posto On-Line( COM' + IntToStr( fiPortaECF + 1 ) + ' ), ' +
                              'Deseja atualizar o INI de acordo com o Posto On-Line?', ctConfirma, [ cbSimNao ], 0 ) Then
            Begin
               liniParam.WriteString( 'Sistema', 'Porta', 'COM' + IntToStr( fiPortaECF + 1 ) );
            End;
         End;
         //liniParam.WriteInteger( 'Sistema', 'Status', 1 );
         //liniParam.WriteInteger( 'Sistema', 'Retorno', 1 );
         liniParam.WriteInteger( 'Sistema', 'ControlePorta', 0 );
         FreeAndNil( liniParam );

         ErrMode   := SetErrorMode( SEM_NOOPENFILEERRORBOX );
         DLLECFHandle := LoadLibrary( PChar( fsPath + 'BEMAFI32.DLL' ) );
         SetErrorMode( ErrMode );
         If DLLECFHandle = 0 Then
         Begin
            DLLECFHandle := INVALID_HANDLE_VALUE;
            CaixaMensagem( 'A DLL do ECF Bematech não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )', ctaviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'A DLL do ECF Bematech não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )';
               fsLabel.Update;
            End;
         End
         Else
         Begin
            // Funções do Cupom Fiscal
            @Bematech_FI_AbreCupom                             := GetProcAddress( DLLECFHandle, 'Bematech_FI_AbreCupom' );
            @Bematech_FI_AumentaDescricaoItem                  := GetProcAddress( DLLECFHandle, 'Bematech_FI_AumentaDescricaoItem' );
            @Bematech_FI_VendeItem                             := GetProcAddress( DLLECFHandle, 'Bematech_FI_VendeItem' );
            @Bematech_FI_CancelaItemGenerico                   := GetProcAddress( DLLECFHandle, 'Bematech_FI_CancelaItemGenerico' );
            @Bematech_FI_CancelaCupom                          := GetProcAddress( DLLECFHandle, 'Bematech_FI_CancelaCupom' );
            @Bematech_FI_FechaCupom                            := GetProcAddress( DLLECFHandle, 'Bematech_FI_FechaCupom' );
            @Bematech_FI_IniciaFechamentoCupom                 := GetProcAddress( DLLECFHandle, 'Bematech_FI_IniciaFechamentoCupom' );
            @Bematech_FI_EfetuaFormaPagamento                  := GetProcAddress( DLLECFHandle, 'Bematech_FI_EfetuaFormaPagamento' );
            @Bematech_FI_TerminaFechamentoCupom                := GetProcAddress( DLLECFHandle, 'Bematech_FI_TerminaFechamentoCupom' );

            // Funções de Inicialização
            @Bematech_FI_ProgramaAliquota                      := GetProcAddress( DLLECFHandle, 'Bematech_FI_ProgramaAliquota' );
            @Bematech_FI_ProgramaHorarioVerao                  := GetProcAddress( DLLECFHandle, 'Bematech_FI_ProgramaHorarioVerao' );
            @Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms       := GetProcAddress( DLLECFHandle, 'Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms' );
            @Bematech_FI_ProgramaArredondamento                := GetProcAddress( DLLECFHandle, 'Bematech_FI_ProgramaArredondamento' );
            @Bematech_FI_ProgramaTruncamento                   := GetProcAddress( DLLECFHandle, 'Bematech_FI_ProgramaTruncamento' );
            @Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD := GetProcAddress( DLLECFHandle, 'Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD' );

            // Funções dos Relatórios Fiscais
            @Bematech_FI_LeituraX                              := GetProcAddress( DLLECFHandle, 'Bematech_FI_LeituraX' );
            @Bematech_FI_ReducaoZ                              := GetProcAddress( DLLECFHandle, 'Bematech_FI_ReducaoZ' );
            @Bematech_FI_RelatorioGerencial                    := GetProcAddress( DLLECFHandle, 'Bematech_FI_RelatorioGerencial' );
            @Bematech_FI_FechaRelatorioGerencial               := GetProcAddress( DLLECFHandle, 'Bematech_FI_FechaRelatorioGerencial' );
            @Bematech_FI_LeituraMemoriaFiscalData              := GetProcAddress( DLLECFHandle, 'Bematech_FI_LeituraMemoriaFiscalData' );
            @Bematech_FI_LeituraMemoriaFiscalReducao           := GetProcAddress( DLLECFHandle, 'Bematech_FI_LeituraMemoriaFiscalReducao' );
            @Bematech_FI_LeituraMemoriaFiscalSerialData        := GetProcAddress( DLLECFHandle, 'Bematech_FI_LeituraMemoriaFiscalSerialData' );
            @Bematech_FI_LeituraMemoriaFiscalSerialReducao     := GetProcAddress( DLLECFHandle, 'Bematech_FI_LeituraMemoriaFiscalSerialReducao' );

            // Funções das Operações Não Fiscais
            @Bematech_FI_RecebimentoNaoFiscal                  := GetProcAddress( DLLECFHandle, 'Bematech_FI_RecebimentoNaoFiscal' );
            @Bematech_FI_AbreComprovanteNaoFiscalVinculado     := GetProcAddress( DLLECFHandle, 'Bematech_FI_AbreComprovanteNaoFiscalVinculado' );
            @Bematech_FI_UsaComprovanteNaoFiscalVinculado      := GetProcAddress( DLLECFHandle, 'Bematech_FI_UsaComprovanteNaoFiscalVinculado' );
            @Bematech_FI_FechaComprovanteNaoFiscalVinculado    := GetProcAddress( DLLECFHandle, 'Bematech_FI_FechaComprovanteNaoFiscalVinculado' );
            @Bematech_FI_Sangria                               := GetProcAddress( DLLECFHandle, 'Bematech_FI_Sangria' );
            @Bematech_FI_Suprimento                            := GetProcAddress( DLLECFHandle, 'Bematech_FI_Suprimento' );
            // Funções de Informações da Impressora
            @Bematech_FI_NumeroSerie                           := GetProcAddress( DLLECFHandle, 'Bematech_FI_NumeroSerie' );
            @Bematech_FI_NumeroSerieMFD                        := GetProcAddress( DLLECFHandle, 'Bematech_FI_NumeroSerieMFD' );
            @Bematech_FI_SubTotal                              := GetProcAddress( DLLECFHandle, 'Bematech_FI_SubTotal' );
            @Bematech_FI_NumeroOperacoesNaoFiscais             := GetProcAddress( DLLECFHandle, 'Bematech_FI_NumeroOperacoesNaoFiscais' );
            @Bematech_FI_NumeroCupom                           := GetProcAddress( DLLECFHandle, 'Bematech_FI_NumeroCupom' );
            @Bematech_FI_VersaoFirmware                        := GetProcAddress( DLLECFHandle, 'Bematech_FI_VersaoFirmware' );
            @Bematech_FI_NumeroCaixa                           := GetProcAddress( DLLECFHandle, 'Bematech_FI_NumeroCaixa' );
            @Bematech_FI_NumeroLoja                            := GetProcAddress( DLLECFHandle, 'Bematech_FI_NumeroLoja' );
            @Bematech_FI_FlagsFiscais                          := GetProcAddress( DLLECFHandle, 'Bematech_FI_FlagsFiscais' );
            @Bematech_FI_ValorPagoUltimoCupom                  := GetProcAddress( DLLECFHandle, 'Bematech_FI_ValorPagoUltimoCupom' );
            @Bematech_FI_DataHoraImpressora                    := GetProcAddress( DLLECFHandle, 'Bematech_FI_DataHoraImpressora' );
            @Bematech_FI_ContadoresTotalizadoresNaoFiscais     := GetProcAddress( DLLECFHandle, 'Bematech_FI_ContadoresTotalizadoresNaoFiscais' );
            @Bematech_FI_VerificaTotalizadoresNaoFiscais       := GetProcAddress( DLLECFHandle, 'Bematech_FI_VerificaTotalizadoresNaoFiscais' );
            @Bematech_FI_DataHoraReducao                       := GetProcAddress( DLLECFHandle, 'Bematech_FI_DataHoraReducao' );
            @Bematech_FI_DataMovimento                         := GetProcAddress( DLLECFHandle, 'Bematech_FI_DataMovimento' );
            @Bematech_FI_VerificaTruncamento                   := GetProcAddress( DLLECFHandle, 'Bematech_FI_VerificaTruncamento' );
            @Bematech_FI_VerificaFormasPagamento               := GetProcAddress( DLLECFHandle, 'Bematech_FI_VerificaFormasPagamento' );
            @Bematech_FI_VerificaRecebimentoNaoFiscal          := GetProcAddress( DLLECFHandle, 'Bematech_FI_VerificaRecebimentoNaoFiscal' );
            @Bematech_FI_VerificaTipoImpressora                := GetProcAddress( DLLECFHandle, 'Bematech_FI_VerificaTipoImpressora' );
            @Bematech_FI_VerificaTotalizadoresParciais         := GetProcAddress( DLLECFHandle, 'Bematech_FI_VerificaTotalizadoresParciais' );
            @Bematech_FI_RetornoAliquotas                      := GetProcAddress( DLLECFHandle, 'Bematech_FI_RetornoAliquotas' );
            @Bematech_FI_VerificaEstadoImpressora              := GetProcAddress( DLLECFHandle, 'Bematech_FI_VerificaEstadoImpressora' );
            @Bematech_FI_VerificaEstadoImpressoraMFD           := GetProcAddress( DLLECFHandle, 'Bematech_FI_VerificaEstadoImpressoraMFD' );
            @Bematech_FI_DadosUltimaReducao                    := GetProcAddress( DLLECFHandle, 'Bematech_FI_DadosUltimaReducao' );
            @Bematech_FI_VerificaIndiceAliquotasIss            := GetProcAddress( DLLECFHandle, 'Bematech_FI_VerificaIndiceAliquotasIss' );
            @Bematech_FI_UltimoItemVendido                     := GetProcAddress( DLLECFHandle, 'Bematech_FI_UltimoItemVendido' );
            @Bematech_FI_ValorFormaPagamento                   := GetProcAddress( DLLECFHandle, 'Bematech_FI_ValorFormaPagamento' );
            @Bematech_FI_ValorTotalizadorNaoFiscal             := GetProcAddress( DLLECFHandle, 'Bematech_FI_ValorTotalizadorNaoFiscal' );
            @Bematech_FI_CGC_IE                                := GetProcAddress( DLLECFHandle, 'Bematech_FI_CGC_IE' );

            // Funções de Autenticação e Gaveta de Dinheiro
            @Bematech_FI_AcionaGaveta                          := GetProcAddress( DLLECFHandle, 'Bematech_FI_AcionaGaveta' );

            // Funções de Impressão de Cheques
            @Bematech_FI_ImprimeCheque                         := GetProcAddress( DLLECFHandle, 'Bematech_FI_ImprimeCheque' );

            // Outras Funções
            @Bematech_FI_AbrePortaSerial                       := GetProcAddress( DLLECFHandle, 'Bematech_FI_AbrePortaSerial' );
            @Bematech_FI_VersaoDll                             := GetProcAddress( DLLECFHandle, 'Bematech_FI_VersaoDll' );
            @Bematech_FI_RetornoImpressora                     := GetProcAddress( DLLECFHandle, 'Bematech_FI_RetornoImpressora' );
            @Bematech_FI_RetornoImpressoraMFD                  := GetProcAddress( DLLECFHandle, 'Bematech_FI_RetornoImpressoraMFD' );
            @Bematech_FI_FechaPortaSerial                      := GetProcAddress( DLLECFHandle, 'Bematech_FI_FechaPortaSerial' );
            @Bematech_FI_AberturaDoDia                         := GetProcAddress( DLLECFHandle, 'Bematech_FI_AberturaDoDia' );
            @Bematech_FI_FechamentoDoDia                       := GetProcAddress( DLLECFHandle, 'Bematech_FI_FechamentoDoDia' );
            @Bematech_FI_ImprimeConfiguracoesImpressora        := GetProcAddress( DLLECFHandle, 'Bematech_FI_ImprimeConfiguracoesImpressora' );
            @Bematech_FI_RelatorioTipo60Analitico              := GetProcAddress( DLLECFHandle, 'Bematech_FI_RelatorioTipo60Analitico' );
            @Bematech_FI_RelatorioTipo60Mestre                 := GetProcAddress( DLLECFHandle, 'Bematech_FI_RelatorioTipo60Mestre' );
            @Bematech_FI_InicioFimCOOsMFD                      := GetProcAddress( DLLECFHandle, 'Bematech_FI_InicioFimCOOsMFD' );
            @Bematech_FI_VerificaImpressoraLigada              := GetProcAddress( DLLECFHandle, 'Bematech_FI_VerificaImpressoraLigada' );
            @Bematech_FI_ModeloImpressora                      := GetProcAddress( DLLECFHandle, 'Bematech_FI_ModeloImpressora' );
            @Bematech_FI_DownloadMFD                           := GetProcAddress( DLLECFHandle, 'Bematech_FI_DownloadMFD' );
            @Bematech_FI_FormatoDadosMFD                       := GetProcAddress( DLLECFHandle, 'Bematech_FI_FormatoDadosMFD' );
            @Bematech_FI_AcionaGuilhotinaMFD                   := GetProcAddress( DLLECFHandle, 'Bematech_FI_AcionaGuilhotinaMFD' );
            @Bematech_FI_ProgramaIdAplicativoMFD               := GetProcAddress( DLLECFHandle, 'Bematech_FI_ProgramaIdAplicativoMFD' );
            @Bematech_FI_AtivaDesativaVendaUmaLinhaMFD         := GetProcAddress( DLLECFHandle, 'Bematech_FI_AtivaDesativaVendaUmaLinhaMFD' );

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Abrindo a porta serial do ECF...';
               fsLabel.Update;
            End;

            Try
               liRetorno := Bematech_FI_AbrePortaSerial();
               If liRetorno = -4 Then
                  CaixaMensagem( 'O arquivo de inicialização BemaFI32.ini não foi encontrado no diretório de sistema do Windows. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 )
               Else If liRetorno = -5 Then
                  CaixaMensagem( 'Erro ao abrir a porta de comunicação. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );
            Except
               //
            End;

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando a versão da DLL do ECF...';
               fsLabel.Update;
            End;

            Try
               lsVersaoDll := IncDigito( '', ' ', 9, 0 );
               liRetorno   := Bematech_FI_VersaoDll( lsVersaoDll );
               lsVersaoDll := Trim( SubstString( lsVersaoDll, ',' ) );
               If liRetorno = -4 Then
                  CaixaMensagem( 'O arquivo de inicialização BemaFI32.ini não foi encontrado no diretório de sistema do Windows. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 )
               Else If liRetorno = -5 Then
                  CaixaMensagem( 'Erro ao capturar a versão da Dll. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );
               If StrToIntDef( lsVersaoDll, 0 ) < 5300 Then
               Begin
                  CaixaMensagem( 'Versão( "' + lsVersaoDll + '" ) da Dll da Bematech desatualizada! Efetue a troca ou baixe do site : www.bematech.com.br', ctErro, [cbOK], 0 );
                  DoneDLLECF( gECFemUso );
                  If NOT gbSenhaMaster Then
                  Begin
                     InitDLLECF := False;
                     Application.Terminate;
                     Exit;
                  End;
               End;
            Except
               //
            End;

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando ECF ligado...';
               fsLabel.Update;
            End;

            liRetorno := Bematech_FI_VerificaImpressoraLigada();
            If liRetorno <> 1 Then // DIferente de "1 - Comando enviado"
            Begin
               If liRetorno = 0 Then
                  CaixaMensagem( 'Erro de comunicação com o ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 )
               Else If liRetorno = -4 Then
                  CaixaMensagem( 'O arquivo de inicialização BEMAFI32.INI não foi encontrado no diretório de sistema do Windows! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 )
               Else If liRetorno = -5 Then
                  CaixaMensagem( 'Erro ao abrir a porta de comunicação do ECF! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 )
               Else If liRetorno = -6 Then
                  CaixaMensagem( 'Impressora desligada ou cabo de comunicação desconectado! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 )
               Else
                  CaixaMensagem( 'Erro ao tentar Verificar se o ECF está ligado! Retorno : "' + IntToStr( liRetorno ) + '"', ctAviso, [ cbOk ], 0 );

               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := '';
                  fsLabel.Update;
               End;

               InitDLLECF := False;
               Exit;
            End;

            Try
               If NOT USER_ModeloECF( fFabricanteECF, gsModeloECF, fsLabel ) Then
               Begin
                  InitDLLECF := False;
                  Exit;
               End;

               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Localizando arquivo de parâmetros para o ECF...';
                  fsLabel.Update;
               End;

               // -> Ativando parâmetro para impressoras MFD
               If FileExists( lsPathWin + 'System32\BEMAFI32.INI' ) Then
                  lsPathINI := lsPathWin + 'System32\BEMAFI32.INI'
               Else If FileExists( lsPathWin + 'System\BEMAFI32.INI' ) Then
                  lsPathINI := lsPathWin + 'System\BEMAFI32.INI'
               Else If FileExists( gsPath + 'BEMAFI32.INI' ) Then
                  lsPathINI := gsPath + 'BEMAFI32.INI'
               Else
               Begin
                  CaixaMensagem( 'Arquivo de configuração da Bemafi32.DLL não localizado!', ctErro, [ cbOk ], 0 );

                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := '';
                     fsLabel.Update;
                  End;

                  InitDLLECF := False;
                  Exit;
               End;
               liniParam := TInIfile.Create( lsPathINI );
               If ( ( UpperCase( Trim( gsModeloECF ) ) = UpperCase( Trim( 'MP20FI' ) ) ) Or
                    ( UpperCase( Trim( gsModeloECF ) ) = UpperCase( Trim( 'MP40FI' ) ) ) ) And
                  ( liniParam.ReadInteger( 'MFD', 'Impressora', 0 ) = 1 ) Then
               Begin
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := 'Desativando o modo MFD para o ECF...';
                     fsLabel.Update;
                  End;

                  liniParam.WriteInteger( 'MFD', 'Impressora', 0 ); // Configurando para ECF NÃO MFD
                  Try
                     InitDLLECF := False;
                     DoneDLLECF( fFabricanteECF );
                     CaixaMensagem( 'O modo MFD para a impressora fiscal foi DESativado automaticamente!', ctAviso, [ cbOk ], 0 );
                     InitDLLECF( lFabricanteECF, fiPortaECF, gsPath );
                     Exit;
                  Except
                     CaixaMensagem( 'O modo MFD para a impressora fiscal foi DESativado! ' +
                                    'Será necessário reiniciar a aplicação!', ctAviso, [ cbOk ], 0 );
                     InitDLLECF := False;
                     Application.Terminate;
                     Exit;
                  End;
               End
               Else If ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP20FI' ) ) ) And
                       ( UpperCase( Trim( gsModeloECF ) ) <> UpperCase( Trim( 'MP40FI' ) ) ) Then
               Begin
                  If liniParam.ReadInteger( 'MFD', 'Impressora', 0 ) = 0 Then
                  Begin
                     If fsLabel <> Nil Then
                     Begin
                        fsLabel.Caption := 'Ativando o modo MFD para o ECF...';
                        fsLabel.Update;
                     End;

                     liniParam.WriteInteger( 'MFD', 'Impressora', 1 ); // Configurando para ECF MFD
                     Try
                        InitDLLECF := False;
                        DoneDLLECF( fFabricanteECF );
                        CaixaMensagem( 'O modo MFD para a impressora fiscal foi ativado automaticamente!', ctAviso, [ cbOk ], 0 );
                        InitDLLECF( lFabricanteECF, fiPortaECF, gsPath );
                        Exit;
                     Except
                        CaixaMensagem( 'O modo MFD para a impressora fiscal foi ativado! ' +
                                       'Será necessário reiniciar a aplicação!', ctAviso, [ cbOk ], 0 );
                        InitDLLECF := False;
                        Application.Terminate;
                        Exit;
                     End;
                  End;

                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := 'Ativando o modo de erro estendido no ECF...';
                     fsLabel.Update;
                  End;

                  Try
                     cFlag := '1';
                     Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD( pchar( cFlag ) );
                  Except
                     //
                  End;
               End;

               If NOT USER_NumeroSerie( fFabricanteECF, gsSerieECF, gsModeloECF, fsLabel ) Then
               Begin
                  DoneDLLECF( fFabricanteECF );
                  InitDLLECF := False;
                  Application.Terminate;
                  Exit;
               End;

               liniParam.WriteInteger( 'MFD', 'TimeOutZ', liniParam.ReadInteger( 'MFD', 'TimeOutZ', 5 ) );
               If liniParam.ReadInteger( 'MFD', 'TimeOutZ', 0 ) < 5 Then
               Begin
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := 'Configurando o TimeOut para Reduções Z no ECF...';
                     fsLabel.Update;
                  End;

                  liniParam.WriteInteger( 'MFD', 'TimeOutZ', 5 );
                  Try
                     InitDLLECF := False;
                     DoneDLLECF( fFabricanteECF );
                     InitDLLECF( lFabricanteECF, fiPortaECF, gsPath );
                     Exit;
                  Except
                     CaixaMensagem( 'O TimeOut da Redução Z para Impressora Fiscal Bematech foi alterado para 5 automaticamente! ' +
                                    'Será necessário reiniciar a aplicação!', ctAviso, [ cbOk ], 0 );
                     InitDLLECF := False;
                     Application.Terminate;
                     Exit;
                  End;
               End;

               If fsLabel <> Nil Then
               Begin
                  fsLabel.Caption := 'Ativando modo de log diário para o ECF...';
                  fsLabel.Update;
               End;

               liniParam.WriteInteger( 'Sistema', 'LogDiario', 1 );

               liniParam.WriteInteger( 'Sistema', 'CrLfVinculado', liniParam.ReadInteger( 'Sistema', 'CrLfVinculado', 1 ) );
               liniParam.WriteInteger( 'Sistema', 'CrLfGerencial', liniParam.ReadInteger( 'Sistema', 'CrLfGerencial', 1 ) );
               If ( liniParam.ReadInteger( 'Sistema', 'CrLfVinculado', 1 ) = 1 ) Or // Pulo de linha automático
                  ( liniParam.ReadInteger( 'Sistema', 'CrLfGerencial', 1 ) = 1 ) Then // Pulo de linha automático
               Begin
                  If fsLabel <> Nil Then
                  Begin
                     fsLabel.Caption := 'Configurando pulos de linha no ECF...';
                     fsLabel.Update;
                  End;

                  liniParam.WriteInteger( 'Sistema', 'CrLfVinculado', 0 );
                  liniParam.WriteInteger( 'Sistema', 'CrLfGerencial', 0 );
                  Try
                     InitDLLECF := False;
                     DoneDLLECF( fFabricanteECF );
                     InitDLLECF( lFabricanteECF, fiPortaECF, gsPath );
                     Exit;
                  Except
                     CaixaMensagem( 'O salto de linha automático para Impressora Fiscal Bematech foi desativado! ' +
                                    'Será necessário reiniciar a aplicação!', ctAviso, [ cbOk ], 0 );
                     InitDLLECF := False;
                     Application.Terminate;
                     Exit;
                  End;
               End;
               FreeAndNil( liniParam );
               // <- Ativando parâmetro para impressoras MFD
            Except
               //
            End;

            //InitDLLECF := True;
            gECFemUso := feBematech;
         End;
      End;
      feSweda :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Carregando DLL do ECF Sweda...';
            fsLabel.Update;
         End;

         If NOT FileExists( fsPath + 'convecf.dll' ) Then
            fsPath := '';

         ErrMode   := SetErrorMode( SEM_NOOPENFILEERRORBOX );
         DLLECFHandle := LoadLibrary( PChar( fsPath + 'convecf.dll' ) );
         SetErrorMode( ErrMode );
         If DLLECFHandle = 0 Then
         Begin
            DLLECFHandle := INVALID_HANDLE_VALUE;
            CaixaMensagem( 'A DLL do ECF SWEDA não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )', ctaviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'A DLL do ECF SWEDA não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )';
               fsLabel.Update;
            End;
         End
         Else
         Begin
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Inicializando funções da DLL da SWEDA...';
               fsLabel.Update;
            End;

            // -> Impressora Sweda( Térmica ) -  convecf.dll
            @SWEDA_AbrePortaSerial := GetProcAddress( DLLECFHandle, 'ECF_AbrePortaSerial' );
            @SWEDA_FechaPortaSerial := GetProcAddress( DLLECFHandle, 'ECF_FechaPortaSerial' );
            @SWEDA_VersaoDll          := GetProcAddress( DLLECFHandle, 'ECF_VersaoDll' );
            @SWEDA_AlteraSimboloMoeda := GetProcAddress( DLLECFHandle, 'ECF_AlteraSimboloMoeda' );
            @SWEDA_ProgramaAliquota := GetProcAddress( DLLECFHandle, 'ECF_ProgramaAliquota' );
            @SWEDA_ProgramaHorarioVerao := GetProcAddress( DLLECFHandle, 'ECF_ProgramaHorarioVerao' );
            @SWEDA_NomeiaDepartamento := GetProcAddress( DLLECFHandle, 'ECF_NomeiaDepartamento' );
            @SWEDA_NomeiaTotalizadorNaoSujeitoIcms := GetProcAddress( DLLECFHandle, 'ECF_NomeiaTotalizadorNaoSujeitoIcms' );
            @SWEDA_ProgramaArredondamento := GetProcAddress( DLLECFHandle, 'ECF_ProgramaArredondamento' );
            @SWEDA_ProgramaTruncamento := GetProcAddress( DLLECFHandle, 'ECF_ProgramaTruncamento' );
            @SWEDA_LinhasEntreCupons := GetProcAddress( DLLECFHandle, 'ECF_LinhasEntreCupons' );
            @SWEDA_EspacoEntreLinhas := GetProcAddress( DLLECFHandle, 'ECF_EspacoEntreLinhas' );
            @SWEDA_ForcaImpactoAgulhas := GetProcAddress( DLLECFHandle, 'ECF_ForcaImpactoAgulhas' );
            @SWEDA_HabilitaDesabilitaRetornoEstendidoMFD := GetProcAddress( DLLECFHandle, 'ECF_HabilitaDesabilitaRetornoEstendidoMFD' );
            // Funções do Cupom Fiscal
            @SWEDA_AbreCupom := GetProcAddress( DLLECFHandle, 'ECF_AbreCupom' );
            @SWEDA_VendeItem := GetProcAddress( DLLECFHandle, 'ECF_VendeItem' );
            @SWEDA_VendeItemDepartamento := GetProcAddress( DLLECFHandle, 'ECF_VendeItemDepartamento' );
            @SWEDA_CancelaItemAnterior := GetProcAddress( DLLECFHandle, 'ECF_CancelaItemAnterior' );
            @SWEDA_CancelaItemGenerico := GetProcAddress( DLLECFHandle, 'ECF_CancelaItemGenerico' );
            @SWEDA_CancelaCupom := GetProcAddress( DLLECFHandle, 'ECF_CancelaCupom' );
            @SWEDA_FechaCupomResumido := GetProcAddress( DLLECFHandle, 'ECF_FechaCupomResumido' );
            @SWEDA_FechaCupom := GetProcAddress( DLLECFHandle, 'ECF_FechaCupom' );
            @SWEDA_ResetaImpressora := GetProcAddress( DLLECFHandle, 'ECF_ResetaImpressora' );
            @SWEDA_IniciaFechamentoCupom := GetProcAddress( DLLECFHandle, 'ECF_IniciaFechamentoCupom' );
            @SWEDA_EfetuaFormaPagamento := GetProcAddress( DLLECFHandle, 'ECF_EfetuaFormaPagamento' );
            @SWEDA_EfetuaFormaPagamentoDescricaoForma := GetProcAddress( DLLECFHandle, 'ECF_EfetuaFormaPagamentoDescricaoForma' );
            @SWEDA_TerminaFechamentoCupom := GetProcAddress( DLLECFHandle, 'ECF_TerminaFechamentoCupom' );
            @SWEDA_EstornoFormasPagamento := GetProcAddress( DLLECFHandle, 'ECF_EstornoFormasPagamento' );
            @SWEDA_UsaUnidadeMedida := GetProcAddress( DLLECFHandle, 'ECF_UsaUnidadeMedida' );
            @SWEDA_AumentaDescricaoItem := GetProcAddress( DLLECFHandle, 'ECF_AumentaDescricaoItem' );
            @SWEDA_EfetuaFormaPagamentoImpAntiga := GetProcAddress( DLLECFHandle, 'ECF_EfetuaFormaPagamentoImpAntiga' );
            // Funções dos Relatórios Fiscais
            @SWEDA_LeituraX := GetProcAddress( DLLECFHandle, 'ECF_LeituraX' );
            @SWEDA_ReducaoZ := GetProcAddress( DLLECFHandle, 'ECF_ReducaoZ' );
            @SWEDA_RelatorioGerencial := GetProcAddress( DLLECFHandle, 'ECF_RelatorioGerencial' );
            //@SWEDA_FI_RelatorioGerencialTEF := GetProcAddress( DLLECFHandle, 'ECF_RelatorioGerencialTEF' );
            @SWEDA_FechaRelatorioGerencial := GetProcAddress( DLLECFHandle, 'ECF_FechaRelatorioGerencial' );
            @SWEDA_LeituraMemoriaFiscalData := GetProcAddress( DLLECFHandle, 'ECF_LeituraMemoriaFiscalData' );
            @SWEDA_LeituraMemoriaFiscalReducao := GetProcAddress( DLLECFHandle, 'ECF_LeituraMemoriaFiscalReducao' );
            @SWEDA_LeituraMemoriaFiscalSerialData := GetProcAddress( DLLECFHandle, 'ECF_LeituraMemoriaFiscalSerialData' );
            @SWEDA_LeituraMemoriaFiscalSerialReducao := GetProcAddress( DLLECFHandle, 'ECF_LeituraMemoriaFiscalSerialReducao' );
            // Funções das Operações Não Fiscais
            @SWEDA_RecebimentoNaoFiscal := GetProcAddress( DLLECFHandle, 'ECF_RecebimentoNaoFiscal' );
            @SWEDA_AbreComprovanteNaoFiscalVinculado := GetProcAddress( DLLECFHandle, 'ECF_AbreComprovanteNaoFiscalVinculado' );
            @SWEDA_UsaComprovanteNaoFiscalVinculado := GetProcAddress( DLLECFHandle, 'ECF_UsaComprovanteNaoFiscalVinculado' );
            //@SWEDA_FI_UsaComprovanteNaoFiscalVinculadoTEF := GetProcAddress( DLLECFHandle, 'ECF_UsaComprovanteNaoFiscalVinculadoTEF' );
            @SWEDA_FechaComprovanteNaoFiscalVinculado := GetProcAddress( DLLECFHandle, 'ECF_FechaComprovanteNaoFiscalVinculado' );
            @SWEDA_Sangria := GetProcAddress( DLLECFHandle, 'ECF_Sangria' );
            @SWEDA_Suprimento := GetProcAddress( DLLECFHandle, 'ECF_Suprimento' );
            // Funções de Informações da Impressora
            @SWEDA_VerificaImpressoraLigada := GetProcAddress( DLLECFHandle, 'ECF_VerificaImpressoraLigada' );
            @SWEDA_StatusComprovanteNaoFiscalVinculado := GetProcAddress( DLLECFHandle, 'ECF_StatusComprovanteNaoFiscalVinculado' );
            @SWEDA_StatusRelatorioGerencial := GetProcAddress( DLLECFHandle, 'ECF_StatusRelatorioGerencial' );
            @SWEDA_MarcaModeloTipoImpressoraMFD := GetProcAddress( DLLECFHandle, 'ECF_MarcaModeloTipoImpressoraMFD' );
            @SWEDA_NumeroSerie := GetProcAddress( DLLECFHandle, 'ECF_NumeroSerie' );
            @SWEDA_SubTotal := GetProcAddress( DLLECFHandle, 'ECF_SubTotal' );
            @SWEDA_NumeroCupom := GetProcAddress( DLLECFHandle, 'ECF_NumeroCupom' );
            @SWEDA_LeituraXSerial := GetProcAddress( DLLECFHandle, 'ECF_LeituraXSerial' );
            @SWEDA_VersaoFirmware := GetProcAddress( DLLECFHandle, 'ECF_VersaoFirmware' );
            @SWEDA_CGC_IE := GetProcAddress( DLLECFHandle, 'ECF_CGC_IE' );
            @SWEDA_GrandeTotal := GetProcAddress( DLLECFHandle, 'ECF_GrandeTotal' );
            @SWEDA_Cancelamentos := GetProcAddress( DLLECFHandle, 'ECF_Cancelamentos' );
            @SWEDA_Descontos := GetProcAddress( DLLECFHandle, 'ECF_Descontos' );
            @SWEDA_NumeroOperacoesNaoFiscais := GetProcAddress( DLLECFHandle, 'ECF_NumeroOperacoesNaoFiscais' );
            @SWEDA_NumeroCuponsCancelados := GetProcAddress( DLLECFHandle, 'ECF_NumeroCuponsCancelados' );
            @SWEDA_NumeroIntervencoes := GetProcAddress( DLLECFHandle, 'ECF_NumeroIntervencoes' );
            @SWEDA_NumeroSubstituicoesProprietario := GetProcAddress( DLLECFHandle, 'ECF_NumeroSubstituicoesProprietario' );
            @SWEDA_UltimoItemVendido := GetProcAddress( DLLECFHandle, 'ECF_UltimoItemVendido' );
            @SWEDA_ClicheProprietario := GetProcAddress( DLLECFHandle, 'ECF_ClicheProprietario' );
            @SWEDA_NumeroCaixa := GetProcAddress( DLLECFHandle, 'ECF_NumeroCaixa' );
            @SWEDA_NumeroLoja := GetProcAddress( DLLECFHandle, 'ECF_NumeroLoja' );
            @SWEDA_SimboloMoeda := GetProcAddress( DLLECFHandle, 'ECF_SimboloMoeda' );
            @SWEDA_MinutosLigada := GetProcAddress( DLLECFHandle, 'ECF_MinutosLigada' );
            @SWEDA_MinutosImprimindo := GetProcAddress( DLLECFHandle, 'ECF_MinutosImprimindo' );
            @SWEDA_VerificaModoOperacao := GetProcAddress( DLLECFHandle, 'ECF_VerificaModoOperacao' );
            @SWEDA_VerificaEpromConectada := GetProcAddress( DLLECFHandle, 'ECF_VerificaEpromConectada' );
            @SWEDA_FlagsFiscais := GetProcAddress( DLLECFHandle, 'ECF_FlagsFiscais' );
            @SWEDA_ValorPagoUltimoCupom := GetProcAddress( DLLECFHandle, 'ECF_ValorPagoUltimoCupom' );
            @SWEDA_DataHoraImpressora := GetProcAddress( DLLECFHandle, 'ECF_DataHoraImpressora' );
            @SWEDA_ContadoresTotalizadoresNaoFiscais := GetProcAddress( DLLECFHandle, 'ECF_ContadoresTotalizadoresNaoFiscais' );
            @SWEDA_VerificaTotalizadoresNaoFiscais := GetProcAddress( DLLECFHandle, 'ECF_VerificaTotalizadoresNaoFiscais' );
            @SWEDA_DataHoraReducao := GetProcAddress( DLLECFHandle, 'ECF_DataHoraReducao' );
            @SWEDA_DataMovimento := GetProcAddress( DLLECFHandle, 'ECF_DataMovimento' );
            @SWEDA_VerificaTruncamento := GetProcAddress( DLLECFHandle, 'ECF_VerificaTruncamento' );
            @SWEDA_Acrescimos := GetProcAddress( DLLECFHandle, 'ECF_Acrescimos' );
            @SWEDA_ContadorBilhetePassagem := GetProcAddress( DLLECFHandle, 'ECF_ContadorBilhetePassagem' );
            @SWEDA_VerificaAliquotasIss := GetProcAddress( DLLECFHandle, 'ECF_VerificaAliquotasIss' );
            @SWEDA_VerificaFormasPagamento := GetProcAddress( DLLECFHandle, 'ECF_VerificaFormasPagamento' );
            @SWEDA_VerificaRecebimentoNaoFiscal := GetProcAddress( DLLECFHandle, 'ECF_VerificaRecebimentoNaoFiscal' );
            @SWEDA_VerificaDepartamentos := GetProcAddress( DLLECFHandle, 'ECF_VerificaDepartamentos' );
            @SWEDA_VerificaTipoImpressora := GetProcAddress( DLLECFHandle, 'ECF_VerificaTipoImpressora' );
            @SWEDA_VerificaTotalizadoresParciais := GetProcAddress( DLLECFHandle, 'ECF_VerificaTotalizadoresParciais' );
            @SWEDA_RetornoAliquotas := GetProcAddress( DLLECFHandle, 'ECF_RetornoAliquotas' );
            @SWEDA_RetornoImpressora := GetProcAddress( DLLECFHandle, 'ECF_RetornoImpressora' );
            @SWEDA_RetornoImpressoraMFD := GetProcAddress( DLLECFHandle, 'ECF_RetornoImpressoraMFD' );
            @SWEDA_VerificaEstadoImpressora := GetProcAddress( DLLECFHandle, 'ECF_VerificaEstadoImpressora' );
            @SWEDA_VerificaEstadoImpressoraMFD := GetProcAddress( DLLECFHandle, 'ECF_VerificaEstadoImpressoraMFD' );
            @SWEDA_DadosUltimaReducao := GetProcAddress( DLLECFHandle, 'ECF_DadosUltimaReducao' );
            @SWEDA_InicioFimCOOsMFD := GetProcAddress( DLLECFHandle, 'ECF_InicioFimCOOsMFD' );
            @SWEDA_RelatorioTipo60Mestre := GetProcAddress( DLLECFHandle, 'ECF_RelatorioTipo60Mestre' );
            @SWEDA_NumeroReducoes := GetProcAddress( DLLECFHandle, 'ECF_NumeroReducoes' );
            @SWEDA_MonitoramentoPapel := GetProcAddress( DLLECFHandle, 'ECF_MonitoramentoPapel' );
            @SWEDA_VerificaIndiceAliquotasIss := GetProcAddress( DLLECFHandle, 'ECF_VerificaIndiceAliquotasIss' );
            @SWEDA_ValorFormaPagamento := GetProcAddress( DLLECFHandle, 'ECF_ValorFormaPagamento' );
            @SWEDA_ValorTotalizadorNaoFiscal := GetProcAddress( DLLECFHandle, 'ECF_ValorTotalizadorNaoFiscal' );
            // Funções de Autenticação e Gaveta de Dinheiro
            @SWEDA_Autenticacao := GetProcAddress( DLLECFHandle, 'ECF_Autenticacao' );
            @SWEDA_ProgramaCaracterAutenticacao := GetProcAddress( DLLECFHandle, 'ECF_ProgramaCaracterAutenticacao' );
            @SWEDA_AcionaGaveta := GetProcAddress( DLLECFHandle, 'ECF_AcionaGaveta' );
            @SWEDA_VerificaEstadoGaveta := GetProcAddress( DLLECFHandle, 'ECF_VerificaEstadoGaveta' );
            @SWEDA_Mensagem_Aplicacao   := GetProcAddress( DLLECFHandle, 'ECF_Registry_AplMensagem1' );
            @SWEDA_RetornoImpressoraMFD := GetProcAddress( DLLECFHandle, 'ECF_RetornoImpressoraMFD' );
            @SWEDA_VerificaImpressoraLigada := GetProcAddress( DLLECFHandle, 'ECF_VerificaImpressoraLigada' );
            @SWEDA_MarcaModeloTipoImpressoraMFD := GetProcAddress( DLLECFHandle, 'ECF_MarcaModeloTipoImpressoraMFD' );

            // <- Impressora Sweda( Térmica ) - swedaw.dll

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Verificando versão da DLL da SWEDA...';
               fsLabel.Update;
            End;

            Try
               lsVersaoDll := IncDigito( '', ' ', 9, 0 );
               liRetorno   := SWEDA_VersaoDll( lsVersaoDll );
               lsVersaoDll := Trim( SubstString( lsVersaoDll, '.' ) );
               If liRetorno = -4 Then
                  CaixaMensagem( 'O arquivo de inicialização Conversor.ini não foi encontrado no diretório de sistema do Windows. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 )
               Else If liRetorno = -5 Then
                  CaixaMensagem( 'Erro ao capturar a versão da Dll. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );
               If StrToIntDef( Trim( lsVersaoDll ),0 ) < 30000 Then
               Begin
                  CaixaMensagem( 'Versão( "' + lsVersaoDll + '" ) da Dll da SWEDA desatualizada! Efetue a troca ou baixe do site : www.sweda.com.br', ctErro, [cbOK], 0 );
                  DoneDLLECF( fFabricanteECF, fsLabel );
                  If NOT gbSenhaMaster Then
                  Begin
                     InitDLLECF := False;
                     Application.Terminate;
                     Exit;
                  End;
               End;
            Except
               //
            End;

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Abrindo a porta serial do ECF...';
               fsLabel.Update;
            End;

            {Try
               SWEDA_FI_AbrePortaSerial();
            Except
               //
            End;}

            If NOT USER_NumeroSerie( fFabricanteECF, gsSerieECF, gsModeloECF, fsLabel ) Then
            Begin
               InitDLLECF := False;
               Exit;
            End;

            If NOT USER_ModeloECF( fFabricanteECF, gsModeloECF, fsLabel ) Then
            Begin
               InitDLLECF := False;
               Exit;
            End;

            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Habilitando retorno estendido no ECF...';
               fsLabel.Update;
            End;

            Try
               cFlag := '1';
               If @SWEDA_HabilitaDesabilitaRetornoEstendidoMFD <> Nil Then
                  SWEDA_HabilitaDesabilitaRetornoEstendidoMFD( PChar( cFlag ) );
            Except
               //
            End;

            //InitDLLECF := True;
            gECFemUso := feSweda;
         End;
      End;
      feDaruma :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Carregando DLL do ECF Daruma...';
            fsLabel.Update;
         End;

         If NOT FileExists( fsPath + 'Daruma32.DLL' ) Then
            fsPath := '';

         ErrMode   := SetErrorMode( SEM_NOOPENFILEERRORBOX );
         DLLECFHandle := LoadLibrary( PChar( fsPath + 'Daruma32.DLL' ) );
         SetErrorMode( ErrMode );
         If DLLECFHandle = 0 Then
         Begin
            DLLECFHandle := INVALID_HANDLE_VALUE;
            CaixaMensagem( 'A DLL do ECF Daruma não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )', ctaviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'A DLL do ECF Daruma não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )';
               fsLabel.Update;
            End;
         End
         Else
         Begin
            //============================================================================\\
            // Funções do Cupom Fiscal
            //============================================================================\\
            @Daruma_FI_AbreCupom                          := GetProcAddress( DLLECFHandle, 'Daruma_FI_AbreCupom' );
            @Daruma_FI_AumentaDescricaoItem               := GetProcAddress( DLLECFHandle, 'Daruma_FI_AumentaDescricaoItem' );
            @Daruma_FI_VendeItem                          := GetProcAddress( DLLECFHandle, 'Daruma_FI_VendeItem' );
            @Daruma_FI_VendeItemTresDecimais              := GetProcAddress( DLLECFHandle, 'Daruma_FI_VendeItemTresDecimais' );
            @Daruma_FI_CancelaItemGenerico                := GetProcAddress( DLLECFHandle, 'Daruma_FI_CancelaItemGenerico' );
            @Daruma_FI_CancelaCupom                       := GetProcAddress( DLLECFHandle, 'Daruma_FI_CancelaCupom' );
            @Daruma_FI_FechaCupom                         := GetProcAddress( DLLECFHandle, 'Daruma_FI_FechaCupom' );
            @Daruma_FI_IniciaFechamentoCupom              := GetProcAddress( DLLECFHandle, 'Daruma_FI_IniciaFechamentoCupom' );
            @Daruma_FI_EfetuaFormaPagamento               := GetProcAddress( DLLECFHandle, 'Daruma_FI_EfetuaFormaPagamento' );
            @Daruma_FI_TerminaFechamentoCupom             := GetProcAddress( DLLECFHandle, 'Daruma_FI_TerminaFechamentoCupom' );
            //============================================================================\\
            // Funções de Inicialização
            //============================================================================\\
            @Daruma_FI_ProgramaAliquota                   := GetProcAddress( DLLECFHandle, 'Daruma_FI_ProgramaAliquota' );
            @Daruma_FI_ProgramaHorarioVerao               := GetProcAddress( DLLECFHandle, 'Daruma_FI_ProgramaHorarioVerao' );
            @Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms    := GetProcAddress( DLLECFHandle, 'Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms' );
            @Daruma_FI_ProgramaArredondamento             := GetProcAddress( DLLECFHandle, 'Daruma_FI_ProgramaArredondamento' );
            @Daruma_FI_ProgramaTruncamento                := GetProcAddress( DLLECFHandle, 'Daruma_FI_ProgramaTruncamento' );
            @Daruma_FI_ProgramaFormasPagamento            := GetProcAddress( DLLECFHandle, 'Daruma_FI_ProgramaFormasPagamento' );
            @Daruma_Registry_Separador                    := GetProcAddress( DLLECFHandle, 'Daruma_Registry_Separador' );
            //============================================================================\\
            // Funções dos Relatórios Fiscais
            //============================================================================\\
            @Daruma_FI_ProgramaFormasPagamento                := GetProcAddress( DLLECFHandle, 'Daruma_FI_ProgramaFormasPagamento' );
            @Daruma_FI_LeituraX                               := GetProcAddress( DLLECFHandle, 'Daruma_FI_LeituraX' );
            @Daruma_FI_ReducaoZ                               := GetProcAddress( DLLECFHandle, 'Daruma_FI_ReducaoZ' );
            @Daruma_FI_RelatorioGerencial                     := GetProcAddress( DLLECFHandle, 'Daruma_FI_RelatorioGerencial' );
            @Daruma_FI_AbreRelatorioGerencial                 := GetProcAddress( DLLECFHandle, 'Daruma_FI_AbreRelatorioGerencial' );
            @Daruma_FI_FechaRelatorioGerencial                := GetProcAddress( DLLECFHandle, 'Daruma_FI_FechaRelatorioGerencial' );
            @Daruma_FI_StatusComprovanteNaoFiscalVinculado    := GetProcAddress( DLLECFHandle, 'Daruma_FI_StatusComprovanteNaoFiscalVinculado' );
            @Daruma_FI_StatusComprovanteNaoFiscalNaoVinculado := GetProcAddress( DLLECFHandle, 'Daruma_FI_StatusComprovanteNaoFiscalNaoVinculado' );
            @Daruma_FI_StatusRelatorioGerencial               := GetProcAddress( DLLECFHandle, 'Daruma_FI_StatusRelatorioGerencial' );
            @Daruma_FI_LeituraMemoriaFiscalData               := GetProcAddress( DLLECFHandle, 'Daruma_FI_LeituraMemoriaFiscalData' );
            @Daruma_FI_LeituraMemoriaFiscalReducao            := GetProcAddress( DLLECFHandle, 'Daruma_FI_LeituraMemoriaFiscalReducao' );
            //============================================================================\\
            // Funções das Operações Não Fiscais
            //============================================================================\\
            @Daruma_FI_RecebimentoNaoFiscal               := GetProcAddress( DLLECFHandle, 'Daruma_FI_RecebimentoNaoFiscal' );
            @Daruma_FI_AbreComprovanteNaoFiscalVinculado  := GetProcAddress( DLLECFHandle, 'Daruma_FI_AbreComprovanteNaoFiscalVinculado' );
            @Daruma_FI_UsaComprovanteNaoFiscalVinculado   := GetProcAddress( DLLECFHandle, 'Daruma_FI_UsaComprovanteNaoFiscalVinculado' );
            @Daruma_FI_FechaComprovanteNaoFiscalVinculado := GetProcAddress( DLLECFHandle, 'Daruma_FI_FechaComprovanteNaoFiscalVinculado' );
            @Daruma_FI_Sangria                            := GetProcAddress( DLLECFHandle, 'Daruma_FI_Sangria' );
            @Daruma_FI_Suprimento                         := GetProcAddress( DLLECFHandle, 'Daruma_FI_Suprimento' );
            //============================================================================\\
            // Funções de Informações da Impressora
            //============================================================================\\
            @Daruma_FI_NumeroSerie                        := GetProcAddress( DLLECFHandle, 'Daruma_FI_NumeroSerie' );
            @Daruma_FI_SubTotal                           := GetProcAddress( DLLECFHandle, 'Daruma_FI_SubTotal' );
            @Daruma_FI_NumeroCupom                        := GetProcAddress( DLLECFHandle, 'Daruma_FI_NumeroCupom' );
            @Daruma_FI_VersaoFirmware                     := GetProcAddress( DLLECFHandle, 'Daruma_FI_VersaoFirmware' );
            @Daruma_FI_NumeroCaixa                        := GetProcAddress( DLLECFHandle, 'Daruma_FI_NumeroCaixa' );
            @Daruma_FI_NumeroLoja                         := GetProcAddress( DLLECFHandle, 'Daruma_FI_NumeroLoja' );
            @Daruma_FI_FlagsFiscais                       := GetProcAddress( DLLECFHandle, 'Daruma_FI_FlagsFiscais' );
            @Daruma_FI_ValorPagoUltimoCupom               := GetProcAddress( DLLECFHandle, 'Daruma_FI_ValorPagoUltimoCupom' );
            @Daruma_FI_DataHoraImpressora                 := GetProcAddress( DLLECFHandle, 'Daruma_FI_DataHoraImpressora' );
            @Daruma_FI_ContadoresTotalizadoresNaoFiscais  := GetProcAddress( DLLECFHandle, 'Daruma_FI_ContadoresTotalizadoresNaoFiscais' );
            @Daruma_FI_VerificaTotalizadoresNaoFiscais    := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaTotalizadoresNaoFiscais' );
            @Daruma_FI_VerificaTotalizadoresNaoFiscaisEx  := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaTotalizadoresNaoFiscaisEx' );
            @Daruma_FI_DataHoraReducao                    := GetProcAddress( DLLECFHandle, 'Daruma_FI_DataHoraReducao' );
            @Daruma_FI_DataMovimento                      := GetProcAddress( DLLECFHandle, 'Daruma_FI_DataMovimento' );
            @Daruma_FI_VerificaTruncamento                := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaTruncamento' );
            @Daruma_FI_VerificaFormasPagamentoEx          := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaFormasPagamentoEx' );
            @Daruma_FI_VerificaRecebimentoNaoFiscal       := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaRecebimentoNaoFiscal' );
            @Daruma_FI_VerificaDepartamentos              := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaDepartamentos' );
            @Daruma_FI_VerificaTipoImpressora             := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaTipoImpressora' );
            @Daruma_FI_VerificaTotalizadoresParciais      := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaTotalizadoresParciais' );
            @Daruma_FI_RetornoAliquotas                   := GetProcAddress( DLLECFHandle, 'Daruma_FI_RetornoAliquotas' );
            @Daruma_FI_VerificaEstadoImpressora           := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaEstadoImpressora' );
            @Daruma_FI_DadosUltimaReducao                 := GetProcAddress( DLLECFHandle, 'Daruma_FI_DadosUltimaReducao' );
            @Daruma_FI_MonitoramentoPapel                 := GetProcAddress( DLLECFHandle, 'Daruma_FI_MonitoramentoPapel' );
            @Daruma_FI_VerificaIndiceAliquotasIss         := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaIndiceAliquotasIss' );
            @Daruma_FI_UltimoItemVendido                  := GetProcAddress( DLLECFHandle, 'Daruma_FI_UltimoItemVendido' );
            @Daruma_FI_ValorFormaPagamento                := GetProcAddress( DLLECFHandle, 'Daruma_FI_ValorFormaPagamento' );
            @Daruma_FI_ValorTotalizadorNaoFiscal          := GetProcAddress( DLLECFHandle, 'Daruma_FI_ValorTotalizadorNaoFiscal' );
            @Daruma_FI_VerificaDescricaoFormasPagamento   := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaDescricaoFormasPagamento' );
            @Daruma_FI_CGC_IE                             := GetProcAddress( DLLECFHandle, 'Daruma_FI_CGC_IE' );
            //============================================================================\\
            // Funções de Autenticação e Gaveta de Dinheiro
            //============================================================================\\
            @Daruma_FI_AcionaGaveta                       := GetProcAddress( DLLECFHandle, 'Daruma_FI_AcionaGaveta' );
            //============================================================================\\
            // Outras Funções
            //============================================================================\\
            @Daruma_FI_AbrePortaSerial                    := GetProcAddress( DLLECFHandle, 'Daruma_FI_AbrePortaSerial' );
            @Daruma_FI_RetornoImpressora                  := GetProcAddress( DLLECFHandle, 'Daruma_FI_RetornoImpressora' );
            @Daruma_FI_RetornaErroExtendido               := GetProcAddress( DLLECFHandle, 'Daruma_FI_RetornaErroExtendido' );
            @Daruma_FI_FechaPortaSerial                   := GetProcAddress( DLLECFHandle, 'Daruma_FI_FechaPortaSerial' );
            @Daruma_FI_AberturaDoDia                      := GetProcAddress( DLLECFHandle, 'Daruma_FI_AberturaDoDia' );
            @Daruma_FI_FechamentoDoDia                    := GetProcAddress( DLLECFHandle, 'Daruma_FI_FechamentoDoDia' );
            @Daruma_FI_ImprimeConfiguracoesImpressora     := GetProcAddress( DLLECFHandle, 'Daruma_FI_ImprimeConfiguracoesImpressora' );
            @Daruma_FI_RelatorioTipo60Analitico           := GetProcAddress( DLLECFHandle, 'Daruma_FI_RelatorioTipo60Analitico' );
            @Daruma_FI_RelatorioTipo60Mestre              := GetProcAddress( DLLECFHandle, 'Daruma_FI_RelatorioTipo60Mestre' );
            @Daruma_FI_VerificaImpressoraLigada           := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaImpressoraLigada' );
            @Daruma_FI_VerificaModeloECF                  := GetProcAddress( DLLECFHandle, 'Daruma_FI_VerificaModeloECF' );
            @Daruma_FI_RetornarVersaoDLL                  := GetProcAddress( DLLECFHandle, 'Daruma_FI_RetornarVersaoDLL' );
            @Daruma_FI_Fiscal_Mensagem_Aplicacao          := GetProcAddress( DLLECFHandle, 'Daruma_Registry_AplMensagem1' );
            @Daruma_Registry_AlteraRegistry               := GetProcAddress( DLLECFHandle, 'Daruma_Registry_AlteraRegistry' );
            @Daruma_Registry_ImprimeRegistry              := GetProcAddress( DLLECFHandle, 'Daruma_Registry_ImprimeRegistry' );

            {If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'Abrindo a porta serial do ECF Daruma...';
               fsLabel.Update;
            End;

            Try
               liRetorno := Daruma_FI_AbrePortaSerial();
               If liRetorno <> 1 Then
                  CaixaMensagem( 'Erro ao abrir a porta de comunicação. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );
            Except
               //
            End;}

            If NOT USER_NumeroSerie( fFabricanteECF, gsSerieECF, gsModeloECF, fsLabel ) Then
            Begin
               InitDLLECF := False;
               Exit;
            End;

            If NOT USER_ModeloECF( fFabricanteECF, gsModeloECF, fsLabel ) Then
            Begin
               InitDLLECF := False;
               Exit;
            End;

            If NOT Assigned( @Daruma_FI_RetornarVersaoDLL ) Then
            Begin
               CaixaMensagem( 'Não é possível identIficar a versão da Dll da Daruma! Efetue a troca ou baixe do site : www.Daruma.com.br', ctErro, [cbOK], 0 );
               InitDLLECF := False;
               Application.Terminate;
               Exit;
            End;

            Try
               lsVersaoDll := IncDigito( '', ' ', 10, 0 );
               liRetorno   := Daruma_FI_RetornarVersaoDLL( lsVersaoDll );
               lsVersaoDll := Trim( SubstString( lsVersaoDll, ',.-', '', True ) );
               If liRetorno = -4 Then
                  CaixaMensagem( 'O arquivo de inicialização Daruma.ini não foi encontrado no diretório de sistema do Windows. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 )
               Else If liRetorno = -5 Then
                  CaixaMensagem( 'Erro ao capturar a versão da Dll. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );
               If StrToIntDef( lsVersaoDll, 0 ) < 2213 Then
               Begin
                  CaixaMensagem( 'Versão( "' + lsVersaoDll + '" ) da Dll da Daruma desatualizada! Efetue a troca ou baixe do site : www.Daruma.com.br', ctErro, [cbOK], 0 );
                  DoneDLLECF( fFabricanteECF );
                  If NOT gbSenhaMaster Then
                  Begin
                     InitDLLECF := False;
                     Application.Terminate;
                     Exit;
                  End;
               End;
            Except
               //
            End;

            //InitDLLECF := True;
            gECFemUso := feDaruma;
         End;
      End;
      feElgin :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Carregando DLL do ECF Elgin...';
            fsLabel.Update;
         End;

         If NOT FileExists( fsPath + 'Elgin.dll' ) Then
            fsPath := '';

         ErrMode   := SetErrorMode( SEM_NOOPENFILEERRORBOX );
         DLLECFHandle := LoadLibrary( PChar( fsPath + 'Elgin.dll' ) );
         SetErrorMode( ErrMode );
         If DLLECFHandle = 0 Then
         Begin
            DLLECFHandle := INVALID_HANDLE_VALUE;
            CaixaMensagem( 'A DLL do ECF Elgin não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )', ctaviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'A DLL do ECF Elgin não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )';
               fsLabel.Update;
            End;
         End
         Else
         Begin
            // funções de comunicação - abertura / fechamento
            {@Elgin_DataHoraImpressora       := GetProcAddress( DLLECFHandle, 'TransDataHora' ); }
            @Elgin_FI_AbreCupom                             := GetProcAddress( DLLECFHandle, 'Elgin_AbreCupom' );
            @Elgin_FI_AumentaDescricaoItem                  := GetProcAddress( DLLECFHandle, 'Elgin_AumentaDescricaoItem' );
            @Elgin_FI_VendeItem                             := GetProcAddress( DLLECFHandle, 'Elgin_VendeItem' );
            @Elgin_FI_CancelaItemGenerico                   := GetProcAddress( DLLECFHandle, 'Elgin_CancelaItemGenerico' );
            @Elgin_FI_CancelaCupom                          := GetProcAddress( DLLECFHandle, 'Elgin_CancelaCupom' );
            @Elgin_FI_FechaCupom                            := GetProcAddress( DLLECFHandle, 'Elgin_FechaCupom' );
            @Elgin_FI_IniciaFechamentoCupom                 := GetProcAddress( DLLECFHandle, 'Elgin_IniciaFechamentoCupom' );
            @Elgin_FI_EfetuaFormaPagamento                  := GetProcAddress( DLLECFHandle, 'Elgin_EfetuaFormaPagamento' );
            @Elgin_FI_TerminaFechamentoCupom                := GetProcAddress( DLLECFHandle, 'Elgin_TerminaFechamentoCupom' );
            @Elgin_FI_DescontoItem                          := GetProcAddress( DLLECFHandle, 'Elgin_AcrescimoDescontoItemMFD' );

            // Funções de Inicialização
            @Elgin_FI_ProgramaAliquota                      := GetProcAddress( DLLECFHandle, 'Elgin_ProgramaAliquota' );
            @Elgin_FI_ProgramaHorarioVerao                  := GetProcAddress( DLLECFHandle, 'Elgin_ProgramaHorarioVerao' );
            @Elgin_FI_NomeiaTotalizadorNaoSujeitoIcms       := GetProcAddress( DLLECFHandle, 'Elgin_NomeiaTotalizadorNaoSujeitoIcms' );
            @Elgin_FI_ProgramaArredondamento                := GetProcAddress( DLLECFHandle, 'Elgin_ProgramaArredondamento' );
            @Elgin_FI_ProgramaTruncamento                   := GetProcAddress( DLLECFHandle, 'Elgin_ProgramaTruncamento' );

            // Funções dos Relatórios Fiscais
            @Elgin_FI_LeituraX                              := GetProcAddress( DLLECFHandle, 'Elgin_LeituraX' );
            @Elgin_FI_ReducaoZ                              := GetProcAddress( DLLECFHandle, 'Elgin_ReducaoZ' );
            @Elgin_FI_VerificaZPendente                     := GetProcAddress( DLLECFHandle, 'Elgin_VerificaZPendente' );
            @Elgin_FI_AbreRelatorioGerencial                := GetProcAddress( DLLECFHandle, 'Elgin_AbreRelatorioGerencial' );
            @Elgin_FI_RelatorioGerencial                    := GetProcAddress( DLLECFHandle, 'Elgin_RelatorioGerencial' );
            @Elgin_FI_FechaRelatorioGerencial               := GetProcAddress( DLLECFHandle, 'Elgin_FechaRelatorioGerencial' );
            @Elgin_FI_LeituraMemoriaFiscalData              := GetProcAddress( DLLECFHandle, 'Elgin_LeituraMemoriaFiscalData' );
            @Elgin_FI_LeituraMemoriaFiscalReducao           := GetProcAddress( DLLECFHandle, 'Elgin_LeituraMemoriaFiscalReducao' );
            @Elgin_FI_LeituraMemoriaFiscalSerialData        := GetProcAddress( DLLECFHandle, 'Elgin_LeituraMemoriaFiscalSerialData' );
            @Elgin_FI_LeituraMemoriaFiscalSerialReducao     := GetProcAddress( DLLECFHandle, 'Elgin_LeituraMemoriaFiscalSerialReducao' );

            // Funções das Operações Não Fiscais
            @Elgin_FI_RecebimentoNaoFiscal                  := GetProcAddress( DLLECFHandle, 'Elgin_RecebimentoNaoFiscal' );
            @Elgin_FI_AbreComprovanteNaoFiscalVinculado     := GetProcAddress( DLLECFHandle, 'Elgin_AbreComprovanteNaoFiscalVinculado' );
            @Elgin_FI_UsaComprovanteNaoFiscalVinculado      := GetProcAddress( DLLECFHandle, 'Elgin_UsaComprovanteNaoFiscalVinculado' );
            @Elgin_FI_FechaComprovanteNaoFiscalVinculado    := GetProcAddress( DLLECFHandle, 'Elgin_FechaComprovanteNaoFiscalVinculado' );
            @Elgin_FI_Sangria                               := GetProcAddress( DLLECFHandle, 'Elgin_Sangria' );
            @Elgin_FI_Suprimento                            := GetProcAddress( DLLECFHandle, 'Elgin_Suprimento' );
            // Funções de Informações da Impressora
            @Elgin_FI_MarcaModeloTipoImpressoraMFD          := GetProcAddress( DLLECFHandle, 'Elgin_MarcaModeloTipoImpressoraMFD' );
            @Elgin_FI_NumeroSerie                           := GetProcAddress( DLLECFHandle, 'Elgin_NumeroSerie' );
            @Elgin_FI_SubTotal                              := GetProcAddress( DLLECFHandle, 'Elgin_SubTotal' );
            @Elgin_FI_NumeroOperacoesNaoFiscais             := GetProcAddress( DLLECFHandle, 'Elgin_NumeroOperacoesNaoFiscais' );
            @Elgin_FI_NumeroCupom                           := GetProcAddress( DLLECFHandle, 'Elgin_NumeroCupom' );
            @Elgin_FI_VersaoFirmware                        := GetProcAddress( DLLECFHandle, 'Elgin_VersaoFirmware' );
            @Elgin_FI_NumeroCaixa                           := GetProcAddress( DLLECFHandle, 'Elgin_NumeroCaixa' );
            @Elgin_FI_NumeroLoja                            := GetProcAddress( DLLECFHandle, 'Elgin_NumeroLoja' );
            @Elgin_FI_FlagsFiscais                          := GetProcAddress( DLLECFHandle, 'Elgin_FlagsFiscais' );
            @Elgin_FI_ValorPagoUltimoCupom                  := GetProcAddress( DLLECFHandle, 'Elgin_ValorPagoUltimoCupom' );
            @Elgin_FI_DataHoraImpressora                    := GetProcAddress( DLLECFHandle, 'Elgin_DataHoraImpressora' );
            @Elgin_FI_ContadoresTotalizadoresNaoFiscais     := GetProcAddress( DLLECFHandle, 'Elgin_ContadoresTotalizadoresNaoFiscais' );
            @Elgin_FI_VerificaTotalizadoresNaoFiscais       := GetProcAddress( DLLECFHandle, 'Elgin_VerificaTotalizadoresNaoFiscais' );
            @Elgin_FI_DataHoraReducao                       := GetProcAddress( DLLECFHandle, 'Elgin_DataHoraReducao' );
            @Elgin_FI_DataMovimento                         := GetProcAddress( DLLECFHandle, 'Elgin_DataMovimento' );
            @Elgin_FI_VerificaTruncamento                   := GetProcAddress( DLLECFHandle, 'Elgin_VerificaTruncamento' );
            @Elgin_FI_VerificaFormasPagamento               := GetProcAddress( DLLECFHandle, 'Elgin_VerificaFormasPagamento' );
            @Elgin_FI_VerificaRecebimentoNaoFiscal          := GetProcAddress( DLLECFHandle, 'Elgin_VerificaRecebimentoNaoFiscal' );
            @Elgin_FI_VerificaTipoImpressora                := GetProcAddress( DLLECFHandle, 'Elgin_VerificaTipoImpressora' );
            @Elgin_FI_VerificaTotalizadoresParciais         := GetProcAddress( DLLECFHandle, 'Elgin_VerificaTotalizadoresParciais' );
            @Elgin_FI_RetornoAliquotas                      := GetProcAddress( DLLECFHandle, 'Elgin_RetornoAliquotas' );

            @Elgin_FI_VerificaEstadoImpressora              := GetProcAddress( DLLECFHandle, 'Elgin_VerificaEstadoImpressora' );
            @Elgin_FI_DadosUltimaReducao                    := GetProcAddress( DLLECFHandle, 'Elgin_DadosUltimaReducao' );
            @Elgin_FI_VerificaIndiceAliquotasIss            := GetProcAddress( DLLECFHandle, 'Elgin_VerificaIndiceAliquotasIss' );
            @Elgin_FI_UltimoItemVendido                     := GetProcAddress( DLLECFHandle, 'Elgin_UltimoItemVendido' );
            @Elgin_FI_ValorFormaPagamento                   := GetProcAddress( DLLECFHandle, 'Elgin_ValorFormaPagamento' );
            @Elgin_FI_ValorTotalizadorNaoFiscal             := GetProcAddress( DLLECFHandle, 'Elgin_ValorTotalizadorNaoFiscal' );
            @Elgin_FI_CGC_IE                                := GetProcAddress( DLLECFHandle, 'Elgin_CGC_IE' );

            // Funções de Autenticação e Gaveta de Dinheiro
            @Elgin_FI_AcionaGaveta                          := GetProcAddress( DLLECFHandle, 'Elgin_AcionaGaveta' );

            // Funções de Impressão de Cheques
            @Elgin_FI_ImprimeCheque                         := GetProcAddress( DLLECFHandle, 'Elgin_ImprimeCheque' );

            // Outras Funções
            @Elgin_FI_AbrePortaSerial                       := GetProcAddress( DLLECFHandle, 'Elgin_AbrePortaSerial' );
            @Elgin_FI_FechaPortaSerial                      := GetProcAddress( DLLECFHandle, 'Elgin_FechaPortaSerial' );
            //@Elgin_FI_VersaoDll                             := GetProcAddress( DLLECFHandle, 'Elgin_VersaoDll' );
            @Elgin_FI_RetornoImpressora                     := GetProcAddress( DLLECFHandle, 'Elgin_RetornoImpressora' );
            @Elgin_FI_AberturaDoDia                         := GetProcAddress( DLLECFHandle, 'Elgin_AberturaDoDia' );
            @Elgin_FI_FechamentoDoDia                       := GetProcAddress( DLLECFHandle, 'Elgin_FechamentoDoDia' );
            @Elgin_FI_ImprimeConfiguracoesImpressora        := GetProcAddress( DLLECFHandle, 'Elgin_ImprimeConfiguracoesImpressora' );
            @Elgin_FI_RelatorioTipo60Analitico              := GetProcAddress( DLLECFHandle, 'Elgin_RelatorioTipo60Analitico' );
            @Elgin_FI_RelatorioTipo60Mestre                 := GetProcAddress( DLLECFHandle, 'Elgin_RelatorioTipo60Mestre' );
            @Elgin_FI_VerificaImpressoraLigada              := GetProcAddress( DLLECFHandle, 'Elgin_VerificaImpressoraLigada' );
            @Elgin_FI_VerificaSensorPoucoPapelMFD           := GetProcAddress( DLLECFHandle, 'Elgin_VerificaSensorPoucoPapelMFD' );
            @Elgin_FI_MarcaModeloTipoImpressoraMFD          := GetProcAddress( DLLECFHandle, 'Elgin_MarcaModeloTipoImpressoraMFD' );


            // Funções da MFD
            @Elgin_FI_DownloadMF                            := GetProcAddress( DLLECFHandle, 'Elgin_DownloadMF' );
            @Elgin_FI_DownloadMFD                           := GetProcAddress( DLLECFHandle, 'Elgin_DownloadMFD' );
            @Elgin_FI_CorteGuilhotina                       := GetProcAddress( DLLECFHandle, 'Elgin_AcionaGuilhotinaMFD' );

            {If NOT giniParam.ReadBool( 'Fiscal', 'libECFPoucoPapel', True ) Then
            Begin
               Try
                  cFlag := Spaces( 2 );
                  Elgin_FI_VerificaSensorPoucoPapelMFD( cFlag );
                  If Trim( cFlag ) = '0' Then
                     CaixaMensagem( 'O sensor de pouco papel no ECF está desativado!', ctErro, [ cbOk ], 0 );
               Except
                  On E : Exception Do
                     CaixaMensagem( 'Não foi possível executar função de ativação do sensor de pouco papel falhou! ' + E.Message, ctErro, [ cbOk ], 0 );
               End;
            End;}

            Try
               liRetorno := Elgin_FI_AbrePortaSerial();
               If liRetorno = -4 Then
                  CaixaMensagem( 'O arquivo de inicialização Elgin.ini não foi encontrado no diretório de sistema do Windows. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 )
               Else If liRetorno = -5 Then
                  CaixaMensagem( 'Erro ao abrir a porta de comunicação. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );
            Except
               //
            End;

            If NOT USER_NumeroSerie( fFabricanteECF, gsSerieECF, gsModeloECF, fsLabel ) Then
            Begin
               InitDLLECF := False;
               Exit;
            End;

            If NOT USER_ModeloECF( fFabricanteECF, gsModeloECF, fsLabel ) Then
            Begin
               InitDLLECF := False;
               Exit;
            End;
            //InitDLLECF := True;
            gECFemUso := feElgin;
         End;
      End;
      feEpson :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Carregando DLL do ECF Epson...';
            fsLabel.Update;
         End;

         If NOT FileExists( fsPath + 'InterfaceEpson.dll' ) Then
            fsPath := '';

         ErrMode   := SetErrorMode( SEM_NOOPENFILEERRORBOX );
         DLLECFHandle := LoadLibrary( PChar( fsPath + 'InterfaceEpson.dll' ) );
         SetErrorMode( ErrMode );
         If DLLECFHandle = 0 Then
         Begin
            DLLECFHandle := INVALID_HANDLE_VALUE;
            CaixaMensagem( 'A DLL do ECF Epson não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )', ctaviso, [ cbOk ], 0 );
            If fsLabel <> Nil Then
            Begin
               fsLabel.Caption := 'A DLL do ECF Epson não pôde ser carregada!( Erro : ' + IntToStr( INVALID_HANDLE_VALUE ) + ' )';
               fsLabel.Update;
            End;
         End
         Else
         Begin
            // Funções da Epson
            @Epson_FI_ObterDadosImpressora  := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Dados_Impressora' );
            @Epson_FI_NumeroLoja            := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Numero_ECF_Loja' );
            @Epson_FI_ObterClicheUsuario    := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Cliche_Usuario' );
            @Epson_FI_ObterHoraRelogio      := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Hora_Relogio' );
            @Epson_FI_HorarioVerao          := GetProcAddress( DLLECFHandle, 'EPSON_Config_Horario_Verao' );
            @Epson_FI_ObterTabelaAliquotas  := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Tabela_Aliquotas' );
            @Epson_FI_ObterTabelaPagamentos := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Tabela_Pagamentos' );
            @Epson_FI_AbrirPortaSerial      := GetProcAddress( DLLECFHandle, 'EPSON_Serial_Abrir_Porta' );
            @Epson_FI_FecharPorta           := GetProcAddress( DLLECFHandle, 'EPSON_Serial_Fechar_Porta');
            @Epson_FI_AbreCupom             := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Abrir_Cupom' );
            @Epson_FI_CancelarCupom         := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Cancelar_Cupom' );
            @Epson_FI_CancelaItemGenerico   := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Cancelar_Item' );

            @Epson_FI_VenderItem            := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Vender_Item' );
            @Epson_FI_EfetuaFormaPagamento  := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Pagamento' );
            @Epson_FI_RelatorioGerencial    := GetProcAddress( DLLECFHandle, 'EPSON_NaoFiscal_Abrir_Relatorio_Gerencial' );
            @Epson_FI_FechaCupom            := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Fechar_Cupom' );
            @Epson_FI_TotalizaCupom         := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Desconto_Acrescimo_Subtotal' );
            @Epson_FI_SubTotal              := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Obter_SubTotal' );

            @Epson_FI_DescontoAcrescimoItem             := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Desconto_Acrescimo_Item' );
            @Epson_FI_AbrirDia                          := GetProcAddress( DLLECFHandle, 'EPSON_RelatorioFiscal_Abrir_Dia' );
            @Epson_FI_ReduzaoZ                          := GetProcAddress( DLLECFHandle, 'EPSON_RelatorioFiscal_RZ' );
            @Epson_FI_LeituraX                          := GetProcAddress( DLLECFHandle, 'EPSON_RelatorioFiscal_LeituraX' );
            @Epson_FI_ObterEstadoCupom                  := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Estado_Cupom' );
            @Epson_FI_ObterNumeroUltimoItem             := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Numero_Ultimo_Item' );
            @Epson_FI_ObterTabelaNaoFiscais             := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Tabela_NaoFiscais' );
            @Epson_FI_DataMovimento                     := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Data_Hora_Jornada' );
            @Epson_FI_ObterDadosJornada                 := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Dados_Jornada' );
            @Epson_FI_EstadoCupom                       := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Estado_Cupom' );
            @Epson_FI_ObterContadores                   := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Contadores' );
            @Epson_FI_ObterEstadoImpressora             := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Estado_Impressora' );
            @Epson_FI_CGC_IE                            := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Dados_Usuario' );
            @Epson_FI_VersaoDLL                         := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Versao_DLL' );
            @Epson_FI_ObterMensagemErro                 := GetProcAddress( DLLECFHandle, 'Epson_Obter_Mensagem_Erro' );
            @Epson_FI_FechaRelatorioGerencial           := GetProcAddress( DLLECFHandle, 'EPSON_NaoFiscal_Fechar_Relatorio_Gerencial' );
            @Epson_FI_Log                               := GetProcAddress( DLLECFHandle, 'EPSON_Sys_Log' );
            @Epson_FI_Sangria                           := GetProcAddress( DLLECFHandle, 'EPSON_NaoFiscal_Sangria' );
            @Epson_FI_Suprimento                        := GetProcAddress( DLLECFHandle, 'EPSON_NaoFiscal_Fundo_Troco' );
            @Epson_FI_RecebimentoNaoFiscal              := GetProcAddress( DLLECFHandle, 'EPSON_NaoFiscal_Pagamento' );
            @Epson_FI_MensagemCupom                     := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Imprimir_Mensagem' );
            @Epson_FI_AbreComprovanteNaoFiscalVinculado := GetProcAddress( DLLECFHandle, 'EPSON_NaoFiscal_Abrir_CCD' );
            @Epson_FI_UsaComprovanteNaoFiscalVinculado  := GetProcAddress( DLLECFHandle, 'EPSON_NaoFiscal_Imprimir_Linha' );
            @Epson_FI_AcionaGuilhotina                  := GetProcAddress( DLLECFHandle, 'EPSON_Impressora_Cortar_Papel' );
            @Epson_FI_AcionaGaveta                      := GetProcAddress( DLLECFHandle, 'EPSON_Impressora_Abrir_Gaveta' );
            @Epson_FI_DescontoItem                      := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Desconto_Acrescimo_Item' );

            @Epson_FI_LeituraMemoriaFiscalData          := GetProcAddress( DLLECFHandle, 'EPSON_RelatorioFiscal_Leitura_MF' );
            @EPSON_Fiscal_Mensagem_Aplicacao            := GetProcAddress( DLLECFHandle, 'EPSON_Fiscal_Mensagem_Aplicacao' );

            @Epson_FI_DadosUltimaReducao                := GetProcAddress( DLLECFHandle, 'EPSON_Obter_Dados_Ultima_RZ' );

            Try
               lsVersaoDll := IncDigito( '', ' ', 10, 0 );
               liRetorno   := Epson_FI_VersaoDLL( lsVersaoDll );
               lsVersaoDll := Trim( SubstString( lsVersaoDll, '.,', '', True ) );
               If liRetorno <> 0 Then
               Begin
                  CaixaMensagem( 'Erro ao capturar a versão da Dll. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );
                  If NOT gbSenhaMaster Then
                  Begin
                     InitDLLECF := False;
                     Application.Terminate;
                     Exit;
                  End;
               End;

               If StrToIntDef( lsVersaoDll, 0 ) < 142 Then
               Begin
                  CaixaMensagem( 'Versão( "' + lsVersaoDll + '" ) da Dll da Epson desatualizada! Efetue a troca ou baixe do site : www.epson.com.br', ctErro, [ cbOK ], 0 );
                  DoneDLLECF( fFabricanteECF );
                  If NOT gbSenhaMaster Then
                  Begin
                     InitDLLECF := False;
                     Application.Terminate;
                     Exit;
                  End;
               End;
            Except
               //
            End;

            Try
            //   liRetorno := Epson_FI_AbrirPortaSerial( 38400, Registro( 'Porta_ImpFiscalCheckout', trInteger, 0, raLer ) + 1 );
               If liRetorno <> 0 Then
               Begin
                  CaixaMensagem( 'Não foi possível abrir a porta Serial do ECF. ( Erro "' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );
                  InitDLLECF := False;
                  Exit;
               End;
            Except
              //
            End;

            If NOT USER_NumeroSerie( fFabricanteECF, gsSerieECF, gsModeloECF, fsLabel ) Then
            Begin
               InitDLLECF := False;
               Exit;
            End;

            If NOT USER_ModeloECF( fFabricanteECF, gsModeloECF, Nil ) Then
            Begin
               InitDLLECF := False;
               Exit;
            End;
            //Registro( 'Log_Epson', trString, Registro( 'Log_Epson', trString, 0, raLer ), raGravar );

            //liAtivaDesativa := Registro( 'Log_Epson', trString, 0, raLer );
            If liAtivaDesativa <> 0 Then
            Begin
               liRetorno := Epson_FI_Log( 'C:\\Log_', liAtivaDesativa );
               If liRetorno <> 0 Then
               Begin
                  CaixaMensagem( 'Não foi possível Ativar o log ' + IntToStr( liRetorno ) + '" )', ctErro, [ cbOk ], 0 );
                  InitDLLECF := False;
                  Exit;
               End;
            End;

            //InitDLLECF := True;
            gECFemUso := feEpson;
         End;
      End;
   End;
   InitDLLECF := True;
End;

Function DoneDLLECF( var fFabricanteECF : TFabricanteECF; fsLabel : TLabel = Nil ) : Boolean;
Begin
   DoneDLLECF := False;
   If fFabricanteECF = feNone Then
      Exit;

   Case fFabricanteECF Of
      feCorisco :
      Begin
         //
      End;
      feBematech :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Fechando a porta serial do ECF...';
            fsLabel.Update;
         End;

         Try
            Bematech_FI_FechaPortaSerial();
         Except
            //
         End;
      End;
      feSWEDA :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Fechando a porta serial do ECF...';
            fsLabel.Update;
         End;

         Try
            SWEDA_FechaPortaSerial();
         Except
            //
         End;
      End;
      feDaruma :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Fechando a porta serial do ECF...';
            fsLabel.Update;
         End;

         Try
            Daruma_FI_FechaPortaSerial();
         Except
            //
         End;
      End;
      feElgin :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Fechando a porta serial do ECF...';
            fsLabel.Update;
         End;

         Try
            Elgin_FI_FechaPortaSerial();
         Except
            //
         End;
      End;
      feEpson :
      Begin
         If fsLabel <> Nil Then
         Begin
            fsLabel.Caption := 'Fechando a porta serial do ECF...';
            fsLabel.Update;
         End;

         Try
            Epson_FI_FecharPorta();
         Except
            //
         End;
      End
      Else
      Begin
         //CaixaMensagem( 'Modelo de impressora desconhecido!', ctInforma, [ cbOk ], 0 );
      End;
   End;

   If fsLabel <> Nil Then
   Begin
      fsLabel.Caption := 'Descarregando da memória a DLL do ECF';
      fsLabel.Update;
   End;
   FreeLibrary( DLLECFHandle );
   DLLECFHandle := 0;

   fFabricanteECF := feNone;
end;
end.
