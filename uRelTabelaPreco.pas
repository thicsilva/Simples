unit uRelTabelaPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinBoxCtrls, bsdbctrls, StdCtrls, bsSkinCtrls, ExtCtrls, ToolWin,
  ComCtrls, FMTBcd, RDprint, SqlExpr, Provider, DB, DBClient;

type
  TfrmrelTabPreco = class(TForm)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    cmbCod_Grupo: TbsSkinDBLookupComboBox;
    cmbNome_Grupo: TbsSkinDBLookupComboBox;
    srcGrupo: TDataSource;
    cdsGrupo: TClientDataSet;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    dspRelatorio: TDataSetProvider;
    qryRelatorio: TSQLQuery;
    qryVariavel: TSQLQuery;
    dspvariavel: TDataSetProvider;
    ImpMatricial: TRDprint;
    procedure btnincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure btnFecharClick(Sender: TObject);
  private
    pviLinha : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelTabPreco: TfrmrelTabPreco;

implementation

uses uPrincipal,uFuncoes;

{$R *.dfm}

procedure TfrmrelTabPreco.btnFecharClick(Sender: TObject);
begin
   Close
end;

procedure TfrmrelTabPreco.btnincluirClick(Sender: TObject);
var lsNome_Grupo : String;
    ldTotalGeral : Double;
    lsWhere : String;
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

   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'Select Prod.Cod_Grupo, Gru.Descricao as Grupo,Prod.Codigo, Prod.Descricao, Prod.Unid, '+
                            '       Prod.Pco_Venda, PrecoVendaExterna '+
                            'From T_Produtos Prod '+
                            'Left Join T_Grupos Gru On ' +
                            '     Gru.Codigo=Prod.Cod_Grupo '+
                            'where Tipo_Produto=:parTipo_Produto ' + lsWhere + ' '+
                            'Order by Prod.Cod_grupo,Prod.Descricao ';
   qryRelatorio.ParamByName('parTipo_Produto').AsString := '0';

   if cmbCod_Grupo.KeyValue <> Null then
      qryRelatorio.ParamByName('parCodigoGrupo').AsString := cmbCod_Grupo.KeyValue;

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
      impmatricial.Impd(pvilinha,070,FormatFloat(',0.00',cdsRelatorio.FieldByName('Pco_Venda').AsFloat),[] );
      impmatricial.Impd(pvilinha,080,FormatFloat(',0.00',cdsRelatorio.FieldByName('PrecoVendaExterna').AsFloat),[] );
      pviLinha:=Pvilinha+1;
      if pvilinha>60 then
         impmatricial.Novapagina;
      cdsRelatorio.next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Fechar;
end;

procedure TfrmrelTabPreco.FormShow(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.clear;
   qryVariavel.SQL.Text := 'Select * from T_Grupos ';

   cdsGrupo.close;
   cdsGrupo.ProviderName := dspVariavel.Name;
   cdsGrupo.Open;
end;

procedure TfrmrelTabPreco.ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                                Unid.    pco .Venda 1   Pco. Venda 2');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

end.
