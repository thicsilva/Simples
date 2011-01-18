unit uManutencaoOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, ExtCtrls, ToolWin,
  ComCtrls, bsdbctrls, BusinessSkinForm, FMTBcd, Provider, SqlExpr, DB, DBClient;

type
  TfrmManutencaoOs = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinExPanel2: TbsSkinExPanel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    lblCNPJCPF: TbsSkinStdLabel;
    edtOS_Informada: TbsSkinEdit;
    edtCod_Cliente: TbsSkinEdit;
    edtCNPJCPF: TbsSkinEdit;
    bsSkinLabel2: TbsSkinLabel;
    edtNumeroOS: TbsSkinEdit;
    edtNome_Cliente: TbsSkinEdit;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinStatusBar1: TbsSkinStatusBar;
    edtCod_Auxiliar: TbsSkinEdit;
    bsSkinStdLabel15: TbsSkinStdLabel;
    cmbCod_Auxiliar: TbsSkinDBLookupComboBox;
    cmbNome_Auxiliar: TbsSkinDBLookupComboBox;
    cmbNome_Tecnico: TbsSkinDBLookupComboBox;
    edtcod_Tecnico: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    cmbCod_Tecnico: TbsSkinDBLookupComboBox;
    lblOsInformada: TbsSkinStdLabel;
    lbldataHora: TbsSkinStdLabel;
    edtOs: TbsSkinEdit;
    edtData_Atendimento: TbsSkinDateEdit;
    edtHoraAtendimento: TbsSkinTimeEdit;
    SkinForm: TbsBusinessSkinForm;
    cdsCadFuncionarios: TClientDataSet;
    srcCadFuncionarios: TDataSource;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    qryos: TSQLQuery;
    dspos: TDataSetProvider;
    srcos: TDataSource;
    cdsos: TClientDataSet;
    cmbNivel_Atendimento: TbsSkinComboBox;
    bsSkinStdLabel5: TbsSkinStdLabel;
    qryHistoricoOS: TSQLQuery;
    dspHistoricoOS: TDataSetProvider;
    srcHistoricoOS: TDataSource;
    cdsHistoricoOS: TClientDataSet;
    bsSkinLabel1: TbsSkinLabel;
    procedure FormShow(Sender: TObject);
    procedure cmbNome_AuxiliarChange(Sender: TObject);
    procedure cmbCod_AuxiliarChange(Sender: TObject);
    procedure edtCod_AuxiliarExit(Sender: TObject);
    procedure cmbNome_TecnicoChange(Sender: TObject);
    procedure cmbCod_TecnicoChange(Sender: TObject);
    procedure edtcod_TecnicoExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
  public
     lbReagendamento : Boolean;
    { Public declarations }
  end;

var
  frmManutencaoOs: TfrmManutencaoOs;

implementation
uses uprincipal, ufuncoes;

{$R *.dfm}

procedure TfrmManutencaoOs.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmManutencaoOs.btnokClick(Sender: TObject);
begin
   {
   if (Trim(edtOs.text)='') and (frmManutencaoOS.Tag<>2) Then
   Begin
      CaixaMensagem( 'A O.S. Informada não pode ficar vazio ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
    }
   if Trim(edtcod_Tecnico.Text)= '' then
   Begin
      CaixaMensagem( 'O tecnico não pode ficar vazio ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if Trim(edtCod_Auxiliar.Text)= '' then
   Begin
      CaixaMensagem( 'O auxiliar tecnico não pode ficar vazio ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if Trim(edtData_Atendimento.Text)= '' then
   Begin
      CaixaMensagem( 'O data de atendimento não pode ficar vazio ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if Trim(edtHoraAtendimento.Text)= '' then
   Begin
      CaixaMensagem( 'O horario de atendimento não pode ficar vazio ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   qryos.Close;
   qryos.Params.Clear;
   qryos.Sql.Text := 'Select * from T_OrdemServico where SeqOs=:parSeqOs ';
   qryos.ParamByName('parSeqOS').AsInteger := Strtoint(edtNumeroOS.text);

   cdsOs.Close;
   cdsos.ProviderName := dspos.Name;
   cdsos.open;

   cdsos.Edit;
   cdsos.FieldByName('Nivel_Atendimento').asString := inttoStr(cmbNivel_Atendimento.ItemIndex);
   cdsos.FieldByName('Status').asString            := 'M';
   If frmManutencaoOS.Tag = 2 Then
      cdsos.FieldByName('Status').asString         := 'G';
   cdsos.FieldByName('Operador').asString          := gsOperador;
   cdsos.FieldByName('Data_Agendada').asDateTime   := StrToDatetime(edtData_Atendimento.Text+' '+edtHoraAtendimento.text);
   cdsos.FieldByName('Data_Atu').asDateTime        := gsData_Mov;
   cdsos.FieldByName('Cod_Funcionario').asInteger  := StrToint(edtcod_Tecnico.Text);
   cdsos.FieldByName('Cod_Auxiliar').asInteger     := StrToint(edtCod_Auxiliar.text);
  // cdsos.FieldByName('Os_Informada').asString      := edtOs.Text;
   cdsos.post;
   cdsos.ApplyUpdates(-1);

   qryHistoricoOs.Close;
   qryHistoricoOs.Params.Clear;
   qryHistoricoOs.Sql.Text := 'Select * from T_HistoricoOS where 1=2 ';

   cdsHistoricoOs.Close;
   cdsHistoricoOs.ProviderName := dspHistoricoOs.Name;
   cdsHistoricoOs.open;

   if not lbReagendamento then
   Begin
      cdsHistoricoOs.Append;
      cdsHistoricoOs.FieldByName('Cod_Emp').asString    := gsCod_Emp;
      cdsHistoricoOs.FieldByName('Operador').asString   := GsOperador;
      cdsHistoricoOs.FieldByName('SeqOS').asInteger     := StrtoInt(edtNumeroOS.text);
      cdsHistoricoOs.FieldByName('Data_cad').asDateTime := now;
      cdsHistoricoOs.FieldByName('Data_Mov').asDateTime := GsData_mov;
      if frmManutencaoOS.Tag = 2 Then
      Begin
      cdsHistoricoOs.FieldByName('Ocorrencia').asString := 'A O.S. '+edtNumeroOS.text+' foi Agendada ';
      cdsHistoricoOs.FieldByName('Historico').asString  := 'O atendimento de '+cmbNivel_Atendimento.Text+' foi atribuido ao Tecnico '+
                                                           cmbNome_Tecnico.text+' com o auxiliar '+cmbNome_Auxiliar.Text+
                                                           ' e Com Atendimento previsto para as '+edtHoraAtendimento.Text+
                                                           ' do dia '+edtData_Atendimento.Text;
      end
      Else
      Begin
         cdsHistoricoOs.FieldByName('Ocorrencia').asString := 'A O.S. '+edtNumeroOS.text+' foi liberada para Atendimento ('+edtOs.Text+')';
         cdsHistoricoOs.FieldByName('Historico').asString  := 'O Atendimento de '+cmbNivel_Atendimento.Text+' foi atribuido ao Tecnico '+
                                                              cmbNome_Tecnico.text+' com o Auxiliar '+cmbNome_Auxiliar.Text+
                                                              ' e Com Atendimento previsto para as '+edtHoraAtendimento.Text+
                                                              ' do dia '+edtData_Atendimento.Text;
      End;
      cdsHistoricoOs.Post;
   End
   Else
   Begin
      cdsHistoricoOs.Append;
      cdsHistoricoOs.FieldByName('Cod_Emp').asString    := gsCod_Emp;
      cdsHistoricoOs.FieldByName('Operador').asString   := GsOperador;
      cdsHistoricoOs.FieldByName('SeqOS').asInteger     := StrtoInt(edtNumeroOS.text);
      cdsHistoricoOs.FieldByName('Data_cad').asDateTime := now;
      cdsHistoricoOs.FieldByName('Data_Mov').asDateTime := GsData_mov;
      cdsHistoricoOs.FieldByName('Ocorrencia').asString := 'A O.S. '+edtNumeroOS.text+' Foi Re-Agendada ';
      cdsHistoricoOs.FieldByName('Historico').asString  := 'O atendimento de '+cmbNivel_Atendimento.Text+' foi atribuido ao Tecnico '+
                                                           cmbNome_Tecnico.text+' com o auxiliar '+cmbNome_Auxiliar.Text+
                                                           ' e Com Atendimento previsto para as '+edtHoraAtendimento.Text+
                                                           ' do dia '+edtData_Atendimento.Text;
      cdsHistoricoOs.Post;
   End;
   cdsHistoricoOs.ApplyUpdates(-1);
   if lbReagendamento then
      CaixaMensagem( 'A Ordem de Serviço '+edtNumeroOS.text+' foi Re-agendada' , ctAviso, [ cbOk ], 0 )
   Else if frmManutencaoOS.Tag = 2 Then
      CaixaMensagem( 'A Ordem de Serviço '+edtNumeroOS.text+' foi agendada' , ctAviso, [ cbOk ], 0 )
   Else
      CaixaMensagem( 'A Ordem de Serviço '+edtNumeroOS.text+' Esta em Atendimento' , ctAviso, [ cbOk ], 0 );

   frmManutencaoOs.Tag := 1;

   Close;
end;

procedure TfrmManutencaoOs.cmbCod_AuxiliarChange(Sender: TObject);
begin
   cmbNome_Auxiliar.KeyValue  :=  cmbCod_Auxiliar.KeyValue;
   if Trim(cmbCod_Auxiliar.Text)<>'' Then
      edtCod_Auxiliar.Text := cmbCod_Auxiliar.Text
end;

procedure TfrmManutencaoOs.cmbCod_TecnicoChange(Sender: TObject);
begin
   cmbNome_Tecnico.KeyValue  :=  cmbCod_Tecnico.KeyValue;
   if Trim(cmbCod_Tecnico.Text)<>'' Then
      edtCod_Tecnico.Text := cmbCod_Tecnico.Text
end;

procedure TfrmManutencaoOs.cmbNome_AuxiliarChange(Sender: TObject);
begin
   cmbCod_Auxiliar.KeyValue  :=  cmbNome_Auxiliar.KeyValue;
end;

procedure TfrmManutencaoOs.cmbNome_TecnicoChange(Sender: TObject);
begin
   cmbCod_Tecnico.KeyValue  :=  cmbNome_Tecnico.KeyValue;
end;

procedure TfrmManutencaoOs.edtCod_AuxiliarExit(Sender: TObject);
begin
   if trim(edtCod_Auxiliar.text)<>'' then
   Begin
      cmbCod_Auxiliar.KeyValue := StrToInt(edtCod_Auxiliar.text);
      cmbCod_AuxiliarChange(cmbCod_Auxiliar);
      if Trim(cmbNome_Auxiliar.Text) = '' Then
      Begin
         cmbNome_Auxiliar.KeyValue := Null;
         edtCod_Auxiliar.Text      := '';
         CaixaMensagem( 'Vendedor nao localizado', ctAviso, [ cbOk ], 0 );
      End;
   End;
end;

procedure TfrmManutencaoOs.edtcod_TecnicoExit(Sender: TObject);
begin
 if trim(edtCod_Tecnico.text)<>'' then
   Begin
      cmbCod_Tecnico.KeyValue := StrToInt(edtCod_Tecnico.text);
      cmbCod_TecnicoChange(cmbCod_Tecnico);
      if Trim(cmbNome_Tecnico.Text) = '' Then
      Begin
         cmbNome_Tecnico.KeyValue := Null;
         edtCod_Tecnico.Text      := '';
         CaixaMensagem( 'Vendedor nao localizado', ctAviso, [ cbOk ], 0 );
      End;
   End;
end;

procedure TfrmManutencaoOs.FormCreate(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Funcionarios order by Descricao ';

   cdsCadFuncionarios.Close;
   cdsCadFuncionarios.ProviderName := dspVariavel.Name;
   cdsCadFuncionarios.Open;
end;

procedure TfrmManutencaoOs.FormShow(Sender: TObject);
begin
   If frmManutencaoOs.tag = 2 Then
   Begin
      btnok.Caption            := 'Agendar';
      lblOsInformada.visible   := False;
      edtData_Atendimento.SetFocus;
      edtData_Atendimento.date := gsData_Mov;
   End;
   edtcod_Tecnico.SetFocus;
end;

end.
