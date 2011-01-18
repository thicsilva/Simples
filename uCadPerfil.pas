unit uCadPerfil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, XPStyleActnCtrls, ActnMan, ComCtrls, bsSkinCtrls, StdCtrls,
  Grids, DBGrids, DB, DBClient, ImgList, cxGraphics, ExtCtrls, ToolWin, Mask,
  bsSkinBoxCtrls, WideStrings, SqlExpr, FMTBcd, Provider, BusinessSkinForm,
  Menus, bsSkinMenus;

type
  TfrmCadPerfil = class(TForm)
    cdsFormacaoMenu: TClientDataSet;
    cdsFormacaoMenuMenu: TStringField;
    cdsFormacaoMenuItemMenu: TStringField;
    cdsFormacaoMenuSubItemMenu: TStringField;
    cdsFormacaoMenuImageIndex: TIntegerField;
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinPanel7: TbsSkinPanel;
    Label1: TLabel;
    edtNovoPerfil: TbsSkinEdit;
    actSubItens: TActionList;
    Incluir: TAction;
    alterar: TAction;
    Excluir: TAction;
    Pesquisa: TAction;
    Imprimir: TAction;
    CupomLiberar: TAction;
    actfianceiro: TAction;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Liberar: TAction;
    bsSkinPanel8: TbsSkinPanel;
    ArvorePerfil: TbsSkinTreeView;
    bsSkinBevel2: TbsSkinBevel;
    CdsSubItens: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    act_AlteraPrecoVenda: TAction;
    btnAdiciona: TbsSkinButton;
    qryCadPerfil: TSQLQuery;
    dspCadPerfil: TDataSetProvider;
    cdsCadPerfil: TClientDataSet;
    qryPerfilAcesso: TSQLQuery;
    dspPerfilAcesso: TDataSetProvider;
    cdsPerfilAcesso: TClientDataSet;
    qryCadPerfilCod_Emp: TStringField;
    qryCadPerfilData_Cad: TSQLTimeStampField;
    qryCadPerfilData_Atu: TSQLTimeStampField;
    qryCadPerfilData_Mov: TSQLTimeStampField;
    qryCadPerfilCodigo: TIntegerField;
    qryCadPerfilDescricao: TStringField;
    qryPerfilAcessoSequencia: TIntegerField;
    qryPerfilAcessocod_emp: TStringField;
    qryPerfilAcessodata_cad: TSQLTimeStampField;
    qryPerfilAcessodata_Atu: TSQLTimeStampField;
    qryPerfilAcessoData_mov: TSQLTimeStampField;
    qryPerfilAcessoCod_Perfil: TIntegerField;
    qryPerfilAcessoCategoria: TStringField;
    qryPerfilAcessoMenu: TStringField;
    qryPerfilAcessoItem: TStringField;
    qryPerfilAcessoAcesso: TBooleanField;
    pnlConfig: TbsSkinExPanel;
    Menuraiz: TbsSkinTreeView;
    cdstmpAcessoPerfil: TClientDataSet;
    cdstmpAcessoPerfilMenu: TStringField;
    cdstmpAcessoPerfilitem: TStringField;
    cdstmpAcessoPerfilacesso: TBooleanField;
    lstAcessos: TbsSkinListView;
    bsSkinPanel1: TbsSkinPanel;
    pnlCaminho: TPanel;
    SkinForm: TbsBusinessSkinForm;
    Action9: TAction;
    qryModific: TSQLQuery;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    SQLTimeStampField3: TSQLTimeStampField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    BooleanField1: TBooleanField;
    cdstmpAcessoPerfilcategoria: TStringField;
    Action10: TAction;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinPopupMenu1: TbsSkinPopupMenu;
    MarcarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    procedure MenuraizChange(Sender: TObject; Node: TTreeNode);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure ArvorePerfilChange(Sender: TObject; Node: TTreeNode);
    procedure btnFecharClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure lstAcessosColumnClick(Sender: TObject; Column: TListColumn);
    procedure lstAcessosChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btnokClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure MontaArvore();
    procedure BtnCancelaClick(Sender: TObject);
    procedure MarcarTodos1Click(Sender: TObject);
    procedure DesmarcarTodos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPerfil: TfrmCadPerfil;

implementation

uses uprincipal,ufuncoes; 

{$R *.dfm}

procedure TfrmCadPerfil.ArvorePerfilChange(Sender: TObject; Node: TTreeNode);
begin
   pnlCaminho.Caption := ArvorePerfil.Selected.Text;
   pnlCaminho.Update;
end;

procedure TfrmCadPerfil.btnAdicionaClick(Sender: TObject);
var lArvore : TTreeNode;
begin
   qryCadPerfil.Close;
   qryCadPerfil.SQL.Text := 'Select * from T_Perfil';

   cdsCadPerfil.Close;
   cdsCadPerfil.ProviderName := dspcadPerfil.Name;
   cdsCadPerfil.Open;

   cdsCadPerfil.Append;
   cdsCadPerfil.FieldByName('Cod_Emp').AsString     := gsCod_Emp;
   cdsCadPerfil.FieldByName('Data_Cad').AsDateTime  := now;
   cdsCadPerfil.FieldByName('Data_Mov').AsDateTime  := gsData_Mov;
   cdsCadPerfil.FieldByName('Descricao').AsString   := edtNovoPerfil.Text;
   cdsCadPerfil.Post;
   cdsCadPerfil.ApplyUpdates(0);

   qryCadPerfil.Close;
   qryCadPerfil.Params.Clear;
   qryCadPerfil.SQL.Text := 'Select * from T_Perfil where Descricao=:parDescricao';
   qryCadPerfil.ParamByName('parDescricao').AsString := edtNovoPerfil.Text;

   cdsCadPerfil.Close;
   cdsCadPerfil.ProviderName := dspcadPerfil.Name;
   cdsCadPerfil.Open;

   qryPerfilAcesso.Close;
   qryPerfilAcesso.Params.Clear;
   qryPerfilAcesso.SQL.Text := ' Select * From T_AcessoPerfil where 1=2';

   cdsPerfilAcesso.close;
   cdsPerfilAcesso.ProviderName := dspPerfilAcesso.Name;
   cdsPerfilAcesso.Open;

   cdsFormacaoMenu.First;
   while not cdsFormacaoMenu.Eof do
   Begin
      CdsSubItens.Locate('menu',cdsFormacaoMenu.FieldByName('ItemMenu').asString,[]);
      while (CdsSubItens.FieldByname('Menu').asString = cdsFormacaoMenu.FieldByName('ItemMenu').asString ) and (not CdsSubItens.eof)  do
      Begin
         cdsPerfilAcesso.Append;
         cdsPerfilAcesso.FieldByName('Cod_Emp').AsString    := GsCod_Emp;
         cdsPerfilAcesso.FieldByName('Data_Cad').AsDatetime := now;
         cdsPerfilAcesso.FieldByName('Data_mov').AsDateTime := GsData_Mov;
         cdsPerfilAcesso.FieldByName('Cod_Perfil').AsString := cdsCadPerfil.FieldByName('Codigo').AsString;
         cdsPerfilAcesso.FieldByName('Menu').AsString       := cdsFormacaoMenu.FieldByName('ItemMenu').asString;
         cdsPerfilAcesso.FieldByName('Categoria').AsString  := cdsFormacaoMenu.FieldByName('Menu').asString;
         if Pos('-',CdsSubItens.FieldByname('ItemMenu').asString) = 0 then
            cdsPerfilAcesso.FieldByName('Item').AsString   := CdsSubItens.FieldByname('ItemMenu').asString
         Else
         Begin
           If CdsSubItens.FieldByname('Menu').asString = Trim( Copy( CdsSubItens.FieldByname('ItemMenu').asString,1,Pos('-',CdsSubItens.FieldByname('ItemMenu').asString ) - 1 ) ) Then
               cdsPerfilAcesso.FieldByName('Item').AsString   := Copy ( CdsSubItens.FieldByname('ItemMenu').asString,Pos('-',CdsSubItens.FieldByname('ItemMenu').asString)+2,30 )
           Else
           Begin
              cdsPerfilAcesso.Cancel;
              CdsSubItens.Next;
              Continue;
           End;
         End;
         cdsPerfilAcesso.FieldByName('Acesso').AsBoolean := False;
         cdsPerfilAcesso.Post;
         cdsPerfilAcesso.ApplyUpdates(0);
         CdsSubItens.Next;
      End;


      cdsFormacaoMenu.Next;
   End;
   lArvore := ArvorePerfil.Items.Add( Nil,edtNovoPerfil.Text);
   lArvore.ImageIndex    := 0;
   lArvore.SelectedIndex := 4;
end;

procedure TfrmCadPerfil.btnalterarClick(Sender: TObject);
begin
   if cdsCadPerfil.IsEmpty then
   Begin
      CaixaMensagem( 'Selecione o perfil ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   pnlConfig.Enabled    := True;
   ArvorePerfil.Enabled := False;

   Menuraiz.SetFocus;

   qryCadPerfil.Close;
   qryCadPerfil.Params.Clear;
   qryCadPerfil.SQL.Text := 'Select * from T_Perfil where Descricao=:parDescricao';
   qryCadPerfil.ParamByName('parDescricao').AsString := Trim(ArvorePerfil.Selected.Text);

   cdsCadPerfil.Close;
   cdsCadPerfil.ProviderName := dspcadPerfil.Name;
   cdsCadPerfil.Open;

   qryPerfilAcesso.Close;
   qryPerfilAcesso.Params.Clear;
   qryPerfilAcesso.SQL.Text := ' Select * From T_AcessoPerfil where cod_Perfil=:parCod_Perfil';
   qryPerfilAcesso.ParamByName('parCod_Perfil').AsInteger := cdsCadPerfil.FieldByName('Codigo').AsInteger;

   cdsPerfilAcesso.close;
   cdsPerfilAcesso.ProviderName := dspPerfilAcesso.Name;
   cdsPerfilAcesso.Open;

   btnOk.Enabled       := True;
   BtnCancela.Enabled  := True;

   btnAdiciona.Enabled := False;
   btnalterar.Enabled  := False;
   btnexcluir.Enabled  := False;

   cdstmpAcessoPerfil.EmptyDataSet;

   while not cdsPerfilAcesso.Eof do
   Begin

      cdstmpAcessoPerfil.Append;
      cdstmpAcessoPerfil.FieldByName('Menu').AsString      := cdsPerfilAcesso.FieldByName('Menu').AsString;
      cdstmpAcessoPerfil.FieldByName('Item').AsString      := cdsPerfilAcesso.FieldByName('Item').AsString;
      cdstmpAcessoPerfil.FieldByName('Categoria').AsString := cdsPerfilAcesso.FieldByName('Categoria').AsString;
      cdstmpAcessoPerfil.FieldByName('Acesso').AsBoolean   := cdsPerfilAcesso.FieldByName('Acesso').AsBoolean;
      cdstmpAcessoPerfil.Post;

      cdsPerfilAcesso.Next;
   End;

   cdsFormacaoMenu.First;
   while not cdsFormacaoMenu.Eof do
   Begin
      if not cdstmpAcessoPerfil.Locate('Categoria;Menu',
                   VarArrayOf( [ Trim(cdsFormacaoMenu.FieldByName('Menu').AsString),
                                 Trim(cdsFormacaoMenu.FieldByName('ItemMenu').AsString)] ),[] ) Then
      Begin
         CdsSubItens.Locate('menu',cdsFormacaoMenu.FieldByName('ItemMenu').asString,[]);
         while (CdsSubItens.FieldByname('Menu').asString = cdsFormacaoMenu.FieldByName('ItemMenu').asString ) and (not CdsSubItens.eof)  do
         Begin
            if not cdstmpAcessoPerfil.Locate('Categoria;Menu;Item',
                         VarArrayOf( [ Trim(cdsFormacaoMenu.FieldByName('Menu').AsString),
                                       Trim(cdsFormacaoMenu.FieldByName('ItemMenu').AsString),
                                       Trim(CdsSubItens.FieldByname('ItemMenu').asString) ] ),[] ) Then
            Begin
               cdstmpAcessoPerfil.Append;
               cdstmpAcessoPerfil.FieldByName('Menu').AsString      := cdsFormacaoMenu.FieldByName('ItemMenu').AsString;
               cdstmpAcessoPerfil.FieldByName('Categoria').AsString := cdsFormacaoMenu.FieldByName('Menu').AsString;
               if Pos('-',CdsSubItens.FieldByname('ItemMenu').asString) = 0 then
                  cdstmpAcessoPerfil.FieldByName('Item').AsString   := CdsSubItens.FieldByname('ItemMenu').asString
               Else
               Begin
                 If CdsSubItens.FieldByname('Menu').asString = Trim( Copy( CdsSubItens.FieldByname('ItemMenu').asString,1,Pos('-',CdsSubItens.FieldByname('ItemMenu').asString ) - 1 ) ) Then
                     cdstmpAcessoPerfil.FieldByName('Item').AsString   := Copy ( CdsSubItens.FieldByname('ItemMenu').asString,Pos('-',CdsSubItens.FieldByname('ItemMenu').asString)+2,30 )
                 Else
                 Begin
                    cdstmpAcessoPerfil.Cancel;
                    CdsSubItens.Next;
                    Continue;
                 End;
               End;
               cdstmpAcessoPerfil.FieldByName('Acesso').AsBoolean   := False;
               cdstmpAcessoPerfil.Post;
            End;
            CdsSubItens.Next;
         End;
      End;
      cdsFormacaoMenu.Next;
   End;
end;

procedure TfrmCadPerfil.BtnCancelaClick(Sender: TObject);
begin
   lstAcessos.Items.Clear;
   ArvorePerfil.Enabled := True;
   ArvorePerfil.SetFocus;

   btnAdiciona.Enabled := True;
   btnalterar.Enabled  := True;
   btnexcluir.Enabled  := True;
   btnOk.Enabled       := False;
   BtnCancela.Enabled  := False;
   pnlConfig.Enabled   := False;

end;

procedure TfrmCadPerfil.btnexcluirClick(Sender: TObject);
begin
   if cdsCadPerfil.IsEmpty then
   Begin
      CaixaMensagem( 'Selecione o perfil ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   if CaixaMensagem( 'Deseja Exclir o Perfil '+Trim(ArvorePerfil.Selected.Text), ctConfirma, [ cbSimNao ], 0 )  Then
   Begin

      qryCadPerfil.Close;
      qryCadPerfil.Params.Clear;
      qryCadPerfil.SQL.Text := 'Select * from T_Perfil where Descricao=:parDescricao';
      qryCadPerfil.ParamByName('parDescricao').AsString := Trim(ArvorePerfil.Selected.Text);

      cdsCadPerfil.Close;
      cdsCadPerfil.ProviderName := dspcadPerfil.Name;
      cdsCadPerfil.Open;


      qryModific.Close;
      qryModific.params.Clear;
      qryModific.Sql.text := 'Delete from T_AcessoPerfil where Cod_Perfil=:ParCod_Perfil ';
      qryModific.ParamByName('parCod_Perfil').AsInteger :=   cdsCadPerfil.FieldByName('Codigo').AsInteger;
      qryModific.ExecSQL;


      qryModific.Close;
      qryModific.params.Clear;
      qryModific.Sql.text := 'Delete from T_Perfil where Codigo=:ParCodigo ';
      qryModific.ParamByName('parCodigo').AsInteger :=  cdsCadPerfil.FieldByName('Codigo').AsInteger;
      qryModific.ExecSQL;

      MontaArvore;

   End;
end;

procedure TfrmCadPerfil.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadPerfil.btnokClick(Sender: TObject);
Var trdNrTransacao: TTransactionDesc;
begin

   if not frmPrincipal.dbxPrincipal.InTransaction then
   begin
      trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
      frmPrincipal.dbxPrincipal.StartTransaction( trdNrTransacao );
   end;

   Try
      qryCadPerfil.Close;
      qryCadPerfil.Params.Clear;
      qryCadPerfil.SQL.Text := 'Select * from T_Perfil where Descricao=:parDescricao';
      qryCadPerfil.ParamByName('parDescricao').AsString := Trim(ArvorePerfil.Selected.Text);

      cdsCadPerfil.Close;
      cdsCadPerfil.ProviderName := dspcadPerfil.Name;
      cdsCadPerfil.Open;
   except
      frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
      Exit;
   End;

   Try
      qryModific.Close;
      qryModific.params.Clear;
      qryModific.Sql.text := 'Delete from T_AcessoPerfil where Cod_Perfil=:ParCod_Perfil ';
      qryModific.ParamByName('parCod_Perfil').AsInteger :=   cdsCadPerfil.FieldByName('Codigo').AsInteger;
      qryModific.ExecSQL;
   except
      frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
      Exit;
   End;

   cdstmpAcessoPerfil.First;

   while not cdstmpAcessoPerfil.Eof do
   Begin
      Try
         cdsPerfilAcesso.Append;
         cdsPerfilAcesso.FieldByName('Cod_Emp').AsString    := gsCod_emp;
         cdsPerfilAcesso.FieldByName('Data_Cad').AsDatetime := Now;
         cdsPerfilAcesso.FieldByName('Data_mov').AsDateTime := gsData_Mov;
         cdsPerfilAcesso.FieldByName('Cod_Perfil').AsInteger:= cdsCadPerfil.FieldByName('Codigo').AsInteger;
         cdsPerfilAcesso.FieldByName('Categoria').AsString  := cdstmpAcessoPerfil.FieldByName('Categoria').AsString;
         cdsPerfilAcesso.FieldByName('Menu').AsString       := cdstmpAcessoPerfil.FieldByName('Menu').AsString;
         cdsPerfilAcesso.FieldByName('Item').AsString       := cdstmpAcessoPerfil.FieldByName('Item').AsString;
         cdsPerfilAcesso.FieldByName('Acesso').AsBoolean    := cdstmpAcessoPerfil.FieldByName('Acesso').AsBoolean;
         cdsPerfilAcesso.Post;
         cdsPerfilAcesso.ApplyUpdates(0);
      except
         frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
         Exit;
      End;
      cdstmpAcessoPerfil.Next
   End;
   frmPrincipal.dbxPrincipal.Commit(trdNrTransacao);
   btnAdiciona.Enabled := True;
   BtnCancelaClick(BtnCancela);
end;

procedure TfrmCadPerfil.DesmarcarTodos1Click(Sender: TObject);
begin
   cdstmpAcessoPerfil.First;
   While not cdstmpAcessoPerfil.Eof do
   Begin
      cdstmpAcessoPerfil.Edit;
      cdstmpAcessoPerfil.FieldByName('Acesso').AsBoolean := False;
      cdstmpAcessoPerfil.Post;
      cdstmpAcessoPerfil.Next
   End;
end;

procedure TfrmCadPerfil.FormShow(Sender: TObject);
var licont : Integer;
  lArvore1     : TTreeNode;
  lGalho       : TTreeNode;
  lsmenu       : String;
begin
   pnlConfig.Enabled    := False;
   for licont := 0 to ( frmprincipal.actManeger.ActionCount-1) Do
   Begin
      if Trim(frmprincipal.actManeger.Actions[licont].Category)<>'' then
      Begin
         cdsFormacaoMenu.Append;
         cdsFormacaoMenu.FieldByName('Menu').asString     := frmprincipal.actManeger.Actions[licont].Category;
         cdsFormacaoMenu.FieldByName('ItemMenu').asString := Taction(frmprincipal.actManeger.Actions[licont]).Caption;
         cdsFormacaoMenu.FieldByName('ImageIndex').asInteger := Taction(frmprincipal.actManeger.Actions[licont]).ImageIndex;
         cdsFormacaoMenu.Post;
      End;
   End;
   cdsFormacaoMenu.First;
   lsMenu    := '';
   while not cdsFormacaoMenu.Eof do
   Begin
      if lsMenu<>cdsFormacaoMenu.FieldByname('Menu').AsString then
      Begin
         lArvore1   := menuRaiz.Items.Add( Nil,cdsFormacaoMenu.FieldByname('Menu').AsString);
         lsmenu     := cdsFormacaoMenu.FieldByname('Menu').AsString;
      End;
      lGalho                 := menuRaiz.Items.AddChild( lArvore1 ,cdsFormacaoMenu.FieldByname('ItemMenu').AsString);
      lGalho.ImageIndex      := cdsFormacaoMenu.FieldByName('ImageIndex').asInteger;
      lGalho.SelectedIndex   := cdsFormacaoMenu.FieldByName('ImageIndex').asInteger;

       for licont := 0 to ( actSubItens.ActionCount-1) Do
       Begin
          if Trim(actSubItens.Actions[licont].Category)<>'' then
          Begin
             if actSubItens.Actions[licont].Category=cdsFormacaoMenu.FieldByname('Menu').AsString then
             Begin
                CdsSubItens.Append;
                CdsSubItens.FieldByName('Menu').asString        := cdsFormacaoMenu.FieldByname('ItemMenu').AsString;
                CdsSubItens.FieldByName('ItemMenu').asString    := Taction(actSubItens.Actions[licont]).Caption;
                CdsSubItens.FieldByName('ImageIndex').asInteger := Taction(actSubItens.Actions[licont]).ImageIndex;
                CdsSubItens.Post;
             End;
          End;
       End;
       cdsFormacaoMenu.Next;
   End;
   MontaArvore;
end;

procedure TfrmCadPerfil.lstAcessosChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
   if cdstmpAcessoPerfil.Locate('Menu;item',VarArrayOf([Menuraiz.Selected.Text, Item.Caption ] ),[] ) Then
   Begin
      cdstmpAcessoPerfil.Edit;
      cdstmpAcessoPerfil.FieldByName('Acesso').AsBoolean := Item.Checked;
      cdstmpAcessoPerfil.Post;
   End;
end;

procedure TfrmCadPerfil.lstAcessosColumnClick(Sender: TObject;
  Column: TListColumn);
begin
   showMessage('passei');
end;

procedure TfrmCadPerfil.MarcarTodos1Click(Sender: TObject);
begin
   cdstmpAcessoPerfil.First;
   While not cdstmpAcessoPerfil.Eof do
   Begin
      cdstmpAcessoPerfil.Edit;
      cdstmpAcessoPerfil.FieldByName('Acesso').AsBoolean := True;
      cdstmpAcessoPerfil.Post;
      cdstmpAcessoPerfil.Next
   End;
end;

procedure TfrmCadPerfil.MenuraizChange(Sender: TObject; Node: TTreeNode);
var lLstItem : TListItem;
begin
   CdsSubItens.Locate('menu',Menuraiz.Selected.Text,[]);
   pnlCaminho.Caption := 'Perfil..: '+ArvorePerfil.Selected.Text+' --> Menu...: '+Menuraiz.Selected.Text;
   pnlCaminho.Update;
   lstAcessos.Items.Clear;
   while (CdsSubItens.FieldByname('Menu').asString = Menuraiz.Selected.Text) and (not CdsSubItens.eof)  do
   Begin
      if Pos('-',CdsSubItens.FieldByname('ItemMenu').asString) = 0 then
      Begin
         if cdstmpAcessoPerfil.Locate('Menu;item',VarArrayOf([Menuraiz.Selected.Text,CdsSubItens.FieldByname('ItemMenu').asString ] ),[] ) Then
         Begin
            lLstItem := lstAcessos.Items.Add;
            lLstItem.Checked := cdstmpAcessoPerfil.FieldByName('Acesso').AsBoolean;
            lLstItem.Caption := CdsSubItens.FieldByname('ItemMenu').asString ;
            //lstAcessos.Items.AddItem(lLstItem);
         End;
      End
      Else
      Begin
         If CdsSubItens.FieldByname('Menu').asString = Trim( Copy( CdsSubItens.FieldByname('ItemMenu').asString,1,Pos('-',CdsSubItens.FieldByname('ItemMenu').asString ) - 1 ) ) Then
         Begin
            lLstItem := lstAcessos.Items.Add;
            lLstItem.Checked := cdstmpAcessoPerfil.FieldByName('Acesso').AsBoolean;
            lLstItem.Caption :=  Copy ( CdsSubItens.FieldByname('ItemMenu').asString,Pos('-',CdsSubItens.FieldByname('ItemMenu').asString)+2,30 );
            //lstAcessos.Items.AddItem(lLstItem);
         End;
      End;
      CdsSubItens.Next;
   End;
end;

procedure TfrmCadPerfil.MontaArvore;
var  lArvore : TTreeNode;
begin
   ArvorePerfil.Items.Clear;

   qryCadPerfil.Close;
   qryCadPerfil.SQL.Text := 'Select * from T_Perfil';

   cdsCadPerfil.Close;
   cdsCadPerfil.ProviderName := dspcadPerfil.Name;
   cdsCadPerfil.Open;
   while not cdsCadPerfil.eof do
   Begin
      lArvore := ArvorePerfil.Items.Add( Nil,cdsCadPerfil.FieldByName('Descricao').asString);
      lArvore.ImageIndex    := 0;
      lArvore.SelectedIndex := 4;
      cdsCadPerfil.Next;
   End;
   ArvorePerfil.SetFocus;
end;

end.
