unit uCadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, ADODB, StdCtrls, bsSkinCtrls, Mask,SqlTimSt,
  bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, ComCtrls, bsSkinTabs, ExtCtrls,
  ToolWin, BusinessSkinForm, Buttons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, FMTBcd, SqlExpr,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,cxContainer,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  bsdbctrls, SimpleDS,ConfigUtils, RDprint, Menus, bsSkinMenus,uFormBase,
  EditNew, dxSkinsCore;

type
  TfrmCadClientes = class(TFormBase)
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    cmbtipoconsulta: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    bsSkinTabSheet2: TbsSkinTabSheet;
    dspCadClientes: TDataSetProvider;
    cdsCadClientes: TClientDataSet;
    srcCadClientes: TDataSource;
    dspVariavel: TDataSetProvider;
    GridClintes: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryvariavel: TSQLQuery;
    qryCadClientes: TSQLQuery;
    bsSkinGroupBox1: TbsSkinGroupBox;
    bsSkinStdLabel9: TbsSkinStdLabel;
    bsSkinStdLabel11: TbsSkinStdLabel;
    bsSkinStdLabel12: TbsSkinStdLabel;
    cmbStatusCliente: TbsSkinComboBox;
    edtLimiteCredito: TbsSkinNumericEdit;
    cdsCadAtividades: TClientDataSet;
    srcCadAtividades: TDataSource;
    cmbCod_Atividade: TbsSkinDBLookupComboBox;
    cmbNome_Atividade: TbsSkinDBLookupComboBox;
    GridClintesCodigo: TcxGridDBColumn;
    GridClintesDescricao: TcxGridDBColumn;
    GridClintesCNPJCPF: TcxGridDBColumn;
    GridClintesEndereco: TcxGridDBColumn;
    GridClintesBairro: TcxGridDBColumn;
    GridClintesCidade: TcxGridDBColumn;
    GridClintesUF: TcxGridDBColumn;
    GridClintesTelefone: TcxGridDBColumn;
    GridClintescelular: TcxGridDBColumn;
    GridClintesOperador: TcxGridDBColumn;
    GridClintescod_emp: TcxGridDBColumn;
    GridClintesData_Cad: TcxGridDBColumn;
    GridClintesData_Atu: TcxGridDBColumn;
    GridClintesLimite_Credito: TcxGridDBColumn;
    GridClintesStatus: TcxGridDBColumn;
    GridClintesativo: TcxGridDBColumn;
    GridClintesCod_Atividade: TcxGridDBColumn;
    GridClintesCep: TcxGridDBColumn;
    srcPesquisa: TDataSource;
    chkClienteAtivo: TbsSkinCheckRadioBox;
    bsSkinTabSheet3: TbsSkinTabSheet;
    cxGrid2: TcxGrid;
    GridOcorrencias: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    bsSkinGroupBox2: TbsSkinGroupBox;
    bsSkinDateEdit1: TbsSkinDateEdit;
    EdtOcorrencia: TbsSkinEdit;
    sdtsOcorrencias: TSimpleDataSet;
    srcOcorrencias: TDataSource;
    Colum_Data_cad: TcxGridDBColumn;
    Colum_Operador: TcxGridDBColumn;
    Colum_Ocorrencia: TcxGridDBColumn;
    bsSkinStdLabel13: TbsSkinStdLabel;
    cmbCod_Rota: TbsSkinDBLookupComboBox;
    cmbNome_Rota: TbsSkinDBLookupComboBox;
    cdsCadRotas: TClientDataSet;
    srcCadRotas: TDataSource;
    bsSkinStdLabel10: TbsSkinStdLabel;
    edtNumeroPedAberto: TbsSkinSpinEdit;
    bsSkinTabSheet4: TbsSkinTabSheet;
    bsSkinTabSheet5: TbsSkinTabSheet;
    bsSkinTabSheet6: TbsSkinTabSheet;
    cxGrid3: TcxGrid;
    GrdVendas: TcxGridDBTableView;
    colum_Controle: TcxGridDBColumn;
    Colum_NomeStatus: TcxGridDBColumn;
    Colum_Cod_Aluno: TcxGridDBColumn;
    Colum_Descricao: TcxGridDBColumn;
    Colum_Data_Venda: TcxGridDBColumn;
    colum_Vlr_Desconto: TcxGridDBColumn;
    Colum_Vlr_Total: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    Colum_Seqvenda: TcxGridDBColumn;
    GrdItensVendas: TcxGridDBTableView;
    Colum_Codigo: TcxGridDBColumn;
    Colum_Descrisao: TcxGridDBColumn;
    Colum_Quantidade: TcxGridDBColumn;
    Colum_PcoVenda: TcxGridDBColumn;
    Colum_Desconto: TcxGridDBColumn;
    Colum_VlrTotal: TcxGridDBColumn;
    Colum_Complemento: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cdsVendas: TClientDataSet;
    cdsItensVendas: TClientDataSet;
    srcItensVendas: TDataSource;
    srcVendas: TDataSource;
    srcCtasReceber: TDataSource;
    cdsCtasReceber: TClientDataSet;
    bsSkinTabSheet7: TbsSkinTabSheet;
    qryPesquisa: TSQLQuery;
    dspPesquisa: TDataSetProvider;
    cdspesquisa: TClientDataSet;
    cxGrid4: TcxGrid;
    GridCtasReceber: TcxGridDBTableView;
    GridCtasReceberDocumento: TcxGridDBColumn;
    GridCtasReceberColumn1: TcxGridDBColumn;
    GridCtasReceberCod_Cliente: TcxGridDBColumn;
    GrifCtasreceberDescricao: TcxGridDBColumn;
    GridCtasReceberData_Emissao: TcxGridDBColumn;
    GridCtasReceberData_Vencimento: TcxGridDBColumn;
    Columm_Data_Pagamento: TcxGridDBColumn;
    GridCtasRecebervlr_Areceber: TcxGridDBColumn;
    GridCtasreceberVlr_Recebido: TcxGridDBColumn;
    GridCtasReceberHistorico: TcxGridDBColumn;
    GridCtasReceberData_Atu: TcxGridDBColumn;
    GridCtasReceberseqvenda: TcxGridDBColumn;
    GridCtasReceberOperador: TcxGridDBColumn;
    GridCtasReceberData_Cad: TcxGridDBColumn;
    GridCtasRecebersequencia: TcxGridDBColumn;
    GridCtasReceberCod_FormaPagamento: TcxGridDBColumn;
    GridCtasReceberCod_emp: TcxGridDBColumn;
    gridCtasreceberVlr_Desconto: TcxGridDBColumn;
    GridCtasreceberVlr_Comissao: TcxGridDBColumn;
    GridCtasReceberVlr_Devolvido: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    colum_Situacao: TcxGridDBColumn;
    colum_status: TcxGridDBColumn;
    btnPesquisar: TbsSkinButton;
    btnAdicionar: TbsSkinButton;
    impMatricial: TRDprint;
    qryRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    bsSkinPanel2: TbsSkinPanel;
    Label1: TLabel;
    cmbNome_Produto: TbsSkinDBLookupComboBox;
    edtCod_Produto: TbsSkinEdit;
    btnRemoverDesconto: TbsSkinButton;
    btnAdicionaDesconto: TbsSkinButton;
    pnlClientesDescontos: TbsSkinPaintPanel;
    lblNomeCliente: TbsSkinStdLabel;
    cxGrid5: TcxGrid;
    GridProdutosDescontos: TcxGridDBTableView;
    GridProdutosDescontosColumn1: TcxGridDBColumn;
    GridProdutosDescontosColumn2: TcxGridDBColumn;
    GridProdutosDescontosColumn3: TcxGridDBColumn;
    GridProdutosDescontosColumn4: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    edtPerc_Desconto: TbsSkinNumericEdit;
    Label2: TLabel;
    edtQtde_Minima: TbsSkinNumericEdit;
    Label3: TLabel;
    srcCalientesDescontos: TDataSource;
    cdsClientesDescontos: TClientDataSet;
    dspClientesDescontos: TDataSetProvider;
    qryClientesDescontos: TSQLQuery;
    cdsCadProdutos: TClientDataSet;
    srcCadProdutos: TDataSource;
    qryModific: TSQLQuery;
    cdsPesquisaDebito: TClientDataSet;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel14: TbsSkinStdLabel;
    bsSkinStdLabel15: TbsSkinStdLabel;
    lblCNPJCPF: TbsSkinStdLabel;
    edtNome_Fantasia: TbsSkinEdit;
    edtCodigo: TbsSkinEdit;
    edtData_cad: TbsSkinEdit;
    edtBairro: TbsSkinEdit;
    edtCep: TbsSkinEdit;
    edtEndereco: TbsSkinEdit;
    edtCidade: TbsSkinEdit;
    edtUf: TbsSkinEdit;
    edtTelefone: TbsSkinEdit;
    edtCelular: TbsSkinEdit;
    edtCnpjCpf: TbsSkinEdit;
    bsSkinStdLabel16: TbsSkinStdLabel;
    edtPto_Referencia: TbsSkinEdit;
    bsSkinPopupMenu1: TbsSkinPopupMenu;
    Clientes1: TMenuItem;
    ClientesSemCompras1: TMenuItem;
    cdsClientesDebitos: TClientDataSet;
    srcClientesDebitos: TDataSource;
    bsSkinTabSheet8: TbsSkinTabSheet;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinStdLabel17: TbsSkinStdLabel;
    bsSkinStdLabel18: TbsSkinStdLabel;
    cmbNome_Funcionario: TbsSkinDBLookupComboBox;
    EdtPesq_cnpjcpf: TbsSkinEdit;
    btnPesquisa_CNPJCPF: TbsSkinButton;
    edtCod_Funcionario: TbsSkinEdit;
    cmbCod_Funcionario: TbsSkinDBLookupComboBox;
    cxGrid6: TcxGrid;
    GridValidaCNPJCPF: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    srcCadFuncionarios: TDataSource;
    cdsCadFuncionarios: TClientDataSet;
    qryValidaCPFCNPJ: TSQLQuery;
    dspValidaCPFCNPJ: TDataSetProvider;
    cdsValidaCPFCNPJ: TClientDataSet;
    srcValidaCPFCNPJ: TDataSource;
    GridValidaCNPJCPFSequencia: TcxGridDBColumn;
    GridValidaCNPJCPFOperador: TcxGridDBColumn;
    GridValidaCNPJCPFData_Cad: TcxGridDBColumn;
    GridValidaCNPJCPFData_Mov: TcxGridDBColumn;
    GridValidaCNPJCPFCod_Cliente: TcxGridDBColumn;
    GridValidaCNPJCPFcnpjcpf: TcxGridDBColumn;
    GridValidaCNPJCPFCod_Solicitante: TcxGridDBColumn;
    GridValidaCNPJCPFOcorrencia: TcxGridDBColumn;
    GridValidaCNPJCPFDescricao: TcxGridDBColumn;
    GridValidaCNPJCPFSolicitante: TcxGridDBColumn;
    bsSkinStdLabel19: TbsSkinStdLabel;
    edtRazao_Social: TbsSkinEdit;
    bsSkinStdLabel20: TbsSkinStdLabel;
    edtResponsavel: TbsSkinEdit;
    bsSkinStdLabel21: TbsSkinStdLabel;
    cmbCod_Vendedor: TbsSkinDBLookupComboBox;
    cmbNome_Vendedor: TbsSkinDBLookupComboBox;
    pnlBloqueado: TPanel;
    bsSkinTabSheet9: TbsSkinTabSheet;
    PanelConsulta: TbsSkinPanel;
    AtualizaRec: TbsSkinSpeedButton;
    lblTurma: TbsSkinStdLabel;
    dtpData_Fim: TbsSkinDateEdit;
    dtpData_Ini: TbsSkinDateEdit;
    cmbPeriodo: TbsSkinComboBox;
    GridMovCaixa: TcxGrid;
    GrdDespesas: TcxGridDBTableView;
    colum_NomeD_C: TcxGridDBColumn;
    Colum_Data: TcxGridDBColumn;
    Colum_Historico: TcxGridDBColumn;
    Colum_Vlr_Credito: TcxGridDBColumn;
    Column_Vlr_Debito: TcxGridDBColumn;
    GridMovCaixaLevel1: TcxGridLevel;
    bsSkinPanel4: TbsSkinPanel;
    Column_Saldo: TcxGridDBColumn;
    cdsContaCorrente: TClientDataSet;
    srcContaCorrente: TDataSource;
    bsSkinStdLabel22: TbsSkinStdLabel;
    edtSaldo: TEditN;
    lblSaldo: TbsSkinStdLabel;
    cdsTemp: TClientDataSet;
    N3ExtratodeContaCorrente1: TMenuItem;
    GridCtasReceberColumn2: TcxGridDBColumn;
    GrdVendasColumn1: TcxGridDBColumn;
    Columm_Dias: TcxGridDBColumn;
    bsSkinStdLabel23: TbsSkinStdLabel;
    edtContrato: TbsSkinEdit;
    Contrato: TcxGridDBColumn;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnexcluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    BtnImprimir: TbsSkinMenuSpeedButton;
    btnFechar: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    procedure btnincluirClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbCod_AtividadeChange(Sender: TObject);
    procedure cmbNome_AtividadeChange(Sender: TObject);
    procedure LimpaCampos();
    procedure pagCadastroChange(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure cmbCod_RotaChange(Sender: TObject);
    procedure cmbNome_RotaChange(Sender: TObject);
    procedure edtCnpjCpfExit(Sender: TObject);
    procedure edtCnpjCpfEnter(Sender: TObject);
    procedure GridClintesDblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure InitFonts;
    procedure EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsVendasBeforeOpen(DataSet: TDataSet);
    procedure cdsVendasCalcFields(DataSet: TDataSet);
    procedure GridCtasReceberCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cdsCtasReceberBeforeOpen(DataSet: TDataSet);
    procedure cdsCtasReceberCalcFields(DataSet: TDataSet);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    Procedure MostraPesquisa(pwTipo : Integer);
    procedure btnAdicionaDescontoClick(Sender: TObject);
    procedure edtCod_ProdutoExit(Sender: TObject);
    procedure cmbNome_ProdutoChange(Sender: TObject);
    procedure cdsClientesDescontosBeforeOpen(DataSet: TDataSet);
    procedure btnRemoverDescontoClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure cmbNome_FuncionarioChange(Sender: TObject);
    procedure cmbCod_FuncionarioChange(Sender: TObject);
    procedure edtCod_FuncionarioExit(Sender: TObject);
    procedure btnPesquisa_CNPJCPFClick(Sender: TObject);
    procedure EdtPesq_cnpjcpfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientesSemCompras1Click(Sender: TObject);
    procedure cdspesquisaCalcFields(DataSet: TDataSet);
    procedure cdspesquisaBeforeOpen(DataSet: TDataSet);
    procedure cmbNome_VendedorChange(Sender: TObject);
    procedure cmbCod_VendedorChange(Sender: TObject);
    procedure cdsCtasReceberAfterOpen(DataSet: TDataSet);
    procedure cdsVendasAfterOpen(DataSet: TDataSet);
    procedure edtCidadeExit(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure AtualizaRecClick(Sender: TObject);
    procedure cdsContaCorrenteBeforeOpen(DataSet: TDataSet);
    procedure cdsContaCorrenteCalcFields(DataSet: TDataSet);
    procedure EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
  private
   pvQualBotao         : String;
   FFonts              : TFonts;
   FCustomDrawingStyle : TCustomDrawingStyleArr;
   FColorScheme        : TColorSchemes;
   FGridBrushMasterCell: TBrush;
   pviLinha            : Integer;
   pitipoRel           : Integer;
   pdSaldoConta        : Double;
   { Private declarations }
  public
    pvsCNPJCPF    : String;
    piCod_Produto : Integer;
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

uses uPrincipal,ufuncoes,cxGridCommon, uselrelClientes;

Procedure TfrmCadClientes.MostraPesquisa(pwTipo : Integer );
Begin
   case pwtipo of
      1 :
      Begin
         qryClientesDescontos.Close;
         qryClientesDescontos.Params.Clear;
         qryClientesDescontos.Sql.Text :='Select CliDesc.Cod_Produto, Prod.Descricao, CliDesc.Qtde_Minima,'+
                                         '       CliDesc.Perc_Desconto, CliDesc.Cod_Cliente '+
                                         'from T_ClientesDescontos Clidesc '+
                                         'Left join T_produtos Prod on ' +
                                         'Prod.Codigo=Clidesc.Cod_Produto '+
                                         'where CliDesc.cod_Cliente=:parCod_Cliente ';
         qryClientesDescontos.ParamByName('parCod_Cliente').AsInteger := cdspesquisa.FieldByName('Codigo').AsInteger;

         cdsClientesDescontos.Close;
         cdsClientesDescontos.ProviderName := dspClientesDescontos.name;
         cdsClientesDescontos.Open;
      End;
      2 :
      Begin
         qryValidaCPFCNPJ.Close;
         cdsValidaCPFCNPJ.Params.Clear;
         qryValidaCPFCNPJ.SQL.Text := 'Select Cli.Descricao, Fun.Descricao As Solicitante, Valida.* from T_ValidaCNPJCPF Valida ' +
                                      '   Left Join T_clientes Cli on '+
                                      '        Cli.Codigo=Valida.Cod_Cliente '+
                                      '   Left Join T_Funcionarios Fun On' +
                                      '        Fun.Codigo=Valida.Cod_Solicitante '+
                                      'Order by Sequencia desc ' ;
         cdsValidaCPFCNPJ.Close;
         cdsValidaCPFCNPJ.ProviderName := dspValidaCPFCNPJ.Name;
         cdsValidaCPFCNPJ.Open;
      End;
   end;
End;

procedure TFrmCadClientes.LimpaCampos();
Begin
   EdtNome_Fantasia.Text := '';
   EdtRazao_Social.Text := '';
   edtdata_Cad.Text  := '';
   edtEndereco.Text  := '';
   EdtBairro.Text    := '';
   edtCidade.Text    := '';
   EdtCep.Text       := '';
   EdtUf.Text        := '';
   EdtCelular.Text   := '';
   edtTelefone.text  := '';
   pvsCNPJCPF        := '';
   edtCnpjCpf.Text   := '';
   edtResponsavel.Text := '';
   edtLimiteCredito.Value  := 0.00;
   cmbStatusCliente.ItemIndex := 0;
   cmbCod_Atividade.KeyValue  := null;
   cmbNome_Atividade.KeyValue := null;
   cmbCod_Vendedor.KeyValue   := Null;
   cmbNome_Vendedor.KeyValue  := Null;
End;



{$R *.dfm}

procedure TfrmCadClientes.EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if KEY=13 then
      btnPesquisarClick(btnPesquisar);
end;

procedure TfrmCadClientes.EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
   if KEY=#13 then
      btnPesquisarClick(btnPesquisar);
end;

procedure TfrmCadClientes.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   LimpaCampos();

   edtCodigo.Text      := Sequencia('Codigo',False,'T_Clientes',FrmPrincipal.dbxPrincipal,'',False,5);
   edtNumeroPedAberto.Value := StrToInt(gParametros.Ler( '', '[CADASTRO]', 'NumeroCompras', '999' ));

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   chkClienteAtivo.Checked := True;
   edtCnpjCpf.SetFocus;
end;

procedure TfrmCadClientes.btnokClick(Sender: TObject);
begin
   if Trim(edtcnpjcpf.text)='' then
   begin
      CaixaMensagem( 'O CPF/CNPJ Não pode ser vazio ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if Trim(cmbCod_Atividade.text)='' then
   begin
      CaixaMensagem( 'A Atividade não pode ser vazia ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if Trim(cmbCod_Rota.text)='' then
   begin
      CaixaMensagem( 'A Rota não pode ser vazio ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   qryCadClientes.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadClientes.SQL.text :=' Select * from T_Clientes WHERE Codigo=:parcodigo ';
      qryCadClientes.ParamByName('parcodigo').Asinteger := StrtoInt(edtCodigo.Text);
   End
   Else
      qryCadClientes.SQL.text :=' Select * from T_Clientes WHERE 1=2';

   cdsCadClientes.Close;
   cdsCadClientes.ProviderName := dspCadClientes.Name;
   cdsCadClientes.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadClientes.Edit;
      cdsCadClientes.FieldByName('Data_Atu').AsDateTime := Now;
   End
   Else
   Begin
      cdsCadClientes.Append;
      cdsCadClientes.FieldByName('Codigo').Asinteger        := StrtoInt(edtCodigo.Text);
      cdsCadClientes.FieldByName('Data_Cad').AsDateTime := Now;
   End;
   cdsCadClientes.FieldByName('Descricao').AsString        := edtNome_Fantasia.Text;
   cdsCadClientes.FieldByName('Razao_Social').AsString     := edtRazao_Social.Text;
   cdsCadClientes.FieldByName('Endereco').AsString         := edtendereco.Text;
   cdsCadClientes.FieldByName('Cidade').AsString           := edtCidade.Text;
   cdsCadClientes.FieldByName('Responsavel').AsString      := edtResponsavel.Text;
   cdsCadClientes.FieldByName('Bairro').AsString           := edtBairro.Text;
   cdsCadClientes.FieldByName('Uf').AsString               := edtUf.Text;
   cdsCadClientes.FieldByName('Cep').AsString              := edtCep.Text;
   cdsCadClientes.FieldByName('Telefone').AsString         := EdtTelefone.Text;
   cdsCadClientes.FieldByName('Celular').AsString          := EdtCelular.Text;
   cdsCadClientes.FieldByName('Cod_Atividade').AsInteger   := cmbCod_Atividade.keyvalue;
   cdsCadClientes.FieldByName('Cod_Rota').AsInteger        := cmbCod_Rota.keyvalue;
   cdsCadClientes.FieldByName('Cod_Funcionario').AsInteger := 1;
   if cmbCod_Vendedor.KeyValue <> Null then
       cdsCadClientes.FieldByName('Cod_Funcionario').AsInteger := cmbCod_Vendedor.KeyValue;
   cdsCadClientes.FieldByName('Operador').AsString        := gsOperador;
   cdsCadClientes.FieldByName('CNPJCPF').AsString         := EdtCnpjCpf.text;
   cdsCadClientes.FieldByName('Limite_Credito').AsFloat   := edtLimiteCredito.Value;
   cdsCadClientes.FieldByName('Status').AsString          := IntToStr(cmbStatusCliente.ItemIndex);
   cdsCadClientes.FieldByName('Ativo').AsString           := 'S';
   if not chkClienteAtivo.Checked then
      cdsCadClientes.FieldByName('Ativo').AsString        := 'N';
   cdsCadClientes.FieldByName('Operador').AsString        := GsOperador;
   cdsCadClientes.FieldByName('Cod_Emp').AsString         := gsCod_Emp;
   cdsCadClientes.FieldByName('Qtde_PedAberto').AsInteger := StrToInt(edtNumeroPedAberto.Text);
   cdsCadClientes.FieldByName('Pto_referencia').AsString  := edtPto_Referencia.Text;
   cdsCadClientes.FieldByName('Contrato').AsString        := edtContrato.Text;
   cdsCadClientes.Post;

   If cdsCadClientes.ChangeCount > 0  Then // se houve mudancas
      cdsCadClientes.ApplyUpdates(-1);

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   LimpaCampos();

   If pvQualBotao = 'ALTERAR' then
      btnPesquisarClick(btnPesquisar);

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadClientes.btnPesquisarClick(Sender: TObject);
var lsCoringa : String;
    lswhere   : String;
begin
   if cmbtipoconsulta.ItemIndex = 1 then
   Begin
      EdtPesquisa.EditMask := '';
      EdtPesquisa.Text     := SubstString( Trim( EdtPesquisa.Text ), ';,/-.', '' );

      If Length( EdtPesquisa.Text ) <= 11 then
      Begin
         lblCNPJCPF.Caption   := 'C.P.F.';
         EdtPesquisa.EditMask := '###.###.###-##;0;_';

         if not CPF_Check( EdtPesquisa.Text ) then
         begin
            EdtPesquisa.EditMask := '';
            EdtPesquisa.SetFocus;
            exit;
         end;

      End
      else
      begin
         lblCNPJCPF.Caption   := 'C.N.P.J.';
         EdtPesquisa.EditMask := '##.###.###/####-##;0;_';

         if not CNPJ_Check( EdtPesquisa.Text ) then
         begin
            EdtPesquisa.EditMask := '';
            EdtPesquisa.SetFocus;
            //CaixaMensagem( 'CNPJ ' + Trim( EdtPesquisa.Text ) + ' inválido', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
   End;

   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   lswhere := 'Where Descricao like :parDescricao ';
   IF cmbtipoconsulta.ItemIndex = 1 Then
   Begin
      lswhere := 'Where cnpjcpf =:parDescricao ';
      lsCoringa := '';
   End
   Else IF cmbtipoconsulta.ItemIndex = 2 Then
   Begin
      lswhere := 'Where Codigo =:parDescricao ';
      lsCoringa := '';
   End
   Else IF cmbtipoconsulta.ItemIndex = 3 Then
      lswhere := 'Where Endereco like :parDescricao '
   Else IF cmbtipoconsulta.ItemIndex = 4 Then
   Begin
      lswhere := 'Where Contrato like :parDescricao ';
      lsCoringa := '';
   End;

   qrypesquisa.Close;
   qryPesquisa.Params.Clear;
   qryPesquisa.sql.text := 'Select * from T_Clientes '+lswhere ;
   IF cmbtipoconsulta.ItemIndex = 0 Then
      qryPesquisa.ParamByName('parDescricao').AsString    := lsCoringa+EdtPesquisa.Text+'%';
   IF cmbtipoconsulta.ItemIndex = 1 Then
      qryPesquisa.ParamByName('parDescricao').AsString := EdtPesquisa.Text;
   IF cmbtipoconsulta.ItemIndex = 2 Then
      qryPesquisa.ParamByName('parDescricao').AsString := EdtPesquisa.Text;
   IF cmbtipoconsulta.ItemIndex = 3 Then
      qryPesquisa.ParamByName('parDescricao').AsString    := lsCoringa+EdtPesquisa.Text+'%';
   IF cmbtipoconsulta.ItemIndex = 4 Then
      qryPesquisa.ParamByName('parDescricao').AsString    := lsCoringa+EdtPesquisa.Text+'%';

   cdspesquisa.Close;
   cdspesquisa.ProviderName :=dspPEsquisa.Name;
   cdspesquisa.Open;

   if cdsPesquisa.IsEmpty then
      CaixaMensagem( 'Cliente não encontrado ', ctAviso, [ cbOk ], 0 );

   if cmbtipoconsulta.ItemIndex = 1 then
   Begin
      if AnsiUpperCase(TemVendaAberta(cdspesquisa.FieldByName('Codigo').AsString)) <> AnsiUpperCase('Nada Consta') Then
         CaixaMensagem( 'Cliente tem compra em aberto Controle '+TemVendaAberta(cdspesquisa.FieldByName('Codigo').AsString), ctAviso, [ cbOk ], 0 );
   End;

end;

procedure TfrmCadClientes.btnRemoverDescontoClick(Sender: TObject);
begin
   IF cdsClientesDescontos.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Exclir Produto '+cdsClientesDescontos.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      qryModific.Close;
      qryModific.params.Clear;
      qryModific.Sql.Text := 'Delete from T_ClientesDescontos '+
                             'Where cod_Produto=:parCod_Produto and Cod_Cliente=:parCod_Cliente ';
      QryModific.paramByName('parCod_Produto').AsInteger      := cdsClientesDescontos.FieldByName('Cod_Produto').AsInteger;
      QryModific.paramByName('parCod_Cliente').AsInteger      := cdsClientesDescontos.FieldByName('Cod_Cliente').AsInteger;
      qryModific.ExecSQL;
      MostraPesquisa(1);
   End;

end;

procedure TfrmCadClientes.btnalterarClick(Sender: TObject);
begin
   pvQualBotao := 'ALTERAR';

   IF cdspesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   PagCadastro.ActivePageIndex:=1;
   edtcodigo.Text             := incZero( IntToStr(cdspesquisa.FieldByName('Codigo').AsInteger),5);
   edtNome_Fantasia.Text      := cdspesquisa.FieldByName('Descricao').AsString;
   edtRazao_Social.Text       := cdspesquisa.FieldByName('Razao_social').AsString;
   edtendereco.Text           := cdspesquisa.FieldByName('Endereco').AsString;
   edtCidade.Text             := cdspesquisa.FieldByName('Cidade').AsString;
   edtBairro.Text             := cdspesquisa.FieldByName('Bairro').AsString;
   edtUf.Text                 := cdspesquisa.FieldByName('Uf').AsString;
   edtCep.Text                := cdspesquisa.FieldByName('Cep').AsString;
   edtCnpjCpf.Text            := cdspesquisa.FieldByName('CNPJCPF').AsString;
   pvsCNPJCPF                 := cdspesquisa.FieldByName('CNPJCPF').AsString;
   EdtTelefone.Text           := cdspesquisa.FieldByName('Telefone').AsString;
   EdtCelular.Text            := cdspesquisa.FieldByName('Celular').AsString;
   Edtresponsavel.Text        := cdspesquisa.FieldByName('Responsavel').AsString;
   edtLimiteCredito.Value     := cdspesquisa.FieldByName('Limite_Credito').AsFloat;

   if not cdspesquisa.FieldByName('Cod_Funcionario').IsNull then
   Begin
      cmbCod_Vendedor.keyvalue := cdspesquisa.FieldByName('Cod_Funcionario').AsInteger;
      cmbCod_VendedorChange(cmbCod_Vendedor);
   End;
   cmbStatusCliente.ItemIndex := StrtoInt(cdspesquisa.FieldByName('Status').AsString);
   chkClienteAtivo.Checked    := True;
   if cdspesquisa.FieldByName('Ativo').AsString = 'N' Then
      chkClienteAtivo.Checked := False;
   cmbCod_Atividade.KeyValue  := cdspesquisa.FieldByName('Cod_Atividade').AsInteger;
   cmbNome_Atividade.KeyValue := cdspesquisa.FieldByName('Cod_Atividade').AsInteger;
   cmbCod_Rota.KeyValue       := cdspesquisa.FieldByName('Cod_Rota').AsInteger;
   cmbNome_Rota.KeyValue      := cdspesquisa.FieldByName('Cod_Rota').AsInteger;
   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',cdspesquisa.FieldByName('Data_Cad').AsDateTime);
   EdtNumeroPedAberto.Value   := cdspesquisa.FieldByName('Qtde_PedAberto').AsInteger;
   edtPto_Referencia.Text     := cdspesquisa.FieldByName('Pto_referencia').AsString;
   edtContrato.Text           := cdspesquisa.FieldByName('Contrato').AsString;

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   try
//      edtDescricao.SetFocus;
   Except
   end;

end;

procedure TfrmCadClientes.btnexcluirClick(Sender: TObject);
begin
   IF cdsCadClientes.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Exclir o forma de pagamento '+cdspesquisa.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      cdspesquisa.Delete;
      cdspesquisa.ApplyUpdates(-1);
   End;
end;

procedure TfrmCadClientes.BtnCancelaClick(Sender: TObject);
begin
   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;
   LimpaCampos();
   PagCadastro.ActivePageIndex:=0;
end;

procedure TfrmCadClientes.btnFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmCadClientes.FormShow(Sender: TObject);
var i,j : Integer;
begin

   qryvariavel.close;
   qryvariavel.sql.Text :=  'Select Codigo, Descricao From T_Atividades '+
                            'Order By Descricao ';

   cdsCadAtividades.Close;
   cdsCadAtividades.ProviderName := dspVariavel.Name;
   cdsCadAtividades.Open;

   qryvariavel.close;
   qryvariavel.sql.Text :=  'Select Codigo, Descricao From T_Rotas '+
                            'Order By Descricao ';

   cdsCadRotas.Close;
   cdsCadRotas.ProviderName := dspVariavel.Name;
   cdsCadRotas.Open;

   qryvariavel.Close;
   qryvariavel.Params.clear;
   qryvariavel.SQL.Text := 'Select * from T_Produtos where ( Tipo_Produto=:parTipo_Produto  or Tipo_Produto=:parTipo_Produto2 ) ';
   qryvariavel.ParamByName('parTipo_Produto').AsInteger   := 0; // 1 <materia prima
   qryvariavel.ParamByName('parTipo_Produto2').AsInteger  := 1; // 1 <materia prima

   cdsCadProdutos.close;
   cdsCadProdutos.ProviderName := dspvariavel.Name;
   cdsCadProdutos.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Funcionarios order by Descricao ';

   cdsCadFuncionarios.Close;
   cdsCadFuncionarios.ProviderName := dspVariavel.Name;
   cdsCadFuncionarios.Open;

   PagCadastro.ActivePageIndex:=0;

   piCod_Produto  := 0;

   FGridBrushMasterCell := TBrush.Create;
   FColorScheme[Integer(vtMaster), 0] := csBlue;
   FColorScheme[Integer(vtDetail), 1] := csBlue;
   for i:=0 to 1 do
     for j:=0 to 5 do
       FCustomDrawingStyle[i, j] := cdsGradient;

  InitFonts();

  // edtNumeroPedAberto.Value :=

end;

procedure TfrmCadClientes.cdsClientesDescontosBeforeOpen(DataSet: TDataSet);
var licont : integer;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmCadClientes.cdsContaCorrenteBeforeOpen(DataSet: TDataSet);
var licont : Integer;
begin
 CriarCalculado (DataSet,'NomeD_C',ftString,15);
 CriarCalculado (DataSet,'Vlr_Debito',ftFloat,0);
 CriarCalculado (DataSet,'Vlr_Credito',ftFloat,0);
 for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmCadClientes.cdsContaCorrenteCalcFields(DataSet: TDataSet);
begin
   If cdsContaCorrente.FieldByName('D_C').asString = 'C' Then
   Begin
      cdsContaCorrente.FieldByName('NomeD_C').asString    := 'Entrada';
      cdsContaCorrente.FieldByName('Vlr_Credito').asFloat := cdsContaCorrente.FieldByName('Valor').asFloat;
      cdsContaCorrente.FieldByName('Vlr_Debito').asFloat  := 0;
   End;
   If cdsContaCorrente.FieldByName('D_C').asString = 'D' Then
   Begin
      cdsContaCorrente.FieldByName('NomeD_C').asString    := 'Saida';
      cdsContaCorrente.FieldByName('Vlr_Debito').asFloat  := cdsContaCorrente.FieldByName('Valor').asFloat;
      cdsContaCorrente.FieldByName('Vlr_Credito').asFloat := 0;
   End;
end;

procedure TfrmCadClientes.cdsCtasReceberAfterOpen(DataSet: TDataSet);
var licont : integer;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmCadClientes.cdsCtasReceberBeforeOpen(DataSet: TDataSet);
begin
   CriarCalculado (DataSet,'Nome_Status',ftString,15);
   CriarCalculado (DataSet,'Dias',ftinteger,0);

end;

procedure TfrmCadClientes.cdsCtasReceberCalcFields(DataSet: TDataSet);
var lrDias : real;
begin
   If cdsCtasReceber.FieldByName('Status').AsString = '1' Then
      cdsCtasReceber.FieldByName('Nome_Status').AsString := 'Pago'
   Else if cdsCtasReceber.FieldByName('Status').AsString = '2' then
      cdsCtasReceber.FieldByName('Nome_Status').AsString := 'Cancelado'
   Else
      cdsCtasReceber.FieldByName('Nome_Status').AsString := 'A pagar';

   if (cdsCtasReceber.FieldByName('Data_Vencimento').AsDatetime > gsData_Mov) and
      (cdsCtasReceber.FieldByName('Status').AsString = '0')  Then
      cdsCtasReceber.FieldByName('Nome_Status').AsString := 'A Vencer';
      if cdsCtasReceber.FieldByName('Data_Pagamento').IsNull then
        lrDias := gsData_Mov - cdsCtasReceber.FieldByName('Data_Vencimento').AsDatetime
      Else
        lrDias :=  cdsCtasReceber.FieldByName('Data_Pagamento').AsDatetime-cdsCtasReceber.FieldByName('Data_Vencimento').AsDatetime;

       cdsCtasReceber.FieldByName('Dias').AsInteger := Trunc(lrdias);
end;

procedure TfrmCadClientes.cdspesquisaBeforeOpen(DataSet: TDataSet);
begin
   CriarCalculado (DataSet,'Nome_Status',ftString,15);
end;

procedure TfrmCadClientes.cdspesquisaCalcFields(DataSet: TDataSet);
begin
   case  cdsPesquisa.FieldByName('Status').AsInteger Of
     0 : cdsPesquisa.FieldByName('Nome_Status').AsString := 'Liberado';
     1 : cdsPesquisa.FieldByName('Nome_Status').AsString := 'Cobrança';
     2 : cdsPesquisa.FieldByName('Nome_Status').AsString := 'Bloqueado';
   end;
end;

procedure TfrmCadClientes.cdsVendasAfterOpen(DataSet: TDataSet);
var licont : Integer;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmCadClientes.cdsVendasBeforeOpen(DataSet: TDataSet);
begin
   CriarCalculado (DataSet,'Nome_Status',ftString,15);
   CriarCalculado (DataSet,'Tipo',ftString,15);
end;

procedure TfrmCadClientes.cdsVendasCalcFields(DataSet: TDataSet);
begin
   If cdsVendas.FieldByName('Status').AsString = '1' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Contratado'
   Else If cdsVendas.FieldByName('Status').AsString = '2' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Em Producao'
   Else If cdsVendas.FieldByName('Status').AsString = '3' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Finalizado'
   Else If cdsVendas.FieldByName('Status').AsString = '4' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Entregue';

   If cdsVendas.FieldByName('Tipo_Venda').AsString = 'S' Then
      cdsVendas.FieldByName('Tipo').AsString := 'Serviço'
   Else
      cdsVendas.FieldByName('Tipo').AsString := 'Venda'
end;

procedure TfrmCadClientes.Clientes1Click(Sender: TObject);
var lsNome_Rota : String;
begin
   pitipoRel := StrtoInt(Copy(TmenuItem(Sender).Caption,1,1));

   GstituloRel  :='Relatorio de clientes bloqueados';

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'Select Cli.Cod_Rota, Rota.Descricao as Rota, Cli.Codigo, Cli.Descricao, '+
                            '       Cli.Endereco, Cli.Bairro, Cli.Cidade '+
                            'From T_Clientes Cli '+
                            'Left Join T_Rotas Rota On ' +
                            '     Rota.Codigo=Cli.Cod_rota '+
                            'where Status=:parStatus ' +
                            'Order by Cli.Cod_Rota,Cli.Bairro ';
   qryRelatorio.ParamByName('parStatus').AsString := '2';
   {
   If cmbTipoRel.ItemIndex = 0 Then
      qryRelatorio.ParamByName('parTipo_Venda').AsString          := 'P'
   Else
      qryRelatorio.ParamByName('parTipo_Venda').AsString          := 'S';
   }
   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;

   qryvariavel.Close;
   qryvariavel.Params.Clear;
   qryvariavel.SQL.text := 'Select Cod_Cliente from T_Ctasreceber where Status=:parstatus ';
   qryvariavel.ParamByName('parStatus').AsInteger := 0;

   cdsClientesDebitos.Close;
   cdsClientesDebitos.ProviderName := dspVariavel.Name;
   cdsClientesDebitos.Open;


   cdsRelatorio.First;
   while not cdsRelatorio.Eof do
   Begin
      if (not cdsClientesDebitos.Locate('Cod_Cliente',cdsRelatorio.FieldByName('Codigo').AsString,[])) or ( pitipoRel=1) then
      Begin
         if lsNome_Rota<>cdsRelatorio.FieldByName('Rota').AsString then
         Begin
            pviLinha:=Pvilinha+1;
            impmatricial.Imp(pvilinha,001,inczero(cdsRelatorio.FieldByName('Cod_Rota').AsString,3)+'-'+cdsRelatorio.FieldByName('Rota').AsString );
            pviLinha:=Pvilinha+1;
            impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
            pviLinha:=Pvilinha+1;
            lsNome_Rota:=cdsRelatorio.FieldByName('Rota').AsString;
         End;
         impmatricial.Imp(pvilinha,001,IncZero(cdsRelatorio.FieldByName('Codigo').AsString,5)+' '+cdsRelatorio.FieldByName('Descricao').AsString );
         impmatricial.Imp(pvilinha,040,Copy(cdsRelatorio.FieldByName('Endereco').AsString+' '+cdsRelatorio.FieldByName('Bairro').AsString,1,40) );
         pviLinha:=Pvilinha+1;
         if pvilinha>60 then
            impmatricial.Novapagina;
      End;
      cdsRelatorio.next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   impmatricial.Fechar;
end;

procedure TfrmCadClientes.ClientesSemCompras1Click(Sender: TObject);
var lsNome_Rota   : String;
    Perc_Atingido : Real;
    lsPercentual : String;
begin

   pitipoRel := StrtoInt(Copy(TmenuItem(Sender).Caption,1,1));
   if pitiporel=2 then
   Begin
      frmSelRelClientes := TfrmSelRelClientes.create(Self);
      frmSelRelClientes.showmodal;
      exit;
   End;

   if not inputQuery('Insira o Percentual','Insira o Percentual',lsPercentual) Then
      Exit;


   GstituloRel  :='Relatorio de clientes liberados sem compras ';

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 135;
   ImpMatricial.FonteTamanhoPadrao        := s17cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'SELECT Rec.Cod_Cliente as codigo, MAX(Cli.Cod_Rota) As Cod_Rota, '+
                            '       MAX(Cli.Descricao) As Descricao, '+
                            '       MAX(Cli.Endereco)  As Endereco, '+
                            '       MAX(Cli.Bairro) As Bairro, '+
                            '       MAX(Cli.Cidade) As Cidade, '+
                            '       Sum(Vlr_areceber)As Total_Areceber, '+
                            '       Sum(Vlr_recebido+vlr_Comissao)As Total_Recebido, '+
                            '       Count(Rec.Documento) As Tot_Qtde, '+
                            '       MAX(Rota.Descricao) as Rota '+
                            'FROM T_ctasreceber Rec '+
                            '     Left Join T_clientes Cli on '+
                            '          Cli.Codigo=Rec.Cod_Cliente '+
                            '     Left Join T_Rotas Rota On '+
                            '          Rota.Codigo=Cli.Cod_rota '+
                            'WHERE Rec.status =:parStatus '+
                            'GROUP BY Rec.Cod_Cliente,Cli.Cod_Rota,Cli.Bairro,Cli.Endereco '+
                            'ORDER BY Cli.Cod_rota,Cli.Bairro,Cli.Endereco';
   qryRelatorio.ParamByName('parStatus').AsString  := '1';

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;

   qryvariavel.Close;
   qryvariavel.Params.Clear;
   qryvariavel.SQL.text := 'Select Cod_Cliente from T_Ctasreceber where Status=:parstatus ';
   qryvariavel.ParamByName('parStatus').AsInteger := 0;

   cdsClientesDebitos.Close;
   cdsClientesDebitos.ProviderName := dspVariavel.Name;
   cdsClientesDebitos.Open;


   cdsRelatorio.First;
   while not cdsRelatorio.Eof do
   Begin
      if (not cdsClientesDebitos.Locate('Cod_Cliente',cdsRelatorio.FieldByName('Codigo').AsString,[]))  then
      Begin
         if lsNome_Rota<>cdsRelatorio.FieldByName('Rota').AsString then
         Begin
            pviLinha:=Pvilinha+1;
            impmatricial.Imp(pvilinha,001,inczero(cdsRelatorio.FieldByName('Cod_Rota').AsString,3)+'-'+cdsRelatorio.FieldByName('Rota').AsString );
            pviLinha:=Pvilinha+1;
            impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
            pviLinha:=Pvilinha+1;
            lsNome_Rota:=cdsRelatorio.FieldByName('Rota').AsString;
         End;
         Perc_Atingido := (cdsRelatorio.FieldByName('Total_Recebido').AsFloat/cdsRelatorio.FieldByName('Total_Areceber').AsFloat)*100;
         if Perc_Atingido>=strToFloat(lsPercentual) then
         Begin
            impmatricial.Imp(pvilinha,001,IncZero(cdsRelatorio.FieldByName('Codigo').AsString,5)+' '+cdsRelatorio.FieldByName('Descricao').AsString );
            impmatricial.Imp(pvilinha,040,Copy(cdsRelatorio.FieldByName('Endereco').AsString,1,40) );
            impmatricial.Imp(pvilinha,082,cdsRelatorio.FieldByName('Bairro').AsString );

            impmatricial.Impd(pvilinha,111,FormatFloat(',0.00',cdsRelatorio.FieldByName('Total_Areceber').AsFloat),[] );
            impmatricial.Impd(pvilinha,121,FormatFloat(',0.00',cdsRelatorio.FieldByName('Total_Recebido').AsFloat),[] );
            impmatricial.Impd(pvilinha,130,FormatFloat(',0.00',(cdsRelatorio.FieldByName('Total_Recebido').AsFloat/cdsRelatorio.FieldByName('Total_Areceber').AsFloat)*100)+'%',[] );
            impmatricial.Impd(pvilinha,135,FormatFloat('0',cdsRelatorio.FieldByName('Tot_Qtde').AsFloat),[] );
            pviLinha:=Pvilinha+1;
         End;
         if pvilinha>60 then
            impmatricial.Novapagina;
      End;
      cdsRelatorio.next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
   impmatricial.Fechar;
end;

procedure TfrmCadClientes.cmbCod_AtividadeChange(Sender: TObject);
begin
   cmbnome_atividade.KeyValue := CmbCod_Atividade.KeyValue;
end;

procedure TfrmCadClientes.cmbCod_FuncionarioChange(Sender: TObject);
begin
   cmbNome_Funcionario.KeyValue  :=  cmbCod_Funcionario.KeyValue;
   if Trim(cmbCod_Funcionario.Text)<>'' Then
      edtCod_Funcionario.Text := cmbCod_Funcionario.Text
end;

procedure TfrmCadClientes.cmbNome_AtividadeChange(Sender: TObject);
begin
   cmbCod_atividade.KeyValue := CmbNome_Atividade.KeyValue;
end;

procedure TfrmCadClientes.cmbNome_FuncionarioChange(Sender: TObject);
begin
   cmbCod_Funcionario.KeyValue  :=  cmbNome_Funcionario.KeyValue;
end;

procedure TfrmCadClientes.cmbNome_ProdutoChange(Sender: TObject);
begin
   if cmbNome_Produto.KeyValue<> null then
      edtCod_Produto.Text := cmbNome_Produto.KeyValue;
end;

procedure TfrmCadClientes.pagCadastroChange(Sender: TObject);
begin
   if (pagCadastro.ActivePageIndex <> 0) and (pagCadastro.ActivePageIndex <> 7)  Then
   Begin
      if cdspesquisa.IsEmpty then
      Begin
         CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
         Exit
      End;
   End;
   If pagCadastro.ActivePageIndex = 2 Then
   Begin
      IF cdspesquisa.IsEmpty Then
      Begin
         CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
         Exit
      End;
      sdtsOcorrencias.Close;
      sdtsOcorrencias.DataSet.CommandText := 'Select * from T_Ocorrencias where Cod_Cliente=:parCod_cliente';
      sdtsOcorrencias.DataSet.ParamByName('parCod_Cliente').Asinteger := cdspesquisa.FieldByName('Codigo').asInteger;
      sdtsOcorrencias.Open;
      edtOcorrencia.Text := '';
   End
   Else if pagCadastro.ActivePageIndex = 3 Then
   Begin
      pnlClientesDescontos.CaptionMode :=false;
      lblNomeCliente.Caption := 'Cliente..: '+upperCase( inczero( cdspesquisa.FieldByName('Codigo').AsString,5)+' - '+cdspesquisa.FieldByName('Descricao').AsString);
      pnlClientesDescontos.Update;
      MostraPesquisa(1);
   End
   Else if pagCadastro.ActivePageIndex = 4 Then  // vendas
   Begin
      qryvariavel.Close;
      qryvariavel.Params.Clear;
      qryvariavel.SQL.Text :='Select Fun.Descricao as Nome_Vendedor, Cli.Descricao, cli.cnpjcpf, Ven.* from T_Vendas Ven '+
                             ' Left join T_Funcionarios Fun on Fun.Codigo=Ven.Cod_Funcionario '+
                             ' Left Join T_Clientes  Cli on Cli.Codigo=Ven.Cod_Cliente '+
                             'where Ven.Cod_cliente=:parCod_cliente Order by Data_Venda ';
      qryvariavel.ParamByName('parCod_Cliente').AsInteger := cdspesquisa.FieldByName('Codigo').asInteger;

      cdsVendas.Close;
      cdsVendas.ProviderName := dspVariavel.name;
      cdsVendas.Open;

      qryvariavel.Close;
      qryvariavel.SQL.Text := 'Select  Prod.Descricao, Itens.* from T_itensvendas Itens, T_produtos Prod, T_Vendas Ven '+
                              'where Ven.Cod_Cliente=:parCod_Cliente and itens.SeqVenda=Ven.SeqVenda and Prod.Codigo=Itens.Cod_Produto ';
      qryvariavel.ParamByName('parCod_Cliente').AsInteger   := cdspesquisa.FieldByName('Codigo').asInteger;

      cdsItensVendas.Close;
      cdsItensVendas.ProviderName := dspVariavel.name;
      cdsItensVendas.Open;
   End
   Else if pagCadastro.ActivePageIndex = 5 Then   // Vendas e itens de vendas consulta
   Begin

      pnlBloqueado.Visible := False;
      if cdspesquisa.FieldByName('Status').AsString = '2' then
         pnlBloqueado.Visible := True;

      qryvariavel.Close;
      qryvariavel.SQL.Text := 'Select Fun.Descricao as Nome_Vendedor, Cli.Descricao, Cli.CnpjCpf, Rec.* from T_CtasReceber Rec '+
                              'left join T_vendas Ped on ped.seqvenda=Rec.seqvenda '+
                              'Left Join T_Funcionarios Fun on Fun.Codigo=Ped.Cod_Funcionario '+
                             ' Left Join T_Clientes  Cli on Cli.Codigo=Rec.Cod_Cliente '+
                              'where  Rec.Cod_cliente=:parCod_Cliente '+
                              'Order by Rec.data_Vencimento ';
      qryvariavel.ParamByName('parCod_Cliente').AsInteger   := cdspesquisa.FieldByName('Codigo').asInteger;

      cdsCtasReceber.Close;
      cdsCtasReceber.ProviderName := dspvariavel.Name;
      cdsCtasReceber.Open;

   End
   Else If pagCadastro.ActivePageIndex = 7 Then
      MostraPesquisa(2)
   Else if pagCadastro.ActivePageIndex = 8  Then
   Begin
      cmbPeriodoChange(cmbPeriodo);
      pdSaldoConta := 0;
   End;

End;

procedure TfrmCadClientes.btnPesquisa_CNPJCPFClick(Sender: TObject);
var lswhere      : String;
    lsOcorrencia : String;
begin

   if Trim(EdtPesq_cnpjcpf.text)='' then
   begin
      CaixaMensagem( 'O CPF/CNPJ Não pode ser vazio ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   if edtCod_Funcionario.Text='' then
   Begin
      CaixaMensagem( 'Informe o solicitante ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   lsOcorrencia := '';

   EdtPesq_cnpjcpf.EditMask := '';
   EdtPesq_cnpjcpf.Text     := SubstString( Trim( EdtPesq_cnpjcpf.Text ), ';,/-.', '' );

   If Length( EdtPesq_cnpjcpf.Text ) <= 11 then
   Begin
      lblCNPJCPF.Caption   := 'C.P.F.';
      EdtPesq_cnpjcpf.EditMask := '###.###.###-##;0;_';
      if not CPF_Check( EdtPesq_cnpjcpf.Text ) then
         lsOcorrencia := ' CPF Invalido ';
   End
   else
   begin
      lblCNPJCPF.Caption   := 'C.N.P.J.';
      EdtPesq_cnpjcpf.EditMask := '##.###.###/####-##;0;_';
      if not CNPJ_Check( EdtPesq_cnpjcpf.Text ) then
         lsOcorrencia := ' CNPJ Invalido ';
   End;
   lswhere := 'Where cnpjcpf =:parCnpjCpf ';

   qrypesquisa.Close;
   qryPesquisa.Params.Clear;
   qryPesquisa.sql.text := 'Select * from T_Clientes '+lswhere ;
   qryPesquisa.ParamByName('parCnpjCpf').AsString := EdtPesq_cnpjcpf.Text;

   cdspesquisa.Close;
   cdspesquisa.ProviderName :=dspPEsquisa.Name;
   cdspesquisa.Open;



   qryValidaCPFCNPJ.Close;

   qryValidaCPFCNPJ.SQL.Text := 'Select * from T_ValidaCNPJCPF where 1=2';

   cdsValidaCPFCNPJ.Close;
   cdsValidaCPFCNPJ.Params.Clear;
   cdsValidaCPFCNPJ.ProviderName := dspValidaCPFCNPJ.Name;
   cdsValidaCPFCNPJ.Open;

   cdsValidaCPFCNPJ.Append;
   cdsValidaCPFCNPJ.FieldByName('Operador').AsString := gsOperador;

   if cdsPesquisa.IsEmpty then
   Begin
      cdsValidaCPFCNPJ.FieldByName('Ocorrencia').AsString  := ' Cliente não ncontrado ('+lsOcorrencia+')';
   End
   Else
   Begin
      cdsValidaCPFCNPJ.FieldByName('Cod_Cliente').AsInteger := cdsPesquisa.FieldByName('Codigo').AsInteger;
      if AnsiUpperCase(TemVendaAberta(cdspesquisa.FieldByName('Codigo').AsString)) <> AnsiUpperCase('Nada Consta') Then
         cdsValidaCPFCNPJ.FieldByName('Ocorrencia').AsString  := 'Pendencia Financeira. Numero do Controle '+TemVendaAberta(cdspesquisa.FieldByName('Codigo').AsString)
      Else
         cdsValidaCPFCNPJ.FieldByName('Ocorrencia').AsString  := 'Nada Consta ';
      if cdspesquisa.FieldByName('Status').Asinteger <> 0 then
         cdsValidaCPFCNPJ.FieldByName('Ocorrencia').AsString  := 'Este Cliente esta .: '+cdspesquisa.FieldByName('Nome_Status').AsString;
   End;
   cdsValidaCPFCNPJ.FieldByName('Cod_Emp').AsString         := gsCod_emp;
   cdsValidaCPFCNPJ.FieldByName('Data_Cad').AsDateTime      := Now;
   cdsValidaCPFCNPJ.FieldByName('Data_Mov').AsDateTime      := gsData_mov;
   cdsValidaCPFCNPJ.FieldByName('Cod_Solicitante').AsString := edtCod_Funcionario.Text;
   cdsValidaCPFCNPJ.FieldByName('Sequencia').AsInteger      := StrToInt(Sequencia('Sequencia',False,'T_ValidaCNPJCPF',FrmPrincipal.dbxPrincipal,'',False,8) );
   cdsValidaCPFCNPJ.FieldByName('cnpjcpf').AsString         := EdtPesq_cnpjcpf.text;

   cdsValidaCPFCNPJ.Post;
   cdsValidaCPFCNPJ.ApplyUpdates(-1);

   MostraPesquisa(2);

   EdtPesq_cnpjcpf.EditMask := '';
   EdtPesq_cnpjcpf.SetFocus
end;

procedure TfrmCadClientes.EdtPesq_cnpjcpfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if KEY=13 then
      btnPesquisa_CNPJCPFClick(btnPesquisa_CNPJCPF);
end;

procedure TfrmCadClientes.AtualizaRecClick(Sender: TObject);
var ldSaldo : Double;
begin
   qryvariavel.Close;
   qryvariavel.Params.Clear;
   qryvariavel.SQL.Text :='Select D_C, Sum(Valor) as Total from T_Contacorrente where Cod_Cliente=:parCod_Cliente  '+
                          'group by D_C';
   qryvariavel.ParamByName('parCod_Cliente').AsInteger      := cdspesquisa.FieldByName('Codigo').asInteger;

   cdsTemp.close;
   cdsTemp.ProviderName := dspvariavel.Name;
   cdsTemp.Open;
   ldSaldo := 0 ;
   while not cdsTemp.Eof do
   Begin
      if cdsTemp.FieldByname('D_C').AsString = 'C' then
         ldSaldo := ldSaldo + cdsTemp.FieldByname('Total').AsFloat;
      if cdsTemp.FieldByname('D_C').AsString = 'D' then
         ldSaldo := ldSaldo - cdsTemp.FieldByname('Total').AsFloat;
      cdsTemp.Next;
   End;
   edtSaldo.Text := FormatFloat('0.00',ldSaldo);
   edtSaldo.Font.Color := clNavy;
   lblSaldo.Caption := 'Credor';
   if ldSaldo< 0 then
   Begin
      edtSaldo.Font.Color := ClRed;
      lblSaldo.Caption := 'Devedor';
   End;

   qryvariavel.Close;
   qryvariavel.Params.Clear;
   qryvariavel.SQL.Text :='Select * from T_Contacorrente where Cod_Cliente=:parCod_Cliente '+
                          ' AND ( Data_Cad>=:parData_CadIni And Data_Cad<=:parData_CadFim ) ';
   qryvariavel.ParamByName('parCod_Cliente').AsInteger      := cdspesquisa.FieldByName('Codigo').asInteger;
   qryvariavel.ParamByName('parData_CadIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   qryvariavel.ParamByName('parData_CadFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');

   cdsContaCorrente.close;
   cdsContaCorrente.ProviderName := dspvariavel.Name;
   cdsContaCorrente.Open;

   pdSaldoConta := 0;
end;

procedure TfrmCadClientes.btnAdicionaDescontoClick(Sender: TObject);
begin
   if Trim(edtCod_Produto.text)='' then
   Begin
      CaixaMensagem( 'Selecione o produto ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   IF cdsClientesDescontos.locate('Cod_Produto',edtCod_Produto.Text,[]) Then
   Begin
      CaixaMensagem( 'O produto ja foi informado ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   qryClientesDescontos.Close;
   qryClientesDescontos.Params.Clear;
   qryClientesDescontos.Sql.Text :='Select *  From T_ClientesDescontos ';

   cdsClientesDescontos.Close;
   cdsClientesDescontos.ProviderName := dspClientesDescontos.name;
   cdsClientesDescontos.Open;

   cdsClientesDescontos.Append;
   cdsClientesDescontos.FieldByName('Cod_Produto').AsInteger      := Strtoint(edtCod_Produto.Text);
   cdsClientesDescontos.FieldByName('Cod_Cliente').AsInteger      := cdspesquisa.FieldByName('Codigo').AsInteger;
   cdsClientesDescontos.FieldByName('Qtde_Minima').AsFloat        := StrTofloat(edtQtde_Minima.Text);
   cdsClientesDescontos.FieldByName('Cod_Emp').AsString           := gsCod_emp;
   cdsClientesDescontos.FieldByName('Operador').AsString          := GsOperador;
   cdsClientesDescontos.FieldByName('Data_Cad').AsDatetime        := Now;
   cdsClientesDescontos.FieldByName('Perc_Desconto').AsFloat      := StrTofloat(edtPerc_Desconto.Text);
   cdsClientesDescontos.Post;
   cdsClientesDescontos.ApplyUpdates(-1);

   MostraPesquisa(1);
end;

procedure TfrmCadClientes.btnAdicionarClick(Sender: TObject);
begin
   IF cdspesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   sdtsOcorrencias.Append;
   sdtsOcorrencias.FieldByName('Cod_Cliente').AsInteger := cdspesquisa.FieldByName('Codigo').asInteger;
   sdtsOcorrencias.FieldByName('Ocorrencia').AsString   := edtOcorrencia.Text;
   sdtsOcorrencias.FieldByName('Data_Cad').AsDateTime   := now;
   sdtsOcorrencias.FieldByName('Operador').AsString     := gsOperador;
   sdtsOcorrencias.FieldByName('Cod_Emp').AsString      := gsCod_emp;
   sdtsOcorrencias.FieldByName('Sequencia').Asinteger   := StrtoInt( Sequencia('Sequencia',False,'T_Ocorrencias',FrmPrincipal.dbxPrincipal,'',False,8));
   sdtsOcorrencias.post;
   sdtsOcorrencias.ApplyUpdates(-1);
   edtOcorrencia.Text := '';
end;

procedure TfrmCadClientes.cmbCod_RotaChange(Sender: TObject);
begin
   cmbNome_Rota.KeyValue := cmbCod_Rota.KeyValue;
end;

procedure TfrmCadClientes.cmbCod_VendedorChange(Sender: TObject);
begin
   cmbNome_Vendedor.KeyValue := cmbCod_Vendedor.KeyValue;
end;

procedure TfrmCadClientes.cmbNome_RotaChange(Sender: TObject);
begin
   cmbCod_Rota.KeyValue := cmbNome_Rota.KeyValue;
end;

procedure TfrmCadClientes.cmbNome_VendedorChange(Sender: TObject);
begin
   cmbCod_Vendedor.KeyValue := cmbNome_Vendedor.KeyValue;
end;

procedure TfrmCadClientes.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmCadClientes.edtCnpjCpfExit(Sender: TObject);
var lsCopia : String;
begin
   edtCNPJCPF.EditMask := '';
   edtCNPJCPF.Text     := SubstString( Trim( edtCNPJCPF.Text ), ';,/-.', '' );

   If Trim( pvsCNPJCPF ) <> edtCNPJCPF.Text Then
   Begin
      lsCopia := VerCopia( edtCNPJCPF.Text, 'CNPJCPF', 'T_Clientes', frmPrincipal.dbxPrincipal, gsCod_Emp, 'Codigo' );
      If lsCopia <> '' Then
      Begin
         CaixaMensagem( 'Este CNPJ/CPF já está cadastrado no código ' + lsCopia, ctAviso, [ cbOk ], 0 );
         Exit;
      End;
   End;

   if Length( edtCNPJCPF.Text ) <= 11 then
   begin
      lblCNPJCPF.Caption   := 'C.P.F.';
      edtCNPJCPF.EditMask := '###.###.###-##;0;_';

      if not CPF_Check( edtCNPJCPF.Text ) then
      begin
         CaixaMensagem( 'CPF ' + Trim( edtCNPJCPF.Text ) + ' inválido', ctAviso, [ cbOk ], 0 );
         exit;
      end;
     {
      if Trim( edtInscEst.Text ) <> 'ISENTO' then
      begin
         if CaixaMensagem( 'Deseja preencher a Inscrição Estadual com "ISENTO" ?', ctConfirma, [ cbSimNao ], 0 ) then
            edtInscEst.Text := 'ISENTO';
      end;
      }
   end
   else
   begin
      lblCNPJCPF.Caption   := 'C.N.P.J.';
      edtCNPJCPF.EditMask := '##.###.###/####-##;0;_';

      if not CNPJ_Check( edtCNPJCPF.Text ) then
      begin
         CaixaMensagem( 'CNPJ ' + Trim( edtCNPJCPF.Text ) + ' inválido', ctAviso, [ cbOk ], 0 );
         exit;
      end;
   end;
end;

procedure TfrmCadClientes.edtCod_FuncionarioExit(Sender: TObject);
begin
   if trim(edtCod_Funcionario.text)<>'' then
   Begin
      cmbCod_Funcionario.KeyValue := StrToInt(edtCod_Funcionario.text);
      cmbCod_FuncionarioChange(cmbCod_Funcionario);
      if Trim(cmbNome_Funcionario.Text) = '' Then
      Begin
         cmbNome_Funcionario.KeyValue := Null;
         edtCod_Funcionario.Text      := '';
         CaixaMensagem( 'Vendedor nao localizado', ctAviso, [ cbOk ], 0 );
      End;
   End;
end;

procedure TfrmCadClientes.edtCod_ProdutoExit(Sender: TObject);
begin
 if Trim(edtCod_produto.text) <> '' Then
   Begin
      cmbNome_Produto.KeyValue :=  edtCod_Produto.Text;
      if trim(cmbNome_Produto.text) = '' Then
      Begin
         CaixaMensagem( 'Produto não encontrado ', ctAviso, [ cbOk ], 0 );
         edtCod_Produto.Setfocus;
      End;
   End;
end;

procedure TfrmCadClientes.edtCidadeExit(Sender: TObject);
VAR lsCopia : String;
begin
   lsCopia := '';
   lsCopia := VerCopia( Trim(edtEndereco.Text), 'Endereco', 'T_Clientes', frmPrincipal.dbxPrincipal, gsCod_Emp, 'Codigo' );
   If lsCopia <> '' Then
   Begin
      lsCopia := '';
      lsCopia := VerCopia( Trim(edtCidade.Text), 'Cidade', 'T_Clientes', frmPrincipal.dbxPrincipal, gsCod_Emp, 'Codigo' );
      If lsCopia <> '' Then
      Begin
         CaixaMensagem( 'Endereco já cadastrado código ' + inczero(lsCopia,5), ctAviso, [ cbOk ], 0 );
         if AnsiUpperCase(TemVendaAberta(cdspesquisa.FieldByName('Codigo').AsString)) <> AnsiUpperCase('Nada Consta') Then
            CaixaMensagem( 'Cliente tem compra em aberto Controle '+TemVendaAberta(cdspesquisa.FieldByName('Codigo').AsString), ctAviso, [ cbOk ], 0 );
      End;
   End;
end;

procedure TfrmCadClientes.edtCnpjCpfEnter(Sender: TObject);
begin
   edtCNPJCPF.EditMask := '';
   edtCNPJCPF.SelectAll;
end;

procedure TfrmCadClientes.GridClintesDblClick(Sender: TObject);
begin
   if frmcadclientes.Tag=5 Then
   Begin
      piCod_Produto := cdspesquisa.FieldByName('Codigo').AsInteger;
      Close;
   End;
end;

procedure TfrmCadClientes.GridCtasReceberCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  IF aviewinfo.GridRecord.Values[colum_status.Index]='A Receber' Then
     acanvas.Font.color := clred
  Else if aviewinfo.GridRecord.Values[colum_status.Index]='Pago' Then
     acanvas.Font.color := clGreen
  Else if aviewinfo.GridRecord.Values[colum_status.Index]='Cancelado'  Then
     acanvas.Font.color := clBlue;

  IF aviewinfo.GridRecord.Values[Columm_Dias.Index]>60 Then
  Begin
     acanvas.Brush.color := clRed;
     acanvas.Font.color  := clblack;
  End
  Else IF aviewinfo.GridRecord.Values[Columm_Dias.Index]>30 Then
  Begin
     acanvas.Brush.color := clYellow;
     acanvas.Font.color  := clblack;
  End;

end;

procedure TfrmCadClientes.impMatricialNewPage(Sender: TObject; Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), Pagina );
   pviLinha := 06;
   Case pitipoRel Of
      1 : // Lista negra dos clientes
      Begin
         TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                       Endereco ');
         pviLinha:=Pvilinha+1;
         TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
      End;
      2 : // Relatori de clientes que podem vender
      Begin
         TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                       Endereco                                  Bairro                     Tot.Venda Vlr. Recebido     Nº Venda ');
         pviLinha:=Pvilinha+1;
         TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',135,0));
         pviLinha:=Pvilinha+1;

      End;
   End;
end;

procedure TfrmCadClientes.InitFonts;
var
  I, J: Integer;
begin
  for I:=0 to High(FFonts) do
    for J:=0 to High(FFonts[I]) do
      FFonts[I, J] := TFont.Create;
end;

end.

