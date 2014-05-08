unit uCadGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, DB, DBClient, StdCtrls,
  bsSkinGrids, bsDBGrids, Mask, bsSkinBoxCtrls, bsSkinTabs, SimpleDS, 
  uDaoGrade;

type
  TfrmCadGrade = class(TForm)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinComboBox1: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    btnPesquisar: TbsSkinButton;
    srcTamanhos: TbsSkinTabSheet;
    Panel1: TPanel;
    bsSkinDBGrid1: TbsSkinDBGrid;
    Panel2: TPanel;
    gridTamanho: TbsSkinDBGrid;
    Panel3: TPanel;
    bsSkinDBGrid3: TbsSkinDBGrid;
    edtTamanho: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtDescricao: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    btnAdicionar: TbsSkinButton;
    btnRemover: TbsSkinButton;
    cdsTamanho: TClientDataSet;
    srcTamanho: TDataSource;
    cdsTamanhoTamanho: TStringField;
    cdsTamanhoID: TIntegerField;
    srcPesquisa: TDataSource;
    sdtsPesquisa: TSimpleDataSet;
    cdsItensTamanhos: TClientDataSet;
    srcItensTamanhos: TDataSource;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure sdtsPesquisaAfterScroll(DataSet: TDataSet);
  private
    pvQualBotao : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadGrade: TfrmCadGrade;

implementation

uses  uprincipal, ufuncoes;

{$R *.dfm}

procedure TfrmCadGrade.btnAdicionarClick(Sender: TObject);
begin
   cdsTamanho.Append;
   cdsTamanho.FieldByName('Tamanho').AsString := edtTamanho.text;
   cdsTamanho.FieldByName('ID').AsInteger := cdsTamanho.RecordCount+1;
   cdsTamanho.post;
   edtTamanho.text:=''
end;

procedure TfrmCadGrade.btnalterarClick(Sender: TObject);
begin
   pvQualBotao := 'ALTERAR';

   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   edtDescricao.Text          := sdtsPesquisa.FieldByName('Descricao').AsString;

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;

   edtDescricao.SetFocus;

end;

procedure TfrmCadGrade.BtnCancelaClick(Sender: TObject);
begin
   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   PagCadastro.ActivePageIndex:=0;
   btnPesquisarClick(Sender);
end;

procedure TfrmCadGrade.btnexcluirClick(Sender: TObject);
begin
   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Excluir o Grupo '+sdtsPesquisa.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      try
         sdtsPesquisa.Delete;
         sdtsPesquisa.ApplyUpdates(-1);
      except
         On E: Exception Do
         Begin
            CaixaMensagem( 'Não foi possível Excluir o Grupo "' + E.Message + '"', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
      end;
   End;
end;

procedure TfrmCadGrade.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadGrade.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   BtnIncluir.Enabled := False;
   BtnAlterar.Enabled := False;
   BtnExcluir.Enabled := False;
   BtnOk.Enabled      := True;
   BtnCancela.Enabled := True;
   PagCadastro.ActivePageIndex:=1;
   edtDescricao.SetFocus;

end;

procedure TfrmCadGrade.btnokClick(Sender: TObject);
var DaoGrade : TDaoGrade;
begin
   if cdsTamanho.IsEmpty then
   begin
      CaixaMensagem( 'Não hexite tamanhos informados', ctAviso, [ cbOk ], 0 );
      Exit;
   end;
   if  trim(edtDescricao.Text) = EmptyStr then
   begin
      CaixaMensagem( 'Informe o nome da grade ', ctAviso, [ cbOk ], 0 );
      Exit;
   end;
   DaoGrade := TDaoGrade.Create(gConexao);
   if DaoGrade.RetornarGradeId(edtDescricao.Text)>0 then
   begin
      CaixaMensagem( 'Já hexiste uma grade com este nome ', ctAviso, [ cbOk ], 0 );
      Exit;
   end;
   DaoGrade.NovaGrade(edtDescricao.Text,cdsTamanho);
   BtnCancelaClick(Sender);
end;                                                   

procedure TfrmCadGrade.btnPesquisarClick(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   sdtsPesquisa.Close;
   sdtsPesquisa.DataSet.CommandText := 'Select * from Grade '+
                                       'Where Descricao like :parDescricao ';
   sdtsPesquisa.DataSet.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   sdtsPesquisa.Open;

end;

procedure TfrmCadGrade.btnRemoverClick(Sender: TObject);
begin
   if CaixaMensagem( 'Deseja Exclir o Produto '+cdsTamanho.FieldByname('Tamanho').asString, ctConfirma, [ cbSimNao ], 0 )  Then
      cdsTamanho.Delete;
end;

procedure TfrmCadGrade.FormShow(Sender: TObject);
begin
  pagCadastro.ActivePageIndex := 0;
  btnPesquisarClick(Sender);
end;

procedure TfrmCadGrade.sdtsPesquisaAfterScroll(DataSet: TDataSet);
begin
   cdsItensTamanhos.Data := gConexao.BuscarDadosSQL('select * from ItensGrade where GradeId='+sdtsPesquisa.FieldByName('Id').AsString,nil).Data;
end;

end.
