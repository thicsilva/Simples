unit uFechaCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, DB, DBClient,
  bsSkinGrids, bsDBGrids, ExtCtrls, ToolWin, ComCtrls, FMTBcd, Provider, SqlExpr,
  EditNew, bsdbctrls, BusinessSkinForm;

type
  TfrmFechaCaixa = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinPanel1: TbsSkinPanel;
    dbgConsulta: TbsSkinDBGrid;
    cdsTempPagamentos: TClientDataSet;
    cdsTempPagamentosCodigo: TStringField;
    cdsTempPagamentosDescricao: TStringField;
    cdsTempPagamentosValor: TFloatField;
    srcTempPagamentos: TDataSource;
    bsSkinStatusBar2: TbsSkinStatusBar;
    dspVariavel: TDataSetProvider;
    QryVariavel: TSQLQuery;
    cdsCadFormasPagamento: TClientDataSet;
    SkinForm: TbsBusinessSkinForm;
    qrydspPagamentoInformado: TSQLQuery;
    dspdspPagamentoInformado: TDataSetProvider;
    cdspagamentoinformado: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure cdsTempPagamentosBeforeOpen(DataSet: TDataSet);
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFechaCaixa: TfrmFechaCaixa;

implementation

uses uprincipal, ufuncoes;

{$R *.dfm}

procedure TfrmFechaCaixa.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmFechaCaixa.btnokClick(Sender: TObject);
begin
   qrydspPagamentoInformado.Close;
   qrydspPagamentoInformado.Params.Clear;
   qrydspPagamentoInformado.SQL.Text := 'Select * from T_PagamentosInformados where 1=2';

   cdspagamentoinformado.close;
   cdspagamentoinformado.ProviderName := dspdspPagamentoInformado.name;
   cdspagamentoinformado.Open;
   cdsTempPagamentos.First;
   while  not cdsTempPagamentos.Eof do
   Begin
      if cdsTempPagamentos.fieldbyname('Valor').AsFloat <> 0 then
      Begin
         cdspagamentoinformado.Append;
         cdspagamentoinformado.FieldByName('Sequencia').AsInteger   := StrToInt(Sequencia('Sequencia',False,'T_PagamentosInformados',FrmPrincipal.dbxPrincipal,'',False,8));
         cdspagamentoinformado.FieldByName('Data_Mov').AsDateTime   := gsdata_Mov;
         cdspagamentoinformado.FieldByName('data_cad').AsDateTime   := now;
         cdspagamentoinformado.FieldByName('vlr_Informado').AsFloat := cdsTempPagamentos.FieldByName('Valor').AsFloat;
         cdspagamentoinformado.FieldByName('Cod_Emp').AsString      :='001';
         cdspagamentoinformado.FieldByName('Cod_Caixa').AsString    :='001';
         cdspagamentoinformado.FieldByName('Turno').AsString        := '1';
         cdspagamentoinformado.FieldByName('Cod_FormaPagamento').Asinteger := cdsTempPagamentos.FieldByName('codigo').Asinteger;
         cdspagamentoinformado.Post;
      End;
      cdsTempPagamentos.Next;
   End;
   cdspagamentoinformado.ApplyUpdates(-1);
   frmFechaCaixa.tag:=1;
   close;
   //Registro( 'ImpressoraMatricial', trString, 'Epson', raGravar );
end;

procedure TfrmFechaCaixa.cdsTempPagamentosBeforeOpen(DataSet: TDataSet);
var licont : Integer;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmFechaCaixa.FormShow(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_formasPagamento  '+
                          'where TipoPagamento=:parTipoPagamento '+
                          'order by Descricao' ;
   qryVariavel.ParamByName('parTipoPagamento').AsString := '0'; // A vista

   cdsCadFormasPagamento.Close;
   cdsCadFormasPagamento.ProviderName := dspVariavel.Name;
   cdsCadFormasPagamento.Open;

   while not cdscadformasPagamento.eof do
   Begin
      cdsTempPagamentos.Append;
      cdsTempPagamentos.FieldByName('Codigo').AsString    := inczero(cdsCadFormasPagamento.fieldByName('Codigo').AsString,3);
      cdsTempPagamentos.FieldByName('Descricao').AsString := cdsCadFormasPagamento.fieldByName('Descricao').AsString;
      cdsTempPagamentos.FieldByName('valor').AsFloat      := strtofloat('0');
      cdsTempPagamentos.Post;
      cdsCadFormasPagamento.next
   End;
end;

end.
