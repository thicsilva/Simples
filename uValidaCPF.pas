unit uValidaCPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, bsdbctrls, StdCtrls, Mask,
  bsSkinBoxCtrls, FMTBcd, DBClient, Provider, SqlExpr;

type
  TForm1 = class(TForm)
    bsSkinStatusBar1: TbsSkinStatusBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinPanel1: TbsSkinPanel;
    EdtPesquisa: TbsSkinEdit;
    btnPesquisar: TbsSkinButton;
    lblCNPJCPF: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    edtCod_Funcionario: TbsSkinEdit;
    cmbCod_Funcionario: TbsSkinDBLookupComboBox;
    cmbNome_Funcionario: TbsSkinDBLookupComboBox;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    cdsCadFuncionarios: TClientDataSet;
    srcCadFuncionarios: TDataSource;
    qryPesquisa: TSQLQuery;
    srcPesquisa: TDataSource;
    dspPesquisa: TDataSetProvider;
    cdspesquisa: TClientDataSet;
    procedure cmbNome_FuncionarioChange(Sender: TObject);
    procedure cmbCod_FuncionarioChange(Sender: TObject);
    procedure edtCod_FuncionarioExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Uprincipal,ufuncoes;

{$R *.dfm}

procedure TForm1.btnPesquisarClick(Sender: TObject);
var lsCoringa : String;
    lswhere   : String;
begin

   EdtPesquisa.EditMask := '';
   EdtPesquisa.Text     := SubstString( Trim( EdtPesquisa.Text ), ';,/-.', '' );

   If Length( EdtPesquisa.Text ) <= 11 then
   Begin
      lblCNPJCPF.Caption   := 'C.P.F.';
      EdtPesquisa.EditMask := '###.###.###-##;0;_';

      if not CPF_Check( EdtPesquisa.Text ) then
      begin
         EdtPesquisa.EditMask := '';
         EdtPesquisa.SetFocus;
         exit;
      end;

   End
   else
   begin
      lblCNPJCPF.Caption   := 'C.N.P.J.';
      EdtPesquisa.EditMask := '##.###.###/####-##;0;_';

      if not CNPJ_Check( EdtPesquisa.Text ) then
      begin
         EdtPesquisa.EditMask := '';
         EdtPesquisa.SetFocus;
         //CaixaMensagem( 'CNPJ ' + Trim( EdtPesquisa.Text ) + ' inválido', ctAviso, [ cbOk ], 0 );
         exit;
      End;
   End;
   lsCoringa := '';
   lswhere := 'Where cnpjcpf =:parCnpjCpf ';

   qrypesquisa.Close;
   qryPesquisa.Params.Clear;
   qryPesquisa.sql.text := 'Select * from T_Clientes '+lswhere ;
   qryPesquisa.ParamByName('parCnpjCpf').AsString := EdtPesquisa.Text;

   cdspesquisa.Close;
   cdspesquisa.ProviderName :=dspPEsquisa.Name;
   cdspesquisa.Open;

   if cdsPesquisa.IsEmpty then
      CaixaMensagem( 'Cliente não encontrado ', ctAviso, [ cbOk ], 0 );

   If TemVendaAberta(cdspesquisa.FieldByName('Codigo').AsString) Then
      CaixaMensagem( 'Cliente tem compra em aberto Controle ', ctAviso, [ cbOk ], 0 );

end;

procedure TForm1.cmbCod_FuncionarioChange(Sender: TObject);
begin
   cmbNome_Funcionario.KeyValue  :=  cmbCod_Funcionario.KeyValue;
   if Trim(cmbCod_Funcionario.Text)<>'' Then
      edtCod_Funcionario.Text := cmbCod_Funcionario.Text
end;

procedure TForm1.cmbNome_FuncionarioChange(Sender: TObject);
begin
   cmbCod_Funcionario.KeyValue  :=  cmbNome_Funcionario.KeyValue;
end;

procedure TForm1.edtCod_FuncionarioExit(Sender: TObject);
begin
   if trim(edtCod_Funcionario.text)<>'' then
   Begin
      cmbCod_Funcionario.KeyValue := StrToInt(edtCod_Funcionario.text);
      cmbCod_FuncionarioChange(cmbCod_Funcionario);
      if Trim(cmbNome_Funcionario.Text) = '' Then
      Begin
         cmbNome_Funcionario.KeyValue := Null;
         edtCod_Funcionario.Text      := '';
         CaixaMensagem( 'Vendedor nao localizado', ctAviso, [ cbOk ], 0 );
      End;
   End;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Funcionarios order by Descricao ';

   cdsCadFuncionarios.Close;
   cdsCadFuncionarios.ProviderName := dspVariavel.Name;
   cdsCadFuncionarios.Open;
end;

end.
