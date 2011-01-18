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
}
unit uAbreOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, bsSkinBoxCtrls, StdCtrls,
  Mask, BusinessSkinForm, bsdbctrls, bsSkinGrids, bsDBGrids, FMTBcd, SqlExpr,
  DB, DBClient, Provider, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, SimpleDS;

type
  Tfrmabreos = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnabrios: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    pnlGeral: TbsSkinPanel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinGroupBox3: TbsSkinGroupBox;
    pnlnumeroos: TbsSkinPanel;
    bsSkinLabel1: TbsSkinLabel;
    edtNumeroOS: TbsSkinEdit;
    bsSkinLabel2: TbsSkinLabel;
    cmbStatusCliente: TbsSkinComboBox;
    bsSkinStdLabel3: TbsSkinStdLabel;
    cmbTipo_Atendimento: TbsSkinComboBox;
    bsSkinStdLabel5: TbsSkinStdLabel;
    cmbNivel_Atendimento: TbsSkinComboBox;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinExPanel1: TbsSkinExPanel;
    memoServico: TbsSkinMemo;
    bsSkinExPanel2: TbsSkinExPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    lblCNPJCPF: TbsSkinStdLabel;
    edtCod_Cliente: TbsSkinEdit;
    edtCNPJCPF: TbsSkinEdit;
    cmbNome_Cliente: TbsSkinDBLookupComboBox;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtPtoReferencia: TbsSkinEdit;
    pnlConsultaClinete: TbsSkinExPanel;
    bsSkinPanel2: TbsSkinPanel;
    cmbtipoconsulta: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    btnPesquisar: TbsSkinButton;
    dspPesquisa: TDataSetProvider;
    cdspesquisa: TClientDataSet;
    srcPesquisa: TDataSource;
    qryPesquisa: TSQLQuery;
    cxGrid1: TcxGrid;
    GridClintes: TcxGridDBTableView;
    GridClintesCodigo: TcxGridDBColumn;
    GridClintesDescricao: TcxGridDBColumn;
    GridClintesCNPJCPF: TcxGridDBColumn;
    GridClintesTelefone: TcxGridDBColumn;
    GridClintescelular: TcxGridDBColumn;
    GridClintesEndereco: TcxGridDBColumn;
    GridClintesBairro: TcxGridDBColumn;
    GridClintesCidade: TcxGridDBColumn;
    GridClintesUF: TcxGridDBColumn;
    GridClintesCep: TcxGridDBColumn;
    GridClintescod_emp: TcxGridDBColumn;
    GridClintesData_Cad: TcxGridDBColumn;
    GridClintesData_Atu: TcxGridDBColumn;
    GridClintesLimite_Credito: TcxGridDBColumn;
    GridClintesStatus: TcxGridDBColumn;
    GridClintesativo: TcxGridDBColumn;
    GridClintesCod_Atividade: TcxGridDBColumn;
    GridClintesOperador: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    qryCadClientes: TSQLQuery;
    dspCadClientes: TDataSetProvider;
    srcCadClientes: TDataSource;
    cdsCadClientes: TClientDataSet;
    cmbCNPJCPF: TbsSkinDBLookupComboBox;
    cmbCod_Cliente: TbsSkinDBLookupComboBox;
    sdtsConsultaCli: TSimpleDataSet;
    btnok: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    qryos: TSQLQuery;
    dspos: TDataSetProvider;
    srcos: TDataSource;
    cdsos: TClientDataSet;
    btnCadAlunos: TbsSkinSpeedButton;
    qryHistoricoOS: TSQLQuery;
    dspHistoricoOS: TDataSetProvider;
    srcHistoricoOS: TDataSource;
    cdsHistoricoOS: TClientDataSet;
    qryModific: TSQLQuery;
    bsSkinStdLabel2: TbsSkinStdLabel;
    cmbObras: TbsSkinComboBox;
    sdtsBuscaObras: TSimpleDataSet;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtSolicitante: TbsSkinEdit;
    bsSkinLabel3: TbsSkinLabel;
    edtPedido: TbsSkinEdit;
    procedure btnFecharClick(Sender: TObject);

    procedure btnPesquisarClick(Sender: TObject);
    procedure EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cmbNome_ClienteChange(Sender: TObject);
    procedure edtCod_ClienteExit(Sender: TObject);
    procedure cmbCNPJCPFClick(Sender: TObject);
    procedure cmbCod_ClienteChange(Sender: TObject);
    procedure btnabriosClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnCadAlunosClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure GridClintesDblClick(Sender: TObject);
    procedure bsSkinExPanel2CanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
     pvbBloqueaOS : Boolean; 
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmabreos: Tfrmabreos;

implementation

uses Uprincipal,Ufuncoes, uCadClientes, uVendas;

{$R *.dfm}

procedure Tfrmabreos.edtCod_ClienteExit(Sender: TObject);
begin
  if Trim(edtCod_Cliente.text)<> '' Then
   Begin
      IF length(Trim(edtCod_Cliente.Text))<=5 Then
      Begin
         cmbCod_Cliente.KeyValue := edtCod_Cliente.text;
        // cmbCod_ClienteChange(cmbCod_Cliente);
         if Trim(cmbNome_Cliente.Text) = '' Then
         Begin
            cmbNome_Cliente.KeyValue := Null;
            edtCod_Cliente.Text      := '';
            CaixaMensagem( 'Cliente Não Encontrado ', ctAviso, [ cbOk ], 0 );
         End;
      End
      Else
      Begin
         cmbCNPJCPF.KeyValue  := edtCod_Cliente.Text;
         cmbCNPJCPFClick( cmbCNPJCPF );
         If cmbCod_Cliente.Text = '' Then
         Begin
            cmbNome_Cliente.KeyValue := Null;
            edtCod_Cliente.Text      := '';
         End;
     End;
   End
   else
      cmbNome_Cliente.KeyValue := Null;
end;

procedure Tfrmabreos.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure Tfrmabreos.btnokClick(Sender: TObject);
begin

   if Trim(edtPtoReferencia.text)='' then
   Begin
      CaixaMensagem( 'O ponto de Referencia não pode ficar vazio ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if Trim(edtSolicitante.text)='' then
   Begin
      CaixaMensagem( 'O solicitante não pode ficar vazio ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if Trim(CmbObras.text)='' then
   Begin
      CaixaMensagem( 'O Nome da obra não pode ficar vazio ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if Trim(memoServico.Text)= '' then
   Begin
      CaixaMensagem( 'O serviço solicitado não pode ficar vazio ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   qryos.Close;
   qryos.Params.Clear;
   qryos.Sql.Text := 'Select * from T_OrdemServico where 1=2';

   cdsOs.Close;
   cdsos.ProviderName := dspos.Name;
   cdsos.open;

   edtNumeroOS.text     := Sequencia('Seqos',True,'T_Sequencias',FrmPrincipal.dbxPrincipal,'',False,8);

   cdsos.Append;
   cdsos.FieldByName('SeqOS').asInteger            := StrToInt(edtNumeroOS.Text);
   cdsos.FieldByName('Tipo_Os').asString           := inttoStr(cmbStatusCliente.ItemIndex);
   cdsos.FieldByName('Nome_Obra').asString         := cmbObras.Text;
   cdsos.FieldByName('Pedido').asString            := edtPedido.Text;
   cdsos.FieldByName('Tipo_servico').asString      := inttoStr(cmbTipo_Atendimento.ItemIndex);
   cdsos.FieldByName('Nivel_Atendimento').asString := inttoStr(cmbNivel_Atendimento.ItemIndex);
   cdsos.FieldByName('Solicitante').asString       := edtSolicitante.Text;
   cdsos.FieldByName('Cod_Cliente').asinteger      := StrToInt(edtCod_Cliente.Text);

   cdsos.FieldByName('Status').asString            := 'A';
   if pvbBloqueaOS then
      cdsos.FieldByName('Status').asString         := 'E';
   cdsos.FieldByName('Cod_Emp').asString           := gsCod_Emp;
   cdsos.FieldByName('Operador').asString          := gsOperador;
   cdsos.FieldByName('Data_Cad').asDateTime        := now;
   cdsos.FieldByName('Data_Mov').asDateTime        := gsData_mov;
   cdsos.FieldByName('Desc_Servico').asString      := uppercase(memoServico.Text);
   cdsos.FieldByName('Vlr_OS').asFloat             := 0;//StrToFloat( gParametros.Ler( '', '[CADASTRO]', 'ValorOSPadrao', '0' ));
   cdsos.post;
   cdsos.ApplyUpdates(-1);

   qryHistoricoOs.Close;
   qryHistoricoOs.Params.Clear;
   qryHistoricoOs.Sql.Text := 'Select * from T_HistoricoOS where 1=2 ';

   cdsHistoricoOs.Close;
   cdsHistoricoOs.ProviderName := dspHistoricoOs.Name;
   cdsHistoricoOs.open;

   cdsHistoricoOs.Append;
   cdsHistoricoOs.FieldByName('Cod_Emp').asString    := gsCod_Emp;
   cdsHistoricoOs.FieldByName('Operador').asString   := GsOperador;
   cdsHistoricoOs.FieldByName('SeqOS').asInteger     := StrtoInt(edtNumeroOS.text);
   cdsHistoricoOs.FieldByName('Data_cad').asDateTime := now;
   cdsHistoricoOs.FieldByName('Data_Mov').asDateTime := GsData_mov;
   cdsHistoricoOs.FieldByName('Ocorrencia').asString := 'A O.S. '+edtNumeroOS.text+' foi adicionada ao Atendimento';
   cdsHistoricoOs.FieldByName('Historico').asString  := 'O Atendimento de '+cmbNivel_Atendimento.Text+' Foi Adicionado com o tipo '+cmbTipo_Atendimento.Text;
   cdsHistoricoOs.Post;
   cdsHistoricoOs.ApplyUpdates(-1);

{$REGION 'Atualiza Ponto de referencia'}

   qryModific.Close;
   qryModific.Sql.text                                  := 'Update T_Clientes Set Pto_Referencia=:parPto_Referencia where Codigo=:parCodigo ';
   qryModific.ParamByName('parPto_Referencia').asString := edtPtoReferencia.text ;
   qryModific.ParamByName('parCodigo').AsInteger        := StrToInt(edtcod_Cliente.Text);
   qryModific.ExecSQL;

{$ENDREGION}

{$REGION 'Insere servico na O.S'}
   if CaixaMensagem( 'Deseja Inserir serviços ou material nesta O.S ', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      FrmVendas                            := TfrmVendas.create(Self);
      frmvendas.Tag                        := 5; // Servicos e material utilizaso
      FrmVendas.btnincluirClick(FrmVendas.btnincluir);
      FrmVendas.edtcod_Cliente.Text        := edtCod_Cliente.Text;
      FrmVendas.edtNome_Cliente.Text       := cmbNome_Cliente.text;
      frmvendas.edtCod_FormaPagamento.Text := '001';
      frmVendas.edtCod_Funcionario.Text    := gsCod_Operador;
      FrmVendas.liseqos                    := StrToint(edtNumeroOS.text);
      FrmVendas.edtControle.Visible        := False;
      FrmVendas.lblControle.Visible        := False;
      FrmVendas.edtcod_ClienteExit(FrmVendas.edtcod_Cliente);
      FrmVendas.edtcod_FormaPagamentoExit(FrmVendas.edtcod_FormaPagamento);
      FrmVendas.edtcod_FuncionarioExit(FrmVendas.edtcod_Funcionario);
      frmVendas.Showmodal;
   End;

{$ENDREGION}

   CaixaMensagem( 'A Ordem de Serviço '+edtNumeroOS.text+' Foi Incluida com Sucesso' , ctAviso, [ cbOk ], 0 );
   BtnCancelaClick(BtnCancela);

end;

procedure Tfrmabreos.bsSkinExPanel2CanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
   cmbCod_Cliente.Visible := False;
   cmbCNPJCPF.Visible := False;

end;

procedure Tfrmabreos.btnabriosClick(Sender: TObject);
begin
   BtnCancela.Enabled   := True;
   btnok.Enabled        := True;
   btnabrios.Enabled    := False;

   pnlGeral.Enabled     := True;
   pnlnumeroos.Enabled  := True;
   edtNumeroOS.text     := Sequencia('Seqos',false,'T_Sequencias',FrmPrincipal.dbxPrincipal,'',False,8);
   cmbStatusCliente.setfocus;
   memoServico.Clear;
end;

procedure Tfrmabreos.btnCadAlunosClick(Sender: TObject);
begin
   frmCadClientes := TfrmCadClientes.Create(Nil);
   frmCadClientes.Tag := 5;
   frmCadClientes.showmodal;

   edtcod_Cliente.Text := '';
   edtcod_ClienteExit(edtcod_Cliente);

   cdsCadClientes.Close;
   cdsCadClientes.ProviderName := dspCadClientes.name;
   cdsCadClientes.Open;

   edtcod_Cliente.SetFocus;
end;

procedure Tfrmabreos.BtnCancelaClick(Sender: TObject);
begin
   BtnCancela.Enabled   := False;
   btnok.Enabled        := False;
   btnabrios.Enabled    := True;

   edtCod_Cliente.text      := '';
   cmbNome_Cliente.KeyValue := Null;
   edtCNPJCPF.Text          := '';
   edtPtoReferencia.Text    := '';
   edtSolicitante.Text      := '';
   edtNumeroOS.Text         := '';
   memoServico.Clear;    

end;

procedure Tfrmabreos.btnPesquisarClick(Sender: TObject);
var lsCoringa : String;
    lswhere   : String;
begin
//   toobar.SetFocus;

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
   End;

   qrypesquisa.Close;
   qryPesquisa.Params.Clear;
   qryPesquisa.sql.text := 'Select * from T_Clientes '+lswhere ;
   IF cmbtipoconsulta.ItemIndex = 0 Then
      qryPesquisa.ParamByName('parDescricao').AsString    := lsCoringa+EdtPesquisa.Text+'%';
   IF cmbtipoconsulta.ItemIndex = 1 Then
      qryPesquisa.ParamByName('parDescricao').AsString := EdtPesquisa.Text;
   cdspesquisa.Close;
   cdspesquisa.ProviderName :=dspPEsquisa.Name;
   cdspesquisa.Open;

   if cdsPesquisa.IsEmpty then
      CaixaMensagem( 'Cliente não encontrado ', ctAviso, [ cbOk ], 0 );

   if cmbtipoconsulta.ItemIndex = 1 then
   Begin
      qrypesquisa.Close;
      qryPesquisa.Params.Clear;
      qryPesquisa.sql.text := 'Select ven.Seqvenda, Ven.Controle from T_Ctasreceber Rec '+
                              '   Inner Join T_vendas Ven on ' +
                              '         Ven.Seqvenda=Rec.Seqvenda '+
                              'Where Rec.Cod_Cliente=:parcod_Cliente and Rec.Status=:parStatus '  ;

      qryPesquisa.ParamByName('parCod_Cliente').AsString := cdspesquisa.FieldByName('Codigo').AsString;
      qryPesquisa.ParamByName('parStatus').AsString      := '0';

      //cdsPesquisaDebito.Close;
      //cdsPesquisaDebito.ProviderName :=dspPEsquisa.Name;
      //cdsPesquisaDebito.Open;

      //If not cdsPesquisaDebito.IsEmpty Then
        // CaixaMensagem( 'Cliente tem compra em aberto Controle '+cdsPesquisaDebito.FieldByName('Controle').AsString, ctAviso, [ cbOk ], 0 );
   End;
end;

procedure Tfrmabreos.cmbCNPJCPFClick(Sender: TObject);
begin
if Trim( cmbCNPJCPF.Text ) <> '' then
   begin
      cmbNome_Cliente.KeyValue := cmbCNPJCPF.Text;
      cmbNome_ClienteChange(cmbNome_Cliente);
   end
   else
   begin
      CaixaMensagem( 'Cliente ' + Trim( edtCod_Cliente.Text ) + ' não encontrado.', ctAviso, [ cbOk ], 0 );
      edtCod_Cliente.SetFocus;
      exit;
   end;
end;

procedure Tfrmabreos.cmbCod_ClienteChange(Sender: TObject);
begin
   cmbnome_Cliente.Keyvalue  :=  CmbCod_Cliente.Keyvalue ;
   if Trim(cmbNome_Cliente.Text) <> '' Then
   Begin
      edtCod_Cliente.text     :=  cmbCod_Cliente.Text;
      edtCnpjCpf.Text         := Trim(cdsCadClientes.FieldByName('CnpjCpf').asString);
      edtPtoReferencia.Text   := Trim(cdsCadClientes.FieldByName('Pto_Referencia').asString);
      if Length( edtCNPJCPF.Text ) <= 11 then
      begin
        lblCNPJCPF.Caption   := 'C.P.F.';
        edtCNPJCPF.EditMask := '###.###.###-##;0;_';
      End
      Else
      Begin
        lblCNPJCPF.Caption   := 'C.N.P.J.';
        edtCNPJCPF.EditMask  := '##.###.###/####-##;0;_';
      End;
      sdtsConsultaCli.close;
      sdtsConsultaCli.DataSet.CommandText := 'Select Count(seqvenda) as Qtde, Sum(vlr_areceber) As Total From T_Ctasreceber '+
                                             'where cod_Cliente=:parCod_Cliente and Status=:parStatus';
      sdtsConsultaCli.DataSet.ParamByName('parCod_Cliente').AsInteger := StrToInt(edtcod_Cliente.Text);
      sdtsConsultaCli.DataSet.ParamByName('parStatus').AsInteger      := 0;
      sdtsConsultaCli.Open;
      cdsCadClientes.Locate('codigo',edtcod_Cliente.Text,[]);

      pvbBloqueaOS := False;
      if cdsCadClientes.FieldByName('Status').AsString = '1' then
      Begin
         CaixaMensagem( 'Este Cliente esta em Cobrança ', ctAviso, [ cbOk ], 0 );
         CaixaMensagem( 'Esta O.S ficara bloqueda aguardando liberação !', ctAviso, [ cbOk ], 0 );
         pvbBloqueaOS := True;
      End;
      if cdsCadClientes.FieldByName('Status').AsString = '2' then
      Begin
         CaixaMensagem( 'Este Cliente foi bloqueado para venda/serviço ', ctAviso, [ cbOk ], 0 );
         CaixaMensagem( 'Esta O.S ficara bloqueda aguardando liberação !', ctAviso, [ cbOk ], 0 );
         pvbBloqueaOS := True;
      End;
      cdsCadClientes.Locate('Codigo',edtCod_Cliente.text,[]);
      if (sdtsConsultaCli.FieldByName('Qtde').AsInteger>=cdsCadClientes.FieldByName('Qtde_PedAberto').AsInteger)  then
      begin
         CaixaMensagem( 'O cliente possui '+sdtsConsultaCli.FieldByName('Qtde').asString+' pedidos em aberto !', ctAviso, [ cbOk ], 0 );
         CaixaMensagem( 'Esta O.S ficara bloqueda aguardando liberação !', ctAviso, [ cbOk ], 0 );
         pvbBloqueaOS := True;
      end;
      sdtsBuscaObras.Close;
      sdtsBuscaObras.DataSet.CommandText :=' Select Nome_Obra from  T_OrdemServico where cod_Cliente=:parCod_Cliente ';
      sdtsBuscaObras.DataSet.ParamByName('ParCod_Cliente').AsInteger := StrToInt(edtcod_Cliente.Text);
      sdtsBuscaObras.Open;
      cmbObras.Items.Clear;
      while not sdtsBuscaObras.Eof do
      Begin
         cmbObras.items.add(sdtsBuscaObras.FieldByname('Nome_Obra').asString);
         sdtsBuscaObras.Next;
      End;
   End;

end;

procedure Tfrmabreos.cmbNome_ClienteChange(Sender: TObject);
begin
   CmbCod_Cliente.Keyvalue := cmbnome_Cliente.Keyvalue;
   if Trim(cmbNome_Cliente.Text) <> '' Then
   Begin
      edtCod_Cliente.text   :=  cmbCod_Cliente.Text;
   End;
end;

procedure Tfrmabreos.EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if KEY=13 then
     btnPesquisarClick(btnPesquisar);
end;

procedure Tfrmabreos.FormShow(Sender: TObject);
begin
   pnlGeral.Enabled     := false;
   pnlnumeroos.Enabled  := false;

   qryCadClientes.Close;
   qryCadClientes.Params.Clear;
   qryCadClientes.SQL.text :=' Select Codigo,CNPJCPF,DESCRICAO,Status,Qtde_PedAberto,Pto_Referencia '+
                             ' from T_Clientes WHERE Ativo=:parAtivo '+
                             ' Order by Descricao ';

   qryCadClientes.ParamByName('parAtivo').AsString := 'S';

   cdsCadClientes.Close;
   cdsCadClientes.ProviderName := dspCadClientes.Name;
   cdsCadClientes.Open;

   pnlConsultaClinete.RollState := True;
end;

procedure Tfrmabreos.GridClintesDblClick(Sender: TObject);
begin
   edtCod_Cliente.Text := cdspesquisa.FieldByName('Codigo').AsString;
   edtCod_ClienteExit(edtCod_Cliente);
end;

end.
