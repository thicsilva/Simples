unit uParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, ComCtrls, bsSkinTabs, bsSkinCtrls, ExtCtrls,
  ToolWin, bsSkinBoxCtrls, StdCtrls, Mask, FMTBcd, DBClient, DB, Provider,
  SqlExpr, bsdbctrls;

type
  TfrmParametros = class(TForm)
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinCheckRadioBox1: TbsSkinCheckRadioBox;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtHostName: TbsSkinEdit;
    edtDatabaseName: TbsSkinEdit;
    edtUsuario: TbsSkinEdit;
    edtSenha: TbsSkinMaskEdit;
    bsSkinLabel1: TbsSkinLabel;
    EdtNumeroCompras: TbsSkinSpinEdit;
    rdgTipoSistema: TbsSkinRadioGroup;
    bsSkinLabel2: TbsSkinLabel;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    srcCadClientes: TDataSource;
    cdsCadClientes: TClientDataSet;
    cmbNome_Cliente: TbsSkinDBLookupComboBox;
    cmbCod_Cliente: TbsSkinDBLookupComboBox;
    bsSkinLabel3: TbsSkinLabel;
    edtNomeEmpresa: TbsSkinMaskEdit;
    chkBloqueioEstoque: TbsSkinCheckRadioBox;
    bsSkinLabel4: TbsSkinLabel;
    EdtqtdeNumeroDias: TbsSkinSpinEdit;
    bsSkinLabel5: TbsSkinLabel;
    edtVlr_Servico: TbsSkinEdit;
    chkLigaECF: TbsSkinCheckRadioBox;
    chkCondicaoNaVenda: TbsSkinCheckRadioBox;
    chkVendeServico: TbsSkinCheckRadioBox;
    chkEmiteEtiqueta: TbsSkinCheckRadioBox;
    chkData_Automatica: TbsSkinCheckRadioBox;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    cnkCadastraClienteSemCPF: TbsSkinCheckRadioBox;
    procedure btnFecharClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbNome_ClienteChange(Sender: TObject);
    procedure cmbCod_ClienteChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParametros: TfrmParametros;

implementation

Uses uPrincipal,uFuncoes;
{$R *.dfm}

procedure TfrmParametros.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmParametros.btnokClick(Sender: TObject);
begin
   //[parametros de sistema]

   gsParametros.WriteString('ACESSODADOS','HostName',edtHostName.text);
   gsParametros.WriteString('ACESSODADOS','DataBaseName',edtDatabaseName.text);
   gsParametros.WriteString('ACESSODADOS','Usuario',edtUsuario.text);
   gsParametros.WriteString('ACESSODADOS','Senha',edtSenha.text);
   gsParametros.WriteString('ACESSODADOS','TipoSistema',IntToStr(rdgTipoSistema.ItemIndex));

   gsParametros.WriteString('CONFIG_SISTEMA','NomeEmpresa',edtNomeEmpresa.Text);



   //[parametros de cadastro]
   gParametros.Gravar( '', '[CADASTRO]', 'qtdeNumeroDias', EdtqtdeNumeroDias.Text ,gsOperador );
   gParametros.Gravar( '', '[CADASTRO]', 'NumeroCompras', EdtNumeroCompras.Text ,gsOperador );
   gParametros.Gravar( '', '[CADASTRO]', 'ClientePadrao', cmbCod_Cliente.Text ,gsOperador );
   gParametros.Gravar( '', '[CADASTRO]', 'ValorOSPadrao', edtVlr_Servico.Text ,gsOperador );


   if chkVendeServico.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'VendeServico', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'VendeServico', 'NAO' ,gsOperador );

   if chkCondicaoNaVenda.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'CondicaoNaVenda', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'CondicaoNaVenda', 'NAO' ,gsOperador );

   if chkBloqueioEstoque.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'BloqueioEstoque', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'BloqueioEstoque', 'NAO' ,gsOperador );

   if chkLigaECF.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'LigarECF', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'LigarECF', 'NAO' ,gsOperador );

   if cnkCadastraClienteSemCPF.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'CadastraClienteSemCPF', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'CadastraClienteSemCPF', 'NAO' ,gsOperador );


   if chkEmiteEtiqueta.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'EmiteEtiqueta', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'EmiteEtiqueta', 'NAO' ,gsOperador );

   if chkData_Automatica.Checked Then
      gParametros.Gravar( '', '[CADASTRO]', 'Data_Automatica', 'SIM' ,gsOperador )
   Else
      gParametros.Gravar( '', '[CADASTRO]', 'Data_Automatica', 'NAO' ,gsOperador );

   Close;
end;

procedure TfrmParametros.cmbCod_ClienteChange(Sender: TObject);
begin
   CmbNome_Cliente.Keyvalue := cmbCod_Cliente.Keyvalue;
end;

procedure TfrmParametros.cmbNome_ClienteChange(Sender: TObject);
begin
   CmbCod_Cliente.Keyvalue := cmbnome_Cliente.Keyvalue;
end;

procedure TfrmParametros.FormShow(Sender: TObject);
begin

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select status, Codigo,Descricao,cnpjcpf,'+
                           'Qtde_PedAberto,Limite_Credito from T_Clientes '+
                           'where ativo=:parAtivo order by Descricao ';
   qryVariavel.ParamByName('parativo').AsString := 'S';

   cdsCadClientes.Close;
   cdsCadClientes.ProviderName := dspVariavel.Name;
   cdsCadClientes.Open;

   //[parametros de sistema]

   edtHostName.text         := gsParametros.ReadString('ACESSODADOS','HostName','(Local)');
   edtDatabaseName.text     := gsParametros.ReadString('ACESSODADOS','DataBaseName','Controler');
   edtUsuario.text          := gsParametros.ReadString('ACESSODADOS','Usuario','Controler');
   edtSenha.text            := gsParametros.ReadString('ACESSODADOS','Senha','remoto');
   rdgTipoSistema.ItemIndex := StrToInt(gsParametros.ReadString('ACESSODADOS','TipoSistema','0'));

   edtNomeEmpresa.Text      := gsParametros.ReadString('CONFIG_SISTEMA','NomeEmpresa','Informe a empresa nos parametros');

   cmbCod_Cliente.KeyValue  := StrToInt(gParametros.Ler( '', '[CADASTRO]', 'ClientePadrao', '0' ));
   if StrToInt(gParametros.Ler( '', '[CADASTRO]', 'ClientePadrao', '0' ))<>0 then
   Begin
      cmbCod_Cliente.KeyValue  := StrToInt(gParametros.Ler( '', '[CADASTRO]', 'ClientePadrao', '0' ));
      cmbCod_ClienteChange(cmbCod_Cliente);
   End;
   EdtNumeroCompras.Value   := StrToInt(gParametros.Ler( '', '[CADASTRO]', 'NumeroCompras', '999' ));
   EdtqtdeNumeroDias.Value  := StrToInt(gParametros.Ler( '', '[CADASTRO]', 'qtdeNumeroDias', '999' ));
   edtVlr_Servico.Text      := gParametros.Ler( '', '[CADASTRO]', 'ValorOSPadrao', '0' );


   IF Uppercase( gParametros.Ler( '', '[CADASTRO]', 'VendeServico', 'NAO' )) = 'NAO' Then
      chkVendeServico.Checked := False
   Else
     chkVendeServico.Checked := True;

   IF Uppercase( gParametros.Ler( '', '[CADASTRO]', 'CondicaoNaVenda', 'NAO' )) = 'NAO' Then
      chkCondicaoNaVenda.Checked := False
   Else
      chkCondicaoNaVenda.Checked := True;

   IF Uppercase( gParametros.Ler( '', '[CADASTRO]', 'BloqueioEstoque', 'NAO' )) = 'NAO' Then
      chkBloqueioEstoque.Checked := False
   Else
      chkBloqueioEstoque.Checked := True;

   IF Uppercase( gParametros.Ler( '', '[CADASTRO]', 'LigarECF', 'NAO' )) = 'NAO' Then
      chkLigaECF.Checked := False
   Else
      chkLigaECF.Checked := True;

   IF Uppercase( gParametros.Ler( '', '[CADASTRO]', 'CadastraClienteSemCPF', 'NAO' )) = 'SIM' Then
      cnkCadastraClienteSemCPF.Checked := True
   Else
      cnkCadastraClienteSemCPF.Checked := False;

   IF Uppercase( gParametros.Ler( '', '[CADASTRO]', 'EmiteEtiqueta', 'NAO' )) = 'NAO' Then
      chkEmiteEtiqueta.Checked := False
   Else
      chkEmiteEtiqueta.Checked := True;

   IF Uppercase( gParametros.Ler( '', '[CADASTRO]', 'Data_Automatica', 'NAO' )) = 'NAO' Then
      chkData_Automatica.Checked := False
   Else
      chkData_Automatica.Checked := True;



end;

end.
