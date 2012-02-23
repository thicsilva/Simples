unit uClassVenda;

interface

uses RDprint,DBClient,SysUtils,Classes,
     uClassEmpresa,uClassFuncionario,uClassFormaPagamento,uClassCliente,
  Graphics;

type TVenda = class
  Private
    FLinha   : Integer;
    FEmpresa : TEmpresa;
    FFuncionario: TFuncionario;
    FFormaPagamento: TFormaPagamento;
    FCliente: TCliente;
    FNumerovias: Integer;
    procedure SetEmpresa(const Value: TEmpresa);
    procedure SetFuncionario(const Value: TFuncionario);
    procedure SetFormaPagamento(const Value: TFormaPagamento);
    procedure SetCliente(const Value: TCliente);
    procedure SetNumerovias(const Value: Integer);
  public
     Constructor Create;
     procedure Imprimir(DadosVendas : TClientDataSet; DadosItensVendas : TClientDataSet;  prTotalPago : Real; impMatricial : TRDPrint );
     procedure ImprimirMatricial(DadosVendas,DadosItensVendas : TClientDataSet;CaminhoImpressora : String);
     procedure ImprimirBematec(DadosVendas, DadosItensVendas: TClientDataSet; CaminhoImpressora: String; prTotalPago : Real);
     procedure ComprovanteDeEntrega(CaminhoImpressora : String);
     property Empresa : TEmpresa read FEmpresa write SetEmpresa;
     property Funcionario : TFuncionario read FFuncionario write SetFuncionario;
     property FormaPagamento : TFormaPagamento read FFormaPagamento write SetFormaPagamento;
     property Cliente : TCliente read FCliente write SetCliente;
     property Numerovias : Integer read FNumerovias write SetNumerovias;
end;

implementation

uses ufuncoes;

{ TVenda }

procedure TVenda.ComprovanteDeEntrega(CaminhoImpressora : String);
const
    sComando = #27 + #109;
  var F: TextFile;
     lrTot_Produtos : Real;
     lrTot_Desconto : Real;
     liCont         : Integer;
     c17cpi         : String;
     EscDraft       : string;
  I: Integer;
begin
  for I := 0 to Self.Numerovias-1 do
  begin
     AssignFile(F, CaminhoImpressora  );
     Rewrite(F);
     WriteLn(F, '',IncDigito( '_','_',39,0));
     WriteLn(F, '','Emitido em :' + FormatDatetime( 'dd/mm/yyyy hh:mm:ss', Now ) );
     WriteLn(F, '',IncDigito( '-','-',39,0));
     WriteLn(F, '','     Comprovante de Entrega');

     WriteLn(F, '',IncDigito( '=', '=', 39, 0 ) );
     WriteLn(F, '', ' ' );
     WriteLn(F, '', ' ' );
     WriteLn(F, '', ' ' );
     WriteLn(F, '', ' ' );
     WriteLn(F, '', ' ' );
     WriteLn(F, '',sComando);
     CloseFile(F);
  end;
end;

constructor TVenda.Create;
begin
   Empresa := TEmpresa.Create;
   Self.NumeroVias := 1;
end;

procedure TVenda.Imprimir(DadosVendas : TClientDataSet; DadosItensVendas : TClientDataSet; prTotalPago : Real; impMatricial : TRDPrint );
var //ImpMatricial   : TrdPrint;
    lrTot_Produtos : Real;
    lrTot_Desconto : Real;
    liCont         : integer;
    Mensagem       : TStringList;
    ItendVendas    : TClientDataSet;
begin
   ImpMatricial := TrdPrint.Create(Nil);
  // InicializarImpressora(ImpMatricial);
   impMatricial.OpcoesPreview.Preview     := False;
   impMatricial.OpcoesPreview.PreviewZoom := 100;
   impMatricial.TamanhoQteLinhas          := 1;
   impMatricial.TamanhoQteColunas         := 39;
   impMatricial.FonteTamanhoPadrao        := S17cpp;
   //impmatricial.Impressora                := Bobina;
   impMatricial.UsaGerenciadorImpr        := True;
   impMatricial.Abrir;

   FLinha := 01;
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '_','_',39,0));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha, 001, 'Emitido em :' + FormatDatetime( 'dd/mm/yyyy hh:mm:ss', Now ) );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',39,0));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,Copy(Empresa.Descricao,1,39));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',39,0));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,010,Copy('Nota de Pagamento',1,39));
   FLinha := FLinha + 1;

   impMatricial.Imp(FLinha,001,IncDigito( '-','-',39,0));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,Copy(inczero(DadosVendas.FieldByName( 'Cod_Cliente' ).AsString,5)+' - '+ DadosVendas.FieldByName( 'Nome_Cliente' ).AsString ,1, 39 ) );
   FLinha := FLinha + 1;

   impMatricial.Imp(FLinha,001,'Emissao...: '+formatdateTime('dd/mm/YYYY',DadosVendas.FieldByName( 'Data_Venda' ).AsDateTime)+' Orc.: '+incZero(DadosVendas.FieldByName( 'SeqVenda' ).AsString,8) );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Forma Pag.: '+Copy(inczero(IntToStr(Self.FormaPagamento.Id),3)+'-'+FormaPagamento.Descricao,1,25));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Vendedor..: '+Copy(inczero(DadosVendas.FieldByName( 'Cod_Funcionario' ).AsString,3)+'-'+Self.Funcionario.Descricao,1,25));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'NºControle: '+inczero(DadosVendas.FieldByName( 'SeqVenda' ).AsString,6) );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '=','=',39,0));
   FLinha := FLinha + 1;
   //                                         1         2         3         4          5
   //                                123456789.123456789.123456789.123456789.123456789.1234
   impMatricial.Imp( FLinha, 001, 'Codigo |P R O D U T O S           |Und|' );
   FLinha := FLinha + 1;
   impMatricial.Imp( FLinha, 001, 'Quatidade|Pc. Unit| Desc.|   Vlr Total|' );
   FLinha := FLinha + 1;
   impMatricial.Imp( FLinha, 001, IncDigito( '=', '=', 39, 0 ) );
   FLinha := FLinha + 1;

   DadosVendas .First;
   lrTot_Produtos := 0;
   lrTot_Desconto := 0;

   licont := 0;
   DadosItensVendas.First;
   While Not DadosItensVendas.Eof Do
   Begin
      impMatricial.Imp ( FLinha, 001, inczero(DadosItensVendas.FieldByName( 'Codigo' ).AsString,5) + ' ' +
                                        Copy( DadosItensVendas.FieldByName( 'Descricao' ).AsString, 1, 30 ) );

      impMatricial.Imp ( FLinha, 037, 'UND');
      FLinha := FLinha + 1;
      impMatricial.ImpD( FLinha, 008, FormatFloat( '#,##0.00',    DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat), [ ] );
      impMatricial.ImpD( FLinha, 019, FormatFloat( '#,##0.00', Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) ), [ ] );
      impMatricial.ImpD( FLinha, 027, FormatFloat( '#,##0.00', DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat * DadosItensVendas .FieldByName( 'Qtde_venda').AsFloat ), [ ] );
      impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00',  Arredondar ( DadosItensVendas.FieldByName( 'Qtde_Venda' ).AsFloat *
                                                                             ( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat -
                                                                                DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat ), 2 ) ) , [ ] );
      lrTot_Produtos := lrTot_Produtos + ( DadosItensVendas.FieldByName( 'Qtde_Venda' ).AsFloat * Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) );
      lrTot_Desconto := lrTot_Desconto + ( DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat * DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat );

      liCont := liCont + 1;
      FLinha := FLinha + 1;
      DadosItensVendas .Next;
   end;
   impMatricial.Imp ( FLinha, 001, IncDigito( '-', '-', 39, 0 ) );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Total de Produtos Listado.: ' );
   impMatricial.ImpD( FLinha, 039, IntToStr( liCont ), [ ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Total dos Produtos........:' );
   impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', lrTot_Produtos ), [ ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Desconto Total ...........:' );
   impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', lrTot_Desconto ), [ ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Valor Total...............:');
   impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', ( lrTot_Produtos - lrTot_Desconto ) ), [ ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, IncDigito( '=', '=', 39, 0 ) );
   FLinha := FLinha + 1;

   if prTotalPago>0 then
   begin
      impMatricial.Imp ( FLinha, 001, 'Valor Pago......:');
      impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', prTotalPago  ), [ ] );
      FLinha := FLinha + 1;
      if (( lrTot_Produtos - lrTot_Desconto ) - prTotalPago) > 0 then
      begin
        impMatricial.Imp ( FLinha, 001, 'A Pagar Entrega:');
        impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', ( ( lrTot_Produtos - lrTot_Desconto ) - prTotalPago)  ), [] );
        FLinha := FLinha + 1;
      end;
   end;

   if  FormaPagamento.ImprimeMensagem Then
   Begin
      impMatricial.Imp ( FLinha, 001, FormaPagamento.Mensagem);
      FLinha := FLinha + 1;
      impMatricial.Imp ( FLinha, 001, '___________________________');
      FLinha := FLinha + 1;
      impMatricial.Imp ( FLinha, 001, DadosVendas.FieldByName( 'Nome_Cliente' ).AsString);
      FLinha := FLinha + 1;
      impMatricial.Imp ( FLinha, 001, 'C.P.F..: '+Cliente.CPF);
      FLinha := FLinha + 2;
   End;
   impMatricial.Imp ( FLinha, 001, IncDigito( '=', '=', 39, 0 ) );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, '    DOCUMENTO SEM VALOR FISCAL        ' );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, IncDigito( '=', '=', 39, 0 ) );
   FLinha := FLinha + 5;
   impMatricial.Imp ( FLinha, 001, '.' );
   impMatricial.TamanhoQteLinhas          := FLinha;
   impMatricial.Fechar;
end;

procedure TVenda.ImprimirMatricial(DadosVendas,DadosItensVendas: TClientDataSet; CaminhoImpressora : String);
const
  c17cpi      = #15;
  EscDraft    = #27+'x'+'0';
  var F: TextFile;
     lrTot_Produtos : Real;
     lrTot_Desconto : Real;
     liCont         : Integer;
begin

   AssignFile(F, CaminhoImpressora  );
   Rewrite(F);
   WriteLn(F, '',c17cpi+EscDraft+IncDigito( '_','_',39,0));
   WriteLn(F, '',c17cpi+EscDraft+'Emitido em :' + FormatDatetime( 'dd/mm/yyyy hh:mm:ss', Now ) );
   WriteLn(F, '',c17cpi+EscDraft+IncDigito( '-','-',39,0));
   WriteLn(F, '',c17cpi+EscDraft+Copy(Empresa.Descricao,1,39));
   WriteLn(F, '',c17cpi+EscDraft+IncDigito( '-','-',39,0));
   WriteLn(F, '',c17cpi+EscDraft+Copy('Nota de Pagamento',1,39));
   WriteLn(F, '',c17cpi+EscDraft+IncDigito( '-','-',39,0));
   WriteLn(F, '',c17cpi+EscDraft+Copy(inczero(DadosVendas.FieldByName( 'Cod_Cliente' ).AsString,5)+' - '+ DadosVendas.FieldByName( 'Nome_Cliente' ).AsString ,1, 39 ) );
   WriteLn(F, '',c17cpi+EscDraft+'Emissao...: '+formatdateTime('dd/mm/YYYY',DadosVendas.FieldByName( 'Data_Venda' ).AsDateTime)+' Orc.: '+incZero(DadosVendas.FieldByName( 'SeqVenda' ).AsString,8) );
   WriteLn(F, '',c17cpi+EscDraft+'Forma Pag.: '+Copy(inczero(IntToStr(Self.FormaPagamento.Id),3)+'-'+FormaPagamento.Descricao,1,25));
   WriteLn(F, '',c17cpi+EscDraft+'Vendedor..: '+Copy(inczero(DadosVendas.FieldByName( 'Cod_Funcionario' ).AsString,3)+'-'+Self.Funcionario.Descricao,1,25));
   WriteLn(F, '',c17cpi+EscDraft+'NºControle: '+inczero(DadosVendas.FieldByName( 'SeqVenda' ).AsString,6) );
   WriteLn(F, '',c17cpi+EscDraft+IncDigito( '=','=',39,0));
   WriteLn(F, '',c17cpi+EscDraft+'Codigo |P R O D U T O S           |Und|' );
   WriteLn(F, '',c17cpi+EscDraft+'Quatidade|Pc. Unit| Desc.|   Vlr Total|' );
   WriteLn(F, '',c17cpi+EscDraft+IncDigito( '=', '=', 39, 0 ) );

   lrTot_Produtos := 0;
   lrTot_Desconto := 0;
   liCont         := 0;

   DadosItensVendas.First;
   while  Not DadosItensVendas.Eof  do
   Begin
      WriteLn(F, '', 001, inczero(DadosItensVendas.FieldByName('Codigo' ).AsString,5) + ' ' +
                                        Copy( DadosItensVendas.FieldByName( 'Descricao' ).AsString, 1, 30 ) );

      WriteLn(F, '', DadosItensVendas.FieldByName('Unidade').asString +
                     IncDigito( FormatFloat( '#,##0',DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat),' ',5,0) +
                     IncDigito( FormatFloat( '#,##0.00', Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) ),' ',8,0)+
                     IncDigito( FormatFloat( '#,##0.00', DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat * DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat ),' ',8,0)+
                     IncDigito( FormatFloat( '#,##0.00', ( DadosItensVendas.FieldByName( 'Qtde_Venda' ).AsFloat *
                                                           Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat -
                                                                       DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat , 2 ) ) ),' ',14,0) );

      lrTot_Produtos := lrTot_Produtos + ( DadosItensVendas.FieldByName( 'Qtde_Venda' ).AsFloat * Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) );
      lrTot_Desconto := lrTot_Desconto + ( DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat * DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat ) ;

      liCont := liCont + 1;
      DadosItensVendas.Next;
   end;
   WriteLn(F, '', IncDigito( '-', '-', 39, 0 ) );
   WriteLn(F, '', 'Total de Produtos Listado.:'+IncDigito(  IntToStr( liCont ),' ',10,0) );
   WriteLn(F, '', 'Total dos Produtos........:'+IncDigito(  FormatFloat( '#,##0.00', lrTot_Produtos ) ,' ',10,0) ) ;
   WriteLn(F, '', 'Desconto Total ...........:'+IncDigito(  FormatFloat( '#,##0.00', lrTot_Desconto ) ,' ',10,0) );
   WriteLn(F, '', 'Valor Total...............:'+IncDigito( FormatFloat( '#,##0.00', ( lrTot_Produtos - lrTot_Desconto ) ) ,' ',10,0) );
   WriteLn(F, '',IncDigito( '=', '=', 39, 0 ) );
   WriteLn(F, '', '    DOCUMENTO SEM VALOR FISCAL        ' );

   CloseFile(F);
end;

procedure TVenda.ImprimirBematec(DadosVendas,DadosItensVendas: TClientDataSet; CaminhoImpressora : String; prTotalPago : Real);
const
    sComando = #27 + #109;
  var F: TextFile;
     lrTot_Produtos : Real;
     lrTot_Desconto : Real;
     liCont         : Integer;
     c17cpi         : String;
     EscDraft       : string;
  I: Integer;
begin
  for I := 0 to Self.Numerovias-1 do
  begin
     AssignFile(F, CaminhoImpressora  );
     Rewrite(F);
     WriteLn(F, '',c17cpi+EscDraft+IncDigito( '_','_',39,0));
     WriteLn(F, '',c17cpi+EscDraft+'Emitido em :' + FormatDatetime( 'dd/mm/yyyy hh:mm:ss', Now ) );
     WriteLn(F, '',c17cpi+EscDraft+IncDigito( '-','-',39,0));
     WriteLn(F, '',c17cpi+EscDraft+Copy(Empresa.Descricao,1,39));
     WriteLn(F, '',c17cpi+EscDraft+IncDigito( '-','-',39,0));
     WriteLn(F, '',c17cpi+EscDraft+Copy('Nota de Pagamento',1,39));
     WriteLn(F, '',c17cpi+EscDraft+IncDigito( '-','-',39,0));
     WriteLn(F, '',c17cpi+EscDraft+Copy(inczero(DadosVendas.FieldByName( 'Cod_Cliente' ).AsString,5)+' - '+ DadosVendas.FieldByName( 'Nome_Cliente' ).AsString ,1, 39 ) );
     WriteLn(F, '',c17cpi+EscDraft+'Emissao...: '+formatdateTime('dd/mm/YYYY',DadosVendas.FieldByName( 'Data_Venda' ).AsDateTime)+' Orc.: '+incZero(DadosVendas.FieldByName( 'SeqVenda' ).AsString,8) );
     WriteLn(F, '',c17cpi+EscDraft+'Forma Pag.: '+Copy(inczero(IntToStr(Self.FormaPagamento.Id),3)+'-'+FormaPagamento.Descricao,1,25));
     WriteLn(F, '',c17cpi+EscDraft+'Vendedor..: '+Copy(inczero(DadosVendas.FieldByName( 'Cod_Funcionario' ).AsString,3)+'-'+Self.Funcionario.Descricao,1,25));
     WriteLn(F, '',c17cpi+EscDraft+'NºControle: '+inczero(DadosVendas.FieldByName( 'SeqVenda' ).AsString,6) );
     WriteLn(F, '',c17cpi+EscDraft+IncDigito( '=','=',39,0));
     WriteLn(F, '',c17cpi+EscDraft+'Codigo |P R O D U T O S           |Und|' );
     WriteLn(F, '',c17cpi+EscDraft+'Quatidade|Pc. Unit| Desc.|   Vlr Total|' );
     WriteLn(F, '',c17cpi+EscDraft+IncDigito( '=', '=', 39, 0 ) );

     lrTot_Produtos := 0;
     lrTot_Desconto := 0;
     liCont         := 0;

     DadosItensVendas.First;
     while  Not DadosItensVendas.Eof  do
     Begin
        WriteLn(F, '', 001, inczero(DadosItensVendas.FieldByName('Codigo' ).AsString,5) + ' ' +
                                          Copy( DadosItensVendas.FieldByName( 'Descricao' ).AsString, 1, 30 ) );

        WriteLn(F, '', DadosItensVendas.FieldByName('Unidade').asString +
                       IncDigito( FormatFloat( '#,##0',DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat),' ',5,0) +
                       IncDigito( FormatFloat( '#,##0.00', Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) ),' ',8,0)+
                       IncDigito( FormatFloat( '#,##0.00', DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat * DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat ),' ',8,0)+
                       IncDigito( FormatFloat( '#,##0.00', ( DadosItensVendas.FieldByName( 'Qtde_Venda' ).AsFloat *
                                                             Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat -
                                                                         DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat , 2 ) ) ),' ',14,0) );

        lrTot_Produtos := lrTot_Produtos + ( DadosItensVendas.FieldByName( 'Qtde_Venda' ).AsFloat * Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) );
        lrTot_Desconto := lrTot_Desconto + ( DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat * DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat ) ;

        liCont := liCont + 1;
        DadosItensVendas.Next;
     end;
     WriteLn(F, '', IncDigito( '-', '-', 39, 0 ) );
     WriteLn(F, '', 'Total de Produtos Listado.:'+IncDigito(  IntToStr( liCont ),' ',10,0) );
     WriteLn(F, '', 'Total dos Produtos........:'+IncDigito(  FormatFloat( '#,##0.00', lrTot_Produtos ) ,' ',10,0) ) ;
     WriteLn(F, '', 'Desconto Total ...........:'+IncDigito(  FormatFloat( '#,##0.00', lrTot_Desconto ) ,' ',10,0) );
     WriteLn(F, '', 'Valor Total...............:'+IncDigito( FormatFloat( '#,##0.00', ( lrTot_Produtos - lrTot_Desconto ) ) ,' ',10,0) );
     WriteLn(F, '',IncDigito( '=', '=', 39, 0 ) );
     if prTotalPago>0 then
     begin
        WriteLn(F, '',  'Valor Pago......:'+IncDigito(  FormatFloat( '#,##0.00', prTotalPago ) ,' ',13,0) );
        if (( lrTot_Produtos - lrTot_Desconto ) - prTotalPago) > 0 then
        begin
           WriteLn(F, '',  'A Pagar na Entrega: '+IncDigito( FormatFloat( '#,##0.00', ( ( lrTot_Produtos - lrTot_Desconto ) - prTotalPago)),' ',10,0 ) );
        end;
        WriteLn(F, '',IncDigito( '=', '=', 39, 0 ) );
     end;
     WriteLn(F, '', '    DOCUMENTO SEM VALOR FISCAL        ' );
     WriteLn(F, '', ' ' );
     WriteLn(F, '', ' ' );
     WriteLn(F, '', ' ' );
     WriteLn(F, '', ' ' );
     WriteLn(F, '',sComando);
     CloseFile(F);
  end;
end;


procedure TVenda.SetCliente(const Value: TCliente);
begin
  FCliente := Value;
end;

procedure TVenda.SetEmpresa(const Value: TEmpresa);
begin
  FEmpresa := Value;
end;

procedure TVenda.SetFormaPagamento(const Value: TFormaPagamento);
begin
  FFormaPagamento := Value;
end;

procedure TVenda.SetFuncionario(const Value: TFuncionario);
begin
  FFuncionario := Value;
end;

procedure TVenda.SetNumerovias(const Value: Integer);
begin
  FNumerovias := Value;
end;

end.
