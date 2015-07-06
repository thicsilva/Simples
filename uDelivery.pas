unit uDelivery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinGrids, bsDBGrids, StdCtrls, Mask, bsSkinBoxCtrls,
  DB, uPrincipal, DBClient, uClassCliente,uFormBase, Menus,StrUtils, DBCtrls,
  ComCtrls, bsSkinTabs, uDaoClienteAnimal, OleCtrls, SHDocVw, ExtCtrls, RDprint;


type
  TfrmDelivery = class(TFormBase)
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinLabel1: TbsSkinLabel;
    edtNome: TbsSkinEdit;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinExPanel2: TbsSkinExPanel;
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
    btnServicos: TbsSkinButton;
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
    bsSkinButton2: TbsSkinButton;
    cdslistaCodCliente: TIntegerField;
    HoradeChegada1: TMenuItem;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    dbgConsulta: TbsSkinDBGrid;
    srcAnimais: TDataSource;
    btnMostrarMapa: TbsSkinButton;
    PrevisodeChegada1: TMenuItem;
    edtHora: TbsSkinTimeEdit;
    cdslistaLancado: TStringField;
    btnNovoCliente: TbsSkinButton;
    pnlObs: TPanel;
    cdslistaObs: TStringField;
    ImpMatricial: TRDprint;
    btnImprimir: TbsSkinButton;
    Saiuparaentrega1: TMenuItem;
    bsSkinButton3: TbsSkinButton;
    ServioFinalizado1: TMenuItem;
    procedure edtNomeChange(Sender: TObject);
    procedure cdsClientesAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverDescontoClick(Sender: TObject);
    procedure dbgConsultaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TbsColumn; State: TGridDrawState);
    procedure MarcarcomoEntregue1Click(Sender: TObject);
    procedure MarcarComonoEntregue1Click(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnServicosClick(Sender: TObject);
    procedure HoradeChegada1Click(Sender: TObject);
    procedure btnMostrarMapaClick(Sender: TObject);
    procedure PrevisodeChegada1Click(Sender: TObject);
    procedure btnNovoClienteClick(Sender: TObject);
    procedure cdslistaAfterScroll(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure Saiuparaentrega1Click(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure ServioFinalizado1Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
  private
     function RetornarPosicaoCentral(liTamanhoString,  TamanhoLinha: Integer): integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmDelivery: TfrmDelivery;

implementation

uses
  uDaoCliente,ufuncoes, uCadClientes, uVendas, uMapa, uSelHora,
  uCadastroRapidoCliente, uConsVendas;

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

   if  cdslista.FieldByName('Status').AsString='E' then
   begin
      dbgConsulta.Canvas.font.Color    := clBlack;
      dbgConsulta.Canvas.Brush.Color   := $0014ECF8;
   end;

   if  cdslista.FieldByName('Status').AsString='F' then
   begin
      dbgConsulta.Canvas.font.Color    := clBlack;
      dbgConsulta.Canvas.Brush.Color   := $00FFFF80;
   end;

   if  (StrToint(Hora01) <= Strtoint(Hora02)) and (StrToint(Hora01)>0) then
   Begin
      dbgConsulta.Canvas.font.Color    := clBlack;
      dbgConsulta.Canvas.Brush.Color   := clRed;
   End
   else if  (StrToint(Hora01)+30>= Strtoint(Hora02))  and (StrToint(Hora01)>0) then
   begin
      dbgConsulta.Canvas.font.Color    := clBlack;
      dbgConsulta.Canvas.Brush.Color    := $000080FF;
   end;

   if  cdslista.FieldByName('Status').AsString='S' then
   begin
      dbgConsulta.Canvas.font.Color    := clBlack;
      dbgConsulta.Canvas.Brush.Color   := $00B7F98A;
   end;

   dbgConsulta.DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure TfrmDelivery.btnServicosClick(Sender: TObject);
begin
   FrmVendas := TfrmVendas.create(Self);
   frmvendas.Tag := 3; // venda de serviços
   frmvendas.pAtendimento := True;
   frmvendas.pliCliente := cdsLista.FieldByName('Id').AsInteger;
   frmVendas.Showmodal;
end;

procedure TfrmDelivery.btnMostrarMapaClick(Sender: TObject);
var consultaendereco : string;
begin
   consultaendereco := 'http://maps.google.com/maps?q=;';
   if Trim(cdsClientes.FieldByName('Cidade').AsString)<> '' then
      consultaendereco := consultaendereco + cdsClientes.FieldByName('Cidade').AsString +',';
   if Trim(cdsClientes.FieldByName('UF').AsString) <> '' then
      consultaendereco := consultaendereco + cdsClientes.FieldByName('UF').AsString + ',';
   if Trim(cdsClientes.FieldByName('Endereco').AsString) <> ''  then
      consultaendereco := consultaendereco + cdsClientes.FieldByName('Endereco').AsString+',';
   if Trim(cdsClientes.FieldByName('Cep').AsString) <> ''  then
      consultaendereco := consultaendereco + cdsClientes.FieldByName('Cep').AsString;
   FrmMapa := TFrmMapa.create(Self);
   FrmMapa.caption := consultaendereco;
   FrmMapa.showmodal;
end;

procedure TfrmDelivery.btnNovoClienteClick(Sender: TObject);
begin
  frmCadastroClienteSimplificado := TfrmCadastroClienteSimplificado.Create(Self);
  frmCadastroClienteSimplificado.showModal;
  edtNome.SetFocus;
  edtNome.Text := frmCadastroClienteSimplificado.edtTelefone.Text;
  FreeAndNil(frmCadastroClienteSimplificado);
end;

procedure TfrmDelivery.bsSkinButton2Click(Sender: TObject);
begin
   frmConsVendas := TfrmConsVendas.Create(Nil);
   frmconsvendas.tag := 3;
   frmConsVendas.showmodal;
end;

procedure TfrmDelivery.bsSkinButton3Click(Sender: TObject);
begin
  if CaixaMensagem( 'Deseja ZERAR a lista de entregas', ctConfirma, [ cbSimNao ], 0 )  Then
     cdsLista.EmptyDataSet;
end;

procedure TfrmDelivery.btnAdicionarClick(Sender: TObject);
var lsObs : String;
begin
  if Trim(edtHora.Text)='' then
  begin
     CaixaMensagem( 'Informe a hora prevista para entrega ', ctAviso, [ cbOk ], 0 );
     Exit;
  end;
 if not inputQuery('Informe a OBS...','Informe a OBS...',lsObs) Then
         Exit;
  cdsLista.Append;
  cdsLista.FieldByName('Id').AsInteger := cdsClientes.FieldByName('Codigo').AsInteger;
  cdsLista.FieldByName('Nome').AsString := cdsClientes.FieldByName('Descricao').AsString;
  cdsLista.FieldByName('Data').AsDatetime :=  edtData.date;
  cdsLista.FieldByName('Hora').AsString := edtHora.Text;
  cdsLista.FieldByName('obs').AsString  := lsObs;
  pnlObs.Caption := lsObs;
  cdsLista.Post;
end;

procedure TfrmDelivery.btnClientesClick(Sender: TObject);
begin
   frmCadClientes := TfrmCadClientes.Create(Nil);
   frmCadClientes.Tag := 5;
   frmCadClientes.showmodal;
end;

procedure TfrmDelivery.btnImprimirClick(Sender: TObject);
var  lDaoCliente : TDaoCliente;
     Cliente : Tcliente;
     FLinha : Integer;
begin
   ImpMatricial := TrdPrint.Create(Nil);
   ImpMatricial.PortaComunicacao          := 'LPT1';
   impMatricial.OpcoesPreview.PreviewZoom := 100;
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 33;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   impmatricial.Impressora                := Grafico;
   impMatricial.UsaGerenciadorImpr        := True;
   impMatricial.Abrir;

   lDaoCliente := TDaoCliente.Create(gConexao);
   cliente := lDaoCliente.Buscar(cdslista.FieldByName('id').AsInteger);

   FLinha := 01;
   impMatricial.Imp(FLinha,001,IncDigito( '_','_',80,0));
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha,RetornarPosicaoCentral(Length(Trim(gEmpresa.Nome_Fantasia)),ImpMatricial.TamanhoQteColunas ), Trim(gEmpresa.Nome_Fantasia), [] );
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha, RetornarPosicaoCentral(Length(Trim(gEmpresa.Endereco.logradouro)+', '+Trim(gempresa.Endereco.numero)+' Bairro.: '+Trim(gEmpresa.Endereco.bairro)+' '+
                                                            Trim(gEmpresa.Endereco.cidade)+'-'+gEmpresa.Endereco.uf),ImpMatricial.TamanhoQteColunas ),
                                  gEmpresa.Endereco.logradouro+', '+gEmpresa.Endereco.numero+' Bairro.: '+gEmpresa.Endereco.bairro+' '+
                                  gEmpresa.Endereco.cidade+'-'+gEmpresa.Endereco.uf, [] );
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha, RetornarPosicaoCentral(Length(Trim(gEmpresa.Telefones)),ImpMatricial.TamanhoQteColunas ),'Telefones '+gEmpresa.Telefones, [] );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',80,0));
   FLinha := FLinha + 1;
   impMatricial.Imp (FLinha,001,'Emissao...: '+formatdateTime('dd/mm/YYYY',now));
   FLinha := FLinha + 1;
   impMatricial.ImpF(FLinha,001,'Cliente...: '+Copy(IntToStr(Cliente.Id)+'-'+Cliente.Descricao,1,80 ),[negrito] );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Endereco..: '+Cliente.Endereco.logradouro+', '+Cliente.Endereco.numero);
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Bairro.: '+Cliente.Endereco.bairro+' '+Cliente.Endereco.cidade+'-'+Cliente.Endereco.uf );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Pto.Refere: '+Cliente.Endereco.PontoReferencia+' Telefone.:'+cliente.Telefones);
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'OBS...: '+cdsLista.FieldByName('OBS').AsString);
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',80,0));
   ImpMatricial.Fechar;
end;
function TfrmDelivery.RetornarPosicaoCentral(liTamanhoString,  TamanhoLinha: Integer): integer;
begin
   Result := StrToint(formatFloat('0',( (TamanhoLinha/2) - (liTamanhoString/8))));
end;


procedure TfrmDelivery.Saiuparaentrega1Click(Sender: TObject);
begin
   cdsLista.Edit;
   cdsLista.FieldByname('Status').AsString := 'E';
   cdsLista.Post;
end;

procedure TfrmDelivery.ServioFinalizado1Click(Sender: TObject);
begin
   cdsLista.Edit;
   cdsLista.FieldByname('Status').AsString := 'F';
   cdsLista.Post;
end;

procedure TfrmDelivery.btnRemoverDescontoClick(Sender: TObject);
begin
  cdsLista.Delete;
end;

procedure TfrmDelivery.cdsClientesAfterScroll(DataSet: TDataSet);
var DaoCliente : TDaoCliente;
    Cliente : TCliente;
    DaoClienteAnimal : TDaoClienteAnimal;
begin
   DaoCliente := TDaoCliente.Create(gConexao);
   Cliente := DaoCliente.Buscar(cdsClientes.FieldByName('Codigo').AsInteger);
   edtEndereco.Text := Cliente.Endereco.logradouro;
   edtBairro.Text := Cliente.Endereco.bairro;
   edtCidade.text := Cliente.Endereco.cidade;
   edtPto_Referencia.Text := Cliente.Endereco.PontoReferencia;

   DaoClienteAnimal   := TDaoClienteAnimal.create(gConexao);
   srcAnimais.DataSet := DaoClienteAnimal.BucarAnimalCliente(Cliente.Id);

   FreeAndNil(DaoCliente);
   FreeAndNil(Cliente);
end;

procedure TfrmDelivery.cdslistaAfterScroll(DataSet: TDataSet);
begin
   pnlObs.Caption := cdsLista.fieldByname('obs').AsString;
end;

procedure TfrmDelivery.edtNomeChange(Sender: TObject);
var parametros : TStringList;
begin
parametros := TStringList.Create;
   parametros.Add('%'+edtNome.Text+'%');
   if TemSoNumero(edtNome.Text) then
      cdsClientes.Data := gConexao.BuscarDadosSQL('Select * from T_Clientes where Telefone Like :parNome_fantasia',parametros ).Data
   else
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

procedure TfrmDelivery.HoradeChegada1Click(Sender: TObject);
begin
   frmSelHora := TfrmSelHora.Create(application);
   frmSelHora.showModal;
   if frmSelHora.Tag=1 then
   begin
      cdsLista.Edit;
      cdsLista.FieldByname('HoraChegada').AsString := frmSelHora.edtHora.Text;
      cdsLista.Post;
   end;
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

procedure TfrmDelivery.PrevisodeChegada1Click(Sender: TObject);
begin
   frmSelHora := TfrmSelHora.Create(application);
   frmSelHora.showModal;
   if frmSelHora.Tag=1 then
   begin
      cdsLista.Edit;
      cdsLista.FieldByname('PrevisaoChegda').AsString := frmSelHora.edtHora.Text;
      cdsLista.Post;
   end;
end;

end.
