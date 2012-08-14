unit uParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, ComCtrls, bsSkinTabs, bsSkinCtrls, ExtCtrls,
  ToolWin, bsSkinBoxCtrls, StdCtrls, Mask, FMTBcd, DBClient, DB, Provider,
  SqlExpr, bsdbctrls;

type
  TfrmParametros = class(TForm)
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinCheckRadioBox1: TbsSkinCheckRadioBox;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtHostName: TbsSkinEdit;
    edtDatabaseName: TbsSkinEdit;
    edtUsuario: TbsSkinEdit;
    edtSenha: TbsSkinMaskEdit;
    bsSkinLabel1: TbsSkinLabel;
    EdtNumeroCompras: TbsSkinSpinEdit;
    rdgTipoSistema: TbsSkinRadioGroup;
    bsSkinLabel2: TbsSkinLabel;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    srcCadClientes: TDataSource;
    cdsCadClientes: TClientDataSet;
    cmbNome_Cliente: TbsSkinDBLookupComboBox;
    cmbCod_Cliente: TbsSkinDBLookupComboBox;
    bsSkinLabel3: TbsSkinLabel;
    edtNomeEmpresa: TbsSkinMaskEdit;
    chkBloqueioEstoque: TbsSkinCheckRadioBox;
    bsSkinLabel4: TbsSkinLabel;
    EdtqtdeNumeroDias: TbsSkinSpinEdit;
    bsSkinLabel5: TbsSkinLabel;
    chkLigaECF: TbsSkinCheckRadioBox;
    chkCondicaoNaVenda: TbsSkinCheckRadioBox;
    chkVendeServico: TbsSkinCheckRadioBox;
    chkData_Automatica: TbsSkinCheckRadioBox;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    cnkCadastraClienteSemCPF: TbsSkinCheckRadioBox;
    chkVendaSemControle: TbsSkinCheckRadioBox;
    tabContasAReceber: TbsSkinTabSheet;
    chkTrabalhaComRemessa: TbsSkinCheckRadioBox;
    chkRecebimentoLote: TbsSkinCheckRadioBox;
    bsSkinLabel6: TbsSkinLabel;
    cmbTipoBaixa: TbsSkinComboBox;
    bsSkinTabSheet3: TbsSkinTabSheet;
    Label1: TLabel;
    edtCaminhoImpressao: TEdit;
    chkImprimeComprovanteServico: TbsSkinCheckRadioBox;
    chkEmiteEtiqueta: TbsSkinCheckRadioBox;
    editNumeroVias: TbsSkinSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cmbCaixaBalcao: TbsSkinDBLookupComboBox;
    cmbCaixaVendasExternas: TbsSkinDBLookupComboBox;
    srcCadCaixa: TDataSource;
    cdsCadCaixa: TClientDataSet;
    edtVlr_Servico: TbsSkinEdit;
    chkVendaExterna: TbsSkinCheckRadioBox;
    bsSkinLabel7: TbsSkinLabel;
    cmbTipoImpressora: TbsSkinComboBox;
    chkImprimiCopiaComprovante: TbsSkinCheckRadioBox;
    bsSkinTabSheet4: TbsSkinTabSheet;
    chkMarcaOsNoCaixa: TbsSkinCheckRadioBox;
    chkBaixaMultiplosClientes: TbsSkinCheckRadioBox;
    Label5: TLabel;
    cmbEstoqueVendaExterna: TbsSkinDBLookupComboBox;
    srcSetoresEstoque: TDataSource;
    cdsSetoresEstoque: TClientDataSet;
    chkImprimeComprovanteVenda: TbsSkinCheckRadioBox;
    bsSkinLabel8: TbsSkinLabel;
    EdtNumeroDeTurnos: TbsSkinSpinEdit;
    Vendas: TbsSkinTabSheet;
    chkNaoMostraTipoDePagamento: TbsSkinCheckRadioBox;
    chkImprimeComprovanteBaixa: TbsSkinCheckRadioBox;
    bsSkinGroupBox1: TbsSkinGroupBox;
    bsSkinLabel9: TbsSkinLabel;
    bsSkinLabel10: TbsSkinLabel;
    edtDespesasFixas: TbsSkinEdit;
    edtDespesaVariaveis: TbsSkinEdit;
    bsSkinLabel11: TbsSkinLabel;
    edtJuros: TbsSkinEdit;
    bsSkinLabel12: TbsSkinLabel;
    edtMulta: TbsSkinEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbNome_ClienteChange(Sender: TObject);
    procedure cmbCod_ClienteChange(Sender: TObject);
  private
    {Gravação dos parametros}
    procedure GravarParametrosContaAReceber;
    procedure GravarParametrosAdiministrativos;
    procedure GravarParametrosImpressao;
    procedure GravarParametrosGerais;
    procedure GravarParametrosVendas;

    {Recuperação dos parametros}
    procedure RecuperarParametrosAdiministrativos;
    procedure RecuperarParametrosContasAReceber;
    procedure RecuperarParametrosImpressao;
    procedure RecuperarParametrosGerais;
    procedure RecuperarParametrosVendas;

    procedure CarregarTabelas;
    procedure CarregarTodosOsParametros;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParametros: TfrmParametros;

implementation

Uses uPrincipal,uFuncoes;
{$R *.dfm}

procedure TfrmParametros.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmParametros.btnokClick(Sender: TObject);
begin

   GravarParametrosAdiministrativos;
   GravarParametrosContaAReceber;
   GravarParametrosImpressao;
   GravarParametrosGerais;
   GravarParametrosVendas;

   //[parametros de sistema]
   gsParametros.WriteString('ACESSODADOS','HostName',edtHostName.text);
   gsParametros.WriteString('ACESSODADOS','DataBaseName',edtDatabaseName.text);
   gsParametros.WriteString('ACESSODADOS','Usuario',edtUsuario.text);
   gsParametros.WriteString('ACESSODADOS','Senha',edtSenha.text);
   gsParametros.WriteString('ACESSODADOS','TipoSistema',IntToStr(rdgTipoSistema.ItemIndex));

   gsParametros.WriteString('CONFIG_SISTEMA','NomeEmpresa',edtNomeEmpresa.Text);

   {Parametros de impressao}
   gsParametros.WriteString('IMPRESSAO','CaminhoImpressao',edtCaminhoImpressao.text);

   //[parametros de cadastro]
   gParametros.Gravar( '', '[CADASTRO]', 'qtdeNumeroDias', EdtqtdeNumeroDias.Text ,gsOperador );
   gParametros.Gravar( '', '[CADASTRO]', 'NumeroCompras', EdtNumeroCompras.Text ,gsOperador );
   gParametros.Gravar( '', '[CADASTRO]', 'ClientePadrao', cmbCod_Cliente.Text ,gsOperador );
   gParametros.Gravar( '', '[CADASTRO]', 'ValorOSPadrao', edtVlr_Servico.Text ,gsOperador );




   if chkVendeServico.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'VendeServico', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'VendeServico', 'NAO' ,gsOperador );

   if chkCondicaoNaVenda.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'CondicaoNaVenda', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'CondicaoNaVenda', 'NAO' ,gsOperador );

   if chkBloqueioEstoque.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'BloqueioEstoque', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'BloqueioEstoque', 'NAO' ,gsOperador );

   if chkVendaSemControle.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'VendaSemControle', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'VendaSemControle', 'NAO' ,gsOperador );

   if chkLigaECF.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'LigarECF', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'LigarECF', 'NAO' ,gsOperador );

   if cnkCadastraClienteSemCPF.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'CadastraClienteSemCPF', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'CadastraClienteSemCPF', 'NAO' ,gsOperador );

   if chkEmiteEtiqueta.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'EmiteEtiqueta', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'EmiteEtiqueta', 'NAO' ,gsOperador );

   if chkData_Automatica.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'Data_Automatica', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'Data_Automatica', 'NAO' ,gsOperador );
   Close;
end;

procedure TfrmParametros.cmbCod_ClienteChange(Sender: TObject);
begin
   CmbNome_Cliente.Keyvalue := cmbCod_Cliente.Keyvalue;
end;

procedure TfrmParametros.cmbNome_ClienteChange(Sender: TObject);
begin
   CmbCod_Cliente.Keyvalue := cmbnome_Cliente.Keyvalue;
end;

procedure TfrmParametros.FormShow(Sender: TObject);
begin

   CarregarTabelas;

   RecuperarParametrosContasAReceber;
   RecuperarParametrosImpressao;
   RecuperarParametrosGerais;
   RecuperarParametrosVendas;
   RecuperarParametrosAdiministrativos;

   CarregarTodosOsParametros;
end;

procedure TfrmParametros.GravarParametrosAdiministrativos;
begin
   //gParametros.Gravar( '', '[ADMINISTRATIVO]', 'MarcaOsNoCaixa', RetornaSimouNao(chkMarcaOsNoCaixa.Checked) ,gsOperador );
   gParametros.Gravar( '', '[ADMINISTRATIVO]', 'DespesasVariaveis', edtDespesaVariaveis.Text ,gsOperador );
   gParametros.Gravar( '', '[ADMINISTRATIVO]', 'DespesasFixas', edtDespesasFixas.Text ,gsOperador );
end;

procedure TfrmParametros.GravarParametrosContaAReceber;
begin
   gParametros.Gravar( '', '[CONTASRECEBER]', 'TrabalhaComRemessa',RetornaSimouNao(chkTrabalhaComRemessa.Checked),gsOperador );
   gParametros.Gravar( '', '[CONTASRECEBER]', 'RecebimentoLote', RetornaSimouNao(chkRecebimentoLote.Checked) ,gsOperador );
   gParametros.Gravar( '', '[CONTASRECEBER]', 'TipoBaixa', IntToStr(cmbTipoBaixa.ItemIndex) ,gsOperador );
   gParametros.Gravar( '', '[CONTASRECEBER]', 'BaixaMultiplosClientes', RetornaSimouNao(chkBaixaMultiplosClientes.Checked) ,gsOperador );
   gParametros.Gravar( '', '[CONTASRECEBER]', 'NumeroDeTurnos', EdtNumeroDeTurnos.Text ,gsOperador );
   gParametros.Gravar( '', '[CONTASRECEBER]', 'Juros', edtJuros.Text ,gsOperador );
   gParametros.Gravar( '', '[CONTASRECEBER]', 'Multa', edtMulta.Text ,gsOperador );
end;

procedure TfrmParametros.GravarParametrosGerais;
begin
   gParametros.Gravar( '', '[GERAL]', 'CaixaBalcao', cmbCaixaBalcao.KeyValue,gsOperador );
   gParametros.Gravar( '', '[GERAL]', 'CaixaVendasExternas', cmbCaixaVendasExternas.KeyValue,gsOperador );
   gParametros.Gravar( '', '[GERAL]', 'VendaExterna',RetornaSimouNao(chkVendaExterna.Checked),gsOperador );
   gParametros.Gravar( '', '[GERAL]', 'EstoqueVendaExterna', cmbEstoqueVendaExterna.KeyValue,gsOperador );
end;

procedure TfrmParametros.GravarParametrosImpressao;
begin
   gParametros.Gravar( '', '[IMPRESSAO]', 'NumeroVias',editNumeroVias.Text,gsOperador );
   gParametros.Gravar( '', '[IMPRESSAO]', 'TipoImpressora',intToStr(cmbTipoImpressora.ItemIndex),gsOperador );
   gParametros.Gravar( '', '[IMPRESSAO]', 'ImprimiCopiaComprovante',RetornaSimouNao(chkImprimiCopiaComprovante.Checked),gsOperador );
   gParametros.Gravar( '', '[IMPRESSAO]', 'ImprimeComprovanteVenda',RetornaSimouNao(chkImprimeComprovanteVenda.Checked),gsOperador );
   gParametros.Gravar( '', '[IMPRESSAO]', 'ImprimeComprovanteServico',RetornaSimouNao(chkImprimeComprovanteServico.Checked),gsOperador );
   gParametros.Gravar( '', '[IMPRESSAO]', 'ImprimeComprovanteBaixa',RetornaSimouNao(chkImprimeComprovanteBaixa.Checked),gsOperador );
end;

procedure TfrmParametros.GravarParametrosVendas;
begin
   gParametros.Gravar( '', '[VENDA]', 'NaoMostraTipoDePagamento',RetornaSimouNao(chkNaoMostraTipoDePagamento.Checked),gsOperador );
end;

procedure TfrmParametros.RecuperarParametrosAdiministrativos;
begin
   chkMarcaOsNoCaixa.Checked  := RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[ADMINISTRATIVO]', 'MarcaOsNoCaixa', 'NAO' )));
   edtDespesaVariaveis.Text   := gParametros.Ler( '', '[ADMINISTRATIVO]', 'DespesasVariaveis', '0' );
   edtDespesasFixas.Text      := gParametros.Ler( '', '[ADMINISTRATIVO]', 'DespesasFixas', '0' );
end;

procedure TfrmParametros.RecuperarParametrosVendas;
begin
   chkNaoMostraTipoDePagamento.Checked  := RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[VENDA]', 'NaoMostraTipoDePagamento', 'NAO' )));
end;

procedure TfrmParametros.RecuperarParametrosContasAReceber;
begin
   cmbTipoBaixa.ItemIndex            := StrToint(gParametros.Ler( '', '[CONTASRECEBER]', 'TipoBaixa', '0' ,gsOperador ));
   EdtNumeroDeTurnos.Text            := gParametros.Ler( '', '[CONTASRECEBER]', 'NumeroDeTurnos', '0' ,gsOperador );
   chkTrabalhaComRemessa.Checked     := RetornarVerdadeirOuFalso(Uppercase( gParametros.Ler( '', '[CONTASRECEBER]', 'TrabalhaComRemessa', 'NAO' )));
   chkRecebimentoLote.Checked        := RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[CONTASRECEBER]', 'RecebimentoLote', 'NAO' )));
   chkBaixaMultiplosClientes.Checked := RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[CONTASRECEBER]', 'BaixaMultiplosClientes', 'NAO' )));
   edtJuros.Text                     := gParametros.Ler( '', '[CONTASRECEBER]', 'Juros', '0' );
   edtMulta.Text                     := gParametros.Ler( '', '[CONTASRECEBER]', 'Multa', '0' );

end;

procedure TfrmParametros.RecuperarParametrosGerais;
begin
   cmbCaixaBalcao.KeyValue          := gParametros.Ler( '', '[GERAL]', 'CaixaBalcao', '1' );
   cmbCaixaVendasExternas.KeyValue  := gParametros.Ler( '', '[GERAL]', 'CaixaVendasExternas', '1' );
   cmbEstoqueVendaExterna.KeyValue  := gParametros.Ler( '', '[GERAL]', 'EstoqueVendaExterna', '1' );
   chkVendaExterna.Checked          := RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[GERAL]', 'VendaExterna', 'NAO' )));
end;

procedure TfrmParametros.CarregarTabelas;
var Parametros : TStringList;
begin
  Parametros := TStringList.Create;
  try
    Parametros.add('S');
    cdsCadClientes.Data := gConexao.BuscarDadosSQL('Select status, Codigo, Descricao, cnpjcpf,' +
                                              '       Qtde_PedAberto,Limite_Credito '+
                                              'From T_Clientes '+
                                              'Where ativo=:parAtivo order by Descricao ',Parametros).data;
    cdsCadCaixa.Data := gConexao.BuscarDadosSQL('Select * from Caixas Order by Descricao ',Nil).data;
    cdsSetoresEstoque.data := gConexao.BuscarDadosSQL('Select * from Setores Order by Descricao ',Nil).data;
  finally
     FreeAndNil(Parametros);
  end;
end;

procedure TfrmParametros.CarregarTodosOsParametros;
begin
  edtHostName.text := gsParametros.ReadString('ACESSODADOS', 'HostName', '(Local)');
  edtDatabaseName.text := gsParametros.ReadString('ACESSODADOS', 'DataBaseName', 'Controler');
  edtUsuario.text := gsParametros.ReadString('ACESSODADOS', 'Usuario', 'Controler');
  edtSenha.text := gsParametros.ReadString('ACESSODADOS', 'Senha', 'remoto');
  rdgTipoSistema.ItemIndex := StrToInt(gsParametros.ReadString('ACESSODADOS', 'TipoSistema', '0'));
  edtCaminhoImpressao.text := gsParametros.ReadString('IMPRESSAO', 'CaminhoImpressao', 'LPT1');
  edtNomeEmpresa.Text := gsParametros.ReadString('CONFIG_SISTEMA', 'NomeEmpresa', 'Informe a empresa nos parametros');
  cmbCod_Cliente.KeyValue := StrToInt(gParametros.Ler('', '[CADASTRO]', 'ClientePadrao', '0'));
  if StrToInt(gParametros.Ler('', '[CADASTRO]', 'ClientePadrao', '0')) <> 0 then
  begin
    cmbCod_Cliente.KeyValue := StrToInt(gParametros.Ler('', '[CADASTRO]', 'ClientePadrao', '0'));
    cmbCod_ClienteChange(cmbCod_Cliente);
  end;
  EdtNumeroCompras.Value := StrToInt(gParametros.Ler('', '[CADASTRO]', 'NumeroCompras', '999'));
  EdtqtdeNumeroDias.Value := StrToInt(gParametros.Ler('', '[CADASTRO]', 'qtdeNumeroDias', '999'));
  edtVlr_Servico.Text := gParametros.Ler('', '[CADASTRO]', 'ValorOSPadrao', '0');
  if Uppercase(gParametros.Ler('', '[CADASTRO]', 'VendeServico', 'NAO')) = 'NAO' then
    chkVendeServico.Checked := False
  else
    chkVendeServico.Checked := True;
  if Uppercase(gParametros.Ler('', '[CADASTRO]', 'CondicaoNaVenda', 'NAO')) = 'NAO' then
    chkCondicaoNaVenda.Checked := False
  else
    chkCondicaoNaVenda.Checked := True;
  if Uppercase(gParametros.Ler('', '[CADASTRO]', 'BloqueioEstoque', 'NAO')) = 'NAO' then
    chkBloqueioEstoque.Checked := False
  else
    chkBloqueioEstoque.Checked := True;

  if Uppercase(gParametros.Ler('', '[CADASTRO]', 'LigarECF', 'NAO')) = 'NAO' then
    chkLigaECF.Checked := False
  else
    chkLigaECF.Checked := True;
  if Uppercase(gParametros.Ler('', '[CADASTRO]', 'VendaSemControle', 'NAO')) = 'SIM' then
    chkVendaSemControle.Checked := True
  else
    chkVendaSemControle.Checked := False;
  if Uppercase(gParametros.Ler('', '[CADASTRO]', 'CadastraClienteSemCPF', 'NAO')) = 'SIM' then
    cnkCadastraClienteSemCPF.Checked := True
  else
    cnkCadastraClienteSemCPF.Checked := False;
  if Uppercase(gParametros.Ler('', '[CADASTRO]', 'EmiteEtiqueta', 'NAO')) = 'NAO' then
    chkEmiteEtiqueta.Checked := False
  else
    chkEmiteEtiqueta.Checked := True;
  if Uppercase(gParametros.Ler('', '[CADASTRO]', 'Data_Automatica', 'NAO')) = 'NAO' then
    chkData_Automatica.Checked := False
  else
    chkData_Automatica.Checked := True;
end;

procedure TfrmParametros.RecuperarParametrosImpressao;
begin
   editNumeroVias.Text                  := gParametros.ler( '', '[IMPRESSAO]', 'NumeroVias','1',gsOperador );
   cmbTipoImpressora.Itemindex          := StrToint(gParametros.ler( '', '[IMPRESSAO]', 'TipoImpressora','0',gsOperador ));
   chkImprimiCopiaComprovante.Checked   := RetornarVerdadeirOuFalso(gParametros.ler( '', '[IMPRESSAO]', 'ImprimiCopiaComprovante','0',gsOperador ));
   chkImprimeComprovanteVenda.Checked   := RetornarVerdadeirOuFalso(gParametros.ler( '', '[IMPRESSAO]', 'ImprimeComprovanteVenda','0',gsOperador ));
   chkImprimeComprovanteServico.Checked := RetornarVerdadeirOuFalso(gParametros.ler( '', '[IMPRESSAO]', 'ImprimeComprovanteServico','0',gsOperador ));
   chkImprimeComprovanteBaixa.Checked   := RetornarVerdadeirOuFalso(gParametros.ler( '', '[IMPRESSAO]', 'ImprimeComprovanteBaixa','0',gsOperador ));
end;


end.
