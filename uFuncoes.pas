unit uFuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,bsSkinCtrls,
  Dialogs, Menus, ComCtrls,DB, RDprint, Math,DBGrids,DBTables,ADODB,SimpleDS,SqlTimSt,
  SqlExpr,DBClient,Provider,iBQuery, bsSkinGrids, bsDBGrids,StdCtrls,mapi,bsSkinBoxCtrls ;

Type
  TCxDlgTipo   = ( ctAviso, ctErro, ctInforma, ctConfirma, ctTimer, ctPessoal );
  TCxDlgBtn    = ( cbSim, cbNao, cbOK, cbCancela, cbSimNao, cbOkCancela );
  TCxDlgBotoes = Set Of TCxDlgBtn;
  TTipoSQL     = ( tsSelect, tsInsert, tsUpdate );
  TTipoRegistro = ( trBinaryData, trBool, trCurrency, trDate, trDateTime, trFloat, trInteger, trString, trTime );
  TRegAcao      = ( raLer, raGravar );


  Type
   TParametros = class
   private
      FRetornoOk : Boolean;
      procedure SetRetornoOk(const Value: Boolean);
   public
      property RetornoOk : Boolean read FRetornoOK write SetRetornoOk;
      constructor Create;
      function Gravar( fsCod_Emp: String; fsChave: String; fsCampo: String; fvValor: Variant; fsOperador: String; fsEstacao: String = '' ) : Variant;
      function Ler( fsCod_Emp: String; fsChave: String; fsCampo: String; fvValor : Variant; fsEstacao : String = ''  ) : Variant;
End;

Function IncZero(VlrString:  String; Tamanho: Word): String;
Function CaixaMensagem( vMensagem: AnsiString; vFigura: TCxDlgTipo; vBotoes: TCxDlgBotoes; vFoco: Integer): Boolean;
Function ConstruirSQL( fTipoSQL : TTipoSQL; fsTabela, fsCampos : String; fsRestricao  : String = ''; fsCodCap  : String = '' ) : String;
Function Centraliza( fTamFundo, fTamObjeto : Integer ) : Integer;
Function IncDigito(VlrString:  String; Digito: String; Tamanho: Word; Lado: Word ): String;
Function SoData( fData: TDateTime ) : TDate;
Function SubstString( lstrOriginal, fStrDel : String; fStrIns : String = '';DigitoADigito: Boolean = True ): String;
Function Arredondar( prrValor: Real; prrDecimais: integer; prbTrucar: boolean = False ): Real;
Procedure CriarCalculado( fDataSet : TDataSet; fFieldName: String; fDataType : TFieldType; fSize : Integer );
Procedure ConfiguraRel( fNomeForm : String;  fCriarCabecalho : Boolean = True; fRDPrint : TRdPrint = Nil; fPagina : Integer = 1 );
Procedure ListaPeriodo( fComponente1: TEdit; fComponente2: TEdit; fItem: Integer; fData : TDateTime );
Procedure ListaPeriodo2( fComponente1: TbsSkinDateEdit; fComponente2: TbsSkinDateEdit; fItem: Integer; fData : TDateTime );
Function Encrypt_20( fsTemp:String ): String;
Function Decrypt_20( fsTemp:String ): String;
Function TemVendaAberta( fsCod_Cliente : String  ): String;
Function Sequencia( fCampo: String; fIncrementa: Boolean = True; fTabela: String = ''; fSQLConnection: TSQLConnection = Nil; fCodEmp: String = ''; fbCriticaFilial : Boolean = False; fiTamCodigo: integer = 0; fWhere: string = '' ): String;
Procedure TrataSQL( fDataSet : TDataSet; fsCod_Emp: String; fsTabelas : String = ''; fbCriticaFilial : Boolean = False );
Procedure QuebraLinha( fStr: String; PosIniLinha1, PosIniLinha2 : Integer; PosFinLinha : Integer );
Function CNPJ_Check(cNumber: String; prbMostraMsg: boolean = true):Boolean;
Function CPF_Check(cNumber: String; prbMostraMsg: boolean = true):Boolean;
Function VerCopia( fVlrAPesq: String; fCampo: String; fTabela : String; fSQLConnection : TSQLConnection; fCodEmp: String = ''; prsMostrar: String = '' ): String;
function DifHoras( prdDataI, prdDataF: TDate; prtHoraI, prtHoraF: TTime ): Integer;
function Seg2Horas( frQtdeSegundos: Real; fbExibirSegundos : Boolean): String;
function VericaAcesso (priCod_Perfil : Integer; prsMenu : String ; prsItemMenu : String ) : Boolean;
Var pRespMsg    : String;
Var gParametros : TParametros;

implementation

uses Umensagens,uprincipal;


Function IncZero(VlrString:  String; Tamanho: Word): String;
Begin
   VlrString := Trim(VlrString);
   While (Length(VlrString))<Tamanho Do
      VlrString := '0' + VlrString;
   Result := VlrString;
End;
Function CaixaMensagem( vMensagem: AnsiString; vFigura: TCxDlgTipo; vBotoes: TCxDlgBotoes; vFoco: Integer ): Boolean;
var I          : Word;
    vStringTemp: string;
Begin
   Result := False;
   FrmMensagens := TFrmMensagens.Create(Nil);
   FrmMensagens.Refresh;
   With FrmMensagens Do
   Begin
     // Mensagens
     If Pos(Chr(13), vMensagem)>0 Then // Se tiver ENTER
     Begin
       While Pos(Chr(13), vMensagem)>0 Do
       Begin
         Memo1.Lines.Add(Copy(vMensagem, 1, Pos(Chr(13), vMensagem)));
         vStringTemp := vMensagem;
         Delete(vStringTemp, 1, Pos(Chr(13), vMensagem));
         vMensagem   := vStringTemp;
       End;
       Memo1.Lines.Add(vMensagem);
       If (Memo1.Lines.Count = 1) Or (Memo1.Lines.Count = 2) Then
       Begin
         For I := Memo1.Lines.Count DownTo 0 Do
           Memo1.Lines[I] := Memo1.Lines[I-1];
         Memo1.Lines[0]   := '';
       End;
     End
     Else // Se não tiver ENTER
     Begin
       Memo1.Lines.Add(vMensagem);
       If (Memo1.Lines.Count=1) Or (Memo1.Lines.Count=2) Then
       Begin
         Memo1.Clear;
         Memo1.Lines.Add('');
         Memo1.Lines.Add(vMensagem);
       End;
     End;

     // Tipos de Avisos
     ImgAviso.Visible    := False;
     AnimateErro.Visible := False;
     ImgInforma.Visible  := False;
     ImgConfirma.Visible := False;
     ImgPessoal.Visible  := False;
     ImgTimer.Visible    := False;
     If vFigura = ctAVISO Then
     Begin
        FrmMensagens.Caption:='Caixa de Aviso';
        ImgAviso.Visible:=True;
     End
     Else If vFigura = ctERRO Then
     Begin

     End
     Else If vFigura = ctINFORMA Then
     Begin
        FrmMensagens.Caption := 'Caixa Informativa';
        ImgInforma.Visible   := True;
     End
     Else If vFigura = ctCONFIRMA Then
     Begin
        FrmMensagens.Caption := 'Caixa de pedido de confirmação';
        ImgConfirma.Visible  := True;
     End
     Else If vFigura = ctPESSOAL Then
     Begin
        {FrmMensagens.Caption := 'Caixa de Mensagem';
        ImgPessoal.Visible   := True;
        BtnOk.Caption := '&' + Copy( vBotoes, 1, Pos( ',', vBotoes ) - 1 );
        BtnOk.Glyph.Assign(Nil);
        BtnCancela.Glyph.Assign(Nil);
        If Pos( ', ', vBotoes ) = 0 Then
          BtnCancela.Caption := '&' + Copy(vBotoes, Pos(',', vBotoes) + 1, Length(vBotoes)-Pos(',', vBotoes) + 1)
        Else
          BtnCancela.Caption := '&' + Copy(vBotoes, Pos(',', vBotoes)+2, Length(vBotoes)-Pos(',', vBotoes)+3);}
     End
     Else If vFigura = ctTIMER Then
     Begin
        FrmMensagens.Caption              := 'Caixa com timer';
        FrmMensagens.Timer1.Enabled       := True;
        FrmMensagens.ProgressBar1.Visible := True;
        FrmMensagens.Timer2.Enabled       := True;
        ImgTimer.Visible:=True;
     End
     Else
        MessageDlg('Falha interna! Caracterizada como CP', mtError, [mbOk], 0);

     // Tipos de Botões
     If vBotoes = [ cbOK ] Then
     Begin
        BtnCancela.Visible := False;
        BtnOk.Left         := Centraliza( FrmMensagens.Width, BtnOk.Width );
     End
     Else If vBotoes = [ cbOkCancela ] Then
     Begin
        LblFoco.Caption := IntToStr( vFoco );
        BtnOk.Left      := Round( FrmMensagens.Width / 2 ) - BtnOk.Width - 5;
        BtnCancela.Left := Round( FrmMensagens.Width / 2 ) + 5;
     End
     Else If vBotoes = [ cbSimNao ] Then
     Begin
        LblFoco.Caption    := IntToStr( vFoco );
        BtnOk.Caption      := '&Sim';
        BtnCancela.Caption := '&Não';
        BtnOk.Left         := Round( FrmMensagens.Width / 2 ) - BtnOk.Width - 5;
        BtnCancela.Left    := Round( FrmMensagens.Width / 2 ) + 5;
     End
     Else
        MessageDlg('Falha interna no formulário de mensagens personalizadas! '+
                   'Caracterizada como CP', mtError, [mbOk], 0);
     Update;
     Refresh;
     ShowModal;
   End;
   If ( pRespMsg = '&OK' ) Or ( pRespMsg = '&SIM' ) Then
     Result := True;
   FrmMensagens.Free;
End;

Function Centraliza( fTamFundo, fTamObjeto : Integer ) : Integer;
Begin
   //Result := StrToInt(FloatToStr( Int(fTamFundo/2) - Int(fTamObjeto/2) ));
   Result := Round(fTamFundo/2) - Round(fTamObjeto/2);
End;


Procedure ConfiguraRel( fNomeForm : String;  fCriarCabecalho : Boolean = True; fRDPrint : TRdPrint = Nil; fPagina : Integer = 1 );
Var I: Word;
    lfrmForm : TForm;
    liCont   : Integer;
Begin
   lfrmForm := Nil;
   For liCont := 1 To Screen.FormCount Do
   Begin
      If UpperCase( Trim( Screen.Forms[ liCont - 1 ].Name ) ) = UpperCase( Trim( fNomeForm ) ) Then
         lfrmForm := Screen.Forms[ liCont - 1 ];
   End;

   If ( lfrmForm = Nil ) Or ( lfrmForm Is TForm = False ) Then
   Begin
      CaixaMensagem( 'Formulário não localizado para impressão de cabeçalho.', ctErro, [ cbOk ], 0 );
      Exit;
   End;
   If fRDPrint<>Nil Then
   Begin
      fRDPrint.imp ( 01, 01, FormatDateTime('dd/mm/yyyy', now) +' as '+FormatDateTime('hh:mm:ss', now ));
     // fRDPrint.impc( 01, Round(fRDPrint.TamanhoQteColunas/2), ' Sistema de Controle de Venda ( Fotografia ) '+frmprincipal.VersionLabel1.Caption, [comp17]);
      fRDPrint.impd( 01, fRDPrint.TamanhoQteColunas, 'Pagina '+ IntToStr( fPagina ) , [comp17]);
      fRDPrint.Imp ( 02, 01, IncDigito( '=', '=', fRDPrint.TamanhoQteColunas, 0 ) );
      fRDPrint.ImpC( 03, Round( fRDPrint.TamanhoQteColunas/2 ), GsNomeEmp , [ normal ] );
      //fRDPrint.ImpC( 03, Round( fRDPrint.TamanhoQteColunas/2 ), GsNomeEmp , [ normal ] );
      //fRDPrint.ImpC( 03, Round( fRDPrint.TamanhoQteColunas/2 ), GsNomeEmp , [ normal ] );
      //fRDPrint.ImpC( 04, Round( fRDPrint.TamanhoQteColunas/2 ), gsTituloRel , [ Normal ] );
      //fRDPrint.ImpC( 04, Round( fRDPrint.TamanhoQteColunas/2 ), gsTituloRel , [ Normal ] );
      fRDPrint.ImpC( 04, Round( fRDPrint.TamanhoQteColunas/2 ), gsTituloRel , [ Normal ] );
      If gsPeriodoRel = '' Then
      Begin
         fRDPrint.Imp ( 05, 01, IncDigito( '=', '=', fRDPrint.TamanhoQteColunas, 0 ) );
      End
      Else
      Begin
         fRDPrint.ImpC( 05, Round( fRDPrint.TamanhoQteColunas/2 ), gsPeriodoRel , [ NEGRITO ] );
         fRDPrint.Imp ( 06, 01, IncDigito( '=', '=', fRDPrint.TamanhoQteColunas, 0 ) );
      End;
   End;
End;

Function IncDigito(VlrString:  String; Digito: String; Tamanho: Word; Lado: Word): String;
Var I : Word;
Begin
   If Digito = '' Then
       Digito := ' ';
   VlrString := Trim( VlrString );
   If Length( VlrString ) > Tamanho Then
      VlrString := Copy( VlrString, 1, Tamanho );
   I := 1;
   While Length( VlrString ) < Tamanho Do
   Begin
      If Lado = 0 Then // Lado Direito
         VlrString:=Digito + VlrString;
      If Lado = 1 Then // Lado Esquerdo
         VlrString:=VlrString + Digito;
      If Lado = 2 Then // Lado Centralizado
      Begin
         If ( I Mod 2 ) = 0 Then
            VlrString := Digito + VlrString
         Else
            VlrString := VlrString + Digito;
         I := I + 1;
      End;
   End;
   Result:=VlrString;
End;

Function SoData( fData: TDateTime ) : TDate;
Begin
   Result := StrToDate( FormatDateTime( 'dd/mm/yyyy', fData ) );
End;

Function SubstString( lstrOriginal, fStrDel : String; fStrIns : String = '';DigitoADigito: Boolean = True ): String;
var I : Word;
    liPos: Word;
begin
   If DigitoADigito Then
   Begin
      For I := 1 To Length( fstrDel ) Do
      Begin
         While Pos( fstrDel[ I ], lstrOriginal ) > 0 Do
         Begin
            liPos := Pos( fstrDel[ I ], lstrOriginal );
            Delete( lstrOriginal, liPos, 1 );
            Insert( fStrIns, lstrOriginal, liPos );
         End;
      End;
   End
   Else
   Begin
      While Pos( fstrDel, lstrOriginal ) > 0 Do
      Begin
         liPos := Pos( fstrDel, lstrOriginal );
         Delete( lstrOriginal, liPos, Length( fstrDel ) );
         Insert( fStrIns, lstrOriginal, liPos );
      End;
   End;
   Result := lstrOriginal;
end;

Procedure CriarCalculado( fDataSet : TDataSet; fFieldName: String; fDataType : TFieldType; fSize : Integer );
Var lfldTemp : TField;
    liCont : Word;
begin
   If fDataSet.FindField( fFieldName ) = Nil Then
   Begin
      fDataSet.Close;
      If fDataSet.Fields.Count = 0 Then
      Begin
         fDataSet.FieldDefs.Clear;
         fDataSet.FieldDefs.Update;

         For liCont := 1 To fDataSet.FieldDefs.Count Do
         Begin
            If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftString Then
            Begin
               lfldTemp := TStringField.Create( Nil );
               lfldTemp.Size := fDataSet.FieldDefs[ liCont - 1 ].Size;
            End
            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftDateTime Then
               lfldTemp := TDateTimeField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftTimeStamp Then
               lfldTemp := TSQLTimeStampField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftInteger Then
               lfldTemp := TIntegerField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftFloat Then
               lfldTemp := TFloatField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftSmallint  Then
               lfldTemp := TSmallintField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftWord  Then
               lfldTemp := TWordField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftBoolean  Then
               lfldTemp := TBooleanField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftCurrency  Then
               lfldTemp := TCurrencyField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftBCD  Then
               lfldTemp := TBCDField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftDate  Then
               lfldTemp := TDateField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftTime  Then
               lfldTemp := TTimeField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftBytes  Then
               lfldTemp := TBytesField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftVarBytes  Then
               lfldTemp := TVarBytesField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftAutoInc  Then
               lfldTemp := TAutoIncField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftBlob  Then
               lfldTemp := TBlobField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftMemo  Then
               lfldTemp := TMemoField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftGraphic  Then
               lfldTemp := TGraphicField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftWideString  Then
               lfldTemp := TWideStringField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftLargeInt  Then
               lfldTemp := TLargeIntField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftADT  Then
               lfldTemp := TADTField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftArray  Then
               lfldTemp := TArrayField.Create( Nil )

            Else If fDataSet.FieldDefs[ liCont - 1 ].DataType = ftReference  Then
               lfldTemp := TReferenceField.Create( Nil )

            Else
               lfldTemp := TField.Create( Nil );
            lfldTemp.FieldName  := fDataSet.FieldDefs[ liCont - 1 ].Name;
            lfldTemp.FieldKind  := fkData;
            lfldTemp.DataSet    := fDataSet;
            lfldTemp.Index      := fDataSet.FieldCount;
            lfldTemp.Name       := fDataSet.Name + lfldTemp.FieldName;
            lfldTemp.Visible    := True;
         End;
      End;

      If fDataType = ftString Then
      Begin
         lfldTemp := TStringField.Create( Nil );
         lfldTemp.Size := fSize;
      End
      Else If fDataType = ftDateTime Then
         lfldTemp := TDateTimeField.Create( Nil )

      Else If fDataType = ftTimeStamp Then
         lfldTemp := TSQLTimeStampField.Create( Nil )

      Else If fDataType = ftInteger Then
         lfldTemp := TIntegerField.Create( Nil )

      Else If fDataType = ftFloat Then
         lfldTemp := TFloatField.Create( Nil )

      Else If fDataType = ftSmallint  Then
         lfldTemp := TSmallintField.Create( Nil )

      Else If fDataType = ftWord  Then
         lfldTemp := TWordField.Create( Nil )

      Else If fDataType = ftBoolean  Then
         lfldTemp := TBooleanField.Create( Nil )

      Else If fDataType = ftCurrency  Then
         lfldTemp := TCurrencyField.Create( Nil )

      Else If fDataType = ftBCD  Then
         lfldTemp := TBCDField.Create( Nil )

      Else If fDataType = ftDate  Then
         lfldTemp := TDateField.Create( Nil )

      Else If fDataType = ftTime  Then
         lfldTemp := TTimeField.Create( Nil )

      Else If fDataType = ftBytes  Then
         lfldTemp := TBytesField.Create( Nil )

      Else If fDataType = ftVarBytes  Then
         lfldTemp := TVarBytesField.Create( Nil )

      Else If fDataType = ftAutoInc  Then
         lfldTemp := TAutoIncField.Create( Nil )

      Else If fDataType = ftBlob  Then
         lfldTemp := TBlobField.Create( Nil )

      Else If fDataType = ftMemo  Then
         lfldTemp := TMemoField.Create( Nil )

      Else If fDataType = ftGraphic  Then
         lfldTemp := TGraphicField.Create( Nil )

      Else If fDataType = ftWideString  Then
         lfldTemp := TWideStringField.Create( Nil )

      Else If fDataType = ftLargeInt  Then
         lfldTemp := TLargeIntField.Create( Nil )

      Else If fDataType = ftADT  Then
         lfldTemp := TADTField.Create( Nil )

      Else If fDataType = ftArray  Then
         lfldTemp := TArrayField.Create( Nil )

      Else If fDataType = ftReference  Then
         lfldTemp := TReferenceField.Create( Nil )

      Else
         lfldTemp := TField.Create( Nil );
      lfldTemp.FieldName  := fFieldName;
      lfldTemp.FieldKind  := fkCalculated;

      If AnsiUpperCase( Trim( fDataSet.ClassName ) ) = AnsiUpperCase( Trim( 'TCLIENTDATASET' ) ) Then
         lfldTemp.FieldKind := fkInternalCalc;

      lfldTemp.DataSet    := fDataSet;
      lfldTemp.Index      := fDataSet.FieldCount;
      lfldTemp.Name       := fDataSet.Name + lfldTemp.FieldName;
      lfldTemp.Visible    := True;
   End;
End;



Function Arredondar( prrValor: Real; prrDecimais: integer; prbTrucar: boolean = False ): Real;
var lrValor: Real;
    lsValor: string;
begin
   {
   6 x 2.6575 = 15.945 (Arredondando 15,95)

   Exemplo
     6 x ( 2.6575 + 0.000001 )
   }
   //Arredondar := RoundTo( prrValor + ( 1 / Power( 10, prrDecimais + 2 ) ), prrDecimais * -1 );

   if prrDecimais = 100 then
      prrDecimais := 2
   else if prrDecimais = 1000 then
      prrDecimais := 3;

   lrValor    := RoundTo( prrValor + ( 1 / Power( 10, prrDecimais + 2 ) ), prrDecimais * -1 );
   if prbTrucar then
   begin
      lrValor := prrValor * Power( 10, prrDecimais );

      lsValor := FormatFloat( '0.0000', lrValor );
      lsValor := Copy( lsValor, 1, Pos( ',', lsValor ) - 1 );
      lrValor := StrToFloat( lsValor );

      //lrValor := Int( lrValor );
      lrValor := lrValor / Power( 10, prrDecimais );
   end;

   Arredondar := lrValor;
end;

Procedure ListaPeriodo( fComponente1: TEdit; fComponente2: TEdit; fItem: Integer; fData : TDateTime );
Var xMeses : Array[ 1..12 ] Of  Integer;
    DiaIni, DiaFim : TDateTime;
    nVar, nVar1    : Integer;
begin
   If fItem < 0 Then
   Begin
      CaixaMensagem( 'Nenhum item foi selecionado!!!', ctInforma, [ cbOk ], 0 );
      Exit;
   End;
   xMeses[ 1] := 31;
   xMeses[ 2] := 28;
   If StrToInt( FormatDateTime( 'yyyy', fData ) ) Mod 4 = 0 Then
      xMeses[2] := 29;
   xMeses[ 3] := 31;
   xMeses[ 4] := 30;
   xMeses[ 5] := 31;
   xMeses[ 6] := 30;
   xMeses[ 7] := 31;
   xMeses[ 8] := 31;
   xMeses[ 9] := 30;
   xMeses[10] := 31;
   xMeses[11] := 30;
   xMeses[12] := 31;

   DiaIni := StrToDate( '01/' + FormatDateTime( 'mm/yyyy', fData ) );
   DiaFim := StrToDate( IntToStr( xMeses[ StrToInt( FormatDateTime( 'mm', fData ) ) ] ) + FormatDateTime( '/mm/yyyy', fData ) );

   Case fItem Of 
   0:Begin // Nenhum
        fComponente1.Text := '01/01/1901';
        fComponente2.Text := '31/12/2200';
     End;
   1:Begin // Ontem
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 1 );
     End;
   2:Begin // Hoje
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
     End;
   3:Begin // Amanhã
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 1 );
     End;
   4:Begin // Semana Anterior
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData -7 );
        While DayOfWeek( StrToDate( fComponente1.Text ) ) <> 1 Do
           fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text )+6);
     End;
   5:Begin // Esta semana
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        While DayOfWeek (StrToDate( fComponente1.Text )) <> 1 Do
           fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text )+6);
     End;
   6:Begin // Próxima Semana
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 7 );
        While DayOfWeek (StrToDate( fComponente1.Text )) <> 1 Do
           fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text )+6);
     End;
   7:Begin // Quinzena anterior
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 15 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 15 );
        If FormatDateTime( 'dd', fData ) <= '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '16' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente1.Text ) - 1 );
           nVar := StrToInt( Copy( fComponente2.Text, 4, 2 ) );
           While Copy( fComponente2.Text, 1 , 2 ) <> Trim( IntToStr( xMeses[ nVar] ) ) Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente2.Text ) + 1 );
        End;
        If FormatDateTime( 'dd', fData ) > '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente1.Text ) - 1 );
           While Copy( fComponente2.Text, 1, 2 ) <> '15' Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente2.Text ) + 1 );
        End;
     End;
   8:Begin // Esta Quinzena
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        If FormatDateTime( 'dd', fData ) <= '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           While Copy( fComponente2.Text, 1, 2 ) <> '15' Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
        End;
        If FormatDateTime( 'dd', fData ) > '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '16' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           nVar := StrToInt( FormatDateTime( 'mm', fData ) );
           While Copy( fComponente2.Text, 1, 2 ) <> Trim( IntToStr (xMeses[nVar])) Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente2.Text ) + 1 );
        End;
     End;
   9:Begin // Próxima Quinzena
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 15);
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 15);
        If FormatDateTime( 'dd', fData ) <= '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '16' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           nVar := StrToInt( Copy( fComponente2.Text, 4, 2 ) );
           While Copy( fComponente2.Text, 1, 2 ) <> Trim( IntToStr( xMeses[ nVar ] ) ) Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
        End;
        If FormatDateTime( 'dd', fData ) > '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           While Copy( fComponente2.Text, 1, 2 ) <> '15' Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
        End;
     End;
   10:Begin // Nos Últimos 15 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 15);
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData );
      End;
   11:Begin // Nos Próximos 15 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 15 );
      End;
   12:Begin // Nos Últimos e Próximos 15 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 15 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 15 );
      End;
   13:Begin // Mês Anterior
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', DiaIni - 1 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', DiaIni - 1 );
         While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
            fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
      End;
   14:Begin // Este Mês
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', DiaIni );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', DiaFim );
      End;
   15:Begin // Próximo Mês
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', DiaFim + 1 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', DiaFim + 28 );
         nVar := StrToInt( Copy( fComponente2.Text, 4, 2 ) );
         While Copy( fComponente2.Text, 1, 2 ) <> Trim( IntToStr( xMeses[ nVar ] ) ) Do
            fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
      End;
   16:Begin // Nos Últimos 30 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 30 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData );
      End;
   17:Begin // Nos Próximos 30 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 30 );
      End;
   18:Begin // Nos Últimos e Próximos 30 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 30 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 30 );
      End;
   19:Begin // Nos Últimos 45 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 45 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   20:Begin // Nos Próximos 45 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 45 );
      End;
   21:Begin // Nos Últimos e Próximos 45 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 45 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 45 );
      End;
   22:Begin // Nos Últimos 60 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 60 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   23:Begin // Nos Próximos 60 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 60 );
      End;
   24:Begin // Nos Últimos e Próximos 60 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 60 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 60 );
      End;
   25:Begin // Trimestre Anterior
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) - 1;
         Case nVar1 Of 
         1..3:Begin
                 fComponente1.Text := '01/10/' + Trim( IntToStr( nVar ) );
                 fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
              End;
         4..6:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/03/' + FormatDateTime( 'yyyy', fData );
              End;
         7..9:Begin
                 fComponente1.Text := '01/04/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         10..12:Begin
                   fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                   fComponente2.Text := '30/09/' + FormatDateTime( 'yyyy', fData );
                End;
         End;
      End;
   26:Begin // Neste Trimestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         Case nVar1 Of 
         1..3:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/03/' + FormatDateTime( 'yyyy', fData );
              End;
         4..6:Begin
                 fComponente1.Text := '01/04/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         7..9:Begin
                 fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/09/' + FormatDateTime( 'yyyy', fData );
              End;
         10..12:Begin
                   fComponente1.Text := '01/10/' + FormatDateTime( 'yyyy', fData );
                   fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
                End;
         End;
      End;
   27:Begin // Próximo Trimestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) + 1;
         Case nVar1 Of
         1..3:Begin
                 fComponente1.Text := '01/04/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         4..6:Begin
                 fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/09/' + FormatDateTime( 'yyyy', fData );
              End;
         7..9:Begin
                 fComponente1.Text := '01/10/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
              End;
         10..12:Begin
                 fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
                 fComponente2.Text := '31/03/' + Trim( IntToStr( nVar ) );
              End;
         End;
     End;
   28:Begin // Nos Últimos 90 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 90 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   29:Begin // Nos Próximos 90 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 90 );
      End;
   30:Begin // Nos Últimos e Próximos 90 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 90 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 90 );
      End;
   31:Begin // Semestre Passado
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) - 1;
         Case nVar1 Of 
         1..6:Begin
                 fComponente1.Text := '01/07/' + Trim( IntToStr( nVar ) );
                 fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
              End;
         7..12:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
               End;
         End;
     End;
   32:Begin // Neste Semestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         Case nVar1 Of 
         1..6:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         7..12:Begin
                  fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                  fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
               End;
         End;
     End;
   33:Begin // Próximo Semestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) + 1;
         Case nVar1 Of 
         1..6:Begin
                 fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
              End;
         7..12:Begin
                  fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
                  fComponente2.Text := '30/06/' + Trim( IntToStr( nVar ) );
               End;
         End;
     End;
   34:Begin // Nos Últimos 120 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 120 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   35:Begin // Nos Próximos 120 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 120 );
      End;
   36:Begin // Nos Últimos e Próximos 120 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 120 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 120 );
      End;
   37:Begin // Ano Passado
         nVar := StrToInt( FormatDateTime( 'yyyy', fData ) ) - 1;
         fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
         fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
      End;
   38:Begin // Neste Ano
         fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
         fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
      End;
   39:Begin // Próximo Ano
         nVar := StrToInt( FormatDateTime( 'yyyy', fData ) ) + 1;
         fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
         fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
      End;
   End;
end;

Procedure ListaPeriodo2( fComponente1: TbsSkinDateEdit; fComponente2: TbsSkinDateEdit; fItem: Integer; fData : TDateTime );
Var xMeses : Array[ 1..12 ] Of  Integer;
    DiaIni, DiaFim : TDateTime;
    nVar, nVar1    : Integer;
begin
   If fItem < 0 Then
   Begin
      CaixaMensagem( 'Nenhum item foi selecionado!!!', ctInforma, [ cbOk ], 0 );
      Exit;
   End;
   xMeses[ 1] := 31;
   xMeses[ 2] := 28;
   If StrToInt( FormatDateTime( 'yyyy', fData ) ) Mod 4 = 0 Then
      xMeses[2] := 29;
   xMeses[ 3] := 31;
   xMeses[ 4] := 30;
   xMeses[ 5] := 31;
   xMeses[ 6] := 30;
   xMeses[ 7] := 31;
   xMeses[ 8] := 31;
   xMeses[ 9] := 30;
   xMeses[10] := 31;
   xMeses[11] := 30;
   xMeses[12] := 31;

   DiaIni := StrToDate( '01/' + FormatDateTime( 'mm/yyyy', fData ) );
   DiaFim := StrToDate( IntToStr( xMeses[ StrToInt( FormatDateTime( 'mm', fData ) ) ] ) + FormatDateTime( '/mm/yyyy', fData ) );

   Case fItem Of 
   0:Begin // Nenhum
        fComponente1.Text := '01/01/1901';
        fComponente2.Text := '31/12/2200';
     End;
   1:Begin // Ontem
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 1 );
     End;
   2:Begin // Hoje
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
     End;
   3:Begin // Amanhã
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 1 );
     End;
   4:Begin // Semana Anterior
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData -7 );
        While DayOfWeek( StrToDate( fComponente1.Text ) ) <> 1 Do
           fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text )+6);
     End;
   5:Begin // Esta semana
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        While DayOfWeek (StrToDate( fComponente1.Text )) <> 1 Do
           fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text )+6);
     End;
   6:Begin // Próxima Semana
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 7 );
        While DayOfWeek (StrToDate( fComponente1.Text )) <> 1 Do
           fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text )+6);
     End;
   7:Begin // Quinzena anterior
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 15 );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 15 );
        If FormatDateTime( 'dd', fData ) <= '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '16' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente1.Text ) - 1 );
           nVar := StrToInt( Copy( fComponente2.Text, 4, 2 ) );
           While Copy( fComponente2.Text, 1 , 2 ) <> Trim( IntToStr( xMeses[ nVar] ) ) Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente2.Text ) + 1 );
        End;
        If FormatDateTime( 'dd', fData ) > '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente1.Text ) - 1 );
           While Copy( fComponente2.Text, 1, 2 ) <> '15' Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente2.Text ) + 1 );
        End;
     End;
   8:Begin // Esta Quinzena
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
        If FormatDateTime( 'dd', fData ) <= '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           While Copy( fComponente2.Text, 1, 2 ) <> '15' Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
        End;
        If FormatDateTime( 'dd', fData ) > '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '16' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           nVar := StrToInt( FormatDateTime( 'mm', fData ) );
           While Copy( fComponente2.Text, 1, 2 ) <> Trim( IntToStr (xMeses[nVar])) Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate ( fComponente2.Text ) + 1 );
        End;
     End;
   9:Begin // Próxima Quinzena
        fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 15);
        fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 15);
        If FormatDateTime( 'dd', fData ) <= '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '16' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           nVar := StrToInt( Copy( fComponente2.Text, 4, 2 ) );
           While Copy( fComponente2.Text, 1, 2 ) <> Trim( IntToStr( xMeses[ nVar ] ) ) Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
        End;
        If FormatDateTime( 'dd', fData ) > '15' Then
        Begin
           While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
              fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
           While Copy( fComponente2.Text, 1, 2 ) <> '15' Do
              fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
        End;
     End;
   10:Begin // Nos Últimos 15 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 15);
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData );
      End;
   11:Begin // Nos Próximos 15 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 15 );
      End;
   12:Begin // Nos Últimos e Próximos 15 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 15 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 15 );
      End;
   13:Begin // Mês Anterior
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', DiaIni - 1 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', DiaIni - 1 );
         While Copy( fComponente1.Text, 1, 2 ) <> '01' Do
            fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente1.Text ) - 1 );
      End;
   14:Begin // Este Mês
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', DiaIni );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', DiaFim );
      End;
   15:Begin // Próximo Mês
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', DiaFim + 1 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', DiaFim + 28 );
         nVar := StrToInt( Copy( fComponente2.Text, 4, 2 ) );
         While Copy( fComponente2.Text, 1, 2 ) <> Trim( IntToStr( xMeses[ nVar ] ) ) Do
            fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', StrToDate( fComponente2.Text ) + 1 );
      End;
   16:Begin // Nos Últimos 30 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 30 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData );
      End;
   17:Begin // Nos Próximos 30 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 30 );
      End;
   18:Begin // Nos Últimos e Próximos 30 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 30 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 30 );
      End;
   19:Begin // Nos Últimos 45 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 45 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   20:Begin // Nos Próximos 45 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 45 );
      End;
   21:Begin // Nos Últimos e Próximos 45 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 45 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 45 );
      End;
   22:Begin // Nos Últimos 60 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 60 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   23:Begin // Nos Próximos 60 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 60 );
      End;
   24:Begin // Nos Últimos e Próximos 60 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 60 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 60 );
      End;
   25:Begin // Trimestre Anterior
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) - 1;
         Case nVar1 Of 
         1..3:Begin
                 fComponente1.Text := '01/10/' + Trim( IntToStr( nVar ) );
                 fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
              End;
         4..6:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/03/' + FormatDateTime( 'yyyy', fData );
              End;
         7..9:Begin
                 fComponente1.Text := '01/04/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         10..12:Begin
                   fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                   fComponente2.Text := '30/09/' + FormatDateTime( 'yyyy', fData );
                End;
         End;
      End;
   26:Begin // Neste Trimestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         Case nVar1 Of 
         1..3:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/03/' + FormatDateTime( 'yyyy', fData );
              End;
         4..6:Begin
                 fComponente1.Text := '01/04/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         7..9:Begin
                 fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/09/' + FormatDateTime( 'yyyy', fData );
              End;
         10..12:Begin
                   fComponente1.Text := '01/10/' + FormatDateTime( 'yyyy', fData );
                   fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
                End;
         End;
      End;
   27:Begin // Próximo Trimestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) + 1;
         Case nVar1 Of 
         1..3:Begin
                 fComponente1.Text := '01/04/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         4..6:Begin
                 fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/09/' + FormatDateTime( 'yyyy', fData );
              End;
         7..9:Begin
                 fComponente1.Text := '01/10/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
              End;
         10..12:Begin
                 fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
                 fComponente2.Text := '31/03/' + Trim( IntToStr( nVar ) );
              End;
         End;
     End;
   28:Begin // Nos Últimos 90 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 90 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   29:Begin // Nos Próximos 90 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 90 );
      End;
   30:Begin // Nos Últimos e Próximos 90 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy', fData - 90 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy', fData + 90 );
      End;
   31:Begin // Semestre Passado
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) - 1;
         Case nVar1 Of 
         1..6:Begin
                 fComponente1.Text := '01/07/' + Trim( IntToStr( nVar ) );
                 fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
              End;
         7..12:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
               End;
         End;
     End;
   32:Begin // Neste Semestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         Case nVar1 Of 
         1..6:Begin
                 fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '30/06/' + FormatDateTime( 'yyyy', fData );
              End;
         7..12:Begin
                  fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                  fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
               End;
         End;
     End;
   33:Begin // Próximo Semestre
         nVar1 := StrToInt( FormatDateTime( 'mm', fData ) );
         nVar  := StrToInt( FormatDateTime( 'yyyy', fData ) ) + 1;
         Case nVar1 Of 
         1..6:Begin
                 fComponente1.Text := '01/07/' + FormatDateTime( 'yyyy', fData );
                 fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
              End;
         7..12:Begin
                  fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
                  fComponente2.Text := '30/06/' + Trim( IntToStr( nVar ) );
               End;
         End;
     End;
   34:Begin // Nos Últimos 120 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 120 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
      End;
   35:Begin // Nos Próximos 120 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 120 );
      End;
   36:Begin // Nos Últimos e Próximos 120 dias
         fComponente1.Text := FormatDateTime( 'dd/mm/yyyy',  fData - 120 );
         fComponente2.Text := FormatDateTime( 'dd/mm/yyyy',  fData + 120 );
      End;
   37:Begin // Ano Passado
         nVar := StrToInt( FormatDateTime( 'yyyy', fData ) ) - 1;
         fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
         fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
      End;
   38:Begin // Neste Ano
         fComponente1.Text := '01/01/' + FormatDateTime( 'yyyy', fData );
         fComponente2.Text := '31/12/' + FormatDateTime( 'yyyy', fData );
      End;
   39:Begin // Próximo Ano
         nVar := StrToInt( FormatDateTime( 'yyyy', fData ) ) + 1;
         fComponente1.Text := '01/01/' + Trim( IntToStr( nVar ) );
         fComponente2.Text := '31/12/' + Trim( IntToStr( nVar ) );
      End;
   End;
end;


Function Encrypt_20( fsTemp:String ): String;
Var lsTemp : String;
    liCont : Word;
Const a = ( '85245454487985464894554578448' );
Begin
   //fsTemp := UpperCase( Trim( fsTemp ) );
   lsTemp := fsTemp;

   fsTemp := '';
   For liCont := 1 To Length( lsTemp ) Do
      fsTemp := fsTemp + Chr( Ord( lsTemp[ liCont ] ) + StrToInt( a[ liCont ] ) );

   Result := fsTemp;
End;

Function Decrypt_20( fsTemp:String ): String;
Var lsTemp : String;
    liCont : Word;
Const a = ( '85245454487985464894554578448' );
Begin
   //fsTemp := UpperCase( Trim( fsTemp ) );
   lsTemp := fsTemp;

   fsTemp := '';
   For liCont := 1 To Length( lsTemp ) Do
      fsTemp := fsTemp + Chr( Ord( lsTemp[ liCont ] ) - StrToInt( a[ liCont ] ) );

   Result := fsTemp;
End;
Function Sequencia( fCampo: String; fIncrementa: Boolean = True; fTabela: String = ''; fSQLConnection: TSQLConnection = Nil; fCodEmp: String = ''; fbCriticaFilial : Boolean = False; fiTamCodigo: integer = 0; fWhere: string = '' ): String;
var lsdtsMax    : TSimpleDataSet;
    lqryModific : TSQLQuery;
    lsNovoCod   : String;
Begin
   if UpperCase( fTabela ) = 'T_SEQUENCIAS' then
   begin
      lsdtsMax                     := TSimpleDataSet.Create( Nil );
      lsdtsMax.Connection          := frmPrincipal.dbxPrincipal;
      lsdtsMax.DataSet.CommandText := 'SELECT SEQUENCIA FROM T_Sequencias WHERE Tipo_Sequencia=:parTipo_Sequencia ';
      if fCodEmp = '' then
         TrataSQL( lsdtsMax, gsCod_Emp )
      else
         TrataSQL( lsdtsMax, fCodEmp );
      lsdtsMax.dataset.ParamByName( 'parTipo_Sequencia' ).AsString := fcampo;
      lsdtsMax.Open;
      lsNovoCod := '1';
      if Trim( lsdtsMax.Fields[ 0 ].AsString ) <> '' then
         lsNovoCod := IntToStr( StrToInt( lsdtsMax.Fields[ 0 ].AsString ) + 1 );
      lsNovoCod := IncZero( lsNovoCod, lsdtsMax.Fields[ 0 ].Size );

      if fIncrementa then
      begin
         Try
            lqryModific               := TSQLQuery.Create( Nil );
            lqryModific.SQLConnection := frmPrincipal.dbxPrincipal;
            lqryModific.SQL.Text      := 'UPDATE T_Sequencias SET  SEQUENCIA=:par1 '+
                                         ' WHERE Cod_Emp=:parCod_Emp and Tipo_Sequencia=:parTipo_Sequencia';
            lqryModific.ParamByName( 'par1' ).AsString := lsNovoCod;
            if fCodEmp = '' then
               lqryModific.ParamByName( 'parCod_Emp' ).AsString := gsCod_Emp
            else
               lqryModific.ParamByName( 'parCod_Emp' ).AsString := fCodEmp;
               lqryModific.ParamByName( 'parTipo_Sequencia' ).AsString := fcampo;
            lqryModific.ExecSQL;
         Except
            On E: Exception Do
            Begin
               CaixaMensagem( 'Não foi possível gerar a nova sequência "' + E.Message + '"', ctErro, [ cbOk ], 0 );
               lqryModific.Close;
               FreeAndNil( lqryModific );

               lsdtsMax.Close;
               FreeAndNil( lsdtsMax );

               lqryModific.Close;
               FreeAndNil( lqryModific );

               Result := '';
               Exit;
            End;
         End;
         lqryModific.Close;
         FreeAndNil( lqryModific );
      end;
      Result := lsNovoCod;

      lsdtsMax.Close;
      FreeAndNil( lsdtsMax );
   End
   else
   begin
      lsdtsMax                     := TSimpleDataSet.Create( Nil );
      lsdtsMax.Connection          := frmPrincipal.dbxPrincipal;
      lsdtsMax.DataSet.CommandText := 'SELECT MAX( ' + fCampo + ' ) FROM ' + fTabela;
      If Trim( fCodEmp ) <> '' Then
      Begin
         lsdtsMax.DataSet.CommandText := 'SELECT MAX( ' + fCampo + ' ) FROM ' + fTabela;
         TrataSQL( lsdtsMax, fCodEmp );
         if Trim( fWhere ) <> '' then
         begin
            lsdtsMax.DataSet.CommandText := 'SELECT MAX( ' + fCampo + ' ) FROM ' + fTabela+
                                            ' WHERE ' + fWhere;
            TrataSQL( lsdtsMax, fCodEmp );
         end;
      end
      else
      begin
         if Trim( fWhere ) <> '' then
         begin
            lsdtsMax.DataSet.CommandText := 'SELECT MAX( ' + fCampo + ' ) FROM ' + fTabela +
                                            ' WHERE ' + fWhere;
         end;
      end;
      lsdtsMax.Open;

      lsNovoCod := '1';
      If Trim( lsdtsMax.Fields[ 0 ].AsString ) <> '' Then
         lsNovoCod := IntToStr( StrToInt( lsdtsMax.Fields[ 0 ].AsString ) + 1 );

      if fiTamCodigo <> 0 then
         lsNovoCod     := IncZero( lsNovoCod, fiTamCodigo )
      else
         lsNovoCod     := IncZero( lsNovoCod, lsdtsMax.FieldDefs[ 0 ].Size );

      Result := lsNovoCod;

      lsdtsMax.Close;
      FreeAndNil( lsdtsMax );
   end;
End;
Procedure TrataSQL( fDataSet : TDataSet; fsCod_Emp: String; fsTabelas : String = ''; fbCriticaFilial : Boolean = False );
Var lsTemp   : String;
    lsTemp2  : String;
    lsTabela : String;
    liCont   : Integer;
    lParams  : TParams;
    lParam   : TParam;
Begin
   If ( fbCriticaFilial ) Or
      ( Trim( fsCod_Emp ) <> '' ) Then
   Begin
      If AnsiUpperCase( Trim( fDataSet.ClassName ) ) = AnsiUpperCase( Trim( 'TSIMPLEDATASET' ) ) Then
      Begin
         lsTemp := UpperCase( Trim( TSimpleDataSet( fDataSet ).DataSet.CommandText ) );
         If Pos( 'SELECT', lsTemp ) = 1 Then
         Begin
            lsTabela := '';
            For liCont := 0 To Length( lsTemp ) Do
            Begin
               If ( Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 ) = ' ' ) Or
                  ( Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 ) = ',' ) Then
               Begin
                  Break;
               End;
               lsTabela := lsTabela + Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 );
            End;

            If fsTabelas = '' Then
            begin
               //    Se o nome da tabela estiver na lista de tabelas que ignorará o
               // COD_EMP saia da rotina
              // If frmPrincipal.lstIgnoraCOD_EMP.Items.IndexOf( UpperCase( lsTabela ) ) <> -1 Then
                //  Exit;
            end;

            lsTemp2 := '';
            If Pos( ' GROUP ', lsTemp ) > 0 Then
            Begin
               lsTemp2 := Copy( lsTemp, Pos( ' GROUP ', lsTemp ), Length( lsTemp ) );
               Delete( lsTemp, Pos( ' GROUP ', lsTemp ), Length( lsTemp ) );
            End
            Else If Pos( ' ORDER ', lsTemp ) > 0 Then
            Begin
               lsTemp2 := Copy( lsTemp, Pos( ' ORDER ', lsTemp ), Length( lsTemp ) );
               Delete( lsTemp, Pos( ' ORDER ', lsTemp ), Length( lsTemp ) );
            End;
            lParams := TParams.Create;
            For liCont := 1 To ( fDataSet As TSimpleDataSet ).DataSet.Params.Count Do
            Begin
               lParam := ( fDataSet As TSimpleDataSet ).DataSet.Params[ liCont - 1 ];
               With lParams.CreateParam( lParam.DataType, lParam.Name, ptInput ) Do
                  Value := lParam.Value;
            End;
            TSimpleDataSet( fDataSet ).DataSet.CommandText := 'SELECT * FROM ' + lsTabela + ' WHERE 1=2';
            TSimpleDataSet( fDataSet ).FieldDefs.Clear;
            TSimpleDataSet( fDataSet ).FieldDefs.Update;
            If TSimpleDataSet( fDataSet ).FieldDefs.IndexOf( 'Cod_Emp' ) > -1 Then
            Begin
               If fsTabelas = '' Then
               Begin
                  If Pos( 'WHERE', lsTemp ) > 0 Then
                     lsTemp := lsTemp + ' And Cod_Emp=:parCod_Emp '
                  Else
                     lsTemp := lsTemp + ' WHERE Cod_Emp=:parCod_Emp ';
               End
               Else
               Begin
                  fsTabelas := fsTabelas + ';';
                  While Length( fsTabelas ) > 0 Do
                  Begin
                     If Pos( 'WHERE', lsTemp ) > 0 Then
                        lsTemp := lsTemp + ' And ' + Copy( fsTabelas, 1, Pos( ';', fsTabelas ) - 1 ) + '.Cod_Emp=:parCod_Emp '
                     Else
                        lsTemp := lsTemp + ' WHERE ' + Copy( fsTabelas, 1, Pos( ';', fsTabelas ) - 1 ) + '.Cod_Emp=:parCod_Emp ';
                     Delete( fsTabelas, 1, Pos( ';', fsTabelas ) );
                  End;
               End;
            End;
            lsTemp := lsTemp + ' ' + lsTemp2;
            TSimpleDataSet( fDataSet ).DataSet.CommandText := lsTemp;
            If TSimpleDataSet( fDataSet ).DataSet.Params.FindParam( 'parCod_Emp' ) <> Nil Then
               TSimpleDataSet( fDataSet ).DataSet.ParamByName( 'parCod_Emp' ).AsString := fsCod_Emp;
            For liCont := 1 To lParams.Count Do
            Begin
               If ( fDataSet As TSimpleDataSet ).DataSet.Params.FindParam( lParams[ liCont - 1 ].Name ) <> Nil Then
                  ( fDataSet As TSimpleDataSet ).DataSet.Params.FindParam( lParams[ liCont - 1 ].Name ).Value := lParams[ liCont - 1 ].Value;
            End;
         End;
      End
      Else If AnsiUpperCase( UpperCase( fDataSet.ClassName ) ) = AnsiUpperCase( Trim( 'TSQLQUERY' ) ) Then
      Begin
         lsTemp := UpperCase( Trim( TSQLQuery( fDataSet ).SQL.Text ) );
         If Pos( 'SELECT', lsTemp ) = 1 Then
         Begin
            lsTabela := '';
            For liCont := 0 To Length( lsTemp ) Do
            Begin
               If ( Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 ) = ' ' ) Or
                  ( Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 ) = ',' ) Then
               Begin
                  Break;
               End;
               lsTabela := lsTabela + Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 );
            End;

            //    Se o nome da tabela estiver na lista de tabelas que ignorará o
            // COD_EMP saia da rotina
            //If frmPrincipal.lstIgnoraCOD_EMP.Items.IndexOf( UpperCase( lsTabela ) ) <> -1 Then
              // Exit;

            lsTemp2 := '';
            If Pos( ' GROUP ', lsTemp ) > 0 Then
            Begin
               lsTemp2 := Copy( lsTemp, Pos( ' GROUP ', lsTemp ), Length( lsTemp ) );
               Delete( lsTemp, Pos( ' GROUP ', lsTemp ), Length( lsTemp ) );
            End
            Else If Pos( ' ORDER ', lsTemp ) > 0 Then
            Begin
               lsTemp2 := Copy( lsTemp, Pos( ' ORDER ', lsTemp ), Length( lsTemp ) );
               Delete( lsTemp, Pos( ' ORDER ', lsTemp ), Length( lsTemp ) );
            End;
            TSQLQuery( fDataSet ).SQL.Text := 'SELECT * FROM ' + lsTabela + ' WHERE 1=2';
            TSQLQuery( fDataSet ).FieldDefs.Clear;
            TSQLQuery( fDataSet ).FieldDefs.Update;
            If TSQLQuery( fDataSet ).FieldDefs.IndexOf( 'Cod_Emp' ) > -1 Then
            Begin
               If fsTabelas = '' Then
               Begin
                  If Pos( 'WHERE', lsTemp ) > 0 Then
                     lsTemp := lsTemp + ' And Cod_Emp=:parCod_Emp '
                  Else
                     lsTemp := lsTemp + ' WHERE Cod_Emp=:parCod_Emp ';
               End
               Else
               Begin
                  fsTabelas := fsTabelas + ';';
                  While Length( fsTabelas ) > 0 Do
                  Begin
                     If Pos( 'WHERE', lsTemp ) > 0 Then
                        lsTemp := lsTemp + ' And ' + Copy( fsTabelas, 1, Pos( ';', fsTabelas ) - 1 ) + '.Cod_Emp=:parCod_Emp '
                     Else
                        lsTemp := lsTemp + ' WHERE ' + Copy( fsTabelas, 1, Pos( ';', fsTabelas ) - 1 ) + 'Cod_Emp=:parCod_Emp ';
                     Delete( fsTabelas, 1, Pos( ';', fsTabelas ) );
                  End;
               End;
            End;
            lsTemp := lsTemp + ' ' + lsTemp2;
            TSQLQuery( fDataSet ).SQL.Text := lsTemp;
            If TSQLQuery( fDataSet ).Params.FindParam( 'parCod_Emp' ) <> Nil Then
               TSQLQuery( fDataSet ).ParamByName( 'parCod_Emp' ).AsString := fsCod_Emp;
         End
      End
      Else If AnsiUpperCase( UpperCase( fDataSet.ClassName ) ) = AnsiUpperCase( Trim( 'TSQLDATASET' ) ) Then
      Begin
         lsTemp := UpperCase( Trim( TSQLDataSet( fDataSet ).CommandText ) );
         If Pos( 'SELECT', lsTemp ) = 1 Then
         Begin
            lsTabela := '';
            For liCont := 0 To Length( lsTemp ) Do
            Begin
               If ( Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 ) = ' ' ) Or
                  ( Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 ) = ',' ) Then
               Begin
                  Break;
               End;
               lsTabela := lsTabela + Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 );
            End;

            //    Se o nome da tabela estiver na lista de tabelas que ignorará o
            // COD_EMP saia da rotina
            //If frmPrincipal.lstIgnoraCOD_EMP.Items.IndexOf( UpperCase( lsTabela ) ) <> -1 Then
              // Exit;

            lsTemp2 := '';
            If Pos( ' GROUP ', lsTemp ) > 0 Then
            Begin
               lsTemp2 := Copy( lsTemp, Pos( ' GROUP ', lsTemp ), Length( lsTemp ) );
               Delete( lsTemp, Pos( ' GROUP ', lsTemp ), Length( lsTemp ) );
            End
            Else If Pos( ' ORDER ', lsTemp ) > 0 Then
            Begin
               lsTemp2 := Copy( lsTemp, Pos( ' ORDER ', lsTemp ), Length( lsTemp ) );
               Delete( lsTemp, Pos( ' ORDER ', lsTemp ), Length( lsTemp ) );
            End;
            TSQLDataSet( fDataSet ).CommandText := 'SELECT * FROM ' + lsTabela + ' WHERE 1=2';
            TSQLDataSet( fDataSet ).FieldDefs.Clear;
            TSQLDataSet( fDataSet ).FieldDefs.Update;
            If TSQLDataSet( fDataSet ).FieldDefs.IndexOf( 'Cod_Emp' ) > -1 Then
            Begin
               If fsTabelas = '' Then
               Begin
                  If Pos( 'WHERE', lsTemp ) > 0 Then
                     lsTemp := lsTemp + ' And Cod_Emp=:parCod_Emp '
                  Else
                     lsTemp := lsTemp + ' WHERE Cod_Emp=:parCod_Emp ';
               End
               Else
               Begin
                  fsTabelas := fsTabelas + ';';
                  While Length( fsTabelas ) > 0 Do
                  Begin
                     If Pos( 'WHERE', lsTemp ) > 0 Then
                        lsTemp := lsTemp + ' And ' + Copy( fsTabelas, 1, Pos( ';', fsTabelas ) - 1 ) + '.Cod_Emp=:parCod_Emp '
                     Else
                        lsTemp := lsTemp + ' WHERE ' + Copy( fsTabelas, 1, Pos( ';', fsTabelas ) - 1 ) + 'Cod_Emp=:parCod_Emp ';
                     Delete( fsTabelas, 1, Pos( ';', fsTabelas ) );
                  End;
               End;
            End;
            lsTemp := lsTemp + ' ' + lsTemp2;
            TSQLDataSet( fDataSet ).CommandText := lsTemp;
            If TSQLDataSet( fDataSet ).Params.FindParam( 'parCod_Emp' ) <> Nil Then
               TSQLDataSet( fDataSet ).ParamByName( 'parCod_Emp' ).AsString := fsCod_Emp;
         End
         Else If Pos( 'DELETE', lsTemp ) = 1 Then
         Begin
            lsTabela := '';
            For liCont := 0 To Length( lsTemp ) Do
            Begin
               If ( Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 ) = ' ' ) Or
                  ( Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 ) = ',' ) Then
               Begin
                  Break;
               End;
               lsTabela := lsTabela + Copy( lsTemp, Pos( 'FROM ', lsTemp ) + 5 + liCont, 1 );
            End;

            //    Se o nome da tabela estiver na lista de tabelas que ignorará o
            // COD_EMP saia da rotina
            //If frmPrincipal.lstIgnoraCOD_EMP.Items.IndexOf( UpperCase( lsTabela ) ) <> -1 Then
              // Exit;

            TSQLQuery( fDataSet ).SQL.Text := 'SELECT * FROM ' + lsTabela + ' WHERE 1=2';
            TSQLQuery( fDataSet ).FieldDefs.Clear;
            TSQLQuery( fDataSet ).FieldDefs.Update;
            If TSQLQuery( fDataSet ).FieldDefs.IndexOf( 'Cod_Emp' ) > -1 Then
            Begin
               If Pos( 'WHERE', lsTemp ) > 0 Then
                  lsTemp := lsTemp + ' And Cod_Emp=:parCod_Emp '
               Else
                  lsTemp := lsTemp + ' WHERE Cod_Emp=:parCod_Emp ';
            End;
            TSQLQuery( fDataSet ).SQL.Text := lsTemp;
            If TSQLQuery( fDataSet ).Params.FindParam( 'parCod_Emp' ) <> Nil Then
               TSQLQuery( fDataSet ).ParamByName( 'parCod_Emp' ).AsString := fsCod_Emp;
         End;
      End
      Else If ( UpperCase( fDataSet.ClassName ) = 'TTABLE' ) Or
              ( UpperCase( fDataSet.ClassName ) = 'TADOTABLE' ) Or
              ( UpperCase( fDataSet.ClassName ) = 'TSQLTABLE' ) Or
              ( UpperCase( fDataSet.ClassName ) = 'TIBTABLE' ) Then
      Begin
         fDataSet.Filter   := 'Cod_Emp=' + QuotedStr( fsCod_Emp );
         fDataSet.Filtered := True;
      End;
   End;
End;
Function CNPJ_Check(cNumber: String; prbMostraMsg: boolean = true):Boolean;
Var aR: Array[1..8]  Of Real;
    aM: Array[1..12] Of Real;
    nBase: Real;
    I: Integer;
    cVar1, cVar2:String[10];
    cVar3,cVar4,cVar5,cLixo:String;
begin
   cNumber := Trim( cNumber );
   If Length( cNumber ) <> 14 Then
   Begin
      Result := False;
      Exit;
   End;

   if cNumber = IncDigito( '', Copy( cNumber, 1, 1 ), 14, 0 ) then
   begin
      Result := False;
      Exit;
   end;

   cVar5 := '0123456789';
   cLixo := cNumber;

   cVar3 := '';
   For i := 1 To length (cLixo) Do
   Begin
      cVar4 := Copy (cLixo,i,1);
      If Pos (cVar4,cVar5) > 0 Then
         cVar3 := cVar3+Copy (cLixo,i,1);
   End;
   cLixo := cVar3;

   nBase := 11;
   For i := 1 To 12 Do
      aM[i] := StrtoInt (Copy (cLixo,i,1));

   aR[01] := (5*aM[01]);
   aR[01] := aR[01]+(4*aM[02]);
   aR[01] := aR[01]+(3*aM[03]);
   aR[01] := aR[01]+(2*aM[04]);
   aR[01] := aR[01]+(9*aM[05]);
   aR[01] := aR[01]+(8*aM[06]);
   aR[01] := aR[01]+(7*aM[07]);
   aR[01] := aR[01]+(6*aM[08]);
   aR[01] := aR[01]+(5*aM[09]);
   aR[01] := aR[01]+(4*aM[10]);
   aR[01] := aR[01]+(3*aM[11]);
   aR[01] := aR[01]+(2*aM[12]);

   aR[02] := aR[01]/nBase;
   aR[03] := Int (aR[02])*nBase;
   aR[04] := aR[01]-aR[03];

   If (aR[04] = 0) Or (aR[04] = 1) Then
      aR[06] := 0
   Else
      aR[06] := nBase-aR[04];

   aR[01] := (6*aM[01]);
   aR[01] := aR[01]+(5*aM[02]);
   aR[01] := aR[01]+(4*aM[03]);
   aR[01] := aR[01]+(3*aM[04]);
   aR[01] := aR[01]+(2*aM[05]);
   aR[01] := aR[01]+(9*aM[06]);
   aR[01] := aR[01]+(8*aM[07]);
   aR[01] := aR[01]+(7*aM[08]);
   aR[01] := aR[01]+(6*aM[09]);
   aR[01] := aR[01]+(5*aM[10]);
   aR[01] := aR[01]+(4*aM[11]);
   aR[01] := aR[01]+(3*aM[12]);
   aR[01] := aR[01]+(2*aR[06]);

   aR[02] := aR[01]/nBase;
   aR[03] := Int (aR[02])*nBase;
   aR[05] := aR[01]-aR[03];

   If (aR[05] = 0) Or (aR[05] = 1) Then
      aR[07] := 0
   Else
      aR[07] := nBase-aR[05];

   Str (aR[06]:10:0,cVar1);
   Str (aR[07]:10:0,cVar2);

   cVar3 := copy (Trim (cVar1),1,1)+copy (Trim (cVar2),1,1);
   CNPJ_Check := true;
   If cVar3 <> Copy (cLixo,13,2) Then
   Begin
      MessageBeep (MB_ICONQUESTION);
      if prbMostraMsg then
         CaixaMensagem ( 'CGC Incorreto!', ctAviso, [ cbOk ], 0);
      CNPJ_Check := False;
   End;
end;

Function Cpf_Check(cNumber:String; prbMostraMsg: boolean = true):Boolean;
Var cCheckDigit, cSubCpf, cLixo, cVar2:String;
    nDivisor, nTemp, nTemp2, nAcumula, nNumber1, nNumber2, I, V:Integer;
    cVar1:String[10];
begin
   cNumber := Trim( cNumber );
   If Length( cNumber ) <> 11 Then
   Begin
      Result := False;
      Exit;
   End;

   if cNumber = IncDigito( '', Copy( cNumber, 1, 1 ), 11, 0 ) then
   begin
      Result := False;
      Exit;
   end;

   cCheckDigit := '';
   nDivisor    := 0;
   nNumber1    := 2;
   nNumber2    := 10;
   cLixo       := cNumber;

   cVar2       := '';
   For I := 1 To Length (cLixo) Do
   Begin // Adicionado se der problema apagar
      If Pos (Copy (cLixo,i,1),'0123456789' ) > 0 Then
         cVar2 := cVar2+Copy (cLixo,i,1);
   End;
   cLixo       := cVar2;
   cSubCpf     := Copy (cLixo,1,9);
   For I := 1 To 2 Do
   Begin
      nAcumula := 0;
      For V := nNumber1 To nNumber2 Do
      Begin
         nTemp    := StrtoInt (Copy (cSubCpf,V-I,1));
         nTemp2   := nNumber2+1+(I-V);
         nTemp    := nTemp*nTemp2;
         nAcumula := nAcumula+nTemp;
      End;

      If I = 2 Then
         nAcumula := nAcumula+(2*nDivisor);

      nDivisor := (nAcumula*10) Mod 11;

      If nDivisor = 10 Then
         nDivisor := 0;

      cVar1       := InttoStr (nDivisor);
      {Str (nDivisor:10:0,cVar1);}
      cCheckDigit := cCheckDigit+Trim (cVar1);
      nNumber1    := 3;
      nNumber2    := 11;
   End;

   CPF_Check := True;
   If cCheckDigit <> Copy (cLixo,10,2) Then
   Begin
      MessageBeep (MB_ICONQUESTION);
      if prbMostraMsg then
         CaixaMensagem ( 'CPF Incorreto!', ctAviso, [ cbOk ], 0);
      CPF_Check := False;
   End;
end;

Function VerCopia( fVlrAPesq: String; fCampo: String; fTabela : String; fSQLConnection : TSQLConnection; fCodEmp: String = ''; prsMostrar: String = '' ): String;
Var lsdtsCopia: TSimpleDataSet;
    lsCampos: string;
Begin
   VerCopia := '';
   lsCampos := fCampo;
   if Trim( prsMostrar ) <> '' then
      lsCampos := lsCampos + ', ' + prsMostrar;

   If Trim( fVlrAPesq ) <> '' Then
   Begin
      lsdtsCopia                     := TSimpleDataSet.Create( Nil );
      lsdtsCopia.Connection          := fSQLConnection;
      lsdtsCopia.DataSet.CommandText := 'Select ' + lsCampos + ' From ' + fTabela +
                                        ' Where ' + fCampo + '=:par1';
      If Trim( fCodEmp ) <> '' Then
      Begin
         lsdtsCopia.DataSet.CommandText := 'Select ' + lsCampos + ' From ' + fTabela +
                                           ' Where ' + fCampo + '=:par1';
         TrataSQL( lsdtsCopia, fCodEmp );
      End;
      lsdtsCopia.DataSet.ParamByName( 'par1' ).AsString         := fVlrAPesq;
      lsdtsCopia.Open;

      VerCopia    := lsdtsCopia.FieldByName( fCampo ).AsString;
      if Trim( prsMostrar ) <> '' then
         VerCopia := lsdtsCopia.FieldByName( prsMostrar ).AsString;

      lsdtsCopia.Close;
      FreeAndNil( lsdtsCopia );
   End;
End;


function TParametros.Ler( fsCod_Emp: String; fsChave: String; fsCampo: String; fvValor : Variant; fsEstacao : String = ''  ) : Variant;
Var lqryConfiguracoes : TSQLQuery;
    ldspConfiguracoes : TDataSetProvider;
    lcdsConfiguracoes : TClientDataSet;

    lsFiltro: string;
begin
   Ler := Trim( fvValor );

   lsFiltro := '';
   if Trim( fsEstacao ) <> '' then
      lsFiltro := lsFiltro + ' AND Estacao=' + QuotedStr( UpperCase( Trim( fsEstacao ) ) );
   if Trim( fsCod_Emp ) <> '' then
      lsFiltro := lsFiltro + ' AND Cod_Emp=' + QuotedStr( Trim( fsCod_Emp ) );

   lqryConfiguracoes               := TSQLQuery.Create( Application );
   lqryConfiguracoes.SQLConnection := frmPrincipal.dbxPrincipal;
   lqryConfiguracoes.SQL.Text      := 'SELECT Descricao, Valor ' +
                                      'FROM T_Parametros ' +
                                      'WHERE Chave=:parChave And '+
                                      '      Descricao=:parDescricao ' + lsFiltro;
   lqryConfiguracoes.ParamByName( 'parChave' ).AsString     := UpperCase( Trim( fsChave ) );
   lqryConfiguracoes.ParamByName( 'parDescricao' ).AsString := UpperCase( Trim( fsCampo ) );

   ldspConfiguracoes         := TDataSetProvider.Create( Application );
   ldspConfiguracoes.DataSet := lqryConfiguracoes;
   ldspConfiguracoes.Name    := 'ldspConfiguracoes';

   lcdsConfiguracoes              := TClientDataSet.Create( Application );
   lcdsConfiguracoes.ProviderName := ldspConfiguracoes.Name;
   Try
      lcdsConfiguracoes.Open;
      If Trim( lcdsConfiguracoes.FieldByName( 'Valor' ).AsString ) <> '' Then
         Ler := Trim( lcdsConfiguracoes.FieldByName( 'Valor' ).AsString );
   Except
      On E: Exception Do
      Begin
         lcdsConfiguracoes.Close;
         FreeAndNil( lcdsConfiguracoes );

         FreeAndNil( ldspConfiguracoes );

         lqryConfiguracoes.Close;
         FreeAndNil( lqryConfiguracoes );

         CaixaMensagem( 'Não foi possível verificar os parâmetros gerais! ' + E.Message, ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;
   lcdsConfiguracoes.Close;
   FreeAndNil( lcdsConfiguracoes );

   FreeAndNil( ldspConfiguracoes );

   lqryConfiguracoes.Close;
   FreeAndNil( lqryConfiguracoes );
end;

function TParametros.Gravar( fsCod_Emp: String; fsChave: String; fsCampo: String; fvValor: Variant; fsOperador: String; fsEstacao: String = '' ) : Variant;
Var lqryConfiguracoes : TSQLQuery;
    ldspConfiguracoes : TDataSetProvider;
    lcdsConfiguracoes : TClientDataSet;
    lbEncontrado      : Boolean;
begin
   Self.RetornoOk := False;
   If Trim( fsEstacao ) = '' Then
   Begin
      lqryConfiguracoes               := TSQLQuery.Create( Application );
      lqryConfiguracoes.SQLConnection := frmPrincipal.dbxPrincipal;
      lqryConfiguracoes.SQL.Text      := 'Select Descricao From T_Parametros ' +
                                         'Where Cod_Emp=:parCod_Emp And '+
                                         '      Chave=:parChave And '+
                                         '      Descricao=:parDescricao';
      lqryConfiguracoes.ParamByName( 'parCod_Emp' ).AsString   := fsCod_Emp;
      lqryConfiguracoes.ParamByName( 'parChave' ).AsString     := UpperCase( Trim( fsChave ) );
      lqryConfiguracoes.ParamByName( 'parDescricao' ).AsString := UpperCase( Trim( fsCampo ) );
   End
   Else
   Begin
      lqryConfiguracoes               := TSQLQuery.Create( Application );
      lqryConfiguracoes.SQLConnection := frmPrincipal.dbxPrincipal;
      lqryConfiguracoes.SQL.Text      := 'Select Descricao From T_Parametros ' +
                                         'Where Cod_Emp=:parCod_Emp And '+
                                         '      Chave=:parChave And '+
                                         '      Descricao=:parDescricao And '+
                                         '      Estacao=:parEstacao';
      lqryConfiguracoes.ParamByName( 'parCod_Emp' ).AsString   := fsCod_Emp;
      lqryConfiguracoes.ParamByName( 'parChave' ).AsString     := UpperCase( Trim( fsChave ) );
      lqryConfiguracoes.ParamByName( 'parDescricao' ).AsString := UpperCase( Trim( fsCampo ) );
      lqryConfiguracoes.ParamByName( 'parEstacao' ).AsString   := UpperCase( Trim( fsEstacao ) );
   End;
   ldspConfiguracoes         := TDataSetProvider.Create( Application );
   ldspConfiguracoes.DataSet := lqryConfiguracoes;
   ldspConfiguracoes.Name    := 'ldspConfiguracoes';

   lcdsConfiguracoes              := TClientDataSet.Create( Application );
   lcdsConfiguracoes.ProviderName := ldspConfiguracoes.Name;
   Try
      lcdsConfiguracoes.Open;
      lbEncontrado := NOT lcdsConfiguracoes.IsEmpty;
   Except
      On E: Exception Do
      Begin
         lcdsConfiguracoes.Close;
         FreeAndNil( lcdsConfiguracoes );

         FreeAndNil( ldspConfiguracoes );

         lqryConfiguracoes.Close;
         FreeAndNil( lqryConfiguracoes );

         CaixaMensagem( 'Não foi possível verificar as configurações gerais! ' + E.Message, ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;
   lcdsConfiguracoes.Close;
   FreeAndNil( lcdsConfiguracoes );

   FreeAndNil( ldspConfiguracoes );

   lqryConfiguracoes.Close;
   FreeAndNil( lqryConfiguracoes );

   lqryConfiguracoes               := TSQLQuery.Create( Application );
   lqryConfiguracoes.SQLConnection := frmPrincipal.dbxPrincipal;
   If NOT lbEncontrado Then
   Begin
      lqryConfiguracoes.SQL.Text := ConstruirSQL( tsInsert, 'T_Parametros',
                                    'Cod_Emp;Chave;Descricao;Valor;Estacao;'+
                                    'Data_Cad;Operador', '' );
      lqryConfiguracoes.ParamByName( 'parCod_Emp' ).AsString        := fsCod_Emp;
      lqryConfiguracoes.ParamByName( 'parChave' ).AsString          := UpperCase( Trim( fsChave ) );
      lqryConfiguracoes.ParamByName( 'parDescricao' ).AsString      := UpperCase( Trim( fsCampo ) );
      lqryConfiguracoes.ParamByName( 'parValor' ).AsString          := Trim( fvValor );
      lqryConfiguracoes.ParamByName( 'parEstacao' ).AsString        := UpperCase( Trim( fsEstacao ) );
      lqryConfiguracoes.ParamByName( 'parData_Cad' ).AsSQLTimeStamp := DateTimeToSQLTimeStamp( Now );
      lqryConfiguracoes.ParamByName( 'parOperador' ).AsString       := Trim( fsOperador );
   End
   Else
   Begin
      If Trim( fsEstacao ) = '' Then
      Begin
         lqryConfiguracoes.SQL.Text := ConstruirSQL( tsUpdate, 'T_Parametros',
                                       'Valor;Data_Atu;Operador', 'Cod_Emp;Chave;Descricao' );
         lqryConfiguracoes.ParamByName( 'parValor' ).AsString          := Trim( fvValor );
         lqryConfiguracoes.ParamByName( 'parData_Atu' ).AsSQLTimeStamp := DateTimeToSQLTimeStamp( Now );
         lqryConfiguracoes.ParamByName( 'parOperador' ).AsString       := Trim( fsOperador );
         lqryConfiguracoes.ParamByName( 'parWCod_Emp' ).AsString       := fsCod_Emp;
         lqryConfiguracoes.ParamByName( 'parWChave' ).AsString         := UpperCase( Trim( fsChave ) );
         lqryConfiguracoes.ParamByName( 'parWDescricao' ).AsString     := UpperCase( Trim( fsCampo ) );
      End
      Else
      Begin
         lqryConfiguracoes.SQL.Text := ConstruirSQL( tsUpdate, 'T_Parametros',
                                       'Valor;Data_Atu;Operador',
                                       'Cod_Emp;Chave;Descricao;Estacao' );
         lqryConfiguracoes.ParamByName( 'parValor' ).AsString          := Trim( fvValor );
         lqryConfiguracoes.ParamByName( 'parData_Atu' ).AsSQLTimeStamp := DateTimeToSQLTimeStamp( Now );
         lqryConfiguracoes.ParamByName( 'parOperador' ).AsString       := Trim( fsOperador );
         lqryConfiguracoes.ParamByName( 'parWCod_Emp' ).AsString       := fsCod_Emp;
         lqryConfiguracoes.ParamByName( 'parWChave' ).AsString         := UpperCase( Trim( fsChave ) );
         lqryConfiguracoes.ParamByName( 'parWDescricao' ).AsString     := UpperCase( Trim( fsCampo ) );
         lqryConfiguracoes.ParamByName( 'parwEstacao' ).AsString       := UpperCase( Trim( fsEstacao ) );
      End;
   End;
   lqryConfiguracoes.ExecSQL;
   FreeAndNil( lqryConfiguracoes );

   Self.RetornoOk := True;
end;

constructor TParametros.Create;
Var llstTabelas        : TStringList;
    lbTabelaEncontrada : Boolean;
    lqryModific        : TSQLQuery;
begin
   inherited;

   llstTabelas        := TStringList.Create;
   //llstTabelas        := BuscaTabelas( frmPrincipal.dbxPrincipal );
   //lbTabelaEncontrada := llstTabelas.IndexOf( 'T_PARAMETROS' ) <> -1;
   lbTabelaEncontrada   := True;
   FreeAndNil( llstTabelas );
   If NOT lbTabelaEncontrada Then
   Begin
      //frmMenu.StatusMenu.Panels[ 0 ].Text := 'Criando a tabela de Parâmetros...';
      //frmMenu.StatusMenu.Update;
      lqryModific               := TSQLQuery.Create( Application );
      lqryModific.SQLConnection := frmPrincipal.dbxPrincipal;
      lqryModific.SQL.Text      := 'Create Table T_PARAMETROS (CHAVE VARCHAR (30), '+
                                   'COD_EMP VARCHAR (3), CODIGO SMALLINT, DATA_ATU DATETIME, '+
                                   'DATA_CAD DATETIME, DESCRICAO VARCHAR (255), ESTACAO VARCHAR (30), '+
                                   'OPERADOR VARCHAR (20), VALOR VARCHAR (255))';
      Try
         lqryModific.ExecSQL;
      Except
         On E: Exception Do
         Begin
            FreeAndNil( lqryModific );
            CaixaMensagem( 'Não foi possível criar a tabela de parâmetros!' + E.Message, ctAviso, [ cbOk ], 0 );
            Application.Terminate;
            Exit;
         End;
      End;
      FreeAndNil( lqryModific );
   End;
end;

procedure TParametros.SetRetornoOk(const Value: Boolean);
begin
  FRetornoOK := Value;
end;

Function ConstruirSQL( fTipoSQL : TTipoSQL; fsTabela, fsCampos : String; fsRestricao  : String = ''; fsCodCap  : String = '' ) : String;
Var lsCampos, lsParametros : String;
Begin
   If fTipoSQL = tsSelect Then
   Begin
      lsCampos := fsCampos;
      While Pos( ';', lsCampos ) > 0 Do
      Begin
         Insert( ', ', lsCampos, Pos( ';', lsCampos ) );
         Delete( lsCampos, Pos( ';', lsCampos ), 1 );
      End;
      fsRestricao := fsRestricao + ';';
      While Length( fsRestricao ) > 0 Do
      Begin
         lsParametros := lsParametros + ' And ' + Copy( fsRestricao, 1, Pos( ';', fsRestricao ) - 1 ) + '=:parW' + Copy( fsRestricao, 1, Pos( ';', fsRestricao ) - 1 );
         Delete( fsRestricao, 1, Pos( ';', fsRestricao ) );
      End;
      Delete( lsParametros, 1, 4 );
      Result := 'Select ' + lsCampos + ' FROM ' + fsTabela;
      If Length( lsParametros ) > 0 Then
         Result := 'Select ' + lsCampos + ' FROM ' + fsTabela + ' WHERE ' + lsParametros;
   End
   Else If fTipoSQL = tsInsert Then
   Begin
      lsCampos := fsCampos;
      While Pos( ';', lsCampos ) > 0 Do
      Begin
         Insert( ', ', lsCampos, Pos( ';', lsCampos ) );
         Delete( lsCampos, Pos( ';', lsCampos ), 1 );
      End;
      lsParametros := fsCampos;
      While Pos( ';', lsParametros ) > 0 Do
      Begin
         Insert( ', :par', lsParametros, Pos( ';', lsParametros ) );
         Delete( lsParametros, Pos( ';', lsParametros ), 1 );
      End;
      Result := 'Insert Into ' +  fsTabela + ' ( ' + lsCampos + ' ) Values ( :par' + lsParametros + ' )'
   End
   Else If fTipoSQL = tsUpdate Then
   Begin
      fsCampos := fsCampos + ';';
      While Length( fsCampos ) > 0 Do
      Begin
         lsCampos := lsCampos + ', ' + Copy( fsCampos, 1, Pos( ';', fsCampos ) - 1 ) + '=:par' + Copy( fsCampos, 1, Pos( ';', fsCampos ) - 1 );
         Delete( fsCampos, 1, Pos( ';', fsCampos ) );
      End;
      Delete( lsCampos, 1, 2 );

      fsRestricao := fsRestricao + ';';
      While Length( fsRestricao ) > 0 Do
      Begin
         lsParametros := lsParametros + ' And ' + Copy( fsRestricao, 1, Pos( ';', fsRestricao ) - 1 ) + '=:parW' + Copy( fsRestricao, 1, Pos( ';', fsRestricao ) - 1 );
         Delete( fsRestricao, 1, Pos( ';', fsRestricao ) );
      End;
      Delete( lsParametros, 1, 4 );
      Result := 'Update ' +  fsTabela + ' Set ' + lsCampos + ' Where ' + lsParametros;
   End;
End;

function Seg2Horas( frQtdeSegundos: Real; fbExibirSegundos : Boolean): String;
var liHoras, liMinutos : Integer;
begin
   if frQtdeSegundos = 0 then
   begin
      Seg2Horas := '00:00';
      If fbExibirSegundos then
         Seg2Horas := '00:00:00';
   end
   else
   begin
      liHoras     := Trunc( frQtdeSegundos / 3600 );
      frQtdeSegundos := ( frQtdeSegundos - ( 3600 * liHoras ) );
      liMinutos   := Trunc( frQtdeSegundos / 60 );
      frQtdeSegundos := ( frQtdeSegundos - ( 60 * liMinutos ) );

      Result := FormatFloat( '00', liHoras) + ':' + FormatFloat( '00', liMinutos );
      If fbExibirSegundos then
         Result := FormatFloat( '00', liHoras) + ':' + FormatFloat( '00', liMinutos )+':' + FormatFloat( '00', frQtdeSegundos );
   end;
end;

function VericaAcesso (priCod_Perfil : Integer; prsMenu : String ; prsItemMenu : String ) : Boolean;
Var lqrypesquisa  : TSQLQuery;
    lcdspesquisa  : TClientDataSet;
    ldspPesquisa  : TDataSetProvider;
Begin
{
   Try

     lqryPesquisa                     := TSQLQuery.Create( Application );
     lqryPesquisa.SqlConnection       := frmPrincipal.dbxPrincipal;
     lqryPesquisa.Params.Clear;
     lqryPesquisa.sql.text := 'Select Acesso From T_AcessosPErfil '+
                              'Where Cod_Perfil=:parCod_Perfil and Menu=:parMenu and Item=:parItem ';
     lqryPesquisa.ParamByName('parCod_PErfil').AsInteger :=
     lqryPesquisa.ParamByName('parMenu').AsString        :=
     lqryPesquisa.ParamByName('parItem').AsString        :=

     ldspPesquisa         := TDataSetProvider.Create(Application);
     ldspPesquisa.dataSet := lqryPesquisa;
     ldspPesquisa.Name    := 'cdsPesquisa';
     lcdspesquisa         := TClientDataSet.Create(Application);

     lcdspesquisa.Close;
     lcdspesquisa.ProviderName :=ldspPesquisa.Name;
     lcdspesquisa.Open;
     if lcdspesquisa.IsEmpty then
        Result := 'Nada Consta'
     Else
        Result := lcdsPesquisa.FieldByname('Controle').AsString;

   Finally
      FreeAndNil(lcdspesquisa);
      FreeAndNil(ldspPesquisa);
      FreeAndNil(lqryPesquisa);
   End;

 }
End;

function DifHoras( prdDataI, prdDataF: TDate; prtHoraI, prtHoraF: TTime ): Integer;
var lwHoraI, lwMinI, lwSegI, lwMSegI: Word;
    lwHoraF, lwMinF, lwSegF, lwMSegF: Word;
    lrSeg1, lrSeg2: Real;
    lrDias: Real;
begin
   if ( TimeToStr( prtHoraI ) = '00:00:00' ) or ( TimeToStr( prtHoraF ) = '00:00:00' ) then
      Result := 0
   else
   begin
      DecodeTime( prtHoraI, lwHoraI, lwMinI, lwSegI, lwMSegI);
      DecodeTime( prtHoraF, lwHoraF, lwMinF, lwSegF, lwMSegF);
      lrSeg1 := ( lwHoraI * 3600 ) + ( lwMinI * 60 ) + lwSegI;
      lrDias := prdDataF - prdDataI;
      if ( prtHoraI > prtHoraF) or ( lrDias > 0 ) then
         lrSeg2 := ( ( 86400 * lrDias ) + ( lwHoraF * 3600 ) ) + ( lwMinF * 60) + lwSegF
      else
         lrSeg2 := ( lwHoraF * 3600 )  + ( lwMinF * 60 ) + lwSegF;
      Result := Round( lrSeg2 - lrSeg1 );
   end;
end;

Function TemVendaAberta( fsCod_Cliente : String  ): String;
Var lqrypesquisa  : TSQLQuery;
    lcdspesquisa  : TClientDataSet;
    ldspPesquisa  : TDataSetProvider;
Begin
   Try

     lqryPesquisa                     := TSQLQuery.Create( Application );
     lqryPesquisa.SqlConnection       := frmPrincipal.dbxPrincipal;
     lqryPesquisa.Params.Clear;
     lqryPesquisa.sql.text := 'Select Count(Ven.Controle) As Total,Max(Ven.Controle) as Controle from T_Ctasreceber Rec '+
                              '   Inner Join T_vendas Ven on ' +
                              '         Ven.Seqvenda=Rec.Seqvenda '+
                              'Where Rec.Cod_Cliente=:parcod_Cliente and Rec.Status=:parStatus '+
                              'Group by Ven.Cod_Cliente ';

     lqryPesquisa.ParamByName('parCod_Cliente').AsString := fsCod_Cliente;
     lqryPesquisa.ParamByName('parStatus').AsString      := '0';

     ldspPesquisa         := TDataSetProvider.Create(Application);
     ldspPesquisa.dataSet := lqryPesquisa;
     ldspPesquisa.Name    := 'cdsPesquisa';
     lcdspesquisa         := TClientDataSet.Create(Application);

     lcdspesquisa.Close;
     lcdspesquisa.ProviderName :=ldspPesquisa.Name;
     lcdspesquisa.Open;
     if lcdspesquisa.IsEmpty then
        Result := 'Nada Consta'
     Else
        Result := lcdsPesquisa.FieldByname('Controle').AsString;

   Finally
      FreeAndNil(lcdspesquisa);
      FreeAndNil(ldspPesquisa);
      FreeAndNil(lqryPesquisa);
   End;
End;


{
Function Registro( prsChave: string; prsTipoChave: TTipoRegistro; prvPadrao: Variant; praAcao: TRegAcao ): Variant;
begin
   Registro := prvPadrao;
   if praAcao = raLER then
   begin
      if prsTipoChave= trBinaryData then
      begin
         if regLocalMachine.ValueExists( prsChave ) then
            Registro := regLocalMachine.ReadBinaryData( prsChave, prvPadrao, Length( prvPadrao ) );
      end
      else if prsTipoChave = trBool then
      begin
         if regLocalMachine.ValueExists( prsChave ) then
            Registro := regLocalMachine.ReadBool( prsChave );
      end
      else if prsTipoChave = trCurrency then
      begin
         if regLocalMachine.ValueExists( prsChave ) then
            Registro := regLocalMachine.ReadCurrency( prsChave );
      end
	    else if prsTipoChave = trDate then
      begin
         if regLocalMachine.ValueExists( prsChave ) then
            Registro := regLocalMachine.ReadDate( prsChave );
      end
	    else if prsTipoChave = trDateTime then
      begin
         if regLocalMachine.ValueExists( prsChave ) then
            Registro := regLocalMachine.ReadDateTime( prsChave );
      end
	    else if prsTipoChave = trFloat then
      begin
         if regLocalMachine.ValueExists( prsChave ) then
            Registro := regLocalMachine.ReadFloat( prsChave );
      end
	    else if prsTipoChave = trInteger then
      begin
         if regLocalMachine.ValueExists( prsChave ) then
            Registro := regLocalMachine.ReadInteger( prsChave );
      end
	    else if prsTipoChave = trString then
      begin
         if regLocalMachine.ValueExists( prsChave ) then
            Registro := regLocalMachine.ReadString( prsChave );
      end
	    else if prsTipoChave = trTime then
      begin
         if regLocalMachine.ValueExists( prsChave ) then
            Registro := regLocalMachine.ReadTime( prsChave );
      end;
   end
   else if praAcao = raGRAVAR then
   begin
      if prsTipoChave = trBinaryData then
          regLocalMachine.WriteBinaryData( prsChave, prvPadrao, Length( prvPadrao ) )

      else if prsTipoChave = trBool then
         regLocalMachine.WriteBool( prsChave, prvPadrao )

      else if prsTipoChave = trCurrency then
         regLocalMachine.WriteCurrency( prsChave, prvPadrao )

		  else if prsTipoChave = trDate then
         regLocalMachine.WriteDate( prsChave, prvPadrao )

		  else if prsTipoChave = trDateTime then
         regLocalMachine.WriteDateTime( prsChave, prvPadrao )

		  else if prsTipoChave = trFloat then
         regLocalMachine.WriteFloat( prsChave, prvPadrao )

		  else if prsTipoChave = trInteger then
         regLocalMachine.WriteInteger( prsChave, prvPadrao )

		  else if prsTipoChave = trString then
         regLocalMachine.WriteString( prsChave, prvPadrao )

		  else if prsTipoChave = trTime then
         regLocalMachine.WriteTime( prsChave, prvPadrao );
   end;
End;

}

Procedure QuebraLinha( fStr: String; PosIniLinha1, PosIniLinha2 : Integer; PosFinLinha : Integer );
Var liCont : Integer;
Begin
  liCont := PosIniLinha1;
  While liCont > 1 Do
  Begin
     fStr := ' ' + fStr;
     liCont := liCont - 1;
  End;

  gxLinha[ 1 ] := Copy( fStr, 1, PosFinLinha );
  Delete( fStr, 1, PosFinLinha );
  If ( Length( gxLinha[ 1 ] ) = PosFinLinha ) and
     ( Pos( ' ', gxLinha[ 1 ] ) <> 0 ) Then
  Begin
     While Copy( gxLinha[ 1 ], Length( gxLinha[ 1 ] ), 1 ) <> ' ' Do
     Begin
        fStr := Copy( gxLinha[ 1 ], Length( gxLinha[ 1 ] ), 1 ) + fStr;
        Delete( gxLinha[ 1 ], Length( gxLinha[ 1 ] ), 1 );
     End;
  End;

  liCont := PosIniLinha2;
  While liCont > 1 Do
  Begin
     fStr := ' ' + fStr;
     liCont := liCont - 1;
  End;

  gxLinha[ 2 ] := Copy( fStr, 1, PosFinLinha );
  Delete( fStr, 1, PosFinLinha );
  If ( Length( gxLinha[ 2 ] ) = PosFinLinha ) and
     ( Pos( ' ', gxLinha[ 2 ] ) <> 0 ) Then
  Begin
     While Copy( gxLinha[ 2 ], Length( gxLinha[ 2 ] ), 1 ) <> ' ' Do
     Begin
        fStr := Copy( gxLinha[ 2 ], Length( gxLinha[ 2 ] ), 1 ) + fStr;
        Delete( gxLinha[ 2 ], Length( gxLinha[ 2 ] ), 1 );
     End;
  End;

  liCont := PosIniLinha2;
  While liCont > 1 Do
  Begin
     fStr := ' ' + fStr;
     liCont := liCont - 1;
  End;

  gxLinha[ 3 ] := Copy( fStr, 1, PosFinLinha );
  Delete( fStr, 1, PosFinLinha );
  If ( Length( gxLinha[ 3 ] ) = PosFinLinha ) and
     ( Pos( ' ', gxLinha[ 3 ] ) <> 0 ) Then
  Begin
     While Copy( gxLinha[ 3 ], Length( gxLinha[ 3 ] ), 1 ) <> ' ' Do
     Begin
        fStr := Copy( gxLinha[ 3 ], Length( gxLinha[ 3 ] ), 1 ) + fStr;
        Delete( gxLinha[ 3 ], Length( gxLinha[ 3 ] ), 1 );
     End;
  End;

  liCont := PosIniLinha2;
  While liCont > 1 Do
  Begin
     fStr := ' ' + fStr;
     liCont := liCont - 1;
  End;
  gxLinha[ 4 ] := fStr;
End;



end.
