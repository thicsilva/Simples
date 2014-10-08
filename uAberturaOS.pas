unit uAberturaOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsdbctrls, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, ExtCtrls,
  ToolWin, ComCtrls,uClassCliente,uDtmCadastro, DB, DBClient;

type
  TfrmAberturaOs = class(TForm)
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel5: TbsSkinBevel;
    bsSkinExPanel1: TbsSkinExPanel;
    edtNome_Cliente: TbsSkinEdit;
    cmbNome_Cliente: TbsSkinDBLookupComboBox;
    btnCadAlunos: TbsSkinSpeedButton;
    bsSkinStdLabel14: TbsSkinStdLabel;
    edtTelefone: TbsSkinEdit;
    lblCNPJCPF: TbsSkinStdLabel;
    edtCnpjCpf: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    btnNovoCliente: TbsSkinButton;
    bsSkinExPanel2: TbsSkinExPanel;
    edtDescricaoProduto: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    EdtSerie: TbsSkinEdit;
    bsSkinStdLabel4: TbsSkinStdLabel;
    MemoDefeito: TMemo;
    StatusBar1: TStatusBar;
    btnLimpa: TbsSkinButton;
    procedure edtNome_ClienteExit(Sender: TObject);
    procedure cmbNome_ClienteChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLimpaClick(Sender: TObject);
    procedure btnCadAlunosClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
  private
    procedure MostrarDadosCliente(Cliente: TCliente);
    procedure LimpaDadosCliente;
    procedure AtualizarComboCliente;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAberturaOs: TfrmAberturaOs;

implementation

uses uDaoCliente,uPrincipal,ufuncoes, uCadClientes, uDaoVenda, uClassVenda,
  uDaoFuncionario, uDaoFormaPagamento;

{$R *.dfm}

procedure TfrmAberturaOs.btnCadAlunosClick(Sender: TObject);
begin
   frmCadClientes := TfrmCadClientes.Create(Nil);
   frmCadClientes.Tag := 5;
   frmCadClientes.showmodal;
   AtualizarComboCliente;
   if frmCadClientes.piCod_Produto<> 0 Then
   begin
      edtNome_Cliente.Text := intToStr(frmCadClientes.piCod_Produto);
      edtNome_ClienteExit(edtNome_Cliente);
   End;
end;

procedure TfrmAberturaOs.btnLimpaClick(Sender: TObject);
begin
   LimpaDadosCliente;
end;

procedure TfrmAberturaOs.btnokClick(Sender: TObject);
var DaoVenda : TDaoVenda;
    DaoCliente : TDaoCliente;
    DaoFuncionario : TDaofuncionario;
    DaoformaPagamento : TDaoFormaPagamento;
    Venda : TVenda;
begin
   DaoCliente        := TDaoCliente.Create(gConexao);
   DaoFuncionario    := TDaofuncionario.Create(gConexao);
   DaoformaPagamento := TDaoFormaPagamento.Create(gConexao);

   DaoVenda    := TDaoVenda.Create(gConexao);
   Venda       := TVenda.Create(gConexao);
   Venda.VendaID := StrToInt(Sequencia('SeqVenda',True,'T_Sequencias',FrmPrincipal.dbxPrincipal,'',False,8));
   Venda.Cliente := DaoCliente.Buscar(cmbNome_Cliente.KeyValue);
   Venda.Empresa := gEmpresa;
   Venda.FormaPagamento := DaoformaPagamento.Buscar(1);
   Venda.Funcionario := DaoFuncionario.Buscar(1);
   Venda.DescricaoProduto := edtDescricaoProduto.text;
   Venda.Serie := edtSerie.text;
   Venda.Defeito := MemoDefeito.Text;
   venda.Status := '1';
   Venda.Data_Venda := gsData_Mov;
   Venda.DataMovimento := gsData_Mov;
   DaoVenda.Incluir(Venda);
   Close;
end;

procedure TfrmAberturaOs.cmbNome_ClienteChange(Sender: TObject);
begin
   if cmbNome_Cliente.KeyValue<>Null then
   begin
     edtNome_Cliente.Text := cmbNome_Cliente.KeyValue;
     edtNome_ClienteExit(edtNome_Cliente);
   end;
end;

procedure TfrmAberturaOs.edtNome_ClienteExit(Sender: TObject);
var DaoCliente : TDaoCliente;
    Cliente : TCliente;
begin
   IF Trim(edtNome_Cliente.Text)<>'' Then
   Begin
      DaoCliente := TDaoCliente.Create(gConexao);
      Cliente := DaoCliente.Buscar(StrtoIntdef(edtNome_Cliente.Text,0));
      if Trim(Cliente.Descricao)<>'' then
         MostrarDadosCliente(Cliente)
      else
      begin
         if StrToIntdef(Copy(edtNome_Cliente.Text,1,2),0)<>0 then
         begin
            Cliente := DaoCliente.BuscarCNPJ(edtNome_Cliente.Text);
            if Trim(Cliente.Descricao)<>'' then
               MostrarDadosCliente(Cliente);
         end
         else
         begin
            CaixaMensagem( 'Cliente Não Encontrado ', ctAviso, [ cbOk ], 0 );
            try
               edtNome_Cliente.SetFocus;
            Except

            end;
         end;
      End;
      cmbNome_Cliente.KeyValue := Cliente.Id;
   end;
end;

procedure TfrmAberturaOs.FormCreate(Sender: TObject);
begin
   dtmCadastro := TdtmCadastro.create(Nil);
end;

procedure TfrmAberturaOs.FormShow(Sender: TObject);
begin
  AtualizarComboCliente;
end;

procedure TfrmAberturaOs.MostrarDadosCliente(Cliente : TCliente) ;
begin
   edtNome_Cliente.Text := Cliente.Descricao;
   edtCnpjCpf.Text      := Cliente.CPF;
   edtTelefone.Text     := Cliente.Telefones;

   edtNome_Cliente.Enabled := False;
   edtCnpjCpf.Enabled      := False;
   edtTelefone.Enabled     := False;

   btnNovoCliente.Enabled  := False;

end;

procedure TfrmAberturaOs.LimpaDadosCliente;
begin
   edtNome_Cliente.Text := '';
   edtCnpjCpf.Text      := '';
   edtTelefone.Text     := '';

   edtNome_Cliente.Enabled := True;
   edtCnpjCpf.Enabled      := True;
   edtTelefone.Enabled     := True;

   btnNovoCliente.Enabled  := True;

   cmbNome_Cliente.KeyValue := Null;

end;

procedure TfrmAberturaOs.AtualizarComboCliente;
var DaoCliente: TDaoCliente;
begin
  DaoCliente := TDaoCliente.Create(gConexao);
  cmbNome_Cliente.ListSource := dtmCadastro.srcCliente;
  dtmCadastro.cdsClientes.data := DaoCliente.BuscarTodos.Data;
  FreeAndNil(DaoCliente);
end;


end.
