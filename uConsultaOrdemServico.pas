 unit uConsultaOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls,
  bsSkinBoxCtrls, StdCtrls, Mask, EditNew, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, FMTBcd, DBClient, Provider, SqlExpr,SqlTimSt, BusinessSkinForm,
  cxPropertiesStore, bsSkinTabs, bsdbctrls, bsSkinGrids, bsDBGrids, RpRave,
  RpBase, RpSystem, RpDefine, RpCon, RpConDS, Menus, bsSkinMenus, RpRender,
  RpRenderPDF, RDprint;

type
  TfrmConsultaOrdemServico = class(TForm)
    bsSkinStatusBar1: TbsSkinStatusBar;
    panelconsulta: TbsSkinPanel;
    lblsituacao: TbsSkinStdLabel;
    lblTurma: TbsSkinStdLabel;
    cmbStatus: TbsSkinComboBox;
    cmbTipoFiltro: TbsSkinComboBox;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    cmbTipoData: TbsSkinComboBox;
    edtPesquisa: TbsSkinEdit;
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnabrios: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    cmbPeriodo: TbsSkinComboBox;
    QryOrdemServico: TSQLQuery;
    dspOrdemServico: TDataSetProvider;
    srcOrdemServico: TDataSource;
    cdsOrdemServico: TClientDataSet;
    btnTudo: TbsSkinButton;
    bsSkinSpeedButton3: TbsSkinSpeedButton;
    bsSkinSpeedButton4: TbsSkinSpeedButton;
    bsSkinBevel4: TbsSkinBevel;
    bsSkinSpeedButton5: TbsSkinSpeedButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinTabSheet1: TbsSkinTabSheet;
    gridOS: TcxGrid;
    GrdVendas: TcxGridDBTableView;
    Colum_NomeStatus: TcxGridDBColumn;
    Colum_SeqOS: TcxGridDBColumn;
    colum_OS_informada: TcxGridDBColumn;
    Colum_Data_os: TcxGridDBColumn;
    colum_Data_Agendada: TcxGridDBColumn;
    Colum_Cod_Clientes: TcxGridDBColumn;
    Colum_Descricao: TcxGridDBColumn;
    Colum_Tecnico: TcxGridDBColumn;
    Colum_Natureza: TcxGridDBColumn;
    column_Tipo_OS: TcxGridDBColumn;
    Column_Prioridade: TcxGridDBColumn;
    Colum_Operador: TcxGridDBColumn;
    Column_Vlr_os: TcxGridDBColumn;
    GrdItensVendas: TcxGridDBTableView;
    Colum_Codigo: TcxGridDBColumn;
    Colum_Descrisao: TcxGridDBColumn;
    Colum_Quantidade: TcxGridDBColumn;
    Colum_PcoVenda: TcxGridDBColumn;
    Colum_Desconto: TcxGridDBColumn;
    Colum_VlrTotal: TcxGridDBColumn;
    Colum_Complemento: TcxGridDBColumn;
    gridOSLevel1: TcxGridLevel;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    panelExecultado: TbsSkinExPanel;
    Memoexecultado: TbsSkinDBMemo2;
    PanelSolicitado: TbsSkinExPanel;
    dspVariavel: TDataSetProvider;
    qryVariavel: TSQLQuery;
    PanelUtilizado: TbsSkinExPanel;
    srcHistoricoOS: TDataSource;
    cdsHistoricoOS: TClientDataSet;
    MemoSolicitado: TbsSkinMemo;
    pgGeral: TbsSkinPageControl;
    qryModific: TSQLQuery;
    Collum_Bairro: TcxGridDBColumn;
    cdsMaterialUtilizado: TClientDataSet;
    srcMaterialUtilizado: TDataSource;
    cxGrid1: TcxGrid;
    gridMaterial: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Columm_Codigo: TcxGridDBColumn;
    Column_Descricao: TcxGridDBColumn;
    Column_Pco_Venda: TcxGridDBColumn;
    Column_Total_Item: TcxGridDBColumn;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinExPanel3: TbsSkinExPanel;
    MemoHistorico: TMemo;
    Splitter1: TSplitter;
    Column_Nome_Status: TcxGridDBColumn;
    Column_Operdor: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Column_Operador: TcxGridDBColumn;
    Column_Data_cad: TcxGridDBColumn;
    Column_Ocorrencia: TcxGridDBColumn;
    RvDataItens: TRvDataSetConnection;
    dscOrdemServico: TRvDataSetConnection;
    SystemOrdemServico: TRvSystem;
    rvOrdemServico: TRvProject;
    cdsOrdemServicoDescricao: TStringField;
    cdsOrdemServicoBairro: TStringField;
    cdsOrdemServicoTelefone: TStringField;
    cdsOrdemServicoCep: TStringField;
    cdsOrdemServicoEndereco: TStringField;
    cdsOrdemServicoCnpjCpf: TStringField;
    cdsOrdemServicoCidade: TStringField;
    cdsOrdemServicoNome_Tecnico: TStringField;
    cdsOrdemServicoCod_Emp: TStringField;
    cdsOrdemServicoData_cad: TSQLTimeStampField;
    cdsOrdemServicoData_Atu: TSQLTimeStampField;
    cdsOrdemServicoData_Mov: TSQLTimeStampField;
    cdsOrdemServicoOperador: TStringField;
    cdsOrdemServicoSeqOS: TIntegerField;
    cdsOrdemServicoOS_Informada: TIntegerField;
    cdsOrdemServicoCod_Cliente: TIntegerField;
    cdsOrdemServicoStatus: TStringField;
    cdsOrdemServicoTipo_OS: TStringField;
    cdsOrdemServicoNivel_Atendimento: TStringField;
    cdsOrdemServicoTipo_Servico: TStringField;
    cdsOrdemServicoData_Agendada: TSQLTimeStampField;
    cdsOrdemServicoCod_Funcionario: TIntegerField;
    cdsOrdemServicoDesc_servico: TStringField;
    cdsOrdemServicoDesc_Execultado: TStringField;
    cdsOrdemServicovlr_OS: TFloatField;
    cdsOrdemServicocod_Auxiliar: TIntegerField;
    cdsOrdemServicodata_inicio: TSQLTimeStampField;
    cdsOrdemServicoData_fim: TSQLTimeStampField;
    cdsOrdemServicoResponsavel_Quality: TStringField;
    cdsOrdemServicoAvaliacao: TIntegerField;
    cdsOrdemServiconome_Tipo_OS: TStringField;
    cdsOrdemServicoNome_Tipo_Servico: TStringField;
    cdsMaterialUtilizadoCod_Produto: TIntegerField;
    cdsMaterialUtilizadoDescricao: TStringField;
    cdsMaterialUtilizadoPco_Venda: TFloatField;
    cdsMaterialUtilizadoTotal_Item: TFloatField;
    bsSkinPopupMenu1: TbsSkinPopupMenu;
    EnviarParaExcel1: TMenuItem;
    RvRenderPDF1: TRvRenderPDF;
    Colum_Nome_Obra: TcxGridDBColumn;
    cdsOrdemServicoNome_Obra: TStringField;
    cdsOrdemServicoPto_Referencia: TStringField;
    cdsFuncionarios: TClientDataSet;
    cdsOrdemServicoNome_Auxiliar: TStringField;
    cdsMaterialUtilizadoOperador: TStringField;
    cdsMaterialUtilizadoSeqvenda: TIntegerField;
    Column_SeqVenda: TcxGridDBColumn;
    Column2_Data_cad: TcxGridDBColumn;
    cdsMaterialUtilizadoData_Cad: TSQLTimeStampField;
    pnlClientes: TbsSkinPanel;
    impMatricial: TRDprint;
    cdsOrdemServicoConsultor: TStringField;
    cdsOrdemServicoUF: TStringField;
    cdsOrdemServicoFax: TStringField;
    cdsOrdemServicoSolicitante: TStringField;
    Column_Solicitante: TcxGridDBColumn;
    cdsOrdemServicoPedido: TStringField;
    Column_Pedidos: TcxGridDBColumn;
    Column_Qtde_Venda: TcxGridDBColumn;
    cdsMaterialUtilizadoQtde_Venda: TFloatField;
    btnVisualizar: TbsSkinSpeedButton;
    procedure cmbPeriodoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTudoClick(Sender: TObject);
    procedure cdsOrdemServicoBeforeOpen(DataSet: TDataSet);
    procedure cdsOrdemServicoClcFields(DataSet: TDataSet);
    procedure btnFecharClick(Sender: TObject);
    procedure btnabriosClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure bsSkinPageControl1Change(Sender: TObject);
    procedure bsSkinSpeedButton3Click(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure bsSkinSpeedButton4Click(Sender: TObject);
    procedure bsSkinSpeedButton5Click(Sender: TObject);
    procedure cdsMaterialUtilizadoBeforeOpen(DataSet: TDataSet);
    procedure cdsMaterialUtilizadoCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaOrdemServico: TfrmConsultaOrdemServico;

implementation
uses ufuncoes,uprincipal, ufechaOS, uManutencaoOs, uSelMotivoStatus, uVendas;

{$R *.dfm}

procedure TfrmConsultaOrdemServico.bsSkinPageControl1Change(Sender: TObject);
begin
   if not cdsOrdemServico.IsEmpty then
   Begin
      pnlClientes.Caption := IncZero(cdsOrdemServico.FieldByName('Cod_Cliente').AsString,5)+' - '+cdsOrdemServico.FieldByName('Descricao').AsString;
      If pgGeral.ActivePageIndex = 1 Then
      Begin
         qryVariavel.Close;
         qryVariavel.Params.Clear;
         qryVariavel.SQL.text := 'Select * from T_HistoricoOs Where Seqos=:parSeqOs';
         qryVariavel.ParamByName('parSeqOs').asinteger := cdsOrdemServico.FieldByName('SeqOs').AsInteger;

         cdsHistoricoOS.Close;
         cdsHistoricoOS.ProviderName := dspVariavel.Name;
         cdsHistoricoOS.Open;

         MemoHistorico.Clear;
         while not cdsHistoricoOS.Eof do
         Begin
           MemoHistorico.Text  :=  MemoHistorico.Text +' '+cdsHistoricoOS.FieldByName('Historico').AsString;
           MemoHistorico.Lines.Add('----------------------------------------------------------------');
           cdsHistoricoOS.Next;
         End;
         MemoSolicitado.Clear;
         MemoSolicitado.Text := cdsOrdemServico.FieldByName('Desc_Servico').asString;
         Memoexecultado.Clear;
         Memoexecultado.Text := cdsOrdemServico.FieldByName('Desc_Execultado').asString;

         QryVariavel.Close;
         QryVariavel.Params.Clear;
         QryVariavel.Sql.Text:= 'select Itens.Cod_Produto, Prod.Descricao, Itens.Qtde_Venda, Itens.Operador,'+
                                'Itens.Pco_Venda, (Itens.Qtde_Venda * Itens.Pco_Venda) as Total_Item, Itens.SeqVenda, '+
                                'Itens.Data_Cad '+
                                'from T_vendas Ven '+
                                '     inner Join T_itensvendas itens on' +
                                '           Itens.SeqVenda=Ven.SeqVenda '+
                                '      left join T_produtos prod on  '+
                                '           Prod.Codigo=Itens.Cod_Produto '+
                                'where ven.SeqOS=:parSeqOs';
         QryVariavel.ParamByName('parSeqOs').AsInteger := cdsOrdemServico.FieldByName('SeqOs').AsInteger;

         cdsMaterialUtilizado.Close;
         cdsMaterialUtilizado.ProviderName := dspVariavel.Name;
         cdsMaterialUtilizado.Open;

      End;
   End;
end;

procedure TfrmConsultaOrdemServico.bsSkinSpeedButton3Click(Sender: TObject);
var liseqOs : Integer;
begin
   if cdsOrdemServico.IsEmpty then
   Begin
      CaixaMensagem( 'Nenhuma O.S Foi selecionada', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   liseqos := cdsOrdemServico.FieldByName('SeqOs').AsInteger;

   if cdsOrdemServico.FieldByName('Status').AsString='M' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Esta em Atendimento. Não pode ser Agendada' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   if cdsOrdemServico.FieldByName('Status').AsString='C' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Esta Cancelada. Não pode ser Agendada' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   if cdsOrdemServico.FieldByName('Status').AsString='F' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Esta Fechada. Não pode ser Agendada' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   if cdsOrdemServico.FieldByName('Status').AsString='E' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Esta Aguardando Liberação' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   frmManutencaoOs := tfrmManutencaoOs.create(Self);
   frmManutencaoOs.Tag := 2;
   frmManutencaoOs.edtCod_Cliente.text := cdsOrdemServico.FieldByName('Cod_Cliente').AsString ;
   frmManutencaoOs.edtNumeroOS.text := incZero(cdsOrdemServico.FieldByName('Seqos').AsString,8);
   frmManutencaoOs.edtCNPJCPF.text := cdsOrdemServico.FieldByName('CNPJCPF').AsString;
   frmManutencaoOs.edtData_Atendimento.Visible := True;
   frmManutencaoOs.edtHoraAtendimento.Visible  := True;
   frmManutencaoOs.lbldataHora.Visible         := True;
   frmManutencaoOs.edtData_Atendimento.Date := cdsOrdemServico.FieldByName('Data_Agendada').AsDateTime;
   frmManutencaoOs.edtHoraAtendimento.Text  := FormatDateTime('hh:mm:ss',cdsOrdemServico.FieldByName('Data_Agendada').AsDateTime);
   frmManutencaoOs.lbReagendamento          := (Not cdsOrdemServico.FieldByName('Data_Agendada').IsNull);
   frmManutencaoOs.edtcod_Tecnico.Text      := cdsOrdemServico.FieldByName('Cod_Funcionario').AsString;
   frmManutencaoOs.edtcod_TecnicoExit(frmManutencaoOs.edtcod_Tecnico);
   frmManutencaoOs.edtCod_Auxiliar.Text     := cdsOrdemServico.FieldByName('Cod_Auxiliar').AsString;
   frmManutencaoOs.edtCod_AuxiliarExit(frmManutencaoOs.edtCod_Auxiliar);
   //frmManutencaoOs.edtTotalOs.Text := FormatFloat('0.00',cdsOrdemServico.FieldByName('vlr_Os').AsFloat);
   frmManutencaoOs.edtnome_Cliente.text := cdsOrdemServico.FieldByName('Descricao').AsString;
   frmManutencaoOs.edtOs_Informada.text := incZero(cdsOrdemServico.FieldByName('Os_Informada').AsString,8);
   frmManutencaoOs.cmbNivel_Atendimento.ItemIndex := cdsOrdemServico.FieldByName('Nivel_Atendimento').AsInteger;
   frmManutencaoOs.showModal;

   btnTudoClick(btnTudo);
   cdsOrdemServico.locate('SeqOs',liSeqOs,[]);
end;

procedure TfrmConsultaOrdemServico.bsSkinSpeedButton4Click(Sender: TObject);
var liseqOs : Integer;
begin
   if cdsOrdemServico.IsEmpty then
   Begin
      CaixaMensagem( 'Nenhuma O.S Foi selecionada', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   liseqos := cdsOrdemServico.FieldByName('SeqOs').AsInteger;
   if cdsOrdemServico.FieldByName('Status').AsString<>'E' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Não esta em liberação' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   {$REGION 'Gravando Historico da OS'}

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select * from T_HistoricoOS where 1=2 ';

   cdsHistoricoOs.Close;
   cdsHistoricoOs.ProviderName := dspVariavel.Name;
   cdsHistoricoOs.open;

   frmMotivoStatus := TfrmMotivoStatus.Create(Self);
   frmMotivoStatus.ShowModal;

   IF frmMotivoStatus.tag <> 1 Then
   Begin
      freeandnil(frmMotivoStatus);
      Exit;
   End;

   cdsHistoricoOs.Append;
   cdsHistoricoOs.FieldByName('Cod_Emp').asString    := gsCod_Emp;
   cdsHistoricoOs.FieldByName('Operador').asString   := GsOperador;
   cdsHistoricoOs.FieldByName('SeqOS').asInteger     := StrtoInt(cdsOrdemServico.FieldByname('SeqOs').AsString);
   cdsHistoricoOs.FieldByName('Data_cad').asDateTime := now;
   cdsHistoricoOs.FieldByName('Data_Mov').asDateTime := GsData_mov;
   cdsHistoricoOs.FieldByName('Ocorrencia').asString := 'A O.S. '+cdsOrdemServico.FieldByname('SeqOs').AsString+' foi LIBERADA ';
   cdsHistoricoOs.FieldByName('Historico').asString  := 'Obs... : '+ frmMotivoStatus.MemoMotivoStatus.Text;
   cdsHistoricoOs.Post;
   cdsHistoricoOs.ApplyUpdates(-1);
   freeandnil(frmMotivoStatus);

   {$ENDREGION}

   {$REGION 'Atualizando Ordem de Serviço'}

   qrymodific.Close;
   qrymodific.Params.Clear;
   qrymodific.Sql.Text := 'Update T_OrdemServico set Status=:parStatus where SeqOs=:parSeqOs ';
   qrymodific.ParamByName('parSeqOS').AsInteger   := Strtoint(cdsOrdemServico.FieldByName('SeqOs').AsString);
   qrymodific.ParamByName('parStatus').AsString   := 'A';
   qrymodific.ExecSQL;

   {$ENDREGION}

   CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Esta liberada para atendimento' , ctAviso, [ cbOk ], 0 );

   btnTudoClick(btnTudo);
   cdsOrdemServico.locate('SeqOs',liSeqOs,[]);

end;

procedure TfrmConsultaOrdemServico.bsSkinSpeedButton5Click(Sender: TObject);
var liseqOs : Integer;
begin
   if cdsOrdemServico.IsEmpty then
   Begin
      CaixaMensagem( 'Nenhuma O.S Foi selecionada', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if cdsOrdemServico.IsEmpty then
   Begin
      CaixaMensagem( 'Nenhuma O.S Foi selecionada', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   liseqos := cdsOrdemServico.FieldByName('SeqOs').AsInteger;

   if Trim(cdsOrdemServico.FieldByName('nome_Tecnico').AsString) = '' Then
   Begin
      CaixaMensagem( 'O tecnico tem que ser informado Antes de inserir o material', ctAviso, [ cbOk ], 0 );
      Exit;
   End;


   if cdsOrdemServico.FieldByName('Status').AsString = 'F' Then
   Begin
      CaixaMensagem( 'Pedido ja finalizado', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   FrmVendas                            := TfrmVendas.create(Self);
   frmvendas.Tag                        := 5; // Servicos e material utilizaso
   FrmVendas.btnincluirClick(FrmVendas.btnincluir);
   FrmVendas.edtcod_Cliente.Text        := cdsOrdemServico.FieldByName('Cod_Cliente').AsString;
   FrmVendas.edtNome_Cliente.Text       := cdsOrdemServico.FieldByName('Descricao').AsString;
   frmvendas.edtCod_FormaPagamento.Text := '001';
   frmVendas.edtCod_Funcionario.Text    := cdsOrdemServico.FieldByName('Cod_Funcionario').AsString;
   FrmVendas.liseqos                    := cdsOrdemServico.FieldByName('SeqOS').AsInteger;
   FrmVendas.edtControle.Visible        := False;
   FrmVendas.lblControle.Visible        := False;
   FrmVendas.edtcod_ClienteExit(FrmVendas.edtcod_Cliente);
   FrmVendas.edtcod_FormaPagamentoExit(FrmVendas.edtcod_FormaPagamento);
   FrmVendas.edtcod_FuncionarioExit(FrmVendas.edtcod_Funcionario);
   frmVendas.Showmodal;

   btnTudoClick(btnTudo);
   cdsOrdemServico.locate('SeqOs',liSeqOs,[]);

end;

procedure TfrmConsultaOrdemServico.btnabriosClick(Sender: TObject);
var liseqos : Integer;
begin
   if cdsOrdemServico.IsEmpty then
   Begin
      CaixaMensagem( 'Nenhuma O.S Foi selecionada', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   liseqos := cdsOrdemServico.FieldByName('SeqOs').AsInteger;
   if cdsOrdemServico.FieldByName('Status').AsString<>'M' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' nao esta em Atendimento. não pode ser Fechada' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   if cdsOrdemServico.FieldByName('Status').AsString='E' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Esta Aguardando Liberação' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   frmFechaOs                      := tfrmFechaOs.create(Self);
   frmFechaOs.edtCod_Cliente.text  := cdsOrdemServico.FieldByName('Cod_Cliente').AsString ;
   frmFechaOs.edtNumeroOS.text     := incZero(cdsOrdemServico.FieldByName('Seqos').AsString,8);
   frmFechaOs.edtCod_Tecnico.text  := cdsOrdemServico.FieldByName('Cod_Funcionario').AsString ;
   frmFechaOs.edtNome_Tecnico.text := cdsOrdemServico.FieldByName('Nome_Tecnico').AsString ;
   frmFechaOs.edtCNPJCPF.text      := cdsOrdemServico.FieldByName('CNPJCPF').AsString;
   frmFechaOs.edtTotalOs.Text      := FormatFloat('0.00',cdsOrdemServico.FieldByName('vlr_Os').AsFloat);
   frmFechaOs.edtnome_Cliente.text := cdsOrdemServico.FieldByName('Descricao').AsString;
   frmFechaOs.edtOs_Informada.text := incZero(cdsOrdemServico.FieldByName('Os_Informada').AsString,8);
   frmFechaOs.showModal;


   btnTudoClick(btnTudo);
   cdsOrdemServico.locate('SeqOs',liSeqOs,[]);

end;

procedure TfrmConsultaOrdemServico.BtnCancelaClick(Sender: TObject);
var liseqOs : Integer;
begin
   if cdsOrdemServico.IsEmpty then
   Begin
      CaixaMensagem( 'Nenhuma O.S Foi selecionada', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   liseqos := cdsOrdemServico.FieldByName('SeqOs').AsInteger;

   if cdsOrdemServico.FieldByName('Status').AsString='F' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' esta Fechada e não pode ser Cancelada' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   {$REGION 'Gravando Historico da OS'}

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select * from T_HistoricoOS where 1=2 ';

   cdsHistoricoOs.Close;
   cdsHistoricoOs.ProviderName := dspVariavel.Name;
   cdsHistoricoOs.open;

   frmMotivoStatus := TfrmMotivoStatus.Create(Self);
   frmMotivoStatus.ShowModal;

   IF frmMotivoStatus.tag <> 1 Then
   Begin
      freeandnil(frmMotivoStatus);
      Exit;
   End;

   cdsHistoricoOs.Append;
   cdsHistoricoOs.FieldByName('Cod_Emp').asString    := gsCod_Emp;
   cdsHistoricoOs.FieldByName('Operador').asString   := GsOperador;
   cdsHistoricoOs.FieldByName('SeqOS').asInteger     := StrtoInt(cdsOrdemServico.FieldByname('SeqOs').AsString);
   cdsHistoricoOs.FieldByName('Data_cad').asDateTime := now;
   cdsHistoricoOs.FieldByName('Data_Mov').asDateTime := GsData_mov;
   cdsHistoricoOs.FieldByName('Ocorrencia').asString := 'A O.S. '+cdsOrdemServico.FieldByname('SeqOs').AsString+' foi CANCELADA ';
   cdsHistoricoOs.FieldByName('Historico').asString  := 'O motivo do Cancelamento foi : '+ frmMotivoStatus.MemoMotivoStatus.Text;
   cdsHistoricoOs.Post;
   cdsHistoricoOs.ApplyUpdates(-1);
   freeandnil(frmMotivoStatus);

   {$ENDREGION}

   {$REGION 'Atualizando Ordem de Serviço'}

   qrymodific.Close;
   qrymodific.Params.Clear;
   qrymodific.Sql.Text := 'Update T_OrdemServico set Status=:parStatus where SeqOs=:parSeqOs ';
   qrymodific.ParamByName('parSeqOS').AsInteger   := Strtoint(cdsOrdemServico.FieldByName('SeqOs').AsString);
   qrymodific.ParamByName('parStatus').AsString   := 'C';
   qrymodific.ExecSQL;

   {$ENDREGION}

   CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' foi cancelada com sucesso' , ctAviso, [ cbOk ], 0 );

   btnTudoClick(btnTudo);
   cdsOrdemServico.locate('SeqOs',liSeqOs,[]);
end;

procedure TfrmConsultaOrdemServico.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmConsultaOrdemServico.btnokClick(Sender: TObject);
var liseqOs : Integer;
     lilinha : Integer;
     lsMaterial : String;
begin
   if cdsOrdemServico.IsEmpty then
   Begin
      CaixaMensagem( 'Nenhuma O.S Foi selecionada', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   liseqos := cdsOrdemServico.FieldByName('SeqOs').AsInteger;

  {
   if cdsOrdemServico.FieldByName('Status').AsString='M' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Esta em Atendimento. Não pode ser Impressa' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   }
   if cdsOrdemServico.FieldByName('Status').AsString='C' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Esta Cancelada. Não pode ser Impressa' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   if cdsOrdemServico.FieldByName('Status').AsString='F' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Esta Fechada. Não pode ser Impressa' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   if cdsOrdemServico.FieldByName('Status').AsString='E' then
   Begin
      CaixaMensagem( 'A Ordem de Serviço '+cdsOrdemServico.FieldByName('SeqOs').AsString+' Esta Aguardando Liberação' , ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   frmManutencaoOs                          := TfrmManutencaoOs.create(Self);
   frmManutencaoOs.edtCod_Cliente.text      := cdsOrdemServico.FieldByName('Cod_Cliente').AsString ;
   frmManutencaoOs.edtNumeroOS.text         := incZero(cdsOrdemServico.FieldByName('Seqos').AsString,8);
   frmManutencaoOs.edtCNPJCPF.text          := cdsOrdemServico.FieldByName('CNPJCPF').AsString;
   frmManutencaoOs.edtData_Atendimento.Date := cdsOrdemServico.FieldByName('Data_Agendada').AsDateTime;
   frmManutencaoOs.edtHoraAtendimento.Text  := FormatDateTime('hh:mm:ss',cdsOrdemServico.FieldByName('Data_Agendada').AsDateTime);
   frmManutencaoOs.edtcod_Tecnico.Text      := cdsOrdemServico.FieldByName('Cod_Funcionario').AsString;
   frmManutencaoOs.edtcod_TecnicoExit(frmManutencaoOs.edtcod_Tecnico);
   frmManutencaoOs.edtCod_Auxiliar.Text     := cdsOrdemServico.FieldByName('Cod_Auxiliar').AsString;
   frmManutencaoOs.edtCod_AuxiliarExit(frmManutencaoOs.edtCod_Auxiliar);
   //frmManutencaoOs.edtOs.Text               := cdsOrdemServico.FieldByName('OS_Informada').AsString;
   //IF (not cdsOrdemServico.FieldByName('Data_Agendada').IsNull) Then
   //Begin
      frmManutencaoOs.edtData_Atendimento.Visible := False;
      frmManutencaoOs.edtHoraAtendimento.Visible  := False;
      frmManutencaoOs.lbldataHora.Visible         := False;
   //End;
   //frmManutencaoOs.edtTotalOs.Text := FormatFloat('0.00',cdsOrdemServico.FieldByName('vlr_Os').AsFloat);
   frmManutencaoOs.edtnome_Cliente.text := cdsOrdemServico.FieldByName('Descricao').AsString;
   //frmManutencaoOs.edtOs_Informada.text := incZero(cdsOrdemServico.FieldByName('Os_Informada').AsString,8);
   frmManutencaoOs.cmbNivel_Atendimento.ItemIndex := cdsOrdemServico.FieldByName('Nivel_Atendimento').AsInteger;
   frmManutencaoOs.showModal;


{$REGION 'Impressao da Ordem de Servico'}
   if frmManutencaoOs.Tag= 1  then
   Begin
   {
      QryOrdemServico.Close;
      QryOrdemServico.Params.Clear;
      QryOrdemServico.SQL.Text :='Select  Cli.Descricao,Cli.Bairro, Cli.Telefone, Cli.Cep, Cli.Endereco, '+
                                 '        Cli.CnpjCpf, Cli.Cidade, Cli.Pto_referencia, '+
                                 'Fun.Descricao as Nome_Tecnico, Aux.Descricao as Nome_Auxiliar,  OS.* '+
                                 'FROM T_OrdemServico OS  '+
                                 '     LEFT JOIN T_Clientes Cli On '+
                                 '          Cli.Codigo=OS.Cod_Cliente  '+
                                 '     LEFT JOIN T_funcionarios Fun On ' +
                                 '          Fun.Codigo = OS.Cod_Funcionario ' +
                                 '     LEFT JOIN T_funcionarios Aux On ' +
                                 '          Fun.Codigo = OS.Cod_Auxiliar ' +
                                 'WHERE SeqOs=:parSeqOs ';
      QryOrdemServico.ParamByName('parSeqOs').AsInteger := liseqos;

      cdsOrdemServico.Close;
      cdsOrdemServico.ProviderName := dspOrdemServico.name;
      cdsOrdemServico.Open;


      QryVariavel.Close;
      QryVariavel.Params.Clear;
      QryVariavel.Sql.Text:= 'select Itens.Cod_Produto, Prod.Descricao, Itens.Qtde_Venda, Itens.Operador,'+
                             'Itens.Pco_Venda, Itens.Qtde_Venda * Itens.Pco_Venda as Total_Item, Itens.SeqVenda, '+
                             'Itens.Data_Cad '+
                             'from T_vendas Ven '+
                             '     inner Join T_itensvendas itens on' +
                             '           Itens.SeqVenda=Ven.SeqVenda '+
                             '      left join T_produtos prod on  '+
                             '           Prod.Codigo=Itens.Cod_Produto '+
                             'where ven.SeqOS=:parSeqOs';
      QryVariavel.ParamByName('parSeqOs').AsInteger := cdsOrdemServico.FieldByName('SeqOs').AsInteger;

      cdsMaterialUtilizado.Close;
      cdsMaterialUtilizado.ProviderName := dspVariavel.Name;
      cdsMaterialUtilizado.Open;


      SystemOrdemServico.DefaultDest := rdPreview;

      rvOrdemServico.Close;
      rvOrdemServico.ProjectFile := gsPath+'Relatorios\Relatorio.rav';
      rvOrdemServico.Open;
      rvOrdemServico.Execute;
      rvOrdemServico.Close;
   }
   End;

{$ENDREGION}

{$REGION 'Impresao do pre-impresso'}
   if frmManutencaoOs.Tag= 1  then
   Begin
      QryOrdemServico.Close;
      QryOrdemServico.Params.Clear;
      QryOrdemServico.SQL.Text :='Select  Cli.Descricao,Cli.Bairro, Cli.Telefone, Cli.Cep, Cli.Endereco, Cli.UF, Cli.Fax,'+
                                 '        Cli.CnpjCpf, Cli.Cidade, Cli.Pto_referencia, Cli.Codigo, Consult.Descricao As Consultor,  '+
                                 'Fun.Descricao as Nome_Tecnico, Aux.Descricao as Nome_Auxiliar,  OS.* '+
                                 'FROM T_OrdemServico OS  '+
                                 '     LEFT JOIN T_Clientes Cli On '+
                                 '          Cli.Codigo=OS.Cod_Cliente  '+
                                 '     LEFT JOIN T_funcionarios Fun On ' +
                                 '          Fun.Codigo = OS.Cod_Funcionario ' +
                                 '     LEFT JOIN T_funcionarios Aux On ' +
                                 '          Fun.Codigo = OS.Cod_Auxiliar ' +
                                 '     LEFT JOIN T_funcionarios Consult On ' +
                                 '          Consult.Codigo = Cli.Cod_Funcionario ' +

                                 'WHERE SeqOs=:parSeqOs ';
      QryOrdemServico.ParamByName('parSeqOs').AsInteger := liseqos;

      cdsOrdemServico.Close;
      cdsOrdemServico.ProviderName := dspOrdemServico.name;
      cdsOrdemServico.Open;

      QryVariavel.Close;
      QryVariavel.Params.Clear;
      QryVariavel.Sql.Text:= 'select Itens.Cod_Produto, Prod.Descricao, Itens.Qtde_Venda, Itens.Operador,'+
                             'Itens.Pco_Venda, Itens.Qtde_Venda * Itens.Pco_Venda as Total_Item, Itens.SeqVenda, '+
                             'Itens.Data_Cad '+
                             'from T_vendas Ven '+
                             '     inner Join T_itensvendas itens on' +
                             '           Itens.SeqVenda=Ven.SeqVenda '+
                             '      left join T_produtos prod on  '+
                             '           Prod.Codigo=Itens.Cod_Produto '+
                             'where ven.SeqOS=:parSeqOs';
      QryVariavel.ParamByName('parSeqOs').AsInteger := cdsOrdemServico.FieldByName('SeqOs').AsInteger;

      cdsMaterialUtilizado.Close;
      cdsMaterialUtilizado.ProviderName := dspVariavel.Name;
      cdsMaterialUtilizado.Open;



      impMatricial.PortaComunicacao          := 'LPT1';
      impMatricial.OpcoesPreview.Preview     := False;
      impMatricial.OpcoesPreview.PreviewZoom := 100;
      impMatricial.TamanhoQteLinhas          := 68;
      impMatricial.TamanhoQteColunas         := 80;
      impMatricial.FonteTamanhoPadrao        := s10cpp;
      impMatricial.UsaGerenciadorImpr        := True;
   //   impMatricial.Impressora                := VerTipoImpressora;
      impMatricial.Abrir;
      lilinha := 2;
      impMatricial.Imp( lilinha, 070, incZero(cdsOrdemServico.FieldByName('SeqOS').AsString,8) );
      lilinha := lilinha + 3;
      //impMatricial.Imp( lilinha, 070, FormatDateTime( 'dd/mm/yy', now ) );
      lilinha := lilinha + 4;
      impMatricial.Imp( lilinha, 001, FormatDateTime( 'dd/mm/yy',cdsOrdemServico.FieldByName('Data_Mov').AsDateTime  ) );
      impMatricial.Imp( lilinha, 030, Copy(cdsOrdemServico.FieldByName('Pedido').AsString,1,30) );
      impMatricial.Imp( lilinha, 051, Copy(cdsOrdemServico.FieldByName('Consultor').AsString,1,30) );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, cdsOrdemServico.FieldByName('Cod_cliente').AsString + ' - ' + cdsOrdemServico.FieldByName('Descricao').AsString );
      impMatricial.Imp( lilinha, 042, cdsOrdemServico.FieldByName('Solicitante').AsString );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, cdsOrdemServico.FieldByName('Endereco').AsString );
      impMatricial.Imp( lilinha, 059, Copy(Trim(cdsOrdemServico.FieldByName('Telefone').AsString)+'/'+ Trim(cdsOrdemServico.FieldByName('Fax').AsString),1,20) );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, cdsOrdemServico.FieldByName('Bairro').AsString   );
      impMatricial.Imp( lilinha, 030, cdsOrdemServico.FieldByName('CEP').AsString );
      impMatricial.Imp( lilinha, 051, cdsOrdemServico.FieldByName('Cidade').AsString+'-'+cdsOrdemServico.FieldByName('UF').AsString   );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, cdsOrdemServico.FieldByName('cnpjCPF').AsString );
      lilinha := lilinha + 3;
      impMatricial.Imp( lilinha, 001, cdsOrdemServico.FieldByName('Pto_referencia').AsString   );
      impMatricial.Imp( lilinha, 050, cdsOrdemServico.FieldByName('Nome_Obra').AsString   );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 035, cdsOrdemServico.FieldByName('Nome_Tipo_OS').AsString   );
      if cdsOrdemServico.FieldByName('vlr_OS').AsFloat > 0 then
         impMatricial.Imp( lilinha, 053, FormatFloat(',0.00',cdsOrdemServico.FieldByName('vlr_OS').AsFloat))
      Else
         impMatricial.Imp( lilinha, 053, 'Conforme Pedido ');
      lilinha := lilinha + 4;
      // Dados do servico
      impMatricial.Imp( lilinha, 001, cdsOrdemServico.FieldByName('Nome_Tipo_Servico').AsString  );
     // impMatricial.Imp( lilinha, 001, RemoveAcentos(cdsOrdemServico.FieldByName('Nome_Tipo_Servico').AsString)   );

      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, cdsOrdemServico.FieldByName('Prioridade').AsString   );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, cdsOrdemServico.FieldByName('Nome_Tecnico').AsString   );
      if not cdsOrdemServico.FieldByName('Data_Agendada').IsNull then
      Begin
         impMatricial.Imp( lilinha, 054, FormatDateTime( 'dd/mm/yyyy',cdsOrdemServico.FieldByName('Data_Agendada').AsDateTime  ) );
         impMatricial.Imp( lilinha, 070, FormatDateTime( 'HH:MM',cdsOrdemServico.FieldByName('Data_Agendada').AsDateTime  ) );
      End;
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 010, 'Conforme Pedido ');
      lilinha := lilinha + 2;
      Quebralinha(cdsOrdemServico.FieldByName('Desc_servico').AsString,5,1,80);
      impMatricial.Imp( lilinha, 001, gxLinha[1] );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, gxLinha[2] );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, gxLinha[3] );
      lilinha := lilinha + 2;
      Quebralinha('',5,1,80);
     // Quebralinha(cdsOrdemServico.FieldByName('Desc_Execultado').AsString,5,1,80);
      impMatricial.Imp( lilinha, 001, gxLinha[1] );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, gxLinha[2] );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, gxLinha[3] );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, gxLinha[4] );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, gxLinha[5] );
      lilinha := lilinha + 2;
      cdsMaterialUtilizado.First;
      lsMaterial := '';
      while not cdsMaterialUtilizado.eof do
      Begin
         lsMaterial := lsMaterial + FormatFloat('0',cdsMaterialUtilizado.FieldByName('Qtde_Venda').AsFloat)+' '+cdsMaterialUtilizado.FieldByName('Descricao').AsString+' - ';
         cdsMaterialUtilizado.Next;
      End;
      Quebralinha(lsMaterial ,5,1,80);
      impMatricial.Imp( lilinha, 001, gxLinha[1] );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, gxLinha[2] );
      lilinha := lilinha + 2;
      impMatricial.Imp( lilinha, 001, gxLinha[3] );
      lilinha := lilinha + 4;
      impMatricial.Imp( lilinha, 001, ' .' );
      impMatricial.Fechar;
   End;

{$ENDREGION}

   btnTudoClick(btnTudo);
   cdsOrdemServico.locate('SeqOs',liSeqOs,[]);
end;

procedure TfrmConsultaOrdemServico.btnTudoClick(Sender: TObject);
begin

   QryOrdemServico.Close;
   QryOrdemServico.Params.Clear;
   QryOrdemServico.SQL.Text :='Select  Cli.Descricao,Cli.Bairro, Cli.Telefone, Cli.Cep, Cli.Endereco, Consult.Descricao as Consultor, '+
                              '        Cli.CnpjCpf, Cli.Cidade, Cli.Pto_referencia, Cli.UF, Cli.Fax, '+
                              'Fun.Descricao as Nome_Tecnico, OS.* '+
                              'FROM T_OrdemServico OS  '+
                              '     LEFT JOIN T_Clientes Cli On '+
                              '          Cli.Codigo=OS.Cod_Cliente  '+
                              '     LEFT JOIN T_funcionarios Fun On ' +
                              '          Fun.Codigo = OS.Cod_Funcionario '+
                              '     LEFT JOIN T_funcionarios Consult On ' +
                              '          Consult.Codigo = Cli.Cod_Funcionario ' ;

   QryOrdemServico.SQL.Text := QryOrdemServico.SQL.Text + ' WHERE ( OS.Data_Mov>=:parData_Ini And OS.Data_Mov<=:parData_Fim ) ';

   if cmbStatus.ItemIndex <> 0 Then
      QryOrdemServico.SQL.Text := QryOrdemServico.SQL.Text + ' AND OS.Status=:parStatus ';
   if cmbTipoFiltro.ItemIndex = 1 Then
      QryOrdemServico.SQL.Text := QryOrdemServico.SQL.Text + ' AND Cli.Descricao Like :parPesquisa ';
   if cmbTipoFiltro.ItemIndex = 2 Then
      QryOrdemServico.SQL.Text := QryOrdemServico.SQL.Text + ' AND OS.SeqOS=:parPesquisa ';
   if cmbTipoFiltro.ItemIndex = 3 Then
      QryOrdemServico.SQL.Text := QryOrdemServico.SQL.Text + ' AND Cli.cnpjcpf=:parPesquisa ';
   if cmbTipoFiltro.ItemIndex = 4 Then
      QryOrdemServico.SQL.Text := QryOrdemServico.SQL.Text + ' AND Os.Nome_Obra Like :parPesquisa ';
   if cmbTipoFiltro.ItemIndex = 5 Then
      QryOrdemServico.SQL.Text := QryOrdemServico.SQL.Text + ' AND Os.Pedido=:parPesquisa ';

   if(cmbTipoFiltro.ItemIndex = 1) Or (cmbTipoFiltro.ItemIndex = 4) Then
      QryOrdemServico.ParamByName('parPesquisa').AsString := '%'+edtPesquisa.Text+'%'
   else if cmbTipoFiltro.ItemIndex <> 0 Then
      QryOrdemServico.ParamByName('parPesquisa').AsString :=edtPesquisa.Text;

   Case cmbStatus.ItemIndex Of
        1 : QryOrdemServico.ParamByName('parStatus').AsString  := 'A';
        2 : QryOrdemServico.ParamByName('parStatus').AsString  := 'G';
        3 : QryOrdemServico.ParamByName('parStatus').AsString  := 'F';
        4 : QryOrdemServico.ParamByName('parStatus').AsString  := 'P';
        5 : QryOrdemServico.ParamByName('parStatus').AsString  := 'E';
        6 : QryOrdemServico.ParamByName('parStatus').AsString  := 'M';
        7 : QryOrdemServico.ParamByName('parStatus').AsString  := 'C';
   End;

   QryOrdemServico.ParamByName('parData_Ini').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   QryOrdemServico.ParamByName('parData_Fim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');

   cdsOrdemServico.Close;
   cdsOrdemServico.ProviderName := dspOrdemServico.name;
   cdsOrdemServico.Open;

end;

procedure TfrmConsultaOrdemServico.btnVisualizarClick(Sender: TObject);
begin
   if cdsOrdemServico.IsEmpty then
   Begin
      CaixaMensagem( 'Nenhuma O.S Foi selecionada', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmFechaOs                      := tfrmFechaOs.create(Self);
   frmFechaOs.edtCod_Cliente.text  := cdsOrdemServico.FieldByName('Cod_Cliente').AsString ;
   frmFechaOs.edtNumeroOS.text     := incZero(cdsOrdemServico.FieldByName('Seqos').AsString,8);
   frmFechaOs.edtCod_Tecnico.text  := cdsOrdemServico.FieldByName('Cod_Funcionario').AsString ;
   frmFechaOs.edtNome_Tecnico.text := cdsOrdemServico.FieldByName('Nome_Tecnico').AsString ;
   frmFechaOs.edtCNPJCPF.text      := cdsOrdemServico.FieldByName('CNPJCPF').AsString;
   frmFechaOs.edtTotalOs.Text      := FormatFloat('0.00',cdsOrdemServico.FieldByName('vlr_Os').AsFloat);
   frmFechaOs.edtnome_Cliente.text := cdsOrdemServico.FieldByName('Descricao').AsString;
   frmFechaOs.edtOs_Informada.text := incZero(cdsOrdemServico.FieldByName('Os_Informada').AsString,8);
   frmFechaOs.edtResponsavel.text := cdsOrdemServico.FieldByName('Responsavel_Quality').AsString;
   frmFechaOs.edtResponsavel.text := cdsOrdemServico.FieldByName('Responsavel_Quality').AsString;
   frmFechaOs.rdgAvaliacao.ItemIndex         := cdsOrdemServico.FieldByName('Avaliacao').asInteger;
   frmFechaOs.memoServicoExecultado.Text     := cdsOrdemServico.FieldByName('Desc_Execultado').AsString;
   frmFechaOs.btnok.Enabled       := False;
   frmFechaOs.btnPendente.Enabled := False;
   frmFechaOs.panel01.Enabled := False;
   frmFechaOs.panel02.Enabled := False;
   frmFechaOs.panel03.Enabled := False;
   frmFechaOs.showModal;
end;

procedure TfrmConsultaOrdemServico.cdsMaterialUtilizadoBeforeOpen(
  DataSet: TDataSet);
begin
   CriarCalculado (DataSet,'Nome_Status',ftString,15);
end;

procedure TfrmConsultaOrdemServico.cdsMaterialUtilizadoCalcFields(
  DataSet: TDataSet);
begin
   If cdsMaterialUtilizado.FieldByName('Qtde_Venda').AsInteger = 0 Then
      cdsMaterialUtilizado.FieldByName('Nome_Status').AsString := 'Cancelado'
   Else
      cdsMaterialUtilizado.FieldByName('Nome_Status').AsString := 'Normal';
end;

procedure TfrmConsultaOrdemServico.cdsOrdemServicoBeforeOpen(DataSet: TDataSet);
var licont : Integer;
begin
   CriarCalculado (DataSet,'Nome_Status',ftString,15);
   //CriarCalculado (DataSet,'Nome_Tipo_OS',ftString,15);
   //CriarCalculado (DataSet,'Nome_Auxiliar',ftString,50);
   CriarCalculado (DataSet,'Prioridade',ftString,10);
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmConsultaOrdemServico.cdsOrdemServicoClcFields(DataSet: TDataSet);
begin
   If cdsOrdemServico.FieldByName('Status').AsString = 'A' Then
      cdsOrdemServico.FieldByName('Nome_Status').AsString := 'Aberta'
   Else If cdsOrdemServico.FieldByName('Status').AsString = 'F' Then
      cdsOrdemServico.FieldByName('Nome_Status').AsString := 'Fechada'
   Else If cdsOrdemServico.FieldByName('Status').AsString = 'P' Then
      cdsOrdemServico.FieldByName('Nome_Status').AsString := 'Pendente'
   Else If cdsOrdemServico.FieldByName('Status').AsString = 'G' Then
      cdsOrdemServico.FieldByName('Nome_Status').AsString := 'Agendada'
   Else If cdsOrdemServico.FieldByName('Status').AsString = 'E' Then
      cdsOrdemServico.FieldByName('Nome_Status').AsString := 'Em Liberação'
   Else If cdsOrdemServico.FieldByName('Status').AsString = 'M' Then
      cdsOrdemServico.FieldByName('Nome_Status').AsString := 'Em Atendimento'
   Else If cdsOrdemServico.FieldByName('Status').AsString = 'C' Then
      cdsOrdemServico.FieldByName('Nome_Status').AsString := 'Cancelada'
   Else If cdsOrdemServico.FieldByName('Status').AsString = 'I' Then
      cdsOrdemServico.FieldByName('Nome_Status').AsString := 'Atendimento Iniciado';

   If cdsOrdemServico.FieldByName('Tipo_OS').AsString = '0' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_OS').AsString := 'Contrato'
   Else If cdsOrdemServico.FieldByName('Tipo_OS').AsString = '1' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_OS').AsString := 'Garantia'
   Else If cdsOrdemServico.FieldByName('Tipo_OS').AsString = '2' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_OS').AsString := 'Manutencao'
   Else If cdsOrdemServico.FieldByName('Tipo_OS').AsString = '3' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_OS').AsString := 'Orçamento'
   Else If cdsOrdemServico.FieldByName('Tipo_OS').AsString = '4' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_OS').AsString := 'Instalacao'
   Else If cdsOrdemServico.FieldByName('Tipo_OS').AsString = '5' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_OS').AsString := 'Assistencia Tecnica'
   Else If cdsOrdemServico.FieldByName('Tipo_OS').AsString = '6' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_OS').AsString := 'Reclamacao';

   If cdsOrdemServico.FieldByName('Tipo_Servico').AsString = '0' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_Servico').AsString := 'Telecomunicacoes'
   Else If cdsOrdemServico.FieldByName('Tipo_Servico').AsString = '1' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_Servico').AsString := 'Automacao'
   Else If cdsOrdemServico.FieldByName('Tipo_Servico').AsString = '2' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_Servico').AsString := 'Antenas'
   Else If cdsOrdemServico.FieldByName('Tipo_Servico').AsString = '3' Then
      cdsOrdemServico.FieldByName('Nome_Tipo_Servico').AsString := 'Seguranca Eletronica';


   If cdsOrdemServico.FieldByName('Nivel_Atendimento').AsString = '0' Then
      cdsOrdemServico.FieldByName('Prioridade').AsString := 'Baixa'
   Else If cdsOrdemServico.FieldByName('Nivel_Atendimento').AsString = '1' Then
      cdsOrdemServico.FieldByName('Prioridade').AsString := 'Media'
   Else If cdsOrdemServico.FieldByName('Nivel_Atendimento').AsString = '2' Then
      cdsOrdemServico.FieldByName('Prioridade').AsString := 'Alta';

   if not cdsOrdemServico.FieldByName('Cod_Auxiliar').IsNull then
   Begin
      If cdsFuncionarios.Locate('Codigo',cdsOrdemServico.FieldByName('Cod_Auxiliar').AsString,[]) then
         cdsOrdemServico.FieldByName('Nome_Auxiliar').asString := cdsFuncionarios.FieldByName('Descricao').AsString
      Else
         cdsOrdemServico.FieldByName('Nome_Auxiliar').asString := 'Auxiliar não informado';
   End;
      {
   Tipo_Os  0 - Contrato
            1 - Garantia
            2 - conserto
            3 - Orçamento
            4 -  Projeto

   Tipo_Servico  0 - Telecomunicações
                 1 - Automação
                 2 - Antenas
                 3 - Segurança Eletronica

   Nivel_Atendimento 0 - Baixa Prioridade
                     1 - Media Prioridade
                     2 - Alta Prioridade

   Status            A - Aberta
                     F - Fechada
                     P - Pendente
                     G - Agendada
                     E - Em liberacao
                     M - Em Atendimento

}
end;

procedure TfrmConsultaOrdemServico.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmConsultaOrdemServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   frmConsultaOrdemServico := Nil;
   Action                   := caFree;
end;

procedure TfrmConsultaOrdemServico.FormShow(Sender: TObject);
begin
   cmbPeriodoChange(cmbPeriodo);
   pgGeral.ActivePageIndex := 0;
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Codigo, Descricao From T_funcionarios ';

   cdsFuncionarios.Close;
   cdsFuncionarios.ProviderName := dspVariavel.Name;
   cdsFuncionarios.Open;

end;

end.
