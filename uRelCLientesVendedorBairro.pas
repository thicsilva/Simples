unit uRelCLientesVendedorBairro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsdbctrls, StdCtrls, ExtCtrls, ToolWin, ComCtrls,
  FMTBcd, RDprint, Provider, SqlExpr, DB, DBClient, uFormBase;

const  TIPO_ROTA = 0;
       TIPO_VENDEDOR =1;

type
  TfrmRelClientesVendedoresBairro = class(TFormBase)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    grpSelVendedor: TbsSkinGroupBox;
    lblFiltro01: TbsSkinStdLabel;
    lblFiltro02: TbsSkinStdLabel;
    cmbCod_FuncionarioIni: TbsSkinDBLookupComboBox;
    cmbCod_FuncionarioFim: TbsSkinDBLookupComboBox;
    cmbNome_FuncionarioIni: TbsSkinDBLookupComboBox;
    cmbNome_FuncionarioFim: TbsSkinDBLookupComboBox;
    bsSkinButton1: TbsSkinButton;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    qryRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    impMatricial: TRDprint;
    srcFuncionarios: TDataSource;
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure cmbNome_FuncionarioIniChange(Sender: TObject);
    procedure cmbNome_FuncionarioFimChange(Sender: TObject);
    procedure cmbCod_FuncionarioIniChange(Sender: TObject);
    procedure cmbCod_FuncionarioFimChange(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
  private
    pvilinha : Integer;
    { Private declarations }
  public
    pTipoRelatorio : Integer;
    { Public declarations }
  end;

var
  frmRelClientesVendedoresBairro: TfrmRelClientesVendedoresBairro;

implementation

uses uFuncoes,uPrincipal, uDaoFuncionario, uDaoRota;

{$R *.dfm}

procedure TfrmRelClientesVendedoresBairro.bsSkinButton1Click(Sender: TObject);
begin
   cmbNome_FuncionarioIni.KeyValue := Null;
   cmbCod_FuncionarioIni.KeyValue := Null;
   cmbNome_FuncionarioFim.KeyValue := Null;
   cmbCod_FuncionarioFim.KeyValue := Null;
end;

procedure TfrmRelClientesVendedoresBairro.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRelClientesVendedoresBairro.btnokClick(Sender: TObject);
var lsNome_Vendedor : String;
    lsCampo : String;
  lsTabela: string;
begin
    GstituloRel  := 'Relatorio de clientes por Vendedor e Bairro';
    lsCampo      := 'Cod_Funcioanrio';
    lsTabela     := 'T_Funcionarios';
    if pTipoRelatorio = TIPO_ROTA then
    begin
      GstituloRel  :='Relatorio de clientes por Rota e Bairro';
      lsCampo      := 'Cod_Rota';
      lsTabela     := 'T_Rotas';
    end;

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 135;
   ImpMatricial.FonteTamanhoPadrao        := s17cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'Select Cli.'+lsCampo+', Fun.Descricao as Vendedor, Cli.Codigo, Cli.Descricao, '+
                            '       Cli.Endereco, Cli.Bairro, Cli.Cidade '+
                            'From T_Clientes Cli '+
                            '     Left Join '+lsTabela+' Fun On Fun.Codigo=Cli.'+lsCampo+' '+
                            'where ( Cli.'+lsCampo+'>=:parCodigoIni and Cli.'+lsCampo+'<=:parCodigoFim ) ' +
                            'Order by Cli.'+lsCampo+', Cli.Bairro ';

   qryRelatorio.ParamByName('parCodigoIni').AsInteger := cmbCod_FuncionarioIni.Keyvalue;
   qryRelatorio.ParamByName('parCodigoFim').AsInteger := cmbCod_FuncionarioFim.Keyvalue;

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;


   cdsRelatorio.First;
   while not cdsRelatorio.Eof do
   Begin
      if lsNome_Vendedor<>cdsRelatorio.FieldByName('Vendedor').AsString then
      Begin
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,inczero(cdsRelatorio.FieldByName(lscampo).AsString,3)+'-'+cdsRelatorio.FieldByName('Vendedor').AsString );
         pviLinha:=Pvilinha+1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
         pviLinha:=Pvilinha+1;
         lsNome_Vendedor:=cdsRelatorio.FieldByName('Vendedor').AsString;
      End;
      impmatricial.Imp(pvilinha,001,Copy( IncZero(cdsRelatorio.FieldByName('Codigo').AsString,5)+' '+cdsRelatorio.FieldByName('Descricao').AsString,1,40 ) );
      impmatricial.Imp(pvilinha,042,Copy(cdsRelatorio.FieldByName('Endereco').AsString,1,40) );
      impmatricial.Imp(pvilinha,082,cdsRelatorio.FieldByName('Bairro').AsString );
      impmatricial.Imp(pvilinha,105,cdsRelatorio.FieldByName('Cidade').AsString );
      pviLinha:=Pvilinha+1;
      if pvilinha>60 then
         impmatricial.Novapagina;
      cdsRelatorio.next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
   impmatricial.Fechar;
end;

procedure TfrmRelClientesVendedoresBairro.cmbCod_FuncionarioFimChange(
  Sender: TObject);
begin
  cmbNome_FuncionarioFim.KeyValue := cmbCod_FuncionarioFim.KeyValue;
end;

procedure TfrmRelClientesVendedoresBairro.cmbCod_FuncionarioIniChange(
  Sender: TObject);
begin
  cmbNome_FuncionarioIni.KeyValue := cmbCod_FuncionarioIni.KeyValue;
end;

procedure TfrmRelClientesVendedoresBairro.cmbNome_FuncionarioFimChange(
  Sender: TObject);
begin
   cmbCod_FuncionarioFim.KeyValue := cmbNome_FuncionarioFim.KeyValue;
end;

procedure TfrmRelClientesVendedoresBairro.cmbNome_FuncionarioIniChange(
  Sender: TObject);
begin
   cmbCod_FuncionarioIni.KeyValue := cmbNome_FuncionarioIni.KeyValue; 
end;

procedure TfrmRelClientesVendedoresBairro.FormShow(Sender: TObject);
var DaoFuncionario : TDaoFuncionario;
    DaoRota : TDaoRota;
begin
   DaoFuncionario   := TDaoFuncionario.Create(gConexao);
   DaoRota          := TDaoRota.Create(gConexao);
   if pTipoRelatorio = TIPO_VENDEDOR then
     srcFuncionarios.Dataset := DaoFuncionario.BuscarTodos('Codigo')
   else
   begin
     srcFuncionarios.Dataset := DaoRota.BuscarTodos;
     lblFiltro01.Caption := 'Rota Inicial';
     lblFiltro02.Caption := 'Rota Final';
   end;
   FreeAndNil(DaoFuncionario);
   FreeAndNil(DaoRota);
end;

procedure TfrmRelClientesVendedoresBairro.impMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), Pagina );
   pviLinha := 07;
   TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                       Endereco                                  Bairro               Cidade');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',135,0));
   pviLinha:=Pvilinha+1;
end;

end.
