unit uDelivery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinGrids, bsDBGrids, StdCtrls, Mask, bsSkinBoxCtrls,
  DB, uPrincipal, DBClient, uClassCliente,uFormBase, Menus,StrUtils, DBCtrls;


type
  TfrmDelivery = class(TFormBase)
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinLabel1: TbsSkinLabel;
    edtNome: TbsSkinEdit;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinExPanel2: TbsSkinExPanel;
    dbgConsulta: TbsSkinDBGrid;
    srcClientes: TDataSource;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinScrollBar1: TbsSkinScrollBar;
    cdsClientes: TClientDataSet;
    btnAdicionar: TbsSkinButton;
    btnRemoverDesconto: TbsSkinButton;
    cdslista: TClientDataSet;
    srcLista: TDataSource;
    cdslistaId: TIntegerField;
    cdslistaNome: TStringField;
    edtHora: TbsSkinEdit;
    cdslistaData: TDateTimeField;
    cdslistaHora: TStringField;
    edtData: TbsSkinDateEdit;
    bsSkinExPanel3: TbsSkinExPanel;
    bsSkinDBGrid3: TbsSkinDBGrid;
    PopupMenu1: TPopupMenu;
    MarcarcomoEntregue1: TMenuItem;
    MarcarComonoEntregue1: TMenuItem;
    cdslistaStatus: TStringField;
    btnClientes: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    Label1: TLabel;
    cdslistaHoraChegada: TStringField;
    cdslistaPrevisaoChegda: TStringField;
    bsSkinPanel4: TbsSkinPanel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel16: TbsSkinStdLabel;
    edtEndereco: TbsSkinEdit;
    edtBairro: TbsSkinEdit;
    edtCidade: TbsSkinEdit;
    edtPto_Referencia: TbsSkinEdit;
    procedure edtNomeChange(Sender: TObject);
    procedure cdsClientesAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverDescontoClick(Sender: TObject);
    procedure dbgConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TbsColumn; State: TGridDrawState);
    procedure MarcarcomoEntregue1Click(Sender: TObject);
    procedure MarcarComonoEntregue1Click(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmDelivery: TfrmDelivery;

implementation

uses
  uDaoCliente,ufuncoes, uCadClientes;

{$R *.dfm}

procedure TfrmDelivery.dbgConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TbsColumn;
  State: TGridDrawState);
  var Hora01,Hora02 : String;
begin
   Hora01 := '2';
   Hora02 := '1';

   if gdSelected in State then
      exit;

   if not cdslista.IsEmpty then
   begin
     Hora01 := replaceStr( cdslista.FieldByName('Hora').AsString,':','');
     Hora02 := replaceStr( FormatDatetime('HH:MM',now),':','');
   end;

   if  StrToint(Hora01) <= Strtoint(Hora02) then
   Begin
      dbgConsulta.Canvas.font.Color    := clRed;
      //dbgConsulta.Canvas.Brush.Color   := $00B7F98A;
   End
   else if  StrToint(Hora01)<= Strtoint(Hora02)+30 then
      dbgConsulta.Canvas.font.Color    := $000080FF;

   if  cdslista.FieldByName('Status').AsString='S' then
   begin
      dbgConsulta.Canvas.font.Color    := clBlack;
      dbgConsulta.Canvas.Brush.Color   := $00B7F98A;
   end;


   dbgConsulta.DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure TfrmDelivery.btnAdicionarClick(Sender: TObject);
begin
  if Trim(edtHora.Text)='' then
  begin
     CaixaMensagem( 'Informe a hora prevista para entrega ', ctAviso, [ cbOk ], 0 );
     Exit;
  end;
  cdsLista.Append;
  cdsLista.FieldByName('Id').AsInteger := cdsClientes.FieldByName('Codigo').AsInteger;
  cdsLista.FieldByName('Nome').AsString := cdsClientes.FieldByName('Descricao').AsString;
  cdsLista.FieldByName('Data').AsDatetime :=  edtData.date;
  cdsLista.FieldByName('Hora').AsString := edtHora.Text;
  cdsLista.Post;
end;

procedure TfrmDelivery.btnClientesClick(Sender: TObject);
begin
   frmCadClientes := TfrmCadClientes.Create(Nil);
   frmCadClientes.Tag := 5;
   frmCadClientes.showmodal;
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
   edtData.date := Now;   
end;

procedure TfrmDelivery.MarcarcomoEntregue1Click(Sender: TObject);
begin
   cdsLista.Edit;
   cdsLista.FieldByname('Status').AsString := 'S';
   cdsLista.Post;
end;

procedure TfrmDelivery.MarcarComonoEntregue1Click(Sender: TObject);
begin
   cdsLista.Edit;
   cdsLista.FieldByname('Status').AsString := 'N';
   cdsLista.Post;
end;

end.
