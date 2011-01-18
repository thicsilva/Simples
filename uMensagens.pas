unit uMensagens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, BusinessSkinForm;

type
  TFrmMensagens = class(TForm)
    Panel1: TPanel;
    LblFoco: TLabel;
    ProgressBar1: TProgressBar;
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    Memo1: TMemo;
    Panel2: TPanel;
    ImgPessoal: TImage;
    ImgTimer: TImage;
    ImgConfirma: TImage;
    ImgInforma: TImage;
    ImgAviso: TImage;
    AnimateErro: TAnimate;
    Panel3: TPanel;
    Panel4: TPanel;
    Timer1: TTimer;
    Timer2: TTimer;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure BtnCancelaClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensagens: TFrmMensagens;

implementation

uses uFuncoes,uprincipal;

{$R *.DFM}

procedure TFrmMensagens.BtnCancelaClick(Sender: TObject);
begin
   If FrmMensagens.Caption='Caixa de Mensagem' Then
   Begin
      BtnOk.Caption      := '&Sim';
      BtnCancela.Caption := '&Não';
   End;
   pRespMsg := UpperCase((Sender As TBitBtn).Caption);
   Close;
end;

procedure TFrmMensagens.Memo1Change(Sender: TObject);
begin
   if Memo1.Lines.Count > 3 Then
      frmMensagens.Height := 138 + ( 16 * ( Memo1.Lines.Count - 3 ) );
end;

procedure TFrmMensagens.FormShow(Sender: TObject);
begin
   if lblFoco.Caption = '1' then
      btnCancela.SetFocus;
end;

end.
