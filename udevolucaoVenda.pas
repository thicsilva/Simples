unit udevolucaoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, ExtCtrls, ToolWin,
  ComCtrls, EditNew, BusinessSkinForm, FMTBcd, SqlExpr,sqlTimSt, DB,
  Provider, DBClient, Grids, DBGrids, bsSkinGrids, bsDBGrids;

type
  TfrmDevolucaoVenda = class(TForm)
    grpDevolveItem: TbsSkinGroupBox;
    cdsTmpItensDevolucoes: TClientDataSet;
    srcTmpItensDevolucoes: TDataSource;
    cdsTmpItensDevolucoesCodigo: TIntegerField;
    cdsTmpItensDevolucoesDescricao: TStringField;
    cdsTmpItensDevolucoesPco_Venda: TFloatField;
    dspVariavel: TDataSetProvider;
    qryVariavel: TSQLQuery;
    cdsItensvendas: TClientDataSet;
    dbgConsulta: TbsSkinDBGrid;
    qryItensDevolucoes: TSQLQuery;
    dspItensDevolucoes: TDataSetProvider;
    cdsItensDevolucoes: TClientDataSet;
    cdsTmpItensDevolucoesPerc_Desc: TFloatField;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    qrymodific: TSQLQuery;
    cdsTmpItensDevolucoespco_Custo: TFloatField;
    qrySaldos: TSQLQuery;
    dspSaldos: TDataSetProvider;
    cdsSaldos: TClientDataSet;
    cdsTmpItensDevolucoesPco_Venda_Atual: TFloatField;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinStatusPanel1: TbsSkinStatusPanel;
    edtVlr_Recebido: TbsSkinEdit;
    cdsTmpItensDevolucoesTotal: TFloatField;
    btnTotalizar: TbsSkinSpeedButton;
    cdsHistoricoOS: TClientDataSet;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    btnFechar: TbsSkinSpeedButton;
    SkinForm: TbsBusinessSkinForm;
    cdsTmpItensDevolucoesqtde_Devolvida: TFloatField;
    cdsTmpItensDevolucoesqtde_Vendida: TFloatField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure cdsTmpItensDevolucoesCalcFields(DataSet: TDataSet);
    procedure dbgConsultaColExit(Sender: TObject);
    procedure btnTotalizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     lrvlr_TotalItem  : Real;
     lrVlr_Devolvido  : Real;
     piSeqVenda       : Integer;
     piseqOS          : Integer;
     pilote           : Integer;
     piRomaneioId     : Integer;
    { Public declarations }
  end;

var
  frmDevolucaoVenda: TfrmDevolucaoVenda;

implementation

uses uPrincipal,Ufuncoes, uVendeBrinde, uSelMotivoStatus, uBaixaTipo_01_Brinde,uDaoRomaneio,uDaoContaReceber;

{$R *.dfm}

procedure TfrmDevolucaoVenda.btnTotalizarClick(Sender: TObject);
var lrTotal  : Double;
    lscodigo : String;
begin
   lscodigo := cdsTmpItensDevolucoes.FieldByName('Codigo').AsString;
   cdsTmpItensDevolucoes.First;
   lrTotal := 0;
   while not cdsTmpItensDevolucoes.Eof do
   Begin
      lrtotal := lrtotal + cdsTmpItensDevolucoes.FieldByName('Total').AsFloat ;
      cdsTmpItensDevolucoes.next;
   End;
   edtVlr_Recebido.text :=  formatFloat('0.00',lrtotal);
   cdsTmpItensDevolucoes.Locate('codigo',lscodigo,[]);
end;

procedure TfrmDevolucaoVenda.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmDevolucaoVenda.btnokClick(Sender: TObject);
Var  trdNrTransacao : TTransactionDesc;
     lrVlr_Desconto : Real;
     vlr_anterior   : Double;
     vlr_Atual      : Double;
     lsitensDevolvidos : String;
     lrVlr_custo : Double;
     lrVlr_Total : Double;
     loDaoRomaneio : TDaoRomaneio;
     loDaoContaAReceber : TDaoContareceber;
     VendaId : Integer;
begin
   btnTotalizarClick(btnTotalizar);

   lrvlr_TotalItem   := 0 ;
   lrVlr_Devolvido   := 0 ;
   lrVlr_Desconto    := 0 ;
   lrVlr_custo       := 0 ;
   lrVlr_Total       := 0 ;

   cdsTmpItensDevolucoes.First;
   while not cdsTmpItensDevolucoes.Eof do
   Begin
      if  cdsTmpItensDevolucoes.FieldByName('Qtde_vendida').AsFloat<cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsFloat Then
      Begin
         CaixaMensagem( 'A Quantidade devolvida não pode ser maior que a venda', ctAviso, [ cbOk ], 0 );
         exit;
      End;
      cdsTmpItensDevolucoes.next;
   End;


   if not frmPrincipal.dbxPrincipal.InTransaction then
   begin
      trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
      frmPrincipal.dbxPrincipal.StartTransaction( trdNrTransacao );
   end;

   lsitensDevolvidos := '';
   VendaId := strtoint(copy(grpDevolveItem.Caption,1,(pos('-',grpDevolveItem.Caption)-1)));
   {$REGION 'Devolução dos Itens '}

   if frmDevolucaoVenda.Tag<>2 then
   Begin
      cdsTmpItensDevolucoes.First;
      while not cdsTmpItensDevolucoes.Eof do
      Begin
         lrVlr_custo := lrVlr_custo + ( cdsTmpItensDevolucoes.FieldByName('Pco_Custo').Asfloat * ( cdsTmpItensDevolucoes.FieldByName('Qtde_Vendida').AsInteger - cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsInteger));
         lrVlr_Total := lrVlr_Total + ( cdsTmpItensDevolucoes.FieldByName('Pco_Venda').Asfloat * ( cdsTmpItensDevolucoes.FieldByName('Qtde_Vendida').AsInteger - cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsInteger));
         if cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsInteger > 0 then
         Begin
             lrVlr_Devolvido := lrVlr_Devolvido + (cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger) ;
             lrVlr_Desconto  := lrVlr_Desconto +  (cdsTmpItensDevolucoes.FieldByName('Vlr_Desconto').asFloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger) ;
             lrvlr_TotalItem := ( ( cdsTmpItensDevolucoes.FieldByName('Qtde_Vendida').asFloat - cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger ) *
                                    cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat ) ;
            Try
               qrymodific.Close;
               qrymodific.Params.Clear;
               qrymodific.SQL.Text :='Update T_Itensvendas set Qtde_Devolvida = ( Qtde_Devolvida + :parQtde_Devolvida ), '+
                                     '                         Qtde_Venda = ( Qtde_Venda - :parQtde_Devolvida_02 ), '+
                                     '                         Status = :parStatus, '+
                                     '                         Vlr_total=:parVlr_Total, Operador=:parOperador '+
                                     'Where SeqVenda=:parSeqvenda and Cod_Produto=:parCod_Produto ';
               qrymodific.ParamByName('ParSeqVenda').AsInteger          := VendaId;
               qrymodific.ParamByName('ParCod_Produto').AsInteger       := cdsTmpItensDevolucoes.FieldByName('Codigo').asInteger;
               qrymodific.ParamByName('ParQtde_Devolvida').AsInteger    := cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsInteger;
               qrymodific.ParamByName('ParOperador').AsString           := gsOperador;
               qrymodific.ParamByName('ParQtde_Devolvida_02').AsInteger := cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsInteger;
               qrymodific.ParamByName('ParVlr_Total').AsFloat           := lrvlr_TotalItem;
               qrymodific.ParamByName('parStatus').AsString      := 'N';
               if Arredondar(cdsTmpItensDevolucoes.FieldByName('Qtde_Vendida').asFloat - cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsFloat,2)=0 Then
                  qrymodific.ParamByName('parStatus').AsString   := 'C';
               qrymodific.ExecSQL;
            except
               frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
               Exit;
            End;

            qryItensDevolucoes.Close;
            qryItensDevolucoes.SQL.Text :='Select * from T_ItensDevolucoes where 1=2';
            cdsItensDevolucoes.Close;
            cdsItensDevolucoes.ProviderName := dspItensDevolucoes.Name;
            cdsItensDevolucoes.Open;

            Try
               cdsItensDevolucoes.Append;
               cdsItensDevolucoes.FieldByName('Cod_Produto').asInteger      := cdsTmpItensDevolucoes.FieldByName('Codigo').asInteger;
               cdsItensDevolucoes.FieldByName('SeqVenda').asInteger         := VendaId;
               cdsItensDevolucoes.FieldByName('Qtde_Devolvida').asFloat     := cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger;
               cdsItensDevolucoes.FieldByName('Pco_Venda').asFloat          := cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat;
               cdsItensDevolucoes.FieldByName('Pco_Custo').asFloat          := cdsTmpItensDevolucoes.FieldByName('Pco_Custo').Asfloat;
               cdsItensDevolucoes.FieldByName('Data_Cad').asDateTime        := now;
               cdsItensDevolucoes.FieldByName('Data_Devolucao').asDateTime  := gsData_mov;
               cdsItensDevolucoes.FieldByname('Operador').AsString          := gsOperador;
               cdsItensDevolucoes.FieldByname('Cod_Emp').AsString           := gsCod_Emp;
               cdsItensDevolucoes.FieldByName('Data_Mov').asDateTime        := gsdata_Mov;
               cdsItensDevolucoes.Post;
               cdsItensDevolucoes.ApplyUpdates(-1);
            except
               frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
               Exit;
            End;

            if cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat > cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').Asfloat then
            Begin
               vlr_anterior := (cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger ) ;
               vlr_Atual    := (cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').Asfloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger ) ;
                qrySaldos.Close;
               qrySaldos.Params.Clear;
               qrySaldos.Sql.Text :='Select * from T_saldos where 1=2';
               Try
                  cdsSaldos.Close;
                  cdsSaldos.ProviderName := dspSaldos.Name;
                  cdsSaldos.Open;

                  cdsSaldos.Append;
                  cdsSaldos.FieldByName('Codigo').AsInteger      := StrToInt( Sequencia('Codigo',False,'T_Saldos',FrmPrincipal.dbxPrincipal,'',False,8 ) );
                  cdsSaldos.FieldByName('Cod_emp').AsString      := GsCod_Emp;
                  cdsSaldos.FieldByName('E_S').AsString          := 'S';
                  cdsSaldos.FieldByName('Operador').AsString     := GsOperador;
                  cdsSaldos.FieldByName('Cod_Produto').AsInteger := cdsTmpItensDevolucoes.FieldByName('Codigo').asInteger;
                  cdsSaldos.FieldByName('Pco_Venda').AsFloat     := (vlr_Anterior-vlr_Atual);
                  cdsSaldos.FieldByName('Pco_Custo').AsFloat     := 0;
                  cdsSaldos.FieldByName('Data_cad').AsDateTime   := Now;
                  cdsSaldos.FieldByName('Data_Mov').AsDateTime   := GsData_Mov;
                  cdsSaldos.FieldByName('Qtde').AsInteger        := 1;
                  cdsSaldos.FieldByName('Historico').AsString    := 'Vendido a '+FormatFloat('0.00',cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat)+
                                                                    ' Recebido '+FormatFloat('0.00',cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').asFloat);
                  cdsSaldos.FieldByName('Tipo_Movimento').AsString := 'DEBITO DE DEVOLUCAO';
                  cdsSaldos.Post;
                  cdsSaldos.ApplyUpdates(-1);
               except
                  frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
                  Exit;
               End;

            End;

            if cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat < cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').Asfloat then
            Begin
               vlr_anterior := (cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger ) ;
               vlr_Atual    := (cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').Asfloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger ) ;

               qrySaldos.Close;
               qrySaldos.Params.Clear;
               qrySaldos.Sql.Text :='Select * from T_saldos where 1=2';

               Try
                  cdsSaldos.Close;
                  cdsSaldos.ProviderName := dspSaldos.Name;
                  cdsSaldos.Open;

                  cdsSaldos.Append;
                  cdsSaldos.FieldByName('Codigo').AsInteger      := StrToInt( Sequencia('Codigo',False,'T_Saldos',FrmPrincipal.dbxPrincipal,'',False,8 ) );
                  cdsSaldos.FieldByName('Cod_emp').AsString      := GsCod_Emp;
                  cdsSaldos.FieldByName('Operador').AsString     := GsOperador;
                  cdsSaldos.FieldByName('E_S').AsString          := 'E';
                  cdsSaldos.FieldByName('Cod_Produto').AsInteger := cdsTmpItensDevolucoes.FieldByName('Codigo').asInteger;
                  cdsSaldos.FieldByName('Pco_Venda').AsFloat     := (vlr_Atual-vlr_Anterior);
                  cdsSaldos.FieldByName('Pco_Custo').AsFloat     := 0;
                  cdsSaldos.FieldByName('Data_cad').AsDateTime   := Now;
                  cdsSaldos.FieldByName('Data_Mov').AsDateTime   := GsData_Mov;
                  cdsSaldos.FieldByName('Qtde').AsInteger        := 1;
                  cdsSaldos.FieldByName('Historico').AsString    := 'Vendido a '+FormatFloat('0.00',cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat)+
                                                                     ' Recebido '+FormatFloat('0.00',cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').asFloat);
                   cdsSaldos.FieldByName('Tipo_Movimento').AsString := 'CREDITO DE DEVOLUCAO';
                   cdsSaldos.Post;
                   cdsSaldos.ApplyUpdates(-1);
                except
                   frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
                   Exit;
                End;
             End;
          End;
          lsitensDevolvidos := lsitensDevolvidos + 'Codigo.:'+IncZero(cdsTmpItensDevolucoes.FieldByName('Codigo').asString,5)+' Qtde.: '+cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asString+' ';

          cdsTmpItensDevolucoes.Next;
       End;

       {$REGION 'Atualizando Valor da Venda'}

       try
          if lrVlr_Devolvido>0 then
          Begin
             qrymodific.Close;
             qrymodific.Params.Clear;
             qrymodific.SQL.Text :='Update T_vendas set Vlr_total    = ( vlr_total    - :parvlr_total ), '+
                                   '                    Vlr_Desconto = ( Vlr_Desconto - :parVlr_Desconto ), '+
                                   '                    LucroBruto =:parLucroBruto, '+
                                   '                    CustoTotal =:parCustoTotal '+
                                   'Where SeqVenda=:parSeqvenda  ';
             qrymodific.ParamByName('ParSeqVenda').AsInteger          := piSeqVenda;
             qrymodific.ParamByName('ParVlr_Total').AsFloat           := lrVlr_Devolvido;
             qrymodific.ParamByName('ParVlr_Desconto').AsFloat        := lrVlr_Desconto;
             qrymodific.ParamByName('parLucroBruto').AsFloat          := ((lrVlr_Total-lrVlr_custo)/lrVlr_Total)*100;
             qrymodific.ParamByName('parCustoTotal').AsFloat          := lrVlr_custo;
             qrymodific.ExecSQL;

          End;

      except
        frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
        Exit;
     End;
     {$ENDREGION}

   End;
   {$ENDREGION}

   {$REGION 'Lançando Ocorrencia da O S'}

   if piseqos<>0 then
   Begin

      qryVariavel.Close;
      qryVariavel.Params.Clear;
      qryVariavel.Sql.Text := 'Select * from T_HistoricoOS where 1=2 ';

      Try
         cdsHistoricoOs.Close;
         cdsHistoricoOs.ProviderName := dspVariavel.Name;
         cdsHistoricoOs.open;

         cdsHistoricoOs.Append;
         cdsHistoricoOs.FieldByName('Cod_Emp').asString    := gsCod_Emp;
         cdsHistoricoOs.FieldByName('Operador').asString   := GsOperador;
         cdsHistoricoOs.FieldByName('SeqOS').asInteger     := piseqos;
         cdsHistoricoOs.FieldByName('Data_cad').asDateTime := now;
         cdsHistoricoOs.FieldByName('Data_Mov').asDateTime := GsData_mov;
         cdsHistoricoOs.FieldByName('Ocorrencia').asString := 'A venda ' + intToStr(piseqvenda)+' referente a O.S. '+
                                                               intToStr(piseqOs)+' teve um item CANCELADO ';
         cdsHistoricoOs.FieldByName('Historico').asString  := ' Os Itens a seguir e suas respequitivas quantidades foram canceladas '+lsitensDevolvidos;
         cdsHistoricoOs.Post;
         cdsHistoricoOs.ApplyUpdates(-1);
      except
         frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
         Exit;
      End;

      freeandnil(frmMotivoStatus);

      qryModific.Close;
      qryModific.Params.Clear;
      qryModific.Sql.text  := 'Update T_OrdemServico Set Vlr_Os = vlr_Os - :parVlr_Os '+
                              'where SeqOs=:parSeqOs ';
      qryModific.ParamByName('parVlr_Os').asFloat  := lrVlr_Devolvido;
      qryModific.ParamByName('parSeqOs').AsInteger := piseqOs;
      qryModific.ExecSQL;

   End;
   {$ENDREGION}

   if frmDevolucaoVenda.Tag=2 then
   Begin
      frmBaixaBrinde.cdsTmpItensDevolucoes.EmptyDataSet;
      frmBaixaBrinde.cdsTmpItensDevolucoes.Data := cdsTmpItensDevolucoes.Data;
   End;
   frmPrincipal.dbxPrincipal.Commit( trdNrTransacao );
   frmDevolucaoVenda.tag := 1;

   loDaoContaAReceber := TDaoContareceber.Create(gConexao);
   loDaoContaAReceber.AtualizarValorDosTitulos(VendaID,StrTofloat(edtVlr_Recebido.Text));
   FreeAndnil(loDaoContaAReceber);

   loDaoRomaneio := TdaoRomaneio.Create(gConexao);
   loDaoRomaneio.AtualizarTotalDoRomaneio(piRomaneioId);
   FreeAndNil(loDaoRomaneio);
   close;
End;

procedure TfrmDevolucaoVenda.cdsTmpItensDevolucoesCalcFields(DataSet: TDataSet);
begin
   If cdsTmpItensDevolucoes.Fieldbyname('Qtde_Devolvida').AsFloat > 0 Then
      cdsTmpItensDevolucoes.Fieldbyname('Total').AsFloat := ( cdsTmpItensDevolucoes.Fieldbyname('Qtde_Devolvida').AsFloat*cdsTmpItensDevolucoes.Fieldbyname('pco_Venda').AsFloat)
   Else
      cdsTmpItensDevolucoes.Fieldbyname('Total').AsFloat := 0 ;

end;

procedure TfrmDevolucaoVenda.dbgConsultaColExit(Sender: TObject);
var lrTotal  : Double;
    lscodigo : String;
begin
   lscodigo := cdsTmpItensDevolucoes.FieldByName('Codigo').AsString;
   cdsTmpItensDevolucoes.First;
   lrTotal := 0;
   while not cdsTmpItensDevolucoes.Eof do
   Begin
      lrtotal := lrtotal + cdsTmpItensDevolucoes.FieldByName('Total').AsFloat ;
      cdsTmpItensDevolucoes.next;
   End;
   edtVlr_Recebido.text :=  formatFloat('0.00',lrtotal);
   cdsTmpItensDevolucoes.Locate('codigo',lscodigo,[]);
end;

procedure TfrmDevolucaoVenda.FormCreate(Sender: TObject);
begin
  piseqOS := 0;
end;

procedure TfrmDevolucaoVenda.FormShow(Sender: TObject);
begin

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Prod.Descricao,Prod.Pco_Compra,Prod.Pco_Venda as Venda_Atual, Itens.* from T_itensVendas Itens '+
                           'Left Join T_produtos Prod On ' +
                           '      Prod.Codigo=Itens.Cod_Produto '+
                           'Where SeqVenda=:parSeqvenda ';
   qryVariavel.ParamByName('parSeqvenda').AsInteger := piSeqVenda;

   cdsItensVendas.Close;
   cdsItensVendas.ProviderName := dspVariavel.Name;
   cdsItensVendas.Open;

   while not cdsitensvendas.Eof do
   Begin
      cdsTmpItensDevolucoes.Append;
      cdsTmpItensDevolucoes.FieldByName('Codigo').AsInteger         := cdsitensvendas.FieldByName('Cod_Produto').AsInteger;
      cdsTmpItensDevolucoes.FieldByName('Descricao').AsString       := cdsitensvendas.FieldByName('descricao').AsString;
      cdsTmpItensDevolucoes.FieldByName('Qtde_Vendida').AsInteger   := cdsitensvendas.FieldByName('Qtde_Venda').AsInteger;
      cdsTmpItensDevolucoes.FieldByName('Pco_Venda').Asfloat        := (cdsitensvendas.FieldByName('Pco_Venda').Asfloat-cdsitensvendas.FieldByName('Vlr_Desconto').Asfloat);
      cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').Asfloat  := cdsitensvendas.FieldByName('Venda_Atual').Asfloat;
      cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsInteger := 0;
      cdsTmpItensDevolucoes.FieldByName('Pco_Custo').Asfloat        := cdsitensvendas.FieldByName('PrecoCusto').Asfloat;
      cdsTmpItensDevolucoes.FieldByName('Vlr_Desconto').Asfloat     := cdsitensvendas.FieldByName('Vlr_Desconto').Asfloat;
      cdsTmpItensDevolucoes.post;
      cdsItensvendas.Next;
   End;


end;

end.
