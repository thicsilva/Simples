unit ufechaOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinBoxCtrls, Mask, StdCtrls, ExtCtrls, ToolWin,
  ComCtrls, BusinessSkinForm, bsdbctrls, FMTBcd, DBClient, DB, Provider, SqlExpr,
  bsSkinGrids, bsDBGrids;

type
  TfrmFechaOs = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    Toobar: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinStatusBar1: TbsSkinStatusBar;
    panel03: TbsSkinExPanel;
    memoServicoExecultado: TbsSkinMemo;
    bsSkinExPanel2: TbsSkinExPanel;
    lblTroco: TbsSkinStatusPanel;
    edtTotalOs: TbsSkinEdit;
    SkinForm: TbsBusinessSkinForm;
    bsSkinLabel1: TbsSkinLabel;
    edtOS_Informada: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    lblCNPJCPF: TbsSkinStdLabel;
    edtCod_Cliente: TbsSkinEdit;
    edtCNPJCPF: TbsSkinEdit;
    bsSkinLabel2: TbsSkinLabel;
    edtNumeroOS: TbsSkinEdit;
    edtNome_Cliente: TbsSkinEdit;
    qryos: TSQLQuery;
    dspos: TDataSetProvider;
    srcos: TDataSource;
    cdsos: TClientDataSet;
    qryHistoricoOS: TSQLQuery;
    dspHistoricoOS: TDataSetProvider;
    srcHistoricoOS: TDataSource;
    cdsHistoricoOS: TClientDataSet;
    panel01: TbsSkinExPanel;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    edtData_Inicio: TbsSkinDateEdit;
    edtData_Final: TbsSkinDateEdit;
    edtHora_inicio: TbsSkinTimeEdit;
    edtHora_Final: TbsSkinTimeEdit;
    btnTudo: TbsSkinButton;
    cdsTempHorarios: TClientDataSet;
    cdsTempHorariosData_Inicio: TDateField;
    cdsTempHorariosHora_Inicio: TStringField;
    cdsTempHorariosData_Final: TDateField;
    cdsTempHorariosHora_Final: TStringField;
    srcTempHorarios: TDataSource;
    bsSkinPanel2: TbsSkinPanel;
    edtTempoTotal: TbsSkinEdit;
    bsSkinLabel3: TbsSkinLabel;
    btnPendente: TbsSkinSpeedButton;
    cdsTempHorariosTempo_Total: TStringField;
    cdsTempHorariosOs_Informada: TStringField;
    qryTempoOs: TSQLQuery;
    dspTempoOs: TDataSetProvider;
    srcTempoOs: TDataSource;
    cdsTempoOs: TClientDataSet;
    cdsTempHorariosCod_Tecnico: TIntegerField;
    cdsTempHorariosNome_Tecnico: TStringField;
    qryModific: TSQLQuery;
    edtCod_Tecnico: TbsSkinEdit;
    edtNome_Tecnico: TbsSkinEdit;
    panel02: TbsSkinExPanel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    rdgAvaliacao: TbsSkinRadioGroup;
    edtResponsavel: TbsSkinEdit;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnTudoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFechaOs: TfrmFechaOs;

implementation

uses uprincipal,ufuncoes, uSelMotivoStatus, uPrePagamento;

{$R *.dfm}

procedure TfrmFechaOs.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFechaOs.btnokClick(Sender: TObject);
var
    lbFinalizada    : Boolean;
    trdNrTransacao  : TTransactionDesc;

begin
   lbFinalizada := True;
   if (TbsSkinSpeedButton(Sender).Caption='&Pendente') then
      lbFinalizada := False;

   if Trim(edtTempoTotal.Text)= '00:00:00' then
   Begin
      CaixaMensagem( 'O tempo do atendimento não pode ser 00:00:00 ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if Trim(edtResponsavel.Text)= '' then
   Begin
      CaixaMensagem( 'Informe o responsavel pela avaliação de qualidade ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if rdgAvaliacao.ItemIndex = -1 then
   Begin
      CaixaMensagem( 'Informe a avaliação de qualidade ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if lbFinalizada then
   Begin
      frmprepagamento := tfrmPrePagamento.create(Self);
      frmprepagamento.Tag := 2;
      frmprepagamento.edtNumeroOs.Text    := edtNumeroOS.text;
      frmprepagamento.edtNumeroOs.Enabled := False;
      frmprepagamento.edtTotalTitulo.Text := edtTotalOs.text;
      frmprepagamento.showmodal;
      if frmprepagamento.tag <> 1 then
      Begin
         FreeAndNil(frmprepagamento);
         Exit;
      End;
      FreeAndNil(frmprepagamento);
   End;


   if not frmPrincipal.dbxPrincipal.InTransaction then
   begin
      trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
      frmPrincipal.dbxPrincipal.StartTransaction( trdNrTransacao );
   end;

   {$REGION 'Gravando o Tempo do Servico '}

   Try
      QryModific.Close;
      QryModific.Params.Clear;
      QryModific.Sql.text := 'Delete from T_TempoOs Where SeqOs=:parSeqOs ';
      QryModific.ParamByName('parSeqOS').AsInteger := Strtoint(edtNumeroOS.text);
      QryModific.ExecSQL;

      qryTempoOs.Close;
      qryTempoOs.Params.Clear;
      qryTempoOs.Sql.Text := 'Select * from T_TempoOs where SeqOs=:parSeqOs ';
      qryTempoOs.ParamByName('parSeqOS').AsInteger := Strtoint(edtNumeroOS.text);

      cdsTempoOs.Close;
      cdsTempoOs.ProviderName := dspTempoOs.Name;
      cdsTempoOs.open;

      cdsTempHorarios.First;
      while not cdsTempHorarios.Eof do
      Begin
         cdsTempoOs.Append;
         cdsTempoOs.FieldByname('Os_Informada').AsString   := edtOS_Informada.Text;
         cdsTempoOs.FieldByname('SeqOs').AsString          := edtNumeroOS.Text;
         cdsTempoOs.FieldByname('Cod_Tecnico').AsString    := edtCod_Tecnico.Text;
         cdsTempoOs.FieldByname('Cod_Emp').AsString        := gsCod_emp;
         cdsTempoOs.FieldByname('Operador').AsString       := GsOperador;
         cdsTempoOs.FieldByname('Data_mov').AsDateTime     := gsData_Mov;
         cdsTempoOs.FieldByname('Data_Cad').AsDateTime     := Now;
         cdsTempoOs.FieldByname('Data_Inicial').AsDateTime := StrToDateTime( FormatDateTime('DD/mm/yyyy',cdsTempHorarios.fieldByName('Data_Inicio').AsDateTime)+' '+cdsTempHorarios.fieldByName('Hora_Inicio').AsString );
         cdsTempoOs.FieldByname('Data_Final').AsDateTime   := StrToDateTime( FormatDateTime('DD/mm/yyyy',cdsTempHorarios.fieldByName('Data_Final').AsDateTime)+' '+cdsTempHorarios.fieldByName('Hora_Final').AsString );
         cdsTempoOs.FieldByname('Tempo_Total').AsString    := cdsTempHorarios.fieldByName('Tempo_Total').AsString;
         cdsTempoOs.Post;
         cdsTempHorarios.Next;
      End;
      cdsTempoOs.ApplyUpdates(-1);
   except
      frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
      Exit;
   End;

   {$ENDREGION}


   {$REGION 'Atualizando Ordem de Serviço'}
   Try

      qryos.Close;
      qryos.Params.Clear;
      qryos.Sql.Text := 'Select * from T_OrdemServico where SeqOs=:parSeqOs ';
      qryos.ParamByName('parSeqOS').AsInteger := Strtoint(edtNumeroOS.text);

      cdsOs.Close;
      cdsos.ProviderName := dspos.Name;
      cdsos.open;

      cdsos.Edit;
      cdsos.FieldByName('Status').asString            := 'F';
      If not lbFinalizada Then
         cdsos.FieldByName('Status').asString         := 'P';
      cdsos.FieldByName('Operador').asString          := gsOperador;
      cdsos.FieldByName('Cod_Emp').asString           := gsCod_Emp;
      cdsos.FieldByName('Desc_Execultado').asString   := uppercase(memoServicoExecultado.Text);
      cdsos.FieldByName('Data_Atu').asDateTime        := gsData_Mov;
      cdsos.FieldByName('Responsavel_Quality').asString := edtResponsavel.Text;
      cdsos.FieldByName('Avaliacao').asInteger          := rdgAvaliacao.ItemIndex;

      cdsos.post;
      cdsos.ApplyUpdates(-1);

   except
      frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
      Exit;
   End;

   {$ENDREGION}


   {$REGION 'Gravndo Historico'}

   Try
      qryHistoricoOs.Close;
      qryHistoricoOs.Params.Clear;
      qryHistoricoOs.Sql.Text := 'Select * from T_HistoricoOS where 1=2 ';

      cdsHistoricoOs.Close;
      cdsHistoricoOs.ProviderName := dspHistoricoOs.Name;
      cdsHistoricoOs.open;

      if lbFinalizada then
      Begin
         cdsHistoricoOs.Append;
         cdsHistoricoOs.FieldByName('Cod_Emp').asString    := gsCod_Emp;
         cdsHistoricoOs.FieldByName('Operador').asString   := GsOperador;
         cdsHistoricoOs.FieldByName('SeqOS').asInteger     := StrtoInt(edtNumeroOS.text);
         cdsHistoricoOs.FieldByName('Data_cad').asDateTime := now;
         cdsHistoricoOs.FieldByName('Data_Mov').asDateTime := GsData_mov;
         cdsHistoricoOs.FieldByName('Ocorrencia').asString := 'A O.S. '+edtNumeroOS.text+' foi Finalizado ('+edtOS_Informada.Text+')';
         cdsHistoricoOs.FieldByName('Historico').asString  := 'O Atendimento de Nº '+edtNumeroOS.Text+' foi Finalizado e o tempo total gasto foi '+
                                                                edtTempoTotal.Text;


         cdsHistoricoOs.Post;
      End
      Else
      Begin
        frmMotivoStatus := TfrmMotivoStatus.Create(Self);
        frmMotivoStatus.ShowModal;

        IF frmMotivoStatus.tag <> 1 Then
        Begin
           frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
           Exit;
        End;


        cdsHistoricoOs.Append;
        cdsHistoricoOs.FieldByName('Cod_Emp').asString    := gsCod_Emp;
        cdsHistoricoOs.FieldByName('Operador').asString   := GsOperador;
        cdsHistoricoOs.FieldByName('SeqOS').asInteger     := StrtoInt(edtNumeroOS.text);
        cdsHistoricoOs.FieldByName('Data_cad').asDateTime := now;
        cdsHistoricoOs.FieldByName('Data_Mov').asDateTime := GsData_mov;
        cdsHistoricoOs.FieldByName('Ocorrencia').asString := 'A O.S. '+edtNumeroOS.text+' esta Pendente ';
        cdsHistoricoOs.FieldByName('Historico').asString  := 'O motivo da pendencia é : '+ frmMotivoStatus.MemoMotivoStatus.Text;
        cdsHistoricoOs.Post;
        freeandnil(frmMotivoStatus);
      End;
      cdsHistoricoOs.ApplyUpdates(-1);
   except
      frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
      Exit;
   End;

   {$ENDREGION}

   frmPrincipal.dbxPrincipal.Commit( trdNrTransacao );

   if lbFinalizada then
      CaixaMensagem( 'A Ordem de Serviço '+edtNumeroOS.text+' foi Finalizada' , ctAviso, [ cbOk ], 0 )
   Else
      CaixaMensagem( 'A Ordem de Serviço '+edtNumeroOS.text+' Esta Pendente' , ctAviso, [ cbOk ], 0 );
   Close;
end;

procedure TfrmFechaOs.btnTudoClick(Sender: TObject);
var liDuracaoTotal : integer;
    liDuracaoAnt   : Integer;
begin
   cdsTempHorarios.First;
   liDuracaoAnt  := 0 ;
   while not cdsTempHorarios.Eof do
   Begin
      liDuracaoAnt := liDuracaoAnt + DifHoras( StrToDate( FormatDateTime('DD/MM/YYYY', cdsTempHorarios.FieldByName('Data_inicio').AsDateTime ) ),
                                                   StrToDate( FormatDateTime('DD/MM/YYYY', cdsTempHorarios.FieldByName('Data_Final').AsDateTime ) ),
                                                   StrToTime(  cdsTempHorarios.FieldByName('Hora_inicio').AsString ) ,
                                                   StrToTime(  cdsTempHorarios.FieldByName('Hora_Final').AsString  )  );
       cdsTempHorarios.Next;
   End;

   liDuracaoTotal := 0 ;
   liDuracaoTotal := liDuracaoTotal + DifHoras( StrToDate( edtData_Inicio.Text ),
                                                StrToDate( edtData_Final.Text  ),
                                                StrToTime( edtHora_inicio.Text ),
                                                StrToTime( edtHora_Final.Text  )  );

   edtTempoTotal.Text := Seg2Horas( liDuracaoTotal, True );

   cdsTempHorarios.Append;
   cdsTempHorarios.FieldByname('Os_Informada').AsString   := edtOS_Informada.Text;
   cdsTempHorarios.FieldByname('Nome_Tecnico').AsString   := edtNome_Tecnico.Text;
   cdsTempHorarios.FieldByname('Data_Inicio').AsDateTime  := edtData_Inicio.Date;
   cdsTempHorarios.FieldByname('Hora_Inicio').AsString    := edtHora_inicio.Text;
   cdsTempHorarios.FieldByname('Data_Final').AsDateTime   := edtData_Final.Date;
   cdsTempHorarios.FieldByname('Hora_Final').AsString     := edtHora_Final.Text;
   cdsTempHorarios.FieldByname('Tempo_Total').AsString    := edtTempoTotal.Text;
   cdsTempHorarios.Post;
   edtTempoTotal.Text := Seg2Horas( liDuracaoAnt+liDuracaoTotal, True );

end;

procedure TfrmFechaOs.FormShow(Sender: TObject);
var liDuracaoTotal : Integer;
  prAluno: TComponent;
begin
   try
     edtData_Inicio.SetFocus;
   except
   end;
   qryTempoOs.Close;
   qryTempoOs.Params.Clear;
   qryTempoOs.Sql.Text := 'Select Fun.Descricao, TempOs.* From T_TempoOs TempOs '+
                          'Left Join T_Funcionarios Fun On '+
                          '     Fun.Codigo = TempOS.Cod_Tecnico '+
                          'where SeqOs=:parSeqOs ';
   qryTempoOs.ParamByName('parSeqOS').AsInteger := Strtoint(edtNumeroOS.text);

   cdsTempoOs.Close;
   cdsTempoOs.ProviderName := dspTempoOs.Name;
   cdsTempoOs.open;

   liDuracaoTotal := 0 ;
   while not cdsTempoOs.Eof do
   Begin
      liDuracaoTotal := liDuracaoTotal + DifHoras( StrToDate( FormatDateTime('DD/MM/YYYY',cdsTempoOs.FieldByName('Data_inicial').AsDateTime ) ),
                                                   StrToDate( FormatDateTime('DD/MM/YYYY',cdsTempoOs.FieldByName('Data_Final').AsDateTime ) ),
                                                   StrToTime( FormatDateTime('hh:mm:ss',cdsTempoOs.FieldByName('Data_inicial').AsDateTime) ),
                                                   StrToTime( FormatDateTime('hh:mm:ss',cdsTempoOs.FieldByName('Data_Final').AsDateTime)  )  );

      cdsTempHorarios.Append;
      cdsTempHorarios.FieldByname('Os_Informada').AsString   := edtOS_Informada.Text;
      cdsTempHorarios.FieldByname('Nome_Tecnico').AsString   := cdsTempoOs.FieldByName('Descricao').AsString;
      cdsTempHorarios.FieldByname('Data_Inicio').AsDateTime  := cdsTempoOs.FieldByName('Data_Inicial').AsDateTime;
      cdsTempHorarios.FieldByname('Hora_Inicio').AsString    := FormatDateTime('hh:mm:ss',cdsTempoOs.FieldByName('Data_inicial').AsDateTime);
      cdsTempHorarios.FieldByname('Data_Final').AsDateTime   := cdsTempoOs.FieldByName('Data_Final').AsDateTime;
      cdsTempHorarios.FieldByname('Hora_Final').AsString     := FormatDateTime('hh:mm:ss',cdsTempoOs.FieldByName('Data_Final').AsDateTime);
      cdsTempHorarios.FieldByname('Tempo_Total').AsString    := cdsTempoOs.FieldByName('Tempo_Total').AsString;
      cdsTempHorarios.Post;
      cdsTempoOs.Next;
   End;
   edtTempoTotal.Text := Seg2Horas( liDuracaoTotal, True );
end;

end.
