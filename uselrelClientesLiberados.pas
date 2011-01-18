unit uselrelClientesLiberados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, ExtCtrls, ToolWin, ComCtrls, bsdbctrls, StdCtrls,
  bsSkinTabs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,uformbase,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, Mask, bsSkinBoxCtrls, FMTBcd, DBClient, SqlExpr, Provider, RDprint;

type
  TfrmSelRelClientes = class(TFormBase)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    btnExportaExcel: TbsSkinMenuSpeedButton;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    cmbCod_RotaFim: TbsSkinDBLookupComboBox;
    cmbCod_RotaIni: TbsSkinDBLookupComboBox;
    cmbNome_RotaIni: TbsSkinDBLookupComboBox;
    cmbNome_Rotafim: TbsSkinDBLookupComboBox;
    btnLimpa: TbsSkinButton;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtPercentual: TbsSkinEdit;
    GridRelVendedor: TcxGrid;
    ViewClientes: TcxGridDBTableView;
    Colum_Rota: TcxGridDBColumn;
    Column_Cod_Cliente: TcxGridDBColumn;
    Colum_Nome_Cliente: TcxGridDBColumn;
    Column_Endereco: TcxGridDBColumn;
    Column_Bairro: TcxGridDBColumn;
    Column_Cidade: TcxGridDBColumn;
    Column_Total_Areceber: TcxGridDBColumn;
    ViewProdutos: TcxGridDBTableView;
    Column_Vendedor: TcxGridDBColumn;
    Column_Cod_Produto: TcxGridDBColumn;
    Column_Produto: TcxGridDBColumn;
    Column_Qtde_Venda: TcxGridDBColumn;
    Column_Pco_Medio: TcxGridDBColumn;
    Column_Vlr_total: TcxGridDBColumn;
    ViewSupervisor: TcxGridDBTableView;
    Column_Cod_Supervisor: TcxGridDBColumn;
    Column_Supervisor: TcxGridDBColumn;
    Column_Cod_Funcionario: TcxGridDBColumn;
    Column_Vendedor2: TcxGridDBColumn;
    Colum_Vlr_total: TcxGridDBColumn;
    GridClientes: TcxGridLevel;
    impMatricial: TRDprint;
    dspRelatorio: TDataSetProvider;
    qryRelatorio: TSQLQuery;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    dspVariavel: TDataSetProvider;
    qryvariavel: TSQLQuery;
    cdsClientesDebitos: TClientDataSet;
    column_Total_Recebido: TcxGridDBColumn;
    Column_tot_Qtde: TcxGridDBColumn;
    procedure btnokClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
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

procedure TfrmSelRelClientes.btnokClick(Sender: TObject);
var lsNome_Rota   : String;
    Perc_Atingido : Real;
    lsPercentual : String;
begin
   if not inputQuery('Insira o Percentual','Insira o Percentual',lsPercentual) Then
      Exit;

   pitipoRel := 2; //StrtoInt(Copy(TmenuItem(Sender).Caption,1,1));
   GstituloRel  :='Relatorio de clientes liberados sem compras ';

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 135;
   ImpMatricial.FonteTamanhoPadrao        := s17cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'SELECT Rec.Cod_Cliente as codigo, MAX(Cli.Cod_Rota) As Cod_Rota, '+
                            '       MAX(Cli.Descricao) As Descricao, '+
                            '       MAX(Cli.Endereco)  As Endereco, '+
                            '       MAX(Cli.Bairro) As Bairro, '+
                            '       MAX(Cli.Cidade) As Cidade, '+
                            '       Sum(Vlr_areceber)As Total_Areceber, '+
                            '       Sum(Vlr_recebido+vlr_Comissao)As Total_Recebido, '+
                            '       Count(Rec.Documento) As Tot_Qtde, '+
                            '       MAX(Rota.Descricao) as Rota '+
                            'FROM T_ctasreceber Rec '+
                            '     Left Join T_clientes Cli on '+
                            '          Cli.Codigo=Rec.Cod_Cliente '+
                            '     Left Join T_Rotas Rota On '+
                            '          Rota.Codigo=Cli.Cod_rota '+
                            'WHERE Rec.status =:parStatus '+
                            'GROUP BY Rec.Cod_Cliente,Cli.Cod_Rota,Cli.Bairro,Cli.Endereco '+
                            'ORDER BY Cli.Cod_rota,Cli.Bairro,Cli.Endereco';
   qryRelatorio.ParamByName('parStatus').AsString := '1';

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;

   qryvariavel.Close;
   qryvariavel.Params.Clear;
   qryvariavel.SQL.text := 'Select Cod_Cliente from T_Ctasreceber where Status=:parstatus ';
   qryvariavel.ParamByName('parStatus').AsInteger := 0;

   cdsClientesDebitos.Close;
   cdsClientesDebitos.ProviderName := dspVariavel.Name;
   cdsClientesDebitos.Open;


   cdsRelatorio.First;
   while not cdsRelatorio.Eof do
   Begin
      if (not cdsClientesDebitos.Locate('Cod_Cliente',cdsRelatorio.FieldByName('Codigo').AsString,[]))  then
      Begin
         if lsNome_Rota<>cdsRelatorio.FieldByName('Rota').AsString then
         Begin
            pviLinha:=Pvilinha+1;
            impmatricial.Imp(pvilinha,001,inczero(cdsRelatorio.FieldByName('Cod_Rota').AsString,3)+'-'+cdsRelatorio.FieldByName('Rota').AsString );
            pviLinha:=Pvilinha+1;
            impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
            pviLinha:=Pvilinha+1;
            lsNome_Rota:=cdsRelatorio.FieldByName('Rota').AsString;
         End;
         Perc_Atingido := (cdsRelatorio.FieldByName('Total_Recebido').AsFloat/cdsRelatorio.FieldByName('Total_Areceber').AsFloat)*100;
         if Perc_Atingido>=strToFloat(lsPercentual) then
         Begin
            impmatricial.Imp(pvilinha,001,IncZero(cdsRelatorio.FieldByName('Codigo').AsString,5)+' '+cdsRelatorio.FieldByName('Descricao').AsString );
            impmatricial.Imp(pvilinha,040,Copy(cdsRelatorio.FieldByName('Endereco').AsString,1,40) );
            impmatricial.Imp(pvilinha,082,cdsRelatorio.FieldByName('Bairro').AsString );

            impmatricial.Impd(pvilinha,111,FormatFloat(',0.00',cdsRelatorio.FieldByName('Total_Areceber').AsFloat),[] );
            impmatricial.Impd(pvilinha,121,FormatFloat(',0.00',cdsRelatorio.FieldByName('Total_Recebido').AsFloat),[] );
            impmatricial.Impd(pvilinha,130,FormatFloat(',0.00',(cdsRelatorio.FieldByName('Total_Recebido').AsFloat/cdsRelatorio.FieldByName('Total_Areceber').AsFloat)*100)+'%',[] );
            impmatricial.Impd(pvilinha,135,FormatFloat('0',cdsRelatorio.FieldByName('Tot_Qtde').AsFloat),[] );
            pviLinha:=Pvilinha+1;
         End;
         if pvilinha>60 then
            impmatricial.Novapagina;
      End;
      cdsRelatorio.next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
   impmatricial.Fechar;

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
         TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                       Endereco                                  Bairro                     Tot.Venda Vlr. Recebido     Nº Venda ');
         pviLinha:=Pvilinha+1;
         TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',135,0));
         pviLinha:=Pvilinha+1;

      End;
   End;
end;

end.
