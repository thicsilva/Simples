unit uFuncoesMP4000;

interface
function IniciaPorta( Porta: string ): integer; stdcall; far; external 'MP2032.DLL';

function FechaPorta: integer; stdcall; far; external 'MP2032.DLL';

function BematechTX( BufTrans: string ): integer; stdcall; far; external 'MP2032.DLL';

function ComandoTX( BufTrans: string; TamBufTrans: integer ): integer; stdcall; far; external 'MP2032.DLL';

function CaracterGrafico( BufTrans: string; TamBufTrans: integer ): integer; stdcall; far; external 'MP2032.DLL';

function DocumentInserted: integer; stdcall; far; external 'MP2032.DLL';

function Le_Status: integer; stdcall; far; external 'MP2032.DLL';

function AutenticaDoc( texto: string; tempo: integer ): integer; stdcall; far; external 'MP2032.DLL';

function Le_Status_Gaveta: integer; stdcall; far; external 'MP2032.DLL';

function ConfiguraTamanhoExtrato( NumeroLinhas: Integer ): integer; stdcall; far; external 'MP2032.DLL';

function HabilitaExtratoLongo( Flag: Integer ): integer; stdcall; far; external 'MP2032.DLL';

function HabilitaEsperaImpressao( Flag: Integer ): integer; stdcall; far; external 'MP2032.DLL';

function EsperaImpressao: integer; stdcall; far; external 'MP2032.DLL';

function ConfiguraModeloImpressora( ModeloImpressora: integer ): integer; stdcall; far; external 'MP2032.DLL';

function AcionaGuilhotina( Modo: integer ): integer; stdcall; far; external 'MP2032.DLL';

function FormataTX (BufTras: string; TpoLtra: integer; Italic: integer; Sublin: integer; expand: integer; enfat: integer ): integer; stdcall; far; external 'MP2032.DLL';

function HabilitaPresenterRetratil( iFlag: integer ): integer; stdcall; far; external 'MP2032.DLL';

function ProgramaPresenterRetratil( iTempo: integer ): integer; stdcall; far; external 'MP2032.DLL';

function VerificaPapelPresenter: integer; stdcall; far; external 'MP2032.DLL';

// Função para Configuração dos Códigos de Barras

function ConfiguraCodigoBarras( Altura: integer; Largura: integer; PosicaoCaracteres: integer; Fonte: integer; Margem: integer ): integer; stdcall; far; external 'MP2032.DLL';

// Funções para impressão dos códigos de barras

function ImprimeCodigoBarrasUPCA( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasUPCE( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasEAN13( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasEAN8( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasCODE39( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasCODE93( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasCODE128( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasITF( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasCODABAR( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasISBN( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasMSI( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasPLESSEY( Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeCodigoBarrasPDF417( NivelCorrecaoErros: integer; Altura: integer; Largura: integer; Colunas: integer; Codigo: string ): integer; stdcall; far; external 'MP2032.DLL';

// Funções para impressão de BitMap

function ImprimeBitmap ( name: string; mode: integer): integer; stdcall; far; external 'MP2032.DLL';

function ImprimeBmpEspecial ( name: string; xScale: integer; yScale: integer; angle: integer): integer; stdcall; far; external 'MP2032.DLL';

function AjustaLarguraPapel ( width: integer): integer; stdcall; far; external 'MP2032.DLL';

function SelectDithering ( mode: integer): integer; stdcall; far; external 'MP2032.DLL';

function PrinterReset : integer; stdcall; far; external 'MP2032.DLL';

function LeituraStatusEstendido ( A: array of byte ): integer; stdcall; far; external 'MP2032.DLL';

function IoControl ( flag: Integer; mode : Boolean ): integer; stdcall; far; external 'MP2032.DLL';

function DefineNVBitmap ( count: integer; filenames: array of string ): integer; stdcall; far; external 'MP2032.DLL';

function PrintNVBitmap ( image: integer; mode: integer ): integer; stdcall; far; external 'MP2032.DLL';

function Define1NVBitmap ( filename : string ): integer; stdcall; far; external 'MP2032.DLL';

function DefineDLBitmap ( filename: string ): integer; stdcall; far; external 'MP2032.DLL';

function PrintDLBitmap ( mode: integer ): integer; stdcall; far; external 'MP2032.DLL';

// Função de Firmware

function AtualizaFirmware ( fileName: string): integer; stdcall; far; external 'MP2032.DLL';

implementation

end.
