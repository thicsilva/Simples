unit uConsItensDevolvidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,uFormBase,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls,
  dxSkinsCore, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfrmConsItensDevolvidos = class(TFormBase)
    cxGrid2: TcxGrid;
    gridMovimento: TcxGridDBTableView;
    gridMovimentoColumn2: TcxGridDBColumn;
    gridMovimentoColumn3: TcxGridDBColumn;
    Columnqtde_Devolvida: TcxGridDBColumn;
    ColumnVlr_Total: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qryItensDevolucoes: TSQLQuery;
    DspItensDevolucoes: TDataSetProvider;
    cdsItensDevolucoes: TClientDataSet;
    srcItensDevolucoes: TDataSource;
    gridMovimentoColumn1: TcxGridDBColumn;
    gridMovimentoColumn4: TcxGridDBColumn;
    gridMovimentoColumn6: TcxGridDBColumn;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cdsItensDevolucoesAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
     piSeqVenda: Integer;
    { Public declarations }
  end;

var
  frmConsItensDevolvidos: TfrmConsItensDevolvidos;

implementation

{$R *.dfm}

procedure TfrmConsItensDevolvidos.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmConsItensDevolvidos.cdsItensDevolucoesAfterOpen(
  DataSet: TDataSet);
  var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmConsItensDevolvidos.FormShow(Sender: TObject);
begin
    qryItensDevolucoes.close;
    qryItensDevolucoes.sql.Text :='SELECT itens.Cod_Produto,Prod.Descricao,Itens.Qtde_Devolvida,itens.Pco_Venda, '+
                                  '       Itens.Qtde_Devolvida*Itens.Pco_Venda as Vlr_Total, itens.Data_Cad, itens.Operador, '+
                                  '       Itens.Data_devolucao '+
                                  'FROM T_itensdevolucoes Itens '+
                                  '     Left join T_produtos Prod on Prod.Codigo=Itens.Cod_Produto '+
                                  'where SeqVenda=:parSeqvenda';
    qryItensDevolucoes.ParamByname('parSeqVenda').AsInteger := piSeqVenda;

    cdsItensDevolucoes.close;
    cdsItensDevolucoes.ProviderName := dspItensDevolucoes.name;
    cdsItensDevolucoes.open;
end;

end.
