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
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edtHistorico: TbsSkinEdit;
    srcCadFornecedores: TDataSource;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtData_cad: TbsSkinEdit;
    dspVariavel: TDataSetProvider;
    SkinForm: TbsBusinessSkinForm;
    bsSkinStatusBar1: TbsSkinStatusBar;
    btnSelecionar: TSpeedButton;
    bsSkinScrollBar2: TbsSkinScrollBar;
    edtCod_Fornecedor: TbsSkinEdit;
    cmbCod_Fornecedor: TbsSkinDBLookupComboBox;
    cmbNome_Fornecedor: TbsSkinDBLookupComboBox;
    bsSkinStdLabel2: TbsSkinStdLabel;
    lblVencimentos: TbsSkinStdLabel;
    edtData_Emissao: TbsSkinDateEdit;
    edtData_Vencimento: TbsSkinDateEdit;
    rdgTipoVencimento: TbsSkinRadioGroup;
    lblDiasa: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtParcelas: TbsSkinSpinEdit;
    edtDias: TbsSkinSpinEdit;
    EdtVlr_total: TEditN;
    Label1: TLabel;
    srcCtasPagar: TDataSource;
    dtpData_Ini: TbsSkinDateEdit;
    lblTurma: TbsSkinStdLabel;
    dtpData_Fim: TbsSkinDateEdit;
    cmbVencto: TComboBox;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtData_fim: TEditN;
    edtData_Ini: TEditN;
    cmbTipoFiltro: TComboBox;
    bsSkinStdLabel7: TbsSkinStdLabel;
    cmbNome_CentroCusto: TbsSkinDBLookupComboBox;
    cmbCod_CentroCusto: TbsSkinDBLookupComboBox;
    edtCod_CentroCusto: TbsSkinEdit;
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
   IF qryCtaspagar.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if (qryCtaspagar.FieldByName('Status').AsInteger = 1 ) Then  // 0 aberto 1 Pago
   Begin
      CaixaMensagem( 'So é possivel Baixar Titulos em aberto', ctAviso, [ cbOk ],0 );
      Exit
   End;

   if CaixaMensagem( 'Deseja Efetuar a Baixa deste titulo ( '+qryCtaspagar.FieldByName('Historico').AsString+' ) ', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      qryModific.Close;
      qryModific.SQL.Text := 'Insert into T_movCaixa ( Cod_Operacao, Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda ) Values '+
                             '                       ( :parCod_Operacao, :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                             '                         :parD_C,:parSeqVenda ) ';

      qryModific.ParamByName('parCod_Caixa').AsString             := '001';
      qryModific.ParamByName('parValor').AsFloat                  := ( qryCtaspagar.fieldByname('valor').AsFloat);
      qryModific.ParamByName('parHistorico').AsString             := 'Pagameto de Titulo ('+qryCtaspagar.fieldByname('Historico').AsString+')';
      qryModific.ParamByName('parData_Lancamento').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
      qryModific.ParamByName('parD_C').AsString                   := 'D';
      qryModific.ParamByName('parCod_Operacao').AsString       := qryCtaspagar.fieldByname('Cod_Operacao').AsString;
      qryModific.ParamByName('parSeqVenda').AsInteger             := 1;
      qryModific.ExecSQL;

      qryModific.Close;
      qryModific.SQL.Text := 'update T_Ctaspagar set Status=:parStatus '+
                             'where Sequencia=:parSequencia ';
      qryModific.ParamByName('parSequencia').AsInteger       := qryCtaspagar.fieldByname('Sequencia').AsInteger;
      qryModific.ParamByName('parStatus').AsInteger          := 1;
      qryModific.ExecSQL;

      qryCtaspagar.Close;
      qryCtaspagar.Open;

      qryCtaspagar.Locate('Sequencia',liSequencia, [] );
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
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   QryVariavel.Close;
   QryVariavel.SQL.Text := 'Select Forne.Descricao, Pag.* from T_CtasPagar Pag, T_fornecedores Forne '+
                            ' where Data_Vencimento>=:parDataIni and Data_Vencimento<=:parDataFim And '+
                            '       Forne.Codigo=Pag.Cod_Fornecedor ';

   If cmbTipoPesquisa.ItemIndex = 0 Then
      QryVariavel.SQL.Add('And Forne.Descricao like :parDescricao ')
   Else If cmbTipoPesquisa.ItemIndex = 1 Then
      QryVariavel.SQL.Add('And Pag.Historico like :parDescricao ');
   if cmbTipoFiltro.ItemIndex <> 2 Then
      QryVariavel.SQL.Add('And Pag.Status =:parStatus ');
   QryVariavel.SQL.Add('Order by Pag.data_Vencimento ');

   QryVariavel.ParamByName('parDescricao').AsString:= lsCoringa+EdtPesquisa.Text+'%';
   if cmbTipoFiltro.ItemIndex <> 2 Then
      QryVariavel.ParamByName('parStatus').asInteger := cmbTipoFiltro.ItemIndex;
   QryVariavel.ParamByName('parDataIni').AsString    := dtpData_Ini.Text;
   QryVariavel.ParamByName('parDatafim').AsString    := dtpData_Fim.Text;

   cdsPesquisa.Close;
   cdsPesquisa.ProviderName := dspVariavel.name;
   cdsPesquisa.Open;

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
   IF qryCtaspagar.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   if CaixaMensagem( 'Deseja Estornar Este Titulo ( '+qryCtaspagar.FieldByName('Historico').AsString+' ) ', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      if (qryCtaspagar.FieldByName('Status').AsInteger = 1 ) Then  // 0 aberto 1 Pago
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'Insert into T_movCaixa ( Cod_Operacao, Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda ) Values '+
                                '                       ( :parCod_Operacao, :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                                '                         :parD_C,:parSeqVenda ) ';

         qryModific.ParamByName('parCod_Caixa').AsString        := '001';
         qryModific.ParamByName('parValor').AsFloat             := ( qryCtaspagar.fieldByname('valor').AsFloat);
         qryModific.ParamByName('parHistorico').AsString        := 'Estorno de Pagameto de Titulo ( '+qryCtaspagar.fieldByname('Historico').AsString+' )';
         qryModific.ParamByName('parData_Lancamento').AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
         qryModific.ParamByName('parD_C').AsString              := 'C';
         qryModific.ParamByName('parCod_Operacao').AsString  := qryCtaspagar.fieldByname('Cod_Operacao').AsString;
         qryModific.ParamByName('parSeqVenda').Asinteger        := 1;
         qryModific.ExecSQL;
      End;

      qryModific.Close;
      qryModific.SQL.Text := 'update T_Ctaspagar set Status=:parStatus '+
                             'where Sequencia=:parSequencia ';
      qryModific.ParamByName('parSequencia').AsInteger       := qryCtaspagar.fieldByname('Sequencia').AsInteger;
      qryModific.ParamByName('parStatus').AsInteger          := 2;
      qryModific.ExecSQL;

      qryCtaspagar.Close;
      qryCtaspagar.Open;

      qryCtaspagar.Locate('Sequencia',liSequencia, [] );
   End;

end;

procedure TfrmCtasPagar.BorderodeEntrega1Click(Sender: TObject);
var lsCoringa    : String;
    lsVencimento : String;
    lrDia        : Real;
    lrTotal      : Real;
begin
   lrDia        := 0;
   lrTotal      := 0;

   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   qryCtasPagar.Close;
   qryCtasPagar.SQL.Text := 'Select Forne.Descricao, Pag.* from T_CtasPagar Pag, T_fornecedores Forne '+
                            ' where Data_Vencimento>=:parDataIni and Data_Vencimento<=:parDataFim And '+
                            '       Forne.Codigo=Pag.Cod_Fornecedor ';

   If cmbTipoPesquisa.ItemIndex = 0 Then
      qryCtasPagar.SQL.Add('And Forne.Descricao like :parDescricao ')
   Else If cmbTipoPesquisa.ItemIndex = 1 Then
      qryCtasPagar.SQL.Add('And Pag.Historico like :parDescricao ');
   if cmbTipoFiltro.ItemIndex <> 2 Then
      qryCtasPagar.SQL.Add('And Pag.Status =:parStatus ');

  qryCtasPagar.SQL.Add('Order by Pag.data_Vencimento ');

   qryCtasPagar.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   if cmbTipoFiltro.ItemIndex <> 2 Then
      qryCtasPagar.ParamByName('parStatus').AsInteger := cmbTipoFiltro.ItemIndex;
   qryCtasPagar.ParamByName('parDataIni').AsString    := dtpData_Ini.Text;
   qryCtasPagar.ParamByName('parDatafim').AsString    := dtpData_Fim.Text;
   qryCtasPagar.Open;    //


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

   lsVencimento := qryCtasPagar.FieldByname('data_Vencimento').AsString;

   While not qryCtasPagar.Eof Do
   Begin
      if lsVencimento <> qryCtasPagar.FieldByname('data_Vencimento').AsString Then
      Begin
         impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
         pvilinha := pvilinha+1;
         impmatricial.Imp(pvilinha,001,'Total do Dia '+lsVencimento );
         impmatricial.ImpD(pvilinha,124,FormatFloat(',0.00',lrDia),[]);
         pvilinha := pvilinha+1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
         pvilinha := pvilinha+1;
         lsVencimento := qryCtasPagar.FieldByname('data_Vencimento').AsString;
         lrDia := 0;
      End;
      impmatricial.Imp(pvilinha,001,IncZero( qryCtasPagar.FieldByname('Cod_Fornecedor').asString,3));
      impmatricial.Imp(pvilinha,008,qryCtasPagar.FieldByname('Descricao').asString);
      impmatricial.Imp(pvilinha,048,FormatDateTime('dd/mm/yyyy',qryCtasPagar.FieldByname('data_Vencimento').asDateTime));
      impmatricial.Imp(pvilinha,060,qryCtasPagar.FieldByname('SeqParCela').asString);
      impmatricial.Imp(pvilinha,064,qryCtasPagar.FieldByname('Historico').asString);
      impmatricial.ImpD(pvilinha,124,FormatFloat(',0.00',qryCtasPagar.FieldByname('Valor').asFloat),[]);
      pvilinha := pvilinha+1;
      lrDia    := lrDia + qryCtasPagar.FieldByname('Valor').asFloat;
      lrTotal  := lrTotal + qryCtasPagar.FieldByname('Valor').asFloat;
      if pvilinha > 60 Then
         impmatricial.Novapagina;
      qryCtasPagar.Next;
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
