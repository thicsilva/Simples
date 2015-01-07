unit uCadastroRapidoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, ExtCtrls,
  ToolWin, ImgList, bsPngImageList,DbClient;

type
  TfrmCadastroClienteSimplificado = class(TForm)
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel5: TbsSkinBevel;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinStdLabel14: TbsSkinStdLabel;
    lblCNPJCPF: TbsSkinStdLabel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtNome_Cliente: TbsSkinEdit;
    edtTelefone: TbsSkinEdit;
    edtCnpjCpf: TbsSkinEdit;
    btnNovoCliente: TbsSkinButton;
    StatusBar1: TStatusBar;
    EdtPlacaVeiculo: TbsSkinEdit;
    lblPlaca: TbsSkinStdLabel;
    lblDescricaoVeiculo: TbsSkinStdLabel;
    edtDescricaoVeiculo: TbsSkinEdit;
    bsSkinExPanel2: TbsSkinExPanel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtEndereco: TbsSkinEdit;
    edtBairro: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    edtCep: TbsSkinEdit;
    lblPontoReferencia: TbsSkinStdLabel;
    edtPto_Referencia: TbsSkinEdit;
    bsSkinStdLabel6: TbsSkinStdLabel;
    procedure btnNovoClienteClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtTelefoneExit(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure edtNome_ClienteExit(Sender: TObject);
  private
    procedure MostrarDados(Dados: TClientDataSet);
    { Private declarations }
  public
    { Public declarations }
    ClienteId : String;
    pTelefone : String;
  end;

var
  frmCadastroClienteSimplificado: TfrmCadastroClienteSimplificado;

implementation

uses uClassCliente, uDaoCliente,uPrincipal,uFuncoes, uMostrarDados;

{$R *.dfm}

procedure TfrmCadastroClienteSimplificado.BtnCancelaClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastroClienteSimplificado.btnNovoClienteClick(Sender: TObject);
var Cliente : tCliente;
    DaoCliente : tDaoCliente;
begin
   if trim(edtNome_Cliente.Text)= EmptyStr then
   begin
      CaixaMensagem( 'O nome do cliente não pode ser vazio', ctInforma, [ cbOK ], 0 );
      exit;
   end;

   if (trim(edtPlacaVeiculo.Text)= EmptyStr) and (edtPlacaVeiculo.visible) then
   begin
      CaixaMensagem( 'A Placa não pode ser vazia', ctInforma, [ cbOK ], 0 );
      exit;
   end;

  if CaixaMensagem( 'Deseja Incluir o cliente '+edtNome_Cliente.Text, ctConfirma, [ cbSimNao ], 0 )  Then
   begin
     DaoCliente := TDaoCliente.Create(gConexao);
     Cliente := TCliente.Create;
     Cliente.Descricao := edtNome_Cliente.Text;
     Cliente.AtividadeId := 2;
     Cliente.FuncionarioId := 1;
     Cliente.RotaId := 1;
     Cliente.Telefones := edtTelefone.Text;
     Cliente.CPF := edtCnpjCpf.Text;
     Cliente.Placa := EdtPlacaVeiculo.Text;
     Cliente.DescricaoVeiculo := edtDescricaoVeiculo.Text;
     Cliente.Endereco.logradouro := edtEndereco.Text;
     Cliente.Endereco.bairro := edtBairro.Text;
     Cliente.Endereco.cep := edtcep.Text;
     Cliente.Endereco.PontoReferencia := edtPto_Referencia.Text;
     ClienteId := Sequencia('Codigo',False,'T_Clientes',gConexao.Conection,'',False,5);
     DaoCliente.Incluir(Cliente);
     FreeAndNil(DaoCliente);
     Close;
   end;
end;

procedure TfrmCadastroClienteSimplificado.btnokClick(Sender: TObject);
begin
   btnNovoClienteClick(btnNovoCliente);
end;

procedure TfrmCadastroClienteSimplificado.edtNome_ClienteExit(Sender: TObject);
var Daocliente : TDaoCliente;
    lsTelefone : String;
    Dados : TClientDataSet;
begin
   Daocliente := TDaoCliente.Create(gConexao);
   try
      Dados := TClientDataSet.Create(Self);
      Dados.Data := DaoCliente.BuscarNome(edtNome_Cliente.Text).Data;
      if Dados.RecordCount>0 then
      begin
          if Dados.RecordCount=1 then
            CaixaMensagem( 'Cliente ja Cadastrado Telefone ('+Dados.FieldByName('Descricao').AsString+')', ctInforma, [ cbOK ], 0 )
          else
            MostrarDados(Dados);
      end;
   finally
      FreeAndNil(Daocliente);
   end;
end;

procedure TfrmCadastroClienteSimplificado.MostrarDados(Dados : TClientDataSet);
begin
   try
     frmMostrarDados := TfrmMostrarDados.Create(Self);
     frmMostrarDados.cdsDados.Data := Dados.Data;
     frmMostrarDados.ShowModal;
     if frmMostrarDados.tag=1 then
     begin
        edtTelefone.Text := frmMostrarDados.PTelefone;
        Close;
     end;
  finally
     FreeAndNil(frmMostrarDados);
  end;
end;

procedure TfrmCadastroClienteSimplificado.edtTelefoneExit(Sender: TObject);
var Daocliente : TDaoCliente;
    lsCliente : String;
begin
   Daocliente := TDaoCliente.Create(gConexao);
   try
        lsCliente := DaoCliente.BuscarTelefone(edtTelefone.Text);
      if trim(lsCliente)<> EmptyStr then
      begin
         CaixaMensagem( 'Cliente ja Cadastrado ('+lscliente+')', ctInforma, [ cbOK ], 0 );
         exit;
      end;
   finally
      FreeAndNil(Daocliente);
   end;
  // edtEndereco.SetFocus;
end;

procedure TfrmCadastroClienteSimplificado.FormShow(Sender: TObject);
begin
   edtDescricaoVeiculo.Visible := RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[ADMINISTRATIVO]', 'TrabalhaComVeiculo', 'NAO' )));
   edtPlacaVeiculo.Visible     := RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[ADMINISTRATIVO]', 'TrabalhaComVeiculo', 'NAO' ))) ;
   lblPlaca.Visible            := edtPlacaVeiculo.Visible;
   lblDescricaoVeiculo.Visible := edtDescricaoVeiculo.Visible;
   edtNome_Cliente.SetFocus;
end;

end.
