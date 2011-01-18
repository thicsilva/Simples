unit usequencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, ExtCtrls, ToolWin,
  ComCtrls, DB, DBClient, SimpleDS, FMTBcd, SqlExpr, SqlTimst,uFormBase,
  BusinessSkinForm;

type
  TfrmSequencias = class(TFormBase)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    edtSeqVenda: TbsSkinEdit;
    sdtsSequencia: TSimpleDataSet;
    qryModific: TSQLQuery;
    edtData_Mov: TbsSkinDateEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtSeqEntrada: TbsSkinEdit;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtNumeroOS: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edtSeqAvaria: TbsSkinEdit;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtSeqInventario: TbsSkinEdit;
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtSeqVendaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSequencias: TfrmSequencias;

implementation

uses uPrincipal,Ufuncoes;
{$R *.dfm}

procedure TfrmSequencias.btnokClick(Sender: TObject);
begin

   sdtsSequencia.Close;
   sdtsSequencia.DataSet.CommandText := 'SELECT * FROM T_Sequencias where Tipo_sequencia=:parTipo_Sequencia';
   sdtsSequencia.DataSet.ParamByName('parTipo_Sequencia').AsString := 'SeqVenda';
   sdtsSequencia.Open;

   Try
      If sdtsSequencia.IsEmpty Then
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'INSERT INTO T_Sequencias ( Sequencia,Tipo_sequencia,'+
                                'Data_cad, Cod_emp ) '+
                                'VALUES (:parSequencia,:parTipo_sequencia,'+
                                ':parData_cad, :parCod_emp)';
         qryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp  := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End
      Else
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'UPDATE T_Sequencias SET Sequencia=:parSequencia, '+
                                'Data_Atu=:parData_Atu, Cod_emp=:parCod_emp where Tipo_sequencia=:parTipo_sequencia And Cod_Emp=:parCod_Emp ';
         qryModific.ParamByName( 'parData_Atu' ).AsSQLTimeStamp := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End;

      qryModific.ParamByName( 'parSequencia' ).AsString         := edtSeqVenda.Text;
      qryModific.ParamByName( 'parCod_Emp' ).AsString           := gsCod_Emp;
      qryModific.ParamByName( 'parTipo_Sequencia' ).AsString    := 'SeqVenda';
      qryModific.ExecSQL;

   Except
      On E: Exception Do
      Begin
         CaixaMensagem( 'Não foi possível atualizar as sequências "' + E.Message + '"', ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;

   sdtsSequencia.Close;
   sdtsSequencia.DataSet.CommandText := 'SELECT * FROM T_Sequencias where Tipo_sequencia=:parTipo_Sequencia';
   sdtsSequencia.DataSet.ParamByName('parTipo_Sequencia').AsString := 'Seqos';
   sdtsSequencia.Open;

   Try
      If sdtsSequencia.IsEmpty Then
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'INSERT INTO T_Sequencias ( Sequencia,Tipo_sequencia,'+
                                'Data_cad, Cod_emp ) '+
                                'VALUES (:parSequencia,:parTipo_sequencia,'+
                                ':parData_cad, :parCod_emp)';
         qryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp  := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End
      Else
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'UPDATE T_Sequencias SET Sequencia=:parSequencia, '+
                                'Data_Atu=:parData_Atu, Cod_emp=:parCod_emp where Tipo_sequencia=:parTipo_sequencia And Cod_Emp=:parCod_Emp ';
         qryModific.ParamByName( 'parData_Atu' ).AsSQLTimeStamp := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End;

      qryModific.ParamByName( 'parSequencia' ).AsString         := edtNumeroOS.Text;
      qryModific.ParamByName( 'parCod_Emp' ).AsString           := gsCod_Emp;
      qryModific.ParamByName( 'parTipo_Sequencia' ).AsString    := 'Seqos';
      qryModific.ExecSQL;

   Except
      On E: Exception Do
      Begin
         CaixaMensagem( 'Não foi possível atualizar as sequências "' + E.Message + '"', ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;


   sdtsSequencia.Close;
   sdtsSequencia.DataSet.CommandText := 'SELECT * FROM T_Sequencias where Tipo_sequencia=:parTipo_Sequencia';
   sdtsSequencia.DataSet.ParamByName('parTipo_Sequencia').AsString := 'Data_Mov';
   sdtsSequencia.Open;

   Try
      If sdtsSequencia.IsEmpty Then
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'INSERT INTO T_Sequencias ( Sequencia,Tipo_sequencia,'+
                                'Data_cad, Cod_emp ) '+
                                'VALUES (:parSequencia,:parTipo_sequencia,'+
                                ':parData_cad, :parCod_emp)';
         qryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp  := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End
      Else
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'UPDATE T_Sequencias SET Sequencia=:parSequencia, '+
                                'Data_Atu=:parData_Atu, Cod_emp=:parCod_emp where Tipo_sequencia=:parTipo_sequencia And Cod_Emp=:parCod_Emp ';
         qryModific.ParamByName( 'parData_Atu' ).AsSQLTimeStamp := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End;

      qryModific.ParamByName( 'parSequencia' ).AsString         := FormatDateTime('dd/mm/yyyy',StrTodate(edtData_Mov.text));
      qryModific.ParamByName( 'parCod_Emp' ).AsString           := gsCod_Emp;
      qryModific.ParamByName( 'parTipo_Sequencia' ).AsString    := 'Data_Mov';
      qryModific.ExecSQL;

   Except
      On E: Exception Do
      Begin
         CaixaMensagem( 'Não foi possível atualizar as sequências "' + E.Message + '"', ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;

   sdtsSequencia.Close;
   sdtsSequencia.DataSet.CommandText := 'SELECT * FROM T_Sequencias where Tipo_sequencia=:parTipo_Sequencia';
   sdtsSequencia.DataSet.ParamByName('parTipo_Sequencia').AsString := 'SeqEntrada';
   sdtsSequencia.Open;

   Try
      If sdtsSequencia.IsEmpty Then
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'INSERT INTO T_Sequencias ( Sequencia,Tipo_sequencia,'+
                                'Data_cad, Cod_emp ) '+
                                'VALUES (:parSequencia,:parTipo_sequencia,'+
                                ':parData_cad, :parCod_emp)';
         qryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp  := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End
      Else
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'UPDATE T_Sequencias SET Sequencia=:parSequencia, '+
                                'Data_Atu=:parData_Atu, Cod_emp=:parCod_emp where Tipo_sequencia=:parTipo_sequencia And Cod_Emp=:parCod_Emp ';
         qryModific.ParamByName( 'parData_Atu' ).AsSQLTimeStamp := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End;

      qryModific.ParamByName( 'parSequencia' ).AsString         := edtSeqEntrada.Text;
      qryModific.ParamByName( 'parCod_Emp' ).AsString           := gsCod_Emp;
      qryModific.ParamByName( 'parTipo_Sequencia' ).AsString    := 'SeqEntrada';
      qryModific.ExecSQL;

   Except
      On E: Exception Do
      Begin
         CaixaMensagem( 'Não foi possível atualizar as sequências "' + E.Message + '"', ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;

   sdtsSequencia.Close;
   sdtsSequencia.DataSet.CommandText := 'SELECT * FROM T_Sequencias where Tipo_sequencia=:parTipo_Sequencia';
   sdtsSequencia.DataSet.ParamByName('parTipo_Sequencia').AsString := 'SeqAvaria';
   sdtsSequencia.Open;

   Try
      If sdtsSequencia.IsEmpty Then
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'INSERT INTO T_Sequencias ( Sequencia,Tipo_sequencia,'+
                                'Data_cad, Cod_emp ) '+
                                'VALUES (:parSequencia,:parTipo_sequencia,'+
                                ':parData_cad, :parCod_emp)';
         qryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp  := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End
      Else
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'UPDATE T_Sequencias SET Sequencia=:parSequencia, '+
                                'Data_Atu=:parData_Atu, Cod_emp=:parCod_emp where Tipo_sequencia=:parTipo_sequencia And Cod_Emp=:parCod_Emp ';
         qryModific.ParamByName( 'parData_Atu' ).AsSQLTimeStamp := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End;

      qryModific.ParamByName( 'parSequencia' ).AsString         := edtSeqAvaria.Text;
      qryModific.ParamByName( 'parCod_Emp' ).AsString           := gsCod_Emp;
      qryModific.ParamByName( 'parTipo_Sequencia' ).AsString    := 'SeqAvaria';
      qryModific.ExecSQL;

   Except
      On E: Exception Do
      Begin
         CaixaMensagem( 'Não foi possível atualizar as sequências "' + E.Message + '"', ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;

   sdtsSequencia.Close;
   sdtsSequencia.DataSet.CommandText := 'SELECT * FROM T_Sequencias where Tipo_sequencia=:parTipo_Sequencia';
   sdtsSequencia.DataSet.ParamByName('parTipo_Sequencia').AsString := 'SeqInventario';
   sdtsSequencia.Open;

   Try
      If sdtsSequencia.IsEmpty Then
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'INSERT INTO T_Sequencias ( Sequencia,Tipo_sequencia,'+
                                'Data_cad, Cod_emp ) '+
                                'VALUES (:parSequencia,:parTipo_sequencia,'+
                                ':parData_cad, :parCod_emp)';
         qryModific.ParamByName( 'parData_Cad' ).AsSQLTimeStamp  := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End
      Else
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'UPDATE T_Sequencias SET Sequencia=:parSequencia, '+
                                'Data_Atu=:parData_Atu, Cod_emp=:parCod_emp where Tipo_sequencia=:parTipo_sequencia And Cod_Emp=:parCod_Emp ';
         qryModific.ParamByName( 'parData_Atu' ).AsSQLTimeStamp := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
      End;

      qryModific.ParamByName( 'parSequencia' ).AsString         := edtSeqAvaria.Text;
      qryModific.ParamByName( 'parCod_Emp' ).AsString           := gsCod_Emp;
      qryModific.ParamByName( 'parTipo_Sequencia' ).AsString    := 'SeqInventario';
      qryModific.ExecSQL;

   Except
      On E: Exception Do
      Begin
         CaixaMensagem( 'Não foi possível atualizar as sequências "' + E.Message + '"', ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;


   gsData_Mov := StrTodate(edtData_Mov.text);
   frmprincipal.StatusBar.Panels[0].Text := 'Data do Movimento .: '+Formatdatetime('dd/mm/yyyy',gsdata_mov);
   frmprincipal.StatusBar.Update;
   Close;
end;

procedure TfrmSequencias.edtSeqVendaExit(Sender: TObject);
begin
   tbsskinedit(sender).Text := inczero(tbsskinedit(sender).Text,8);
end;

procedure TfrmSequencias.FormShow(Sender: TObject);
begin
   sdtsSequencia.Close;
   sdtsSequencia.DataSet.CommandText := 'SELECT * FROM T_Sequencias';
   TrataSQL( sdtsSequencia, gsCod_Emp );
   sdtsSequencia.Open;
   // --> valores padrões
   edtSeqVenda.Text      := '00000001';
   edtSeqEntrada.Text    := '00000001';
   edtNumeroOS.Text      := '00000001';
   edtSeqAvaria.Text     := '00000001';
   edtSeqInventario.Text := '00000001';
   edtData_Mov.Text    := FormatDateTime('dd/mm/yyyy',Now);
   // --> valores padrões

   while not sdtsSequencia.Eof Do
   Begin
      If UpperCase( sdtsSequencia.FieldByname('Tipo_Sequencia').AsString ) = UpperCase('SeqVenda') Then
         edtSeqVenda.Text := sdtsSequencia.FieldByname('Sequencia').AsString
      Else If UpperCase( sdtsSequencia.FieldByname('Tipo_Sequencia').AsString ) = UpperCase('Data_Mov') Then
         edtData_Mov.Text := sdtsSequencia.FieldByname('Sequencia').AsString
      Else If UpperCase( sdtsSequencia.FieldByname('Tipo_Sequencia').AsString ) = UpperCase('SeqEntrada') Then
         edtSeqEntrada.Text := sdtsSequencia.FieldByname('Sequencia').AsString
      Else If UpperCase( sdtsSequencia.FieldByname('Tipo_Sequencia').AsString ) = UpperCase('SeqOs') Then
         edtNumeroOS.Text := sdtsSequencia.FieldByname('Sequencia').AsString
      Else If UpperCase( sdtsSequencia.FieldByname('Tipo_Sequencia').AsString ) = UpperCase('SeqAvaria') Then
         edtSeqAvaria.Text := sdtsSequencia.FieldByname('Sequencia').AsString
      Else If UpperCase( sdtsSequencia.FieldByname('Tipo_Sequencia').AsString ) = UpperCase('SeqInventario') Then
         edtSeqInventario.Text := sdtsSequencia.FieldByname('Sequencia').AsString;
       sdtsSequencia.Next;
   End;

end;

procedure TfrmSequencias.btnFecharClick(Sender: TObject);
begin
   close;
end;

end.
