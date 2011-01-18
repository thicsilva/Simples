unit uSelRelEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, RDprint, DB, ADODB, DBCtrls, StdCtrls,uFormBase,
  EditNew, ExtCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, BusinessSkinForm,
  bsdbctrls, Provider, DBClient, RpRave, RpBase, RpSystem, RpDefine, RpCon,
  RpConDS, FMTBcd, SqlExpr,SqlTimSt;

type
  TfrmselrelEntradas = class(TFormBase)
    ImpMatricial: TRDprint;
    bsSkinGroupBox1: TbsSkinGroupBox;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    lblTurma: TbsSkinStdLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    cmbPeriodo: TbsSkinComboBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    cmbTipoRelatorio: TbsSkinComboBox;
    qryRelatorio: TSQLQuery;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnimprimir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    procedure BotaoFecharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure btnFecharClick(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    pvilinha : Integer;
    { Public declarations }
  end;

var
  frmselrelEntradas: TfrmselrelEntradas;

implementation


uses uprincipal,ufuncoes ;
{$R *.dfm}

procedure TfrmselrelEntradas.BotaoFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmselrelEntradas.btnImprimirClick(Sender: TObject);
var lsNome_Quebra  : String;
    lrVlr_Entrada  : Real;
    lrVlr_Total    : Real;
    lrQtde_Entrada : Real;
    lrQtde_Total   : Real;
begin

   gsTituloRel  := 'Relatorio de Entrada de Mercadoria ';
   gsperiodoRel := 'De '+dtpData_Ini.Text+' a '+dtpData_Fim.Text;

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := False;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   qryRelatorio.close;
   qryRelatorio.SQL.Text :='select ent.SeqEntrada, Ent.Cod_Fornecedor, Forne.Descricao, '+
                           '       Ent.Data_entrada, Ent.Operador,Ent.Vlr_Total, Itens.*, '+
                           '       Prod.Descricao '+
                           'From T_entradas Ent '+
                           '     Left Join T_fornecedores Forne On '+
                           '          Forne.Codigo=Ent.Cod_Fornecedor '+
                           '     Left join T_ItensEntradas itens On '+
                           '          Itens.SeqEntrada=Ent.Seqentrada '+
                           '     Left Join T_Produtos Prod On '+
                           '          Prod.Codigo=Itens.Cod_Produto '+
                           'Where Ent.Data_Entrada>=:parData_Ini and Ent.Data_Entrada<=:parData_Fim ';
   qryRelatorio.parambyname('parData_Ini').AsSqlTimeStamp := StrtoSqltimeStamp(dtpData_Ini.Text);
   qryRelatorio.parambyname('parData_Fim').AsSqlTimeStamp := StrtoSqltimeStamp(dtpData_Fim.Text);

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;

   lrVlr_Entrada  := 0;
   lrVlr_Total    := 0;
   lsNome_Quebra :='FORCA QUEBRA';

   While not cdsRelatorio.Eof Do
   begin
      if lsNome_Quebra<>cdsRelatorio.FieldByname('Descricao').AsString then
      Begin
         IF lsNome_Quebra<>'FORCA QUEBRA' Then
         Begin
            if cmbTipoRelatorio.ItemIndex = 0 then
            Begin
               impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
               pviLinha:=Pvilinha+1;
               impmatricial.Imp(pvilinha,001,'Total da Entrada');
            End;
            impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',lrQtde_Entrada),[]);
            impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Entrada),[]);
            pviLinha:=Pvilinha+2;
            lrVlr_Entrada  := 0;
            lrQtde_Entrada := 0;
         End;
         impmatricial.Imp(pvilinha,001,cdsrelatorio.FieldByName('Descricao').AsString );
         if cmbTipoRelatorio.ItemIndex = 0 then
         Begin
            pviLinha:=Pvilinha+1;
            impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
            pviLinha:=Pvilinha+1;
         End;
         lsNome_Quebra:=cdsRelatorio.FieldByname('Descricao').AsString;
      End;
      if cmbTipoRelatorio.ItemIndex = 0 then
      Begin
         impmatricial.Imp(pvilinha,001,IncZero(cdsrelatorio.FieldByName('Cod_Produto').AsString,5)+' '+cdsrelatorio.FieldByName('Descricao').AsString );
         impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',cdsrelatorio.fieldByname('Qtde_Entrada').asfloat),[]);
         impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',cdsrelatorio.fieldByname('Pco_Entrada').asfloat),[]);
         impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
         pvilinha := pvilinha + 1 ;
      End;
      lrVlr_Total    := lrVlr_Total    + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
      lrVlr_Entrada  := lrVlr_Entrada  + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
      lrQtde_Entrada := lrQtde_Entrada + cdsrelatorio.fieldByname('Qtde_Entrada').asfloat;
      lrQtde_Total   := lrQtde_Total   + cdsrelatorio.fieldByname('Qtde_Entrada').asfloat;
      if pvilinha>60 then
         impmatricial.Novapagina;

      cdsRelatorio.Next;
   end;
   if cmbTipoRelatorio.ItemIndex = 0 then
   Begin
      impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
      pviLinha:=Pvilinha+1;
      impmatricial.Imp(pvilinha,001,'Total da Entrada ');
   End;
   impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',lrQtde_Entrada),[]);
   impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Entrada),[]);
   pviLinha:=Pvilinha+2;

   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Total Geral ');
   impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',lrQtde_Total),[]);
   impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrvlr_Total),[]);
   pviLinha:=Pvilinha+2;
impmatricial.Fechar;
end;

procedure TfrmselrelEntradas.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmselrelEntradas.FormShow(Sender: TObject);
begin
   cmbPeriodoChange(cmbPeriodo);
end;

procedure TfrmselrelEntradas.ImpMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), Pagina);
   pviLinha := 06;
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                                    Quant.               Total ');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

procedure TfrmselrelEntradas.btnFecharClick(Sender: TObject);
begin
   close;
end;

end.
