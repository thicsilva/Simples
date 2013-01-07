unit uDelivery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinGrids, bsDBGrids, StdCtrls, Mask, bsSkinBoxCtrls,
  DB, uPrincipal, DBClient, uClassCliente;


type
  TfrmDelivery = class(TForm)
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinLabel1: TbsSkinLabel;
    edtNome: TbsSkinEdit;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinExPanel2: TbsSkinExPanel;
    bsSkinDBGrid2: TbsSkinDBGrid;
    srcClientes: TDataSource;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinScrollBar1: TbsSkinScrollBar;
    cdsClientes: TClientDataSet;
    btnAdicionar: TbsSkinButton;
    btnRemoverDesconto: TbsSkinButton;
    edtEndereco: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtBairro: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtCidade: TbsSkinEdit;
    bsSkinStdLabel16: TbsSkinStdLabel;
    edtPto_Referencia: TbsSkinEdit;
    cdslista: TClientDataSet;
    srcLista: TDataSource;
    cdslistaId: TIntegerField;
    cdslistaNome: TStringField;
    procedure edtNomeChange(Sender: TObject);
    procedure cdsClientesAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverDescontoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmDelivery: TfrmDelivery;

implementation

uses
  uDaoCliente;

{$R *.dfm}

procedure TfrmDelivery.btnAdicionarClick(Sender: TObject);
begin
  cdsLista.Append;
  cdsLista.FieldByName('Id').AsInteger := cdsClientes.FieldByName('Codigo').AsInteger;
  cdsLista.FieldByName('Nome').AsString := cdsClientes.FieldByName('Descricao').AsString;
  cdsLista.Post;
end;

procedure TfrmDelivery.btnRemoverDescontoClick(Sender: TObject);
begin
  cdsLista.Delete;
end;

procedure TfrmDelivery.cdsClientesAfterScroll(DataSet: TDataSet);
var DaoCliente : TDaoCliente;
    Cliente : TCliente;
begin
   DaoCliente := TDaoCliente.Create(gConexao);
   Cliente := DaoCliente.Buscar(cdsClientes.FieldByName('Codigo').AsInteger);
   edtEndereco.Text := Cliente.Endereco.logradouro;
   edtBairro.Text := Cliente.Endereco.bairro;
   edtCidade.text := Cliente.Endereco.cidade;
   edtPto_Referencia.Text := Cliente.Endereco.PontoReferencia;
   FreeAndNil(DaoCliente);
   FreeAndNil(Cliente);
end;

procedure TfrmDelivery.edtNomeChange(Sender: TObject);
var parametros : TStringList;
begin
   parametros := TStringList.Create;
   parametros.Add('%'+edtNome.Text+'%');
   cdsClientes.Data := gConexao.BuscarDadosSQL('Select * from T_Clientes where Descricao Like :parNome_fantasia',parametros ).Data;
end;

procedure TfrmDelivery.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   cdsLista.SaveToFile(gspath+'config\listapendente.xml',dfXML);
end;

procedure TfrmDelivery.FormShow(Sender: TObject);
begin
   if FileExists(gspath+'config\listapendente.xml') then
      cdsLista.LoadFromFile(gspath+'config\listapendente.xml');
end;

end.
