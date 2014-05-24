unit uCadGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, DB, DBClient, StdCtrls,
  bsSkinGrids, bsDBGrids, Mask, bsSkinBoxCtrls, bsSkinTabs, SimpleDS, 
  uDaoGrade, ExtDlgs;

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
    edtTamanho: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtDescricao: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    btnAdicionar: TbsSkinButton;
    btnRemover: TbsSkinButton;
    srcTamanho: TDataSource;
    srcPesquisa: TDataSource;
    sdtsPesquisa: TSimpleDataSet;
    cdsItensTamanhos: TClientDataSet;
    srcItensTamanhos: TDataSource;
    cdsTamanho: TClientDataSet;
    cdsTamanhoTamanho: TStringField;
    cdsTamanhoID: TIntegerField;
    Panel4: TPanel;
    bsSkinDBGrid3: TbsSkinDBGrid;
    Panel5: TPanel;
    imageFrente: TImage;
    imageVerso: TImage;
    Panel6: TPanel;
    btnImagemVerso: TbsSkinButton;
    btnImagemFrente: TbsSkinButton;
    cdsTamanhoCaminhoImagemFrente: TStringField;
    cdsTamanhoCaminhoImagemVerso: TStringField;
    Imagem: TOpenPictureDialog;
    Panel7: TPanel;
    imagem_01: TImage;
    imagem_02: TImage;
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
    procedure btnImagemVersoClick(Sender: TObject);
    procedure btnImagemFrenteClick(Sender: TObject);
    procedure cdsItensTamanhosAfterScroll(DataSet: TDataSet);
    procedure cdsTamanhoAfterScroll(DataSet: TDataSet);
  private
    pvQualBotao : String;
    pGradeId : Integer;
    procedure carregarItensDaGrade;
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
   pGradeId := sdtsPesquisa.FieldByName('ID').AsInteger;
   carregarItensDaGrade;
   edtDescricao.SetFocus;
end;
procedure TfrmCadGrade.carregarItensDaGrade;
begin
   cdsItensTamanhos.First;
   while not cdsItensTamanhos.Eof do
   begin
      cdsTamanho.Append;
      cdsTamanho.FieldByName('Tamanho').AsString := cdsItensTamanhos.FieldByName('Tamanho').AsString;
      cdsTamanho.FieldByName('ID').AsInteger := cdsItensTamanhos.FieldByName('id').AsInteger;
      cdsTamanho.FieldByName('CaminhoImagemFrente').AsString := cdsItensTamanhos.FieldByName('CaminhoImagemFrente').AsString;
      cdsTamanho.FieldByName('CaminhoImagemVerso').AsString := cdsItensTamanhos.FieldByName('CaminhoImagemVerso').AsString;
      cdsTamanho.post;
      cdsItensTamanhos.next;
   end;
end;

procedure TfrmCadGrade.BtnCancelaClick(Sender: TObject);
begin
   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;
   cdsTamanho.EmptyDataSet;
   edtDescricao.Text := '';
   edtTamanho.Text := '';
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

procedure TfrmCadGrade.btnImagemFrenteClick(Sender: TObject);
begin
   if Imagem.Execute then
   begin
      imageFrente.Picture.LoadFromFile(Imagem.FileName);
      cdsTamanho.Edit;
      cdsTamanho.FieldByName('CaminhoImagemFrente').AsString := Imagem.FileName;
      cdsTamanho.post;
   end;
end;

procedure TfrmCadGrade.btnImagemVersoClick(Sender: TObject);
begin
   if Imagem.Execute then
   begin
      imageVerso.Picture.LoadFromFile(Imagem.FileName);
      cdsTamanho.Edit;
      cdsTamanho.FieldByName('CaminhoImagemVerso').AsString := Imagem.FileName;
      cdsTamanho.post;
   end;
end;

procedure TfrmCadGrade.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';
   pGradeId := 0;

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
   if pGradeId=0 then
   begin
       if DaoGrade.RetornarGradeId(edtDescricao.Text)>0 then
       begin
          CaixaMensagem( 'Já hexiste uma grade com este nome ', ctAviso, [ cbOk ], 0 );
          Exit;
       end;
   end;
   DaoGrade.ApagarGrade(pGradeId);
   DaoGrade.NovaGrade(edtDescricao.Text,cdsTamanho,pGradeId);
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

procedure TfrmCadGrade.cdsItensTamanhosAfterScroll(DataSet: TDataSet);
begin
   if FileExists(cdsItensTamanhos.FieldByName('CaminhoImagemFrente').AsString) then
      imagem_01.Picture.LoadFromFile(cdsItensTamanhos.FieldByName('CaminhoImagemFrente').AsString)
   else
      imagem_01.Picture.ASSIGN(NIL);

   if FileExists(cdsItensTamanhos.FieldByName('CaminhoImagemFrente').AsString) then
      imagem_02.Picture.LoadFromFile(cdsItensTamanhos.FieldByName('CaminhoImagemVerso').AsString)
   else
      imagem_02.Picture.ASSIGN(NIL);
end;

procedure TfrmCadGrade.cdsTamanhoAfterScroll(DataSet: TDataSet);
begin
   if FileExists(cdsTamanho.FieldByName('CaminhoImagemFrente').AsString) then
      imageFrente.Picture.LoadFromFile(cdsTamanho.FieldByName('CaminhoImagemFrente').AsString)
   else
      imageFrente.Picture.ASSIGN(NIL);

   if FileExists(cdsTamanho.FieldByName('CaminhoImagemVerso').AsString) then
      imageVerso.Picture.LoadFromFile(cdsTamanho.FieldByName('CaminhoImagemVerso').AsString)
    else
      imageVerso.Picture.ASSIGN(NIL);
end;

procedure TfrmCadGrade.FormShow(Sender: TObject);
begin
  pagCadastro.ActivePageIndex := 0;
  pGradeId := 0;
  btnPesquisarClick(Sender);
end;

procedure TfrmCadGrade.sdtsPesquisaAfterScroll(DataSet: TDataSet);
begin
   cdsItensTamanhos.Data := gConexao.BuscarDadosSQL('select * from ItensGrade where GradeId='+sdtsPesquisa.FieldByName('Id').AsString,nil).Data;
end;

end.
