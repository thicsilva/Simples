unit uCadEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,uFormBase,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, ExtCtrls, ToolWin,
  ComCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfrmcadEmpresa = class(TFormBase)
    bsSkinCoolBar1: TbsSkinCoolBar;
    toobar: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    BtnCancelar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    PanelDados: TbsSkinExPanel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel14: TbsSkinStdLabel;
    lblCNPJCPF: TbsSkinStdLabel;
    bsSkinStdLabel19: TbsSkinStdLabel;
    edtNome_Fantasia: TbsSkinEdit;
    edtBairro: TbsSkinEdit;
    edtCep: TbsSkinEdit;
    edtEndereco: TbsSkinEdit;
    edtCidade: TbsSkinEdit;
    edtUf: TbsSkinEdit;
    edtTelefone: TbsSkinEdit;
    edtCnpj: TbsSkinEdit;
    edtRazao_Social: TbsSkinEdit;
    bsSkinBevel2: TbsSkinBevel;
    QryCadEmpresas: TSQLQuery;
    dspCadEmpresas: TDataSetProvider;
    cdsCadEmpresas: TClientDataSet;
    srcCadEmpresas: TDataSource;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtEmail: TbsSkinEdit;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtfax: TbsSkinEdit;
    edtHomePage: TbsSkinEdit;
    bsSkinStdLabel9: TbsSkinStdLabel;
    edtDiretorEnsino: TbsSkinEdit;
    edtDiretorGeral: TbsSkinEdit;
    bsSkinStdLabel10: TbsSkinStdLabel;
    bsSkinStdLabel11: TbsSkinStdLabel;
    bsSkinStdLabel12: TbsSkinStdLabel;
    edtLocal: TbsSkinEdit;
    bsSkinStdLabel13: TbsSkinStdLabel;
    InscEst: TbsSkinEdit;
    bsSkinStdLabel15: TbsSkinStdLabel;
    edtCodMunicipio: TbsSkinEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    Procedure AtualizaEmp;
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadEmpresa: TfrmcadEmpresa;

implementation
uses uPrincipal;
{$R *.dfm}

procedure TfrmcadEmpresa.AtualizaEmp;
begin

   QryCadEmpresas.Close;
   QryCadEmpresas.SQL.Text :=' Select * from Empresa ';

   cdsCadEmpresas.Close;
   cdsCadEmpresas.ProviderName := dspCadEmpresas.Name;
   cdsCadEmpresas.Open;

   edtCnpj.Text          :=  cdsCadEmpresas.FieldByName('cnpjcpf').AsString;
   edtNome_Fantasia.Text :=  cdsCadEmpresas.FieldByName('Nome_Fantasia').AsString;
   edtRazao_Social.Text  :=  cdsCadEmpresas.FieldByName('Razao_Social').AsString;
   edtEndereco.Text      :=  cdsCadEmpresas.FieldByName('Endereco').AsString;
   edtBairro.Text        :=  cdsCadEmpresas.FieldByName('Bairro').AsString;
   edtCidade.Text        :=  cdsCadEmpresas.FieldByName('Cidade').AsString;
   edtTelefone.Text      :=  cdsCadEmpresas.FieldByName('Telefone').AsString;
   edtCep.Text           :=  cdsCadEmpresas.FieldByName('Cep').AsString;
   edtUf.Text            :=  cdsCadEmpresas.FieldByName('UF').AsString;
   edtEmail.Text         :=  cdsCadEmpresas.FieldByName('Email').AsString;
   edtFax.Text           :=  cdsCadEmpresas.FieldByName('Fax').AsString;
   edtHomePage.Text      :=  cdsCadEmpresas.FieldByName('HomePage').AsString;
   edtDiretorEnsino.Text :=  cdsCadEmpresas.FieldByName('Diretor').AsString;
   edtDiretorGeral.Text  :=  cdsCadEmpresas.FieldByName('NomeDiretor').AsString;
   edtLocal.Text         :=  cdsCadEmpresas.FieldByName('Local').AsString;
   edtCodMunicipio.Text  :=  cdsCadEmpresas.FieldByName('CodMunicipio').AsString;
   InscEst.Text          :=  cdsCadEmpresas.FieldByName('InscricaoEstadual').AsString;


end;

procedure TfrmcadEmpresa.btnalterarClick(Sender: TObject);
begin
  inherited;
   PanelDados.Enabled := True;
   BtnOk.Enabled := True;
   btnCancelar.Enabled := True;
   EDtCnpj.SetFocus;
end;

procedure TfrmcadEmpresa.BtnCancelarClick(Sender: TObject);
begin
  AtualizaEmp;
  BtnOk.Enabled       := False;
  btnCancelar.Enabled := False;
  PanelDados.Enabled := False;
end;

procedure TfrmcadEmpresa.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmcadEmpresa.btnokClick(Sender: TObject);
begin
   QryCadEmpresas.Close;
   QryCadEmpresas.SQL.Text :='Update Empresa set  Nome_Fantasia=:parNome_Fantasia,  Razao_Social=:parRazao_Social, Fax=:parFax, Email=:parEmail, '+
                             '                       Endereco=:parEndereco, Cidade=:parCidade, Bairro=:parBairro, local=:parLocal, InscricaoEstadual=:parInscricaoEstadual,' +
                             '                       Cep=:parCep, uf=:parUf, Telefone=:parTelefone, CNPJCPF=:parCNPJCPF, CodMunicipio=:parCodMunicipio, ' +
                             '                       HomePage=:parHomePage, Diretor=:parDiretor, NomeDiretor=:parNomeDiretor ';

   QryCadEmpresas.ParamByName('parNome_Fantasia').AsString := edtNome_Fantasia.Text;
   QryCadEmpresas.ParamByName('parRazao_Social').AsString  := edtRazao_Social.Text;
   QryCadEmpresas.ParamByName('parCidade').AsString        := edtCidade.Text;
   QryCadEmpresas.ParamByName('parBairro').AsString        := edtBairro.Text;
   QryCadEmpresas.ParamByName('parUF').AsString            := edtUf.Text;
   QryCadEmpresas.ParamByName('parEndereco').AsString      := edtEndereco.Text;
   QryCadEmpresas.ParamByName('parCep').AsString           := edtCep.Text;
   QryCadEmpresas.ParamByName('parCNPJCPF').AsString       := edtCnpj.Text;
   QryCadEmpresas.ParamByName('parTelefone').AsString      := edtTelefone.Text;
   QryCadEmpresas.ParamByName('parFax').AsString           := edtFax.Text;
   QryCadEmpresas.ParamByName('parEmail').AsString         := edtEmail.Text;
   QryCadEmpresas.ParamByName('parHomePage').AsString      := edtHomePage.Text;
   QryCadEmpresas.ParamByName('parDiretor').AsString       := edtDiretorEnsino.Text;
   QryCadEmpresas.ParamByName('parNomeDiretor').AsString   := edtDiretorGeral.Text;
   QryCadEmpresas.ParamByName('parLocal').AsString         := edtLocal.Text;
   QryCadEmpresas.ParamByName('parCodMunicipio').AsString     := edtCodMunicipio.Text;
   QryCadEmpresas.ParamByName('parInscricaoEstadual').AsString:= InscEst.Text;
   QryCadEmpresas.ExecSQL;

   AtualizaEmp;
   BtnOk.Enabled       := False;
   btnCancelar.Enabled := False;
   PanelDados.Enabled  := False;
end;

procedure TfrmcadEmpresa.FormShow(Sender: TObject);
begin
   edtCnpj.EditMask := '##.###.###/####-##;0;_';
   edtTelefone.EditMask := ' (##)####-####;0;_';
   edtFax.EditMask := ' (##)####-####;0;_';
   edtCep.EditMask := ' #####-###;0;_';
   AtualizaEmp;
   if cdsCadEmpresas.IsEmpty then
   Begin
      QryCadEmpresas.Close;
      QryCadEmpresas.SQL.Text :='Insert into Empresa (Nome_Fantasia) Values (:parNome_Fantasia) ';
      QryCadEmpresas.ParamByName('parNome_Fantasia').AsString := 'Informe os dados da Empresa';
      QryCadEmpresas.ExecSQL;

      QryCadEmpresas.Close;
      QryCadEmpresas.SQL.Text :=' Select * from Empresa ';

      cdsCadEmpresas.Close;
      cdsCadEmpresas.ProviderName := dspCadEmpresas.Name;
      cdsCadEmpresas.Open;
   End;
   AtualizaEmp;
   PanelDados.Enabled    := False;
end;

end.
