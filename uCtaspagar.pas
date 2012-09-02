unit uCtaspagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, ADODB, StdCtrls, bsSkinCtrls, Mask,
  bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, ComCtrls, bsSkinTabs, ExtCtrls,
  ToolWin, BusinessSkinForm, Buttons, bsdbctrls, EditNew, Menus,
  bsSkinMenus, RDprint, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, FMTBcd, SqlExpr,sqlTimSt, dxSkinsCore;

type
  TfrmCtasPagar = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    cmbTipoPesquisa: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    bsSkinTabSheet2: TbsSkinTabSheet;
    srcCadFornecedores: TDataSource;
    dspVariavel: TDataSetProvider;
    SkinForm: TbsBusinessSkinForm;
    bsSkinStatusBar1: TbsSkinStatusBar;
    btnSelecionar: TSpeedButton;
    bsSkinScrollBar2: TbsSkinScrollBar;
    srcCtasPagar: TDataSource;
    dtpData_Ini: TbsSkinDateEdit;
    lblTurma: TbsSkinStdLabel;
    dtpData_Fim: TbsSkinDateEdit;
    cmbVencto: TComboBox;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtData_fim: TEditN;
    edtData_Ini: TEditN;
    cmbTipoFiltro: TComboBox;
    srcCadCtoCusto: TDataSource;
    BtnEstornado: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinPopupMenu1: TbsSkinPopupMenu;
    BorderodeEntrega1: TMenuItem;
    bsSkinMenuSpeedButton1: TbsSkinMenuSpeedButton;
    ImpMatricial: TRDprint;
    gridCtasPagar: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Comul_Codigo: TcxGridDBColumn;
    Colum_Descricao: TcxGridDBColumn;
    Colum_Vencimento: TcxGridDBColumn;
    Colum_Parcela: TcxGridDBColumn;
    colum_valor: TcxGridDBColumn;
    colum_historico: TcxGridDBColumn;
    colum_Status: TcxGridDBColumn;
    Qrymodific: TSQLQuery;
    qryCtasPagar: TSQLQuery;
    dspCtasPagar: TDataSetProvider;
    cdsCtasPagar: TClientDataSet;
    cdsCadFornecedores: TClientDataSet;
    cdsCadCtoCusto: TClientDataSet;
    QryVariavel: TSQLQuery;
    srcPesquisa: TDataSource;
    cdsPesquisa: TClientDataSet;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    lblVencimentos: TbsSkinStdLabel;
    lblDiasa: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    Label1: TLabel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    cmbCod_Fornecedor: TbsSkinDBLookupComboBox;
    edtHistorico: TbsSkinEdit;
    edtData_cad: TbsSkinEdit;
    edtCod_Fornecedor: TbsSkinEdit;
    cmbNome_Fornecedor: TbsSkinDBLookupComboBox;
    edtData_Emissao: TbsSkinDateEdit;
    edtData_Vencimento: TbsSkinDateEdit;
    rdgTipoVencimento: TbsSkinRadioGroup;
    edtParcelas: TbsSkinSpinEdit;
    edtDias: TbsSkinSpinEdit;
    EdtVlr_total: TEditN;
    cmbNome_CentroCusto: TbsSkinDBLookupComboBox;
    cmbCod_CentroCusto: TbsSkinDBLookupComboBox;
    edtCod_CentroCusto: TbsSkinEdit;
    procedure btnincluirClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LimpaCampos();
    procedure rdgTipoVencimentoClick(Sender: TObject);
    procedure cmbCod_FornecedorChange(Sender: TObject);
    procedure cmbNome_FornecedorChange(Sender: TObject);
    procedure edtCod_FornecedorExit(Sender: TObject);
    procedure cmbVenctoChange(Sender: TObject);
    procedure edtData_fimExit(Sender: TObject);
    procedure edtData_IniExit(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure qryCtasPagarAfterOpen(DataSet: TDataSet);
    procedure cmbNome_CentroCustoChange(Sender: TObject);
    procedure cmbCod_CentroCustoChange(Sender: TObject);
    procedure edtCod_CentroCustoExit(Sender: TObject);
    procedure BtnEstornadoClick(Sender: TObject);
    procedure BorderodeEntrega1Click(Sender: TObject);
    procedure ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure qryCtasPagarCalcFields(DataSet: TDataSet);
    procedure qryCtasPagarBeforeOpen(DataSet: TDataSet);
  private
   pvQualBotao : String;
   pvilinha    : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCtasPagar: TfrmCtasPagar;

implementation

uses uPrincipal,ufuncoes;

procedure TFrmCtasPagar.LimpaCampos();
Begin
   cmbNome_Fornecedor.KeyValue := Null;
   cmbCod_Fornecedor.KeyValue := Null;
   edtCod_Fornecedor.Text := '';
   edtHistorico.Text := '';
   edtData_Emissao.Date := Now;
   edtData_Vencimento.Date := now;
   edtDias.Text := '30';
   edtParcelas.Text := '1';
   rdgTipoVencimento.ItemIndex := 0;
   EdtVlr_Total.Text := '0,00';
End;

{$R *.dfm}

procedure TfrmCtasPagar.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   LimpaCampos();

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   BtnIncluir.Enabled  := False;
   BtnAlterar.Enabled  := False;
   BtnExcluir.Enabled  := False;
   BtnOk.Enabled       := True;
   BtnCancela.Enabled  := True;
   edtParcelas.Enabled := True;
   PagCadastro.ActivePageIndex:=1;
   edtCod_Fornecedor.SetFocus;
end;

procedure TfrmCtasPagar.btnokClick(Sender: TObject);
Var licont : Integer ;
    lsMes  : String;
    lsDias : String;
    lsDiasant : String;
    lsAno : String;
    liDias  : Integer;
begin
   if Trim( edtHistorico.Text ) = '' Then
   Begin
      CaixaMensagem( 'O Historico não pode ficar em branco ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if Trim( cmbCod_Fornecedor.Text ) = '' Then
   Begin
      CaixaMensagem( 'O Fornecedor não pode ficar em branco ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if Trim( cmbCod_CentroCusto.Text ) = '' Then
   Begin
      CaixaMensagem( 'O Centro de Custo não pode ficar em branco ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   lsdias    := FormatDateTime('DD',edtdata_Vencimento.Date);
   lsMes     := FormatDateTime('MM',edtdata_Vencimento.Date);
   lsDiasAnt := FormatDateTime('DD',edtdata_Vencimento.Date);
   lsAno     := FormatDateTime('yyyy',edtdata_Vencimento.Date);
   lidias    := 0;

   qryCtasPagar.Close;
   qryCtasPagar.SQL.text :=' Select * from T_CtasPagar WHERE 1=2';

   cdsCtasPagar.Open;
   cdsctaspagar.ProviderName := dspCtaspagar.Name;
   cdsCtaspagar.Open;

   For licont := 1 to StrToInt(edtParcelas.Text) Do
   Begin
      lidias := liDias + StrToInt(edtdias.Text);
      If pvQualBotao = 'ALTERAR' then
      begin
         cdsCtasPagar.Edit;
         cdsCtasPagar.FieldByName('Data_Atu').AsDateTime := Now;
      End
      Else
      Begin
         cdsCtasPagar.Append;
         cdsCtasPagar.FieldByName('Data_Cad').AsDateTime := Now;
      End;
      cdsCtasPagar.FieldByName('Historico').AsString          := edtHistorico.Text;
      cdsCtasPagar.FieldByName('Sequencia').AsInteger         := StrToInt(Sequencia('Sequencia',False,'T_CtasPagar',FrmPrincipal.dbxPrincipal,'',False,8));
      cdsCtasPagar.FieldByName('Operador').AsString           := gsOperador;
      cdsCtasPagar.FieldByName('Cod_Fornecedor').AsString     := cmbCod_Fornecedor.Text;
      cdsCtasPagar.FieldByName('Data_Emissao').AsDateTime     := edtData_Emissao.Date;
      If rdgTipoVencimento.ItemIndex = 0 Then
         cdsCtasPagar.FieldByName('Data_Vencimento').AsDateTime  := StrtoDateTime(lsdias+'/'+lsMes+'/'+lsAno)
      Else
         cdsCtasPagar.FieldByName('Data_Vencimento').AsDateTime  := (edtData_Vencimento.Date)+lidias ;

      cdsCtasPagar.FieldByName('SeqParcela').AsInteger        := licont;
      cdsCtasPagar.FieldByName('Valor').AsFloat               := arredondar(StrToFloat(EdtVlr_total.Text)/StrToInt(edtParcelas.Text),2);
      cdsCtasPagar.FieldByName('Status').AsInteger            := 0;
      cdsCtasPagar.FieldByName('Cod_Operacao').AsString    := cmbCod_CentroCusto.Text;

      lsmes  := IncZero( IntToStr ( StrToint ( lsMes ) + 1 ),2);
      lsDias :=lsdiasAnt;
      if StrToint(lsMes)>12 Then
      Begin
        lsmes := '01';
        lsAno := IncZero( IntToStr ( StrToint ( lsAno ) + 1 ),2);
      End;
      if ( StrToint(lsMes)=2 ) and ( StrToint(lsDias)>=29 ) Then
      Begin
        lsDias:='28';
      end;

   End;
   cdsCtasPagar.Post;
   cdsCtasPagar.ApplyUpdates(-1);


   btnSelecionarClick(btnSelecionar);

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   PagCadastro.ActivePageIndex:=0;

   LimpaCampos();

end;

procedure TfrmCtasPagar.btnalterarClick(Sender: TObject);
Var liSequencia : Integer;
begin
   IF qryctaspagar.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   pvQualBotao := 'ALTERAR';

   liSequencia := qryCtasPagar.fieldByName('Sequencia').AsInteger;

   qryCtasPagar.Close;
   qryCtasPagar.SQL.text :=' Select * from T_CtasPagar WHERE Sequencia=:parSequencia ';
   qryCtasPagar.ParamByname('parSequencia').AsInteger := liSequencia;

   cdsCtasPagar.Open;
   cdsctaspagar.ProviderName := dspCtaspagar.Name;
   cdsCtaspagar.Open;

   edtCod_Fornecedor.Text := cdsCtasPagar.FieldByName('Cod_Fornecedor').AsString;
   edtCod_FornecedorExit(edtCod_Fornecedor);
   edtCod_CentroCusto.Text := cdsCtasPagar.FieldByName('Cod_Operacao').AsString;
   edtCod_CentroCustoExit(edtCod_CentroCusto);
   edtHistorico.Text       := cdsCtasPagar.FieldByName('Historico').AsString;
   edtParcelas.Text        := '1';
   edtData_Emissao.Text    := FormatDateTime('dd/mm/yyyy',cdsCtasPagar.FieldByName('Data_Emissao').AsDateTime);
   edtData_Vencimento.Text := FormatDateTime('dd/mm/yyyy',cdsCtasPagar.FieldByName('Data_Vencimento').AsDateTime);
   EdtVlr_total.Text       := FormatFloat('0.00',cdsCtasPagar.FieldByName('Valor').Asfloat);

   edtDias.Enabled           := False;
   edtParcelas.Enabled       := False;
   rdgTipoVencimento.Enabled := False;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',cdsCtasPagar.FieldByName('Data_Emissao').AsDateTime);

   pvQualBotao := 'ALTERAR';

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;

   edtHistorico.SetFocus;
end;

procedure TfrmCtasPagar.btnexcluirClick(Sender: TObject);
var lisequencia : Integer;
begin

   IF cdsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;


   if CaixaMensagem( 'Deseja baixar esta conta ( '+cdsPesquisa.FieldByName('Historico').AsString+' ) ', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      qryModific.Close;
      qryModific.SQL.Text := 'Insert into T_movCaixa ( Sequencia, Cod_TipoDespesa, Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda ) Values '+
                             '                       ( :parSequencia,:parCod_TipoDespesa, :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                             '                         :parD_C,:parSeqVenda ) ';

      qryModific.ParamByName('parCod_Caixa').AsInteger            := 1;
      qryModific.ParamByName('parValor').AsFloat                  := ( cdsPesquisa.fieldByname('valor').AsFloat);
      qryModific.ParamByName('parHistorico').AsString             := 'Pagameto de Titulo ('+cdsPesquisa.fieldByname('Historico').AsString+')';
      qryModific.ParamByName('parData_Lancamento').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
      qryModific.ParamByName('parD_C').AsString                   := 'D';
      qryModific.ParamByName('parCod_TipoDespesa').AsString          := cdsPesquisa.fieldByname('Cod_Operacao').AsString;
      qryModific.ParamByName('parSeqVenda').AsInteger             := 1;
      qryModific.ParamByName('parSequencia').AsInteger             := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
      qryModific.ExecSQL;

      qryModific.Close;
      qryModific.SQL.Text := 'update T_Ctaspagar set Status=:parStatus '+
                             'where Sequencia=:parSequencia ';
      qryModific.ParamByName('parSequencia').AsInteger       := cdsPesquisa.fieldByname('Sequencia').AsInteger;
      qryModific.ParamByName('parStatus').AsInteger          := 1;
      qryModific.ExecSQL;

      cdsPesquisa.Close;
      cdsPesquisa.Open;

      cdsPesquisa.Locate('Sequencia',liSequencia, [] );
   End;
end;

procedure TfrmCtasPagar.BtnCancelaClick(Sender: TObject);
begin

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;
   limpaCampos();
   btnSelecionarClick(btnSelecionar);
   PagCadastro.ActivePageIndex:=0;
end;

procedure TfrmCtasPagar.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCtasPagar.FormShow(Sender: TObject);
begin
   PagCadastro.ActivePageIndex:=0;

   QryVariavel.Close;
   QryVariavel.SQL.Text := 'Select * from T_Fornecedores order by Descricao';

   cdsCadFornecedores.Close;
   cdsCadFornecedores.ProviderName :=  dspVariavel.Name;
   cdsCadFornecedores.Open;


   QryVariavel.Close;
   QryVariavel.SQL.Text := 'Select * from T_Operacoes where '+
                              '( Tipo_Conta=:parTipo_Conta  OR '+
                              '  Tipo_Conta=:parTipo_Conta1 OR '+
                              '  Tipo_Conta=:parTipo_Conta2 )'+
                              'Order by Descricao ';
   QryVariavel.ParamByName('parTipo_Conta').AsInteger   := 0; // 1 Debito 2 Credito
   QryVariavel.ParamByName('parTipo_Conta1').AsInteger  := 2; // 1 Debito 2 Credito
   QryVariavel.ParamByName('parTipo_Conta2').AsInteger  := 3; // 1 Debito 2 Credito

   cdsCadCtoCusto.Close;
   cdsCadCtoCusto.ProviderName :=  dspVariavel.Name;
   cdsCadCtoCusto.Open;

   rdgTipoVencimento.ItemIndex:= 0;

   edtDias.Visible            := False;
   lblDiasa.Visible           := False;
   edtData_Vencimento.Visible := True;
   lblVencimentos.Visible     := True;

   ListaPeriodo( TEdit( edtData_Ini ), TEdit( edtData_Fim ), cmbVencto.ItemIndex, Now );
   edtData_IniExit( Self );
   edtData_fimExit( Self );

end;

procedure TfrmCtasPagar.rdgTipoVencimentoClick(Sender: TObject);
begin
   IF rdgTipoVencimento.ItemIndex = 0  Then
   Begin
       edtDias.Visible            := False;
       lblDiasa.Visible           := False;
       edtData_Vencimento.Visible := True;
       lblVencimentos.Visible     := True;
   end
   Else
   Begin
      edtDias.Visible            := True;
      lblDiasa.Visible           := True;
      edtData_Vencimento.Visible := False;
      lblVencimentos.Visible     := False;
   End;
end;

procedure TfrmCtasPagar.cmbCod_FornecedorChange(Sender: TObject);
begin
  cmbNome_Fornecedor.KeyValue :=  cmbCod_Fornecedor.KeyValue;
  edtCod_fornecedor.Text := cmbcod_Fornecedor.Text;
end;

procedure TfrmCtasPagar.cmbNome_FornecedorChange(Sender: TObject);
begin
  cmbCod_Fornecedor.KeyValue := cmbNome_Fornecedor.KeyValue;
end;

procedure TfrmCtasPagar.edtCod_FornecedorExit(Sender: TObject);
begin
   if Trim(edtCod_Fornecedor.text)<> '' Then
   Begin
      cmbCod_Fornecedor.KeyValue := edtCod_Fornecedor.text;
      cmbCod_FornecedorChange(cmbCod_Fornecedor);
      if Trim(cmbNome_Fornecedor.Text) = '' Then
          CaixaMensagem( 'Fornecedor Não Encontrado ', ctAviso, [ cbOk ], 0 );
   End
   else
      cmbNome_Fornecedor.KeyValue := Null;
end;

procedure TfrmCtasPagar.cmbVenctoChange(Sender: TObject);
begin
   ListaPeriodo( TEdit( edtData_Ini ), TEdit( edtData_Fim ), cmbVencto.ItemIndex, Now );
   edtData_IniExit( Self );
   edtData_fimExit( Self );
end;

procedure TfrmCtasPagar.edtData_fimExit(Sender: TObject);
begin
   Try
      StrToDate( edtData_Fim.Text );
      dtpData_Fim.Date := StrToDate( edtData_Fim.Text );
   Except
      CaixaMensagem( 'A data final informada é inválida', ctAviso, [ cbOk ], 0 );
      Try
         edtData_Fim.SetFocus;
      Except
         //
      End;
      Exit;
   End;
end;

procedure TfrmCtasPagar.edtData_IniExit(Sender: TObject);
begin
   Try
      StrToDate( edtData_Ini.Text );
      dtpData_Ini.Date := StrToDate( edtData_Ini.Text );
   Except
      CaixaMensagem( 'A data inicial informada é inválida', ctAviso, [ cbOk ], 0 );
      Try
         edtData_Ini.SetFocus;
      Except
         //
      End;
      Exit;
   End;
end;

procedure TfrmCtasPagar.btnSelecionarClick(Sender: TObject);
var lsCoringa : String;
    lsWhere : String;
    lstParametros : TStringList;
begin

   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';
   lstParametros := TStringList.Create;
   lstParametros.add(dtpData_Ini.Text);
   lstParametros.add(dtpData_Fim.Text);
   lstParametros.add(lsCoringa+EdtPesquisa.Text+'%');

   lsWhere  :='Select Forne.Descricao, Pag.* from T_CtasPagar Pag, T_fornecedores Forne '+
              ' where Data_Vencimento>=:parDataIni and Data_Vencimento<=:parDataFim And '+
              '       Forne.Codigo=Pag.Cod_Fornecedor ';

   If cmbTipoPesquisa.ItemIndex = 0 Then
      lsWhere :=  lsWhere + 'And Forne.Descricao like :parDescricao '
   Else If cmbTipoPesquisa.ItemIndex = 1 Then
      lsWhere :=  lsWhere + 'And Pag.Historico like :parDescricao ';
   if cmbTipoFiltro.ItemIndex <> 2 Then
   Begin
      lsWhere := lsWhere +' And Pag.Status =:parStatus ';
      lstParametros.add(IntToStr(cmbTipoFiltro.ItemIndex));
   End;
   lsWhere :=  lsWhere +' Order by Pag.data_Vencimento ';

   cdsPesquisa.Data := gConexao.BuscarDadosSQL(lsWhere, lstParametros).Data;

end;

procedure TfrmCtasPagar.EdtPesquisaChange(Sender: TObject);
begin
   btnSelecionarclick(btnSelecionar);
end;

procedure TfrmCtasPagar.qryCtasPagarAfterOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmCtasPagar.cmbNome_CentroCustoChange(Sender: TObject);
begin
   cmbCod_CentroCusto.KeyValue := cmbNome_CentroCusto.KeyValue
end;

procedure TfrmCtasPagar.cmbCod_CentroCustoChange(Sender: TObject);
begin
   cmbNome_CentroCusto.KeyValue := cmbCod_CentroCusto.KeyValue;
   edtCod_CentroCusto.Text := cmbCod_CentroCusto.Text;
end;

procedure TfrmCtasPagar.edtCod_CentroCustoExit(Sender: TObject);
begin
   if Trim(edtCod_CentroCusto.text)<> '' Then
   Begin
      cmbCod_CentroCusto.KeyValue := edtCod_CentroCusto.text;
      cmbCod_CentroCustoChange(cmbCod_CentroCusto);
      if Trim(cmbNome_CentroCusto.Text) = '' Then
          CaixaMensagem( 'Centro de Custo Não Encontrado ', ctAviso, [ cbOk ], 0 );
   End
   else
      cmbNome_CentroCusto.KeyValue := Null;
end;

procedure TfrmCtasPagar.BtnEstornadoClick(Sender: TObject);
var lisequencia : Integer;
begin
   IF cdsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if (cdsPesquisa.FieldByName('Status').AsInteger = 0 ) Then  // 0 aberto 1 Pago
   Begin
      CaixaMensagem( 'Impossivel estornar a conta que ainda não foi paga ', ctAviso, [ cbOk ], 0 );
      Exit
   end;
   if CaixaMensagem( 'Deseja Cancelar a baixa da conta ( '+cdsPesquisa.FieldByName('Historico').AsString+' ) ', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      if (cdsPesquisa.FieldByName('Status').AsInteger = 1 ) Then  // 0 aberto 1 Pago
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'Insert into T_movCaixa ( Cod_Operacao, Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda ) Values '+
                                '                       ( :parCod_Operacao, :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                                '                         :parD_C,:parSeqVenda ) ';

         qryModific.ParamByName('parCod_Caixa').AsString        := '001';
         qryModific.ParamByName('parValor').AsFloat             := ( cdsPesquisa.fieldByname('valor').AsFloat);
         qryModific.ParamByName('parHistorico').AsString        := 'Estorno de Pagameto de Titulo ( '+cdsPesquisa.fieldByname('Historico').AsString+' )';
         qryModific.ParamByName('parData_Lancamento').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
         qryModific.ParamByName('parD_C').AsString              := 'C';
         qryModific.ParamByName('parCod_Operacao').AsString  := cdsPesquisa.fieldByname('Cod_Operacao').AsString;
         qryModific.ParamByName('parSeqVenda').Asinteger        := 1;
         qryModific.ExecSQL;
      End;

      qryModific.Close;
      qryModific.SQL.Text := 'update T_Ctaspagar set Status=:parStatus '+
                             'where Sequencia=:parSequencia ';
      qryModific.ParamByName('parSequencia').AsInteger       := cdsPesquisa.fieldByname('Sequencia').AsInteger;
      qryModific.ParamByName('parStatus').AsInteger          := 0;
      qryModific.ExecSQL;

      cdsPesquisa.Close;
      cdsPesquisa.Open;

      cdsPesquisa.Locate('Sequencia',liSequencia, [] );
   End;

end;

procedure TfrmCtasPagar.BorderodeEntrega1Click(Sender: TObject);
var lsCoringa    : String;
    lsVencimento : String;
    lrDia        : Real;
    lrTotal      : Real;
    lstParametros : TStringList;
    CdsRelatorio : TClientDataSet;
  lsWhere: String;
begin
   lrDia        := 0;
   lrTotal      := 0;

   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   lstParametros := TStringList.Create;
   lstParametros.add(dtpData_Ini.Text);
   lstParametros.add(dtpData_Fim.Text);
   lstParametros.add(lsCoringa+EdtPesquisa.Text+'%');

   lsWhere  :='Select Forne.Descricao, Pag.* from T_CtasPagar Pag, T_fornecedores Forne '+
              ' where Data_Vencimento>=:parDataIni and Data_Vencimento<=:parDataFim And '+
              '       Forne.Codigo=Pag.Cod_Fornecedor ';

   If cmbTipoPesquisa.ItemIndex = 0 Then
      lsWhere :=  lsWhere + 'And Forne.Descricao like :parDescricao '
   Else If cmbTipoPesquisa.ItemIndex = 1 Then
      lsWhere :=  lsWhere + 'And Pag.Historico like :parDescricao ';
   if cmbTipoFiltro.ItemIndex <> 2 Then
   Begin
      lsWhere := lsWhere +' And Pag.Status =:parStatus ';
      lstParametros.add(IntToStr(cmbTipoFiltro.ItemIndex));
   End;
   lsWhere :=  lsWhere +' Order by Pag.data_Vencimento ';

   cdsRelatorio := gConexao.BuscarDadosSQL(lsWhere, lstParametros);


   gsTituloRel  := 'Relatorio de contas a pagar ';
   gsperiodoRel := '';

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 135;
   ImpMatricial.FonteTamanhoPadrao        := s17cpp;
   ImpMatricial.UsaGerenciadorImpr        := False;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   lsVencimento := cdsRelatorio.FieldByname('data_Vencimento').AsString;

   While not cdsRelatorio.Eof Do
   Begin
      if lsVencimento <> cdsRelatorio.FieldByname('data_Vencimento').AsString Then
      Begin
         impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
         pvilinha := pvilinha+1;
         impmatricial.Imp(pvilinha,001,'Total do Dia '+lsVencimento );
         impmatricial.ImpD(pvilinha,124,FormatFloat(',0.00',lrDia),[]);
         pvilinha := pvilinha+1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
         pvilinha := pvilinha+1;
         lsVencimento := cdsRelatorio.FieldByname('data_Vencimento').AsString;
         lrDia := 0;
      End;
      impmatricial.Imp(pvilinha,001,IncZero( cdsRelatorio.FieldByname('Cod_Fornecedor').asString,3));
      impmatricial.Imp(pvilinha,008,cdsRelatorio.FieldByname('Descricao').asString);
      impmatricial.Imp(pvilinha,048,FormatDateTime('dd/mm/yyyy',cdsRelatorio.FieldByname('data_Vencimento').asDateTime));
      impmatricial.Imp(pvilinha,060,cdsRelatorio.FieldByname('SeqParCela').asString);
      impmatricial.Imp(pvilinha,064,cdsRelatorio.FieldByname('Historico').asString);
      impmatricial.ImpD(pvilinha,124,FormatFloat(',0.00',cdsRelatorio.FieldByname('Valor').asFloat),[]);
      pvilinha := pvilinha+1;
      lrDia    := lrDia + cdsRelatorio.FieldByname('Valor').asFloat;
      lrTotal  := lrTotal + cdsRelatorio.FieldByname('Valor').asFloat;
      if pvilinha > 60 Then
         impmatricial.Novapagina;
      cdsRelatorio.Next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
   pvilinha := pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Total do Dia '+lsVencimento );
   impmatricial.ImpD(pvilinha,124,FormatFloat(',0.00',lrDia),[]);
   pvilinha := pvilinha+1;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
   pvilinha := pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Total Geral ' );
   impmatricial.ImpD(pvilinha,124,FormatFloat(',0.00',lrTotal),[]);

   ImpMatricial.Fechar;
end;

procedure TfrmCtasPagar.ImpMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), Pagina );
   pviLinha := 06;
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao Vencimento  Nr.Parcela          Historico                    Total  ');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',135,0));
   pviLinha:=Pvilinha+1;
End;

procedure TfrmCtasPagar.qryCtasPagarCalcFields(DataSet: TDataSet);
begin
    if qryCtaspagar.FieldByName('Status').AsInteger = 0  then
       qryCtaspagar.FieldByName('Nome_Status').AsString := 'Em aberto'
    Else if qryCtaspagar.FieldByName('Status').AsInteger = 1 then
       qryCtaspagar.FieldByName('Nome_Status').AsString := 'Titulo Pago'
    Else if qryCtaspagar.FieldByName('Status').AsInteger = 2 then
       qryCtaspagar.FieldByName('Nome_Status').AsString := 'Estornado'

end;

procedure TfrmCtasPagar.qryCtasPagarBeforeOpen(DataSet: TDataSet);
begin
   CriarCalculado (DataSet,'Nome_Status',ftString,15);
end;

end.
