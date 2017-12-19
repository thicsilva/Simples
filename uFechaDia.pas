unit uFechaDia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, bsSkinCtrls, bsSkinBoxCtrls, ExtCtrls, ToolWin, ComCtrls,
  FMTBcd, DBClient, Provider, DB, SqlExpr, SqlTimSt, SimpleDS, CheckLst;

type
  TfrmFechaDia = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinStatusBar1: TbsSkinStatusBar;
    lstTarefas: TbsSkinCheckListBox;
    qryVariavel: TSQLQuery;
    dspvariavel: TDataSetProvider;
    cdsProcedimento: TClientDataSet;
    sdtsOcorrencias: TSimpleDataSet;
    qryModific: TSQLQuery;
    GaugeProgresso: TbsSkinGauge;
    cdsVendas: TClientDataSet;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    StatusBar1: TStatusBar;
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
  function RetornarLimiteCredito(Cod_Cliente : string ) : double;
    { Public declarations }
  end;

var
  frmFechaDia: TfrmFechaDia;

implementation

uses uprincipal,ufuncoes;

{$R *.dfm}

procedure TfrmFechaDia.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFechaDia.btnokClick(Sender: TObject);
var lrdias : real;
begin

   QryVariavel.Close;
   QryVariavel.Params.Clear;
   QryVariavel.SQL.Text := 'Select Cli.Codigo,Descricao,Receber.Data_Vencimento,Receber.Documento from t_clientes Cli '+
                           'inner Join T_ctasreceber Receber on '+
                           'Receber.Cod_Cliente=Cli.Codigo '+
                           'where Receber.Status=0 and Receber.Data_Vencimento<:parData_Vencimento And '+
                           'Cli.Status=0 ' ;
   QryVariavel.ParamByName('parData_Vencimento').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov);

   cdsProcedimento.Close;
   cdsProcedimento.ProviderName := dspVariavel.name;
   cdsProcedimento.Open;
   GaugeProgresso.MaxValue := cdsProcedimento.RecordCount+1;
   GaugeProgresso.Value    := 1 ;
   GaugeProgresso.Visible := true;
   while not cdsProcedimento.eof do
   Begin
      if StrToInt(gParametros.Ler( '', '[CADASTRO]', 'qtdeNumeroDias', '999' ))<>999 then
      Begin
         lrdias := (gsdata_Mov-cdsProcedimento.FieldByName('Data_Vencimento').AsDateTime);
         if  lrdias > StrToInt(gParametros.Ler( '', '[CADASTRO]', 'qtdeNumeroDias', '999' ))  then
         Begin
            sdtsOcorrencias.Close;
            sdtsOcorrencias.DataSet.CommandText := 'Select * from T_Ocorrencias ';
            sdtsOcorrencias.Open;

            sdtsOcorrencias.Append;
            sdtsOcorrencias.FieldByName('Cod_Cliente').AsInteger := cdsProcedimento.FieldByName('Codigo').asInteger;
            sdtsOcorrencias.FieldByName('Ocorrencia').AsString   := 'Clienet Bloqueado com Titulo '+cdsProcedimento.FieldByName('Documento').AsString+' Atrasado a '+floatToStr(lrDias)+' Dias';
            sdtsOcorrencias.FieldByName('Data_Cad').AsDateTime   := now;
            sdtsOcorrencias.FieldByName('Operador').AsString     := gsOperador;
            sdtsOcorrencias.FieldByName('Cod_Emp').AsString      := gsCod_emp;
            sdtsOcorrencias.FieldByName('Sequencia').Asinteger   := StrtoInt( Sequencia('Sequencia',False,'T_Ocorrencias',FrmPrincipal.dbxPrincipal,'',False,8));
            sdtsOcorrencias.post;
            sdtsOcorrencias.ApplyUpdates(-1);

            qryModific.Close;
            qryModific.SQL.Text := ' Update T_clientes set Status=:parStatus, Operador=:parOperador, Data_Atu=:parData_Atu where Codigo=:parCod_Cliente ';
            qryModific.ParamByName('parStatus').AsInteger        := 2;
            qryModific.ParamByName('parCod_Cliente').AsInteger   := cdsProcedimento.FieldByName('Codigo').asInteger;
            qryModific.ParamByName('parOperador').AsString       := gsOperador;
            qryModific.ParamByName('parData_Atu').AsSQLTimeStamp := DateTimeToSQLTimeStamp(gsData_mov);
            qryModific.ExecSQL;

            qryModific.Close;
            qryModific.SQL.Text := ' Update T_clientes set  limite_Credito=:parLimite_credito, Operador=:parOperador, Data_Atu=:parData_Atu where Codigo=:parCod_Cliente ';
            qryModific.ParamByName('parCod_Cliente').AsInteger   := cdsProcedimento.FieldByName('Codigo').asInteger;
            qryModific.ParamByName('parOperador').AsString       := gsOperador;
            qryModific.ParamByName('parData_Atu').AsSQLTimeStamp := DateTimeToSQLTimeStamp(gsData_mov);
            qryModific.ParamByName('parLimite_Credito').AsFloat  := RetornarLimiteCredito(cdsProcedimento.FieldByName('Codigo').asString);
            qryModific.ExecSQL;

         End;
      End
      else
      Begin
            qryModific.Close;
            qryModific.SQL.Text := ' Update T_clientes set  limite_Credito=:parLimite_credito, Operador=:parOperador, Data_Atu=:parData_Atu where Codigo=:parCod_Cliente ';
            qryModific.ParamByName('parCod_Cliente').AsInteger   := cdsProcedimento.FieldByName('Codigo').asInteger;
            qryModific.ParamByName('parOperador').AsString       := gsOperador;
            qryModific.ParamByName('parData_Atu').AsSQLTimeStamp := DateTimeToSQLTimeStamp(gsData_mov);
            qryModific.ParamByName('parLimite_Credito').AsFloat  := RetornarLimiteCredito(cdsProcedimento.FieldByName('Codigo').asString);
            qryModific.ExecSQL;
      End;
      StatusBar1.Panels[0].Text := inttoStr(cdsprocedimento.RecordCount)+'/'+IntToStr(GaugeProgresso.Value+1);
      StatusBar1.Update;

      GaugeProgresso.Value := GaugeProgresso.Value+1;
      GaugeProgresso.Update;
      cdsProcedimento.Next;
   End;
   lstTarefas.Checked[0] := true;



   {If Uppercase(Formatdatetime('ddd',gsdata_mov))='TER' Then
   Begin
      QryVariavel.Close;
      QryVariavel.Params.Clear;
      QryVariavel.SQL.Text := 'SELECT Documento, Sequencia FROM T_Ctasreceber '+
                              'WHERE Status=:parStatus and '+
                              '      ( Data_Vencimento>=:parData_VencimentoIni and Data_Vencimento<=:parData_VencimentoFim )';

      QryVariavel.ParamByName('parData_VencimentoIni').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov-7);
      QryVariavel.ParamByName('parData_VencimentoFim').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov-2);
      QryVariavel.ParamByName('parStatus').AsString                    := '0';

      cdsProcedimento.Close;
      cdsProcedimento.ProviderName := dspVariavel.name;
      cdsProcedimento.Open;

      GaugeProgresso.MaxValue := cdsProcedimento.RecordCount+1;
      GaugeProgresso.Value    := 1 ;

      while not  cdsProcedimento.Eof do
      Begin
         qryModific.Close;
         qryModific.Params.Clear;
         qryModific.SQL.Text := 'Update T_Ctasreceber set Repasse=:parRepasse, data_Repasse=:parData_Repasse '+
                                 'Where Documento=:parDocumento and Sequencia=:parSequencia';
         qryModific.ParamByName('parDocumento').asString           := cdsProcedimento.FieldByName('Documento').AsString;
         qryModific.ParamByName('parRepasse').asString             := 'S';
         qryModific.ParamByName('parData_Repasse').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov);
         qryModific.ParamByName('parSequencia').asInteger          := cdsProcedimento.FieldByName('Sequencia').AsInteger;
         qryModific.ExecSQL;

         GaugeProgresso.Value := GaugeProgresso.Value+1;
         cdsProcedimento.Next;
      End;
      lstTarefas.Checked[1] := true;
   End;
   If Uppercase(Formatdatetime('ddd',gsdata_mov))='TER' Then
   Begin
      QryVariavel.Close;
      QryVariavel.Params.Clear;
      QryVariavel.SQL.Text := 'SELECT Documento, Sequencia FROM T_Ctasreceber '+
                              'WHERE Status=:parStatus and '+
                              '      ( Data_Vencimento>=:parData_VencimentoIni and Data_Vencimento<=:parData_VencimentoFim )';

      QryVariavel.ParamByName('parData_VencimentoIni').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov-7);
      QryVariavel.ParamByName('parData_VencimentoFim').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov-2);
      QryVariavel.ParamByName('parStatus').AsString                    := '0';

      cdsProcedimento.Close;
      cdsProcedimento.ProviderName := dspVariavel.name;
      cdsProcedimento.Open;

      GaugeProgresso.MaxValue := cdsProcedimento.RecordCount+1;
      GaugeProgresso.Value    := 1 ;

      while not  cdsProcedimento.Eof do
      Begin
         qryModific.Close;
         qryModific.Params.Clear;
         qryModific.SQL.Text := 'Update T_Ctasreceber set Repasse=:parRepasse, data_Repasse=:parData_Repasse '+
                                 'Where Documento=:parDocumento and Sequencia=:parSequencia';
         qryModific.ParamByName('parDocumento').asString           := cdsProcedimento.FieldByName('Documento').AsString;
         qryModific.ParamByName('parRepasse').asString             := 'S';
         qryModific.ParamByName('parData_Repasse').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov);
         qryModific.ParamByName('parSequencia').asInteger          := cdsProcedimento.FieldByName('Sequencia').AsInteger;
         qryModific.ExecSQL;

         GaugeProgresso.Value := GaugeProgresso.Value+1;
         cdsProcedimento.Next;
      End;
      lstTarefas.Checked[1] := true;
   End;
   lstTarefas.Checked[2] := true;
   gsData_Mov :=(gsData_mov+1);
   frmprincipal.StatusBar.Panels[0].Text := 'Data do Movimento .: '+Formatdatetime('dd/mm/yyyy',gsdata_mov);
   frmprincipal.StatusBar.Update;  }

   CaixaMensagem( 'Fechamento efetuado com sucesso', ctAviso, [ cbOk ], 0 );;
   CaixaMensagem( 'A data do movimento é '+Formatdatetime('dd/mm/yyyy',gsdata_mov), ctAviso, [ cbOk ], 0 );;
   close;
end;

function TfrmFechaDia.RetornarLimiteCredito(Cod_Cliente: string): double;
var Total: double;
begin

   QryVariavel.Close;
   QryVariavel.Params.Clear;
   QryVariavel.SQL.Text := 'SELECT Top 3 vlr_Total FROM T_Vendas '+
                           'WHERE Cod_Cliente=:parCod_Cliente and Status<>'+QuotedSTR('5');
   QryVariavel.ParamByName('parCod_Cliente').AsString  := Cod_Cliente;

   cdsVendas.Close;
   cdsVendas.ProviderName := dspVariavel.name;
   cdsVendas.Open;
   Total := 0 ;
   while not cdsvendas.Eof do
   begin
      total := total + cdsvendas.FieldByname('vlr_total').Asfloat;
      cdsvendas.Next;
   end;

   result := (Total/cdsvendas.RecordCount)+200;

end;

end.
