unit uselrelClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, ExtCtrls, ToolWin, ComCtrls, bsdbctrls, StdCtrls,
  bsSkinTabs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,uformbase,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, Mask, bsSkinBoxCtrls, FMTBcd, DBClient, SqlExpr, Provider, RDprint,
  dxSkinsCore;

type
  TfrmSelRelClientes = class(TFormBase)
    impMatricial: TRDprint;
    dspRelatorio: TDataSetProvider;
    qryRelatorio: TSQLQuery;
    srcRelatorio: TDataSource;
    dspVariavel: TDataSetProvider;
    qryvariavel: TSQLQuery;
    cdsClientesDebitos: TClientDataSet;
    bsSkinPanel1: TbsSkinPanel;
    edtPercentual: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    cdsCadRotas: TClientDataSet;
    srcCadRotas: TDataSource;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    cdsCadFuncionarios: TClientDataSet;
    srcCadFuncionarios: TDataSource;
    grpSelVendedor: TbsSkinGroupBox;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    cmbCod_FuncionarioIni: TbsSkinDBLookupComboBox;
    cmbCod_FuncionarioFim: TbsSkinDBLookupComboBox;
    cmbNome_FuncionarioIni: TbsSkinDBLookupComboBox;
    cmbNome_FuncionarioFim: TbsSkinDBLookupComboBox;
    bsSkinButton1: TbsSkinButton;
    grpRota: TbsSkinGroupBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    cmbCod_RotaFim: TbsSkinDBLookupComboBox;
    cmbCod_RotaIni: TbsSkinDBLookupComboBox;
    cmbNome_RotaIni: TbsSkinDBLookupComboBox;
    cmbNome_Rotafim: TbsSkinDBLookupComboBox;
    btnLimpa: TbsSkinButton;
    cdsRelatorio: TClientDataSet;
    ProgressBar1: TProgressBar;
    procedure btnokClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure cmbCod_RotaIniChange(Sender: TObject);
    procedure cmbNome_RotaIniChange(Sender: TObject);
    procedure cmbCod_RotaFimChange(Sender: TObject);
    procedure cmbNome_RotafimChange(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cmbCod_FuncionarioIniChange(Sender: TObject);
    procedure cmbCod_FuncionarioFimChange(Sender: TObject);
    procedure cmbNome_FuncionarioIniChange(Sender: TObject);
    procedure cmbNome_FuncionarioFimChange(Sender: TObject);
  private
     pitipoRel : Integer;
     pviLinha  : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelRelClientes: TfrmSelRelClientes;

implementation

uses uprincipal,ufuncoes;

{$R *.dfm}

procedure TfrmSelRelClientes.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSelRelClientes.btnokClick(Sender: TObject);
var lsNome_Rota     : String;
    lsPercentual    : String;
    lsWhere         : String;
    lsGroupBy       : String;
    lsCampo         : String;
    lsSelect        : String;
    lsNome_Vendedor : String;
    lsCod_Vendedor  : String;
    lsIndice        : String;
    lsCod_cliente   : String;
    lsNome_Cliente  : String;
    lsEndereco      : String;
    lsBairro        : String;
    lrVlr_Total     : Real;
    lrVlr_Recebido  : Real;
    Perc_Atingido   : Real;
begin
   if Trim(cmbCod_RotaIni.text)='' then
   Begin
      CaixaMensagem( 'Informe a rota inicial para o relatorio ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   if Trim(cmbCod_RotaFim.text)='' then
   Begin
      CaixaMensagem( 'Informe a rota final para o relatorio ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   lsPercentual := edtPercentual.text;
   pitipoRel    := 2; //StrtoInt(Copy(TmenuItem(Sender).Caption,1,1));
   GstituloRel  :='Relatorio de clientes liberados sem compras ';

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 135;
   ImpMatricial.FonteTamanhoPadrao        := s17cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   lsWhere    := 'And ( Cli.Cod_Rota>=:parCod_RotaIni and Cli.Cod_Rota<=:parCod_rotaFim )' ;
   lsGroupBy  := 'Cli.Cod_Rota';
   lsSelect   := ',Cli.Cod_Rota';
   lsindice   := 'Cod_Rota;Bairro;Endereco';

   if Trim(cmbCod_FuncionarioIni.text)<>'' Then
   Begin
      if cmbCod_FuncionarioIni.KeyValue <> Null  Then
         lsWhere := lsWhere + ' And ( Ven.Cod_Funcionario>=:parCod_FuncionarioIni and Ven.Cod_Funcionario<=:parCod_FuncionarioFim) ' ;//
      lsGroupBy  := lsGroupBy + ', Ven.Cod_Funcionario';
      lsSelect   := lsSelect + ', Ven.Cod_Funcionario as Cod_Vendedor, Max(Fun.Descricao) as Vendedor ';
      lsindice   := 'Cod_Rota;Cod_Vendedor;Bairro;Endereco';
   End;

   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'SELECT Rec.Cod_Cliente as codigo,  '+
                            '       MAX(Cli.Descricao) As Descricao, '+
                            '       MAX(Cli.Endereco)  As Endereco, '+
                            '       MAX(Cli.Bairro) As Bairro, '+
                            '       MAX(Cli.Cidade) As Cidade, '+
                            '       MAX(Rec.Vlr_Original) As Vlr_Total, '+
                            '       Sum(Rec.Vlr_areceber)As Total_Areceber, '+
                            '       Sum(Rec.Vlr_recebido+Rec.vlr_Comissao)As Total_Recebido, '+
                            '       Count(Distinct(Rec.Documento)) As Tot_Qtde, '+
                            '       MAX(Rota.Descricao) as Rota '+
                            '      '+lsSelect+' '+
                            'FROM T_ctasreceber Rec '+
                            '     Left Join T_clientes Cli on '+
                            '          Cli.Codigo=Rec.Cod_Cliente '+
                            '     Left Join T_Rotas Rota On '+
                            '          Rota.Codigo=Cli.Cod_rota '+
                            '     Left join T_Vendas Ven On '+
                            '          Ven.SeqVenda=Rec.SeqVenda '+
                            '     Left join T_FormasPagamento TipoPg On '+
                            '          TipoPg.Codigo=Ven.Cod_FormaPagamento '+
                            '     Left join T_Funcionarios Fun On '+
                            '          Fun.Codigo=Ven.Cod_Funcionario '+
                            'WHERE Rec.status=:parStatus And Tipopg.SomaVenda=:parSomaVenda '+lsWhere+' '+
                            'GROUP BY Rec.Seqvenda,Rec.Cod_Cliente,'+lsGroupBy+',Cli.Bairro,Cli.Endereco '+
                            'ORDER BY '+lsGroupBy+',Cli.Bairro,Cli.Endereco';
   qryRelatorio.ParamByName('parStatus').AsString := '1';
   qryRelatorio.ParamByName('parSomaVenda').AsBoolean := True;

   if cmbNome_RotaIni.KeyValue <> Null  Then
   Begin
      qryRelatorio.ParamByName('parCod_RotaIni').AsInteger := cmbCod_RotaIni.KeyValue;
      qryRelatorio.ParamByName('parCod_RotaFim').AsInteger := cmbCod_RotaFim.KeyValue
   End;
   if cmbCod_FuncionarioIni.KeyValue <> Null  Then
   Begin
      qryRelatorio.ParamByName('parCod_FuncionarioIni').AsString := (cmbCod_FuncionarioIni.Text);
      qryRelatorio.ParamByName('parCod_FuncionarioFim').AsString := (cmbCod_FuncionarioFim.Text);
   End;

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName    := dspRelatorio.Name;
   cdsRelatorio.IndexFieldNames := lsindice;
   cdsRelatorio.Open;

   qryvariavel.Close;
   qryvariavel.Params.Clear;
   qryvariavel.SQL.text := 'Select Cod_Cliente from T_Ctasreceber where Status=:parstatus ';
   qryvariavel.ParamByName('parStatus').AsInteger := 0;

   cdsClientesDebitos.Close;
   cdsClientesDebitos.ProviderName := dspVariavel.Name;
   cdsClientesDebitos.Open;

   cdsRelatorio.First;
   ProgressBar1.Max := cdsrelatorio.RecordCount;
   ProgressBar1.Position := 0;
   while not cdsRelatorio.Eof do
   Begin
      ProgressBar1.Position := ProgressBar1.Position +1;
      ProgressBar1.Update;
      if (not cdsClientesDebitos.Locate('Cod_Cliente',cdsRelatorio.FieldByName('Codigo').AsString,[]))  then
      Begin
         if (Trim(cmbCod_RotaIni.Text)<>'') then
         Begin
             if (lsNome_Rota<>cdsRelatorio.FieldByName('Cod_Rota').AsString) Then
             Begin
                pviLinha:=Pvilinha+1;
                impmatricial.Imp(pvilinha,001,inczero(cdsRelatorio.FieldByName('Cod_Rota').AsString,3)+'-'+cdsRelatorio.FieldByName('Rota').AsString );
                pviLinha:=Pvilinha+1;
                impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
                pviLinha:=Pvilinha+1;
                lsNome_Rota:=cdsRelatorio.FieldByName('Cod_Rota').AsString;
             End;
         End;
         if (Trim(cmbCod_FuncionarioIni.Text)<>'') then
         Begin
            if (lsCod_Vendedor<>cdsRelatorio.FieldByName('Cod_Vendedor').AsString) then
            Begin
               pviLinha:=Pvilinha+1;
               impmatricial.Imp(pvilinha,001,inczero(cdsRelatorio.FieldByName('Cod_Vendedor').AsString,3)+'-'+cdsRelatorio.FieldByName('Vendedor').AsString );
               pviLinha:=Pvilinha+1;
               impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
               pviLinha:=Pvilinha+1;
               lsCod_Vendedor:=cdsRelatorio.FieldByName('Cod_Vendedor').AsString;
            End;
         End;
         lsCod_cliente  := cdsRelatorio.FieldByName('Codigo').AsString;
         lsNome_Cliente := cdsRelatorio.FieldByName('Descricao').AsString;
         lsEndereco     := Copy( cdsRelatorio.FieldByName('Endereco').AsString,1,40 );
         lsBairro       := cdsRelatorio.FieldByName('Bairro').AsString;
         lrVlr_Total    := 0;
         lrVlr_Recebido := 0;
         while (lsCod_cliente = cdsRelatorio.FieldByName('Codigo').AsString) AND (not cdsRelatorio.Eof)  do
         Begin
            lrVlr_Total    := lrVlr_Total + cdsRelatorio.FieldByName('Vlr_Total').AsFloat;
            lrVlr_Recebido := lrVlr_Recebido + cdsRelatorio.FieldByName('Total_Recebido').AsFloat;
            cdsRelatorio.next;
         End;
         Perc_Atingido := -1;

         if lrVlr_Total > 0 then
            Perc_Atingido :=(lrVlr_Recebido/lrVlr_Total)*100;

         if Perc_Atingido>=strToFloat(lsPercentual) then
         Begin
            impmatricial.Imp(pvilinha,001,IncZero(lsCod_Cliente,5)+' '+lsNome_Cliente );
            impmatricial.Imp(pvilinha,040,lsEndereco );
            impmatricial.Imp(pvilinha,082,lsBairro );

            impmatricial.Impd(pvilinha,111,FormatFloat(',0.00',lrVlr_Total),[] );
            impmatricial.Impd(pvilinha,121,FormatFloat(',0.00',lrVlr_Recebido),[] );
            impmatricial.Impd(pvilinha,130,FormatFloat(',0.00',(lrVlr_Recebido/lrVlr_Total)*100)+'%',[] );
            impmatricial.Impd(pvilinha,135,FormatFloat('0',cdsRelatorio.FieldByName('Tot_Qtde').AsFloat),[] );
            pviLinha:=Pvilinha+1;
         End;
         if pvilinha>60 then
            impmatricial.Novapagina;
      End
      Else
         cdsRelatorio.Next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
   impmatricial.Fechar;

end;

procedure TfrmSelRelClientes.cmbCod_FuncionarioFimChange(Sender: TObject);
begin
   cmbNome_FuncionarioFim.KeyValue := cmbCod_FuncionarioFim.KeyValue;
end;

procedure TfrmSelRelClientes.cmbCod_FuncionarioIniChange(Sender: TObject);
begin
   cmbNome_FuncionarioIni.KeyValue := cmbCod_FuncionarioIni.KeyValue;
end;

procedure TfrmSelRelClientes.cmbCod_RotaFimChange(Sender: TObject);
begin
   cmbNome_RotaFim.KeyValue := cmbCod_RotaFim.KeyValue;
end;

procedure TfrmSelRelClientes.cmbCod_RotaIniChange(Sender: TObject);
begin
   cmbNome_Rotaini.KeyValue := cmbCod_Rotaini.KeyValue;
end;

procedure TfrmSelRelClientes.cmbNome_FuncionarioFimChange(Sender: TObject);
begin
   cmbCod_FuncionarioFim.KeyValue := cmbNome_FuncionarioFim.KeyValue;
end;

procedure TfrmSelRelClientes.cmbNome_FuncionarioIniChange(Sender: TObject);
begin
   cmbCod_FuncionarioIni.KeyValue := cmbNome_FuncionarioIni.KeyValue;
end;

procedure TfrmSelRelClientes.cmbNome_RotafimChange(Sender: TObject);
begin
   cmbCod_RotaFim.KeyValue := cmbNome_RotaFim.KeyValue;
end;

procedure TfrmSelRelClientes.cmbNome_RotaIniChange(Sender: TObject);
begin
   cmbCod_Rotaini.KeyValue := cmbNome_Rotaini.KeyValue;
end;

procedure TfrmSelRelClientes.FormShow(Sender: TObject);
begin
   QryVariavel.Close;
   QryVariavel.SQL.text := 'Select * From T_Rotas order by codigo ';

   cdsCadRotas.Close;
   cdsCadRotas.ProviderName := dspVariavel.Name;
   cdsCadRotas.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Funcionarios order by Codigo ';

   cdsCadFuncionarios.Close;
   cdsCadFuncionarios.ProviderName := dspVariavel.Name;
   cdsCadFuncionarios.Open;


end;

procedure TfrmSelRelClientes.impMatricialNewPage(Sender: TObject; Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), Pagina );
   pviLinha := 06;
   Case pitipoRel Of

      1 : // Lista negra dos clientes
      Begin
      {   TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                       Endereco ');
         pviLinha:=Pvilinha+1;
         TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;   }
      End;
      2 : // Relatori de clientes que podem vender
      Begin
         TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                       Endereco                                  Bairro               Tot.Venda Vlr. Recebido Nº Venda ');
         pviLinha:=Pvilinha+1;
         TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',135,0));
         pviLinha:=Pvilinha+1;

      End;
   End;
end;

end.
