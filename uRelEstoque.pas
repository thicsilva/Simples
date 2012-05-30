unit uRelEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinBoxCtrls, StdCtrls, bsSkinCtrls, bsdbctrls, ExtCtrls, ToolWin,
  ComCtrls, RDprint,uFormBase, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TFrmRelEstoque = class(TFormBase)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinExPanel1: TbsSkinExPanel;
    cmbCod_Grupo: TbsSkinDBLookupComboBox;
    cmbNome_Grupo: TbsSkinDBLookupComboBox;
    bsSkinStdLabel7: TbsSkinStdLabel;
    cmbSetores: TbsSkinDBLookupComboBox;
    cmbCod_Setor: TbsSkinDBLookupComboBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    cmbTipoResumoVenda: TbsSkinComboBox;
    ImpMatricial: TRDprint;
    qryRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    qryVariavel: TSQLQuery;
    dspvariavel: TDataSetProvider;
    srcSetores: TDataSource;
    cdsSetores: TClientDataSet;
    srcGrupo: TDataSource;
    cdsGrupo: TClientDataSet;
    procedure btnincluirClick(Sender: TObject);
    procedure cmbNome_GrupoChange(Sender: TObject);
    procedure cmbCod_GrupoChange(Sender: TObject);
    procedure cmbSetoresChange(Sender: TObject);
    procedure cmbCod_SetorChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
  private
    pviLinha : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelEstoque: TFrmRelEstoque;

implementation

uses uPrincipal,uFuncoes;

{$R *.dfm}

procedure TFrmRelEstoque.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmRelEstoque.btnincluirClick(Sender: TObject);
var lsNome_Grupo : String;
    ldTotalGeral : Double;
    lsWhere : String;
    lsjoin : String;
    lscampo : String;
begin

   GstituloRel  :='Relatorio Saldo de Prtodutos';

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   lsWhere := '';
   if cmbCod_Grupo.KeyValue <> Null then
      lsWhere := 'And Gru.Codigo=:parCodigoGrupo ' ;
   lsjoin  := '';
   lsCampo := ',Prod.Saldo';
   if cmbCod_Setor.KeyValue > 1  then
   begin
      lsCampo := ',Setor.Saldo';
      lsjoin  := 'Inner join SaldosSetor Setor on Setor.ProdutoId=Prod.Codigo';
      lsWhere := lsWhere +' and Setor.SetorId =:parCodigoSetor ';
   end;
   if ( cmbTipoResumoVenda.ItemIndex = 1 ) then
      lsWhere := StringReplace(lsWhere +' And '+lsCampo+'>0',',','',[rfIgnoreCase]);

   if ( cmbTipoResumoVenda.ItemIndex = 2 ) then
      lsWhere := StringReplace(lsWhere +' And '+lsCampo+'<0',',','',[rfIgnoreCase]);

   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'Select Prod.Cod_Grupo, Gru.Descricao as Grupo,Prod.Codigo, Prod.Descricao, Prod.Unid, '+
                            '       Prod.Pco_Venda '+lsCampo + ' '+
                            'From T_Produtos Prod '+
                            'Left Join T_Grupos Gru On ' +
                            '     Gru.Codigo=Prod.Cod_Grupo '+ lsjoin +' '+
                            'where Tipo_Produto=:parTipo_Produto ' + lsWhere + ' '+
                            'Order by Prod.Cod_grupo,Prod.Descricao ';
   qryRelatorio.ParamByName('parTipo_Produto').AsString := '0';

   if cmbCod_Grupo.KeyValue <> Null then
      qryRelatorio.ParamByName('parCodigoGrupo').AsString := cmbCod_Grupo.KeyValue;
   if ( cmbCod_Setor.KeyValue <> Null ) and  ( cmbCod_Setor.KeyValue > 1 )  then
      qryRelatorio.ParamByName('parCodigoSetor').AsString := cmbCod_Setor.KeyValue;

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;

   cdsRelatorio.First;
   ldTotalGeral := 0;
   while not cdsRelatorio.Eof do
   Begin
      if lsNome_Grupo<>cdsRelatorio.FieldByName('Grupo').AsString then
      Begin
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,inczero(cdsRelatorio.FieldByName('Cod_Grupo').AsString,4)+'-'+cdsRelatorio.FieldByName('Grupo').AsString );
         pviLinha:=Pvilinha+1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         lsNome_Grupo:=cdsRelatorio.FieldByName('Grupo').AsString;
      End;
      impmatricial.Imp(pvilinha,001,IncZero(cdsRelatorio.FieldByName('Codigo').AsString,5)+' '+cdsRelatorio.FieldByName('Descricao').AsString );
      impmatricial.Imp(pvilinha,050,cdsRelatorio.FieldByName('unid').AsString );
      impmatricial.Impd(pvilinha,060,FormatFloat('0',cdsRelatorio.FieldByName('saldo').AsFloat),[] );
      impmatricial.Impd(pvilinha,070,FormatFloat(',0.00',cdsRelatorio.FieldByName('Pco_Venda').AsFloat),[] );
      if cdsRelatorio.FieldByName('saldo').AsFloat > 0 then
         impmatricial.Impd(pvilinha,080,FormatFloat(',0.00',(cdsRelatorio.FieldByName('saldo').AsFloat*cdsRelatorio.FieldByName('Pco_Venda').AsFloat)),[] )
      Else
         impmatricial.Impd(pvilinha,080,FormatFloat(',0.00',0 ),[] );

      pviLinha:=Pvilinha+1;
      if pvilinha>60 then
         impmatricial.Novapagina;
      if cdsRelatorio.FieldByName('saldo').AsFloat > 0 then
         ldTotalGeral := ldTotalGeral + (cdsRelatorio.FieldByName('saldo').AsFloat*cdsRelatorio.FieldByName('Pco_Venda').AsFloat);
      cdsRelatorio.next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.imp(pviLinha,001,'Total do Estoque....');
   impmatricial.Impd(pvilinha,080,FormatFloat(',0.00',ldTotalGeral),[] );
   impmatricial.Fechar;
end;

procedure TFrmRelEstoque.cmbCod_GrupoChange(Sender: TObject);
begin
   cmbNome_grupo.KeyValue := cmbCod_Grupo.KeyValue;
end;

procedure TFrmRelEstoque.cmbCod_SetorChange(Sender: TObject);
begin
  cmbSetores.KeyValue := cmbCod_Setor.KeyValue;
end;

procedure TFrmRelEstoque.cmbNome_GrupoChange(Sender: TObject);
begin
   cmbcod_grupo.KeyValue := cmbNome_Grupo.KeyValue;
end;

procedure TFrmRelEstoque.cmbSetoresChange(Sender: TObject);
begin
   cmbCod_Setor.KeyValue := cmbSetores.KeyValue;
end;

procedure TFrmRelEstoque.FormShow(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text := 'Select * From Setores ';

   cdsSetores.Close;
   cdsSetores.ProviderName := dspVariavel.Name;
   cdsSetores.Open;

   qryVariavel.Close;
   qryVariavel.Params.clear;
   qryVariavel.SQL.Text := 'Select * from T_Grupos ';

   cdsGrupo.close;
   cdsGrupo.ProviderName := dspVariavel.Name;
   cdsGrupo.Open;
end;

procedure TFrmRelEstoque.ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                                Unid.  Saldo  pco.Venda     Total');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

end.
