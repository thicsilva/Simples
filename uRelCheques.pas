unit uRelCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinGrids, bsDBGrids, bsSkinCtrls, bsSkinBoxCtrls, ExtCtrls,
  ToolWin, ComCtrls, DB, DBClient, StdCtrls, Mask, RDprint, FMTBcd, SqlExpr;

type
  TfrmcontroleCheques = class(TForm)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    btndicionar: TbsSkinSpeedButton;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinDBGrid2: TbsSkinDBGrid;
    cdsCheques: TClientDataSet;
    cdsChequesMarca: TStringField;
    cdsChequesValor: TFloatField;
    cdsChequesSeqVenda: TIntegerField;
    cdsChequesBanco: TStringField;
    cdsChequesCliente: TStringField;
    cdsChequesAgencia: TStringField;
    cdsChequesNumero: TStringField;
    cdsChequesResponsavel: TStringField;
    srcCheques: TDataSource;
    dtpData_Ini: TbsSkinDateEdit;
    lblTurma: TbsSkinStdLabel;
    dtpData_Fim: TbsSkinDateEdit;
    cmbPeriodo: TbsSkinComboBox;
    btnAdicionaDesconto: TbsSkinButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    ImpMatricial: TRDprint;
    cdsChequesVencimento: TDateField;
    cdsChequescodigo: TIntegerField;
    btnSalvar: TbsSkinSpeedButton;
    bsSkinBevel4: TbsSkinBevel;
    qryAtualiza: TSQLQuery;
    cdsChequesId: TStringField;
    cdsChequesNCheque: TStringField;
    procedure cmbPeriodoChange(Sender: TObject);
    procedure btnAdicionaDescontoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure bsSkinSpeedButton1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btndicionarClick(Sender: TObject);
  private
    { Private declarations }
    pvilinha : integer;
  public
    { Public declarations }
  end;

var
  frmcontroleCheques: TfrmcontroleCheques;

implementation

uses uFuncoes, uPrincipal;

{$R *.dfm}

procedure TfrmcontroleCheques.bsSkinSpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmcontroleCheques.btnAdicionaDescontoClick(Sender: TObject);
var dados : TClientDataSet; 
begin
   dados := gconexao.BuscarDadosSQL('select mov.sequencia, mov.SeqVenda, Cli.Codigo, cli.Descricao, mov.vlr_Areceber, mov.Data_Vencimento, '+
                                    ' mov.Banco, mov.Agencia,mov.Nconta,mov.Emitente,mov.Ncheque '+
                           'from t_ctasreceber mov '+
                           '     left join T_vendas ven on ven.SeqVenda=Mov.SeqVenda '+
                           '     left join T_Clientes cli on Cli.codigo=ven.Cod_Cliente '+
                           ' where mov.Cod_FormaPagamento in ( select codigo from T_FormasPagamento '+
                           'where  data_emissao>='+QuotedStr(dtpData_Ini.text)+' and tipo_baixa='+QuotedStr('PT')+' and data_Emissao<='+QuotedStr(dtpData_Fim.text)+' and Descricao like '+QuotedStr('cheque%')+' )',nil);
   while not dados.eof do
   begin
      cdsCheques.append;
      cdsCheques.FieldByName('cliente').AsString := Dados.FieldByname('Descricao').AsString;
      cdsCheques.FieldByName('Valor').AsFloat := arredondar(Dados.FieldByname('vlr_Areceber').AsFloat,2);
      cdsCheques.FieldByName('SeqVenda').AsString := Dados.FieldByname('SeqVenda').AsString;
      cdsCheques.FieldByName('Codigo').AsString := Dados.FieldByname('Codigo').AsString;
      cdsCheques.FieldByName('Vencimento').AsString := Dados.FieldByname('Data_Vencimento').AsString;
      cdsCheques.FieldByName('Id').AsString := Dados.FieldByname('Sequencia').AsString;
      cdsCheques.FieldByName('Banco').AsString := Dados.FieldByname('Banco').AsString;
      cdsCheques.FieldByName('Agencia').AsString := Dados.FieldByname('Agencia').AsString;
      cdsCheques.FieldByName('Numero').AsString := Dados.FieldByname('NConta').AsString;
      cdsCheques.FieldByName('NCheque').AsString := Dados.FieldByname('NCheque').AsString;
      cdsCheques.FieldByName('responsavel').AsString := Dados.FieldByname('Emitente').AsString;
      cdsCheques.post;
      Dados.Next;
   end;
end;

procedure TfrmcontroleCheques.btndicionarClick(Sender: TObject);
begin
   cdsCheques.delete
end;

procedure TfrmcontroleCheques.btnokClick(Sender: TObject);
begin
   GstituloRel  :='Relatorio Saldo de Prtodutos';

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 135;
   ImpMatricial.FonteTamanhoPadrao        := s17cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;


   cdsCheques.First;
   while not cdsCheques.Eof do
   Begin
      impmatricial.Imp(pvilinha,001,Copy(IncZero(cdsCheques.FieldByName('SeqVenda').AsString,8)+' '+cdsCheques.FieldByName('Codigo').AsString+'-'+
                                                                                                    cdsCheques.FieldByName('Cliente').AsString,1,40));
      impmatricial.Impd(pvilinha,055,FormatDateTime('dd/mm/yyyy',cdsCheques.FieldByName('Vencimento').AsFloat),[] );
      impmatricial.Impd(pvilinha,065,FormatFloat(',0.00',cdsCheques.FieldByName('Valor').AsFloat),[] );
      impmatricial.Imp(pvilinha,067,cdsCheques.FieldByName('Banco').AsString);
      impmatricial.Imp(pvilinha,072,cdsCheques.FieldByName('Agencia').AsString);
      impmatricial.Imp(pvilinha,080,cdsCheques.FieldByName('Numero').AsString);
      impmatricial.Imp(pvilinha,090,cdsCheques.FieldByName('NCheque').AsString);
      impmatricial.Imp(pvilinha,100,cdsCheques.FieldByName('Responsavel').AsString);

      pviLinha:=Pvilinha+1;
      cdsCheques.next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   impmatricial.Fechar;

end;

procedure TfrmcontroleCheques.btnSalvarClick(Sender: TObject);
begin
   cdsCheques.First;
   qryAtualiza.CommandText := 'update T_ctasreceber set Banco=:parBanco,Agencia=:paragencia,Nconta=:parNconta,NCheque=:parNcheque, emitente=:parEmitente where Sequencia=:parSequencia';
   qryAtualiza.Prepared := True;
   while not cdsCheques.Eof do
   begin
      qryAtualiza.Close;
      qryAtualiza.ParamByName('parBanco').AsString := cdsCheques.FieldByname('Banco').AsString;
      qryAtualiza.ParamByName('parAgencia').AsString := cdsCheques.FieldByname('Agencia').AsString;
      qryAtualiza.ParamByName('parNConta').AsString := cdsCheques.FieldByname('Numero').AsString;
      qryAtualiza.ParamByName('parNCheque').AsString := cdsCheques.FieldByname('NCheque').AsString;
      qryAtualiza.ParamByName('parEmitente').AsString := cdsCheques.FieldByname('Responsavel').AsString;
      qryAtualiza.ParamByName('parSequencia').AsString := cdsCheques.FieldByname('Id').AsString;
      qryAtualiza.ExecSQL();
      cdsCheques.next;
   end;
end;

procedure TfrmcontroleCheques.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmcontroleCheques.FormShow(Sender: TObject);
begin
  cmbPeriodoChange(cmbPeriodo);
end;

procedure TfrmcontroleCheques.ImpMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 07;
   TRdPrint( Sender ).imp(pvilinha,001,'Venda Cliente                               Vencimento   Valor  Banco  Agencia Conta  N.Cheque Responsavel');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',135,0));
   pviLinha:=Pvilinha+1;
end;

end.
