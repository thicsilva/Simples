unit uClassVenda;

interface

uses RDprint,DBClient,SysUtils,Classes,
     uClassEmpresa,uClassFuncionario,uClassFormaPagamento,uClassCliente;

type TVenda = class
  Private
    FLinha   : Integer;
    FEmpresa : TEmpresa;
    FFuncionario: TFuncionario;
    FFormaPagamento: TFormaPagamento;
    FCliente: TCliente;
    procedure SetEmpresa(const Value: TEmpresa);
    procedure SetFuncionario(const Value: TFuncionario);
    procedure SetFormaPagamento(const Value: TFormaPagamento);
    procedure SetCliente(const Value: TCliente);
  public
     procedure Imprimir(DadosVendas : TClientDataSet);
     property Empresa : TEmpresa read FEmpresa write SetEmpresa;
     property Funcionario : TFuncionario read FFuncionario write SetFuncionario;
     property FormaPagamento : TFormaPagamento read FFormaPagamento write SetFormaPagamento;
     property Cliente : TCliente read FCliente write SetCliente;

end;

implementation

uses ufuncoes;

{ TVenda }

procedure TVenda.Imprimir(DadosVendas : TClientDataSet);
var ImpMatricial   : TrdPrint;
    lrTot_Produtos : Real;
    lrTot_Desconto : Real;
    liCont         : integer;
    Mensagem       : TStringList;
begin
   impMatricial.PortaComunicacao          := 'LPT1';
   impMatricial.OpcoesPreview.Preview     := True;
   impMatricial.OpcoesPreview.PreviewZoom := 100;
   impMatricial.TamanhoQteLinhas          := 1;
   impMatricial.TamanhoQteColunas         := 39;
   impMatricial.FonteTamanhoPadrao        := s17cpp;
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
   impMatricial.Imp(FLinha,001,'Forma Pag.: '+Copy(inczero(IntToStr(Self.FormaPagamento.IdFormaPagamento),3)+'-'+FormaPagamento.Descricao,1,25));
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
   While Not DadosVendas .Eof Do
   Begin
      impMatricial.Imp ( FLinha, 001, inczero(DadosVendas.FieldByName( 'Codigo' ).AsString,5) + ' ' +
                                        Copy( DadosVendas.FieldByName( 'Descricao' ).AsString, 1, 30 ) );

      impMatricial.Imp ( FLinha, 037, 'UND');
      FLinha := FLinha + 1;
      impMatricial.ImpD( FLinha, 008, FormatFloat( '#,##0.00',    DadosVendas.FieldByName( 'Qtde_venda').AsFloat), [ Comp17 ] );
      impMatricial.ImpD( FLinha, 019, FormatFloat( '#,##0.00', Arredondar( DadosVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) ), [ Comp17 ] );
      impMatricial.ImpD( FLinha, 027, FormatFloat( '#,##0.00', DadosVendas.FieldByName( 'Vlr_Desconto' ).AsFloat * DadosVendas .FieldByName( 'Qtde_venda').AsFloat ), [ Comp17 ] );
      impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00',  Arredondar ( DadosVendas.FieldByName( 'Qtde_Venda' ).AsFloat *
                                                                             ( DadosVendas.FieldByName( 'Pco_Venda' ).AsFloat -
                                                                                DadosVendas.FieldByName( 'Vlr_Desconto' ).AsFloat ), 2 ) ) , [ Comp17 ] );
      lrTot_Produtos := lrTot_Produtos + ( DadosVendas.FieldByName( 'Qtde_Venda' ).AsFloat * Arredondar( DadosVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) );
      lrTot_Desconto := lrTot_Desconto + ( DadosVendas.FieldByName( 'Vlr_Desconto' ).AsFloat * DadosVendas.FieldByName( 'Qtde_venda').AsFloat );

      liCont := liCont + 1;
      FLinha := FLinha + 1;
      DadosVendas .Next;
   end;
   impMatricial.Imp ( FLinha, 001, IncDigito( '-', '-', 39, 0 ) );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Total de Produtos Listado.: ' );
   impMatricial.ImpD( FLinha, 039, IntToStr( liCont ), [ Comp17 ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Total dos Produtos........:' );
   impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', lrTot_Produtos ), [ Comp17 ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Desconto Total ...........:' );
   impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', lrTot_Desconto ), [ Comp17 ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Valor Total...............:');
   impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', ( lrTot_Produtos - lrTot_Desconto ) ), [ Comp17 ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, IncDigito( '=', '=', 39, 0 ) );
   FLinha := FLinha + 1;

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

end.
