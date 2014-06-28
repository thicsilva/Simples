unit ufrmFinalizaServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, bsSkinGrids,
  bsDBGrids, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, cxImage, ExtCtrls,
  ToolWin, ComCtrls, DB, DBClient,uDaoItensVendaGrade;

type
  TfrmFinalizaServico = class(TForm)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    imageVerso: TcxImage;
    bsSkinButton1: TbsSkinButton;
    edtQtdeTamanho: TbsSkinEdit;
    bsSkinLabel5: TbsSkinLabel;
    gridTamanho: TbsSkinDBGrid;
    dbGridItensGrade: TbsSkinDBGrid;
    pnlteste: TPanel;
    btnConcluir: TbsSkinSpeedButton;
    imageFrente: TcxImage;
    bsSkinLabel1: TbsSkinLabel;
    bsSkinLabel2: TbsSkinLabel;
    cdsTmpItensServico: TClientDataSet;
    srcItensServico: TDataSource;
    cdsTmpItensServicoCodigo: TStringField;
    cdsTmpItensServicoDescricao: TStringField;
    cdsTmpTamanhos: TClientDataSet;
    srcTmpTamanhos: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure cdsTmpItensServicoAfterScroll(DataSet: TDataSet);
    procedure cdsTmpTamanhosAfterScroll(DataSet: TDataSet);
    procedure bsSkinButton1Click(Sender: TObject);
  private
    procedure AtualizaListaDaGrade(ProdutoID: String);
    { Private declarations }
  public
     pIdSeqVenda : string
    { Public declarations }
  end;

var
  frmFinalizaServico: TfrmFinalizaServico;

implementation

uses uPrincipal;
{$R *.dfm}

procedure TfrmFinalizaServico.bsSkinButton1Click(Sender: TObject);
var DaoVendaGrade : TDaoItensVendaGrade;
    itenGradeId : Integer;
begin
   itenGradeId := cdsTmpTamanhos.FieldByName('ItenGradeId').AsInteger;
   DaoVendaGrade := TDaoItensVendaGrade.Create(gConexao);
   DaoVendaGrade.AtualizaQtdeProduzida( cdsTmpTamanhos.FieldByName('ItenGradeId').AsInteger,
                                        strToIntDef(pidSeqVenda,0),
                                        cdsTmpItensServico.FieldByName('Codigo').AsInteger,
                                        strToFloat(edtQtdeTamanho.text));
   AtualizaListaDaGrade(cdsTmpItensServico.FieldByName('Codigo').AsString);
   cdsTmpTamanhos.Locate('itenGradeId',itenGradeId,[]);
end;

procedure TfrmFinalizaServico.cdsTmpItensServicoAfterScroll(DataSet: TDataSet);
begin
   AtualizaListaDaGrade(cdsTmpItensServico.FieldByName('Codigo').AsString);
end;

procedure TfrmFinalizaServico.AtualizaListaDaGrade(ProdutoID : String);
begin
   if trim(ProdutoID)<>EmptyStr then
   begin
      cdsTmpTamanhos.Data := gConexao.BuscarDadosSQL('select itens.ItenGradeId, itemgrade.Tamanho,itens.QtdeSolicitada as Qtde,itens.QtdeProduzida, '+
                                                     'itemGrade.CaminhoImagemFrente,itemGrade.CaminhoImagemVerso  '+
                                                     'from ItensVendaGrade itens '+
                                                     '     inner join ItensGrade itemGrade on itemGrade.id=itens.ItenGradeId '+
                                                     'where ProdutoId='+ProdutoID+' and  VendaId='+pidSeqVenda,nil).data;
   end;
end;

procedure TfrmFinalizaServico.cdsTmpTamanhosAfterScroll(DataSet: TDataSet);
begin
   if FileExists(cdsTmpTamanhos.FieldByName('CaminhoImagemFrente').AsString) then
      imageFrente.Picture.LoadFromFile(cdsTmpTamanhos.FieldByName('CaminhoImagemFrente').AsString)
   else
      imageFrente.Picture.ASSIGN(NIL);

   if FileExists(cdsTmpTamanhos.FieldByName('CaminhoImagemVerso').AsString) then
      imageVerso.Picture.LoadFromFile(cdsTmpTamanhos.FieldByName('CaminhoImagemVerso').AsString)
    else
      imageVerso.Picture.ASSIGN(NIL);
end;

procedure TfrmFinalizaServico.FormShow(Sender: TObject);
var Dados : TclientDataSet;
begin
   Dados := gConexao.BuscarDadosSQL('Select itens.Cod_Produto,Prod.Descricao from T_ItensVendas Itens '+
                                    'left join T_produtos prod on prod.codigo=itens.Cod_Produto where SeqVenda='+pidSeqVenda,nil);
   while not Dados.eof do
   begin
      cdsTmpItensServico.Append;
      cdsTmpItensServico.FieldByName('Codigo').AsString    := Dados.FieldByName('Cod_Produto').AsString;
      cdsTmpItensServico.FieldByName('Descricao').AsString := UpperCase(Dados.FieldByName('Descricao').AsString );
      cdsTmpItensServico.Post;
      Dados.Next;
   end;

end;

end.
