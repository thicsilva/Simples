unit uCadastroRapidoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, ExtCtrls,
  ToolWin;

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
    bsSkinStdLabel25: TbsSkinStdLabel;
    bsSkinStdLabel26: TbsSkinStdLabel;
    edtDescricaoVeiculo: TbsSkinEdit;
    procedure btnNovoClienteClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ClienteId : String;
  end;

var
  frmCadastroClienteSimplificado: TfrmCadastroClienteSimplificado;

implementation

uses uClassCliente, uDaoCliente,uPrincipal,uFuncoes;

{$R *.dfm}

procedure TfrmCadastroClienteSimplificado.btnNovoClienteClick(Sender: TObject);
var Cliente : tCliente;
    DaoCliente : tDaoCliente;
begin
   if trim(edtNome_Cliente.Text)= EmptyStr then
   begin
      CaixaMensagem( 'O nome do cliente não pode ser vazio', ctInforma, [ cbOK ], 0 );
      exit;
   end;

   if trim(edtPlacaVeiculo.Text)= EmptyStr then
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

end.
