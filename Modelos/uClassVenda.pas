unit uClassVenda;

interface

uses RDprint,DBClient,SysUtils,Classes,uClassConexao,
     uClassEmpresa,uClassFuncionario,uClassFormaPagamento,uClassCliente,
  Graphics;

type TVenda = class
  Private
    FConexao : TConexao;
    FLinha   : Integer;
    FEmpresa : TEmpresa;
    FFuncionario: TFuncionario;
    FFormaPagamento: TFormaPagamento;
    FCliente: TCliente;
    FNumerovias: Integer;
    FVendaID: Integer;
    FValorPendendente: Real;
    FData_Venda: TDateTime;
    FValor_Total: Real;
    FPeso_total: Real;
    FRomaneioId: Integer;
    FEntregue: Boolean;
    FVencimentos: TStringList;
    procedure SetEmpresa(const Value: TEmpresa);
    procedure SetFuncionario(const Value: TFuncionario);
    procedure SetFormaPagamento(const Value: TFormaPagamento);
    procedure SetCliente(const Value: TCliente);
    procedure SetNumerovias(const Value: Integer);
    {Funcionalidades}
    procedure ImprimirGrafico(DadosVendas : TClientDataSet; DadosItensVendas : TClientDataSet;  prTotalPago : Real; CaminhoImpressora : String );
    procedure ImprimirMatricial(DadosVendas,DadosItensVendas : TClientDataSet;CaminhoImpressora : String);
    procedure ImprimirBematec(DadosVendas, DadosItensVendas: TClientDataSet; CaminhoImpressora: String; prTotalPago : Real);
    procedure ImprimirGrafico80Colunas(DadosVendas : TClientDataSet; DadosItensVendas : TClientDataSet;   CaminhoImpressora : String );
    procedure ImprimirGrafico80ColunasM2(DadosVendas : TClientDataSet; DadosItensVendas : TClientDataSet;   CaminhoImpressora : String );
    procedure SetVendaID(const Value: Integer);
    procedure SetValorPendendente(const Value: Real);
    procedure SetData_Venda(const Value: TDateTime);
    procedure SetValor_Total(const Value: Real);
    procedure SetPeso_total(const Value: Real);
    procedure SetRomaneioId(const Value: Integer);
    procedure SetEntregue(const Value: Boolean);
    procedure SetVencimentos(const Value: TStringList);

  public
     Constructor Create(Conexao : TConexao);
     procedure Imprimir(DadosVendas, DadosItensVendas: TClientDataSet; CaminhoImpressora: String; prTotalPago : Real; TipoImpressao : Integer );
     procedure ComprovanteDeEntrega(CaminhoImpressora : String);

     property Numerovias : Integer read FNumerovias write SetNumerovias;
     property VendaID : Integer read FVendaID write SetVendaID;
     property ValorPendendente : Real read FValorPendendente write SetValorPendendente;
     property Data_Venda : TDateTime read FData_Venda write SetData_Venda;
     property Valor_Total : Real read FValor_Total write SetValor_Total;
     property Peso_total : Real read FPeso_total write SetPeso_total;
     property RomaneioId : Integer read FRomaneioId write SetRomaneioId;
     property Entregue : Boolean read FEntregue write SetEntregue;

     property Empresa : TEmpresa read FEmpresa write SetEmpresa;
     property Funcionario : TFuncionario read FFuncionario write SetFuncionario;
     property FormaPagamento : TFormaPagamento read FFormaPagamento write SetFormaPagamento;
     property Cliente : TCliente read FCliente write SetCliente;
     property Vencimentos : TStringList read FVencimentos write SetVencimentos;

end;

implementation

uses ufuncoes, uClassCaixa;

{ TVenda }

procedure TVenda.ComprovanteDeEntrega(CaminhoImpressora : String);
const
    sComando = #27 + #109;
  var F: TextFile;
     lrTot_Produtos : Real;
     lrTot_Desconto : Real;
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

constructor TVenda.Create(Conexao : TConexao);
begin
   Fconexao := Conexao;
   Empresa := TEmpresa.Create;
   Self.NumeroVias := 1;
   self.ValorPendendente := 0;
   self.VendaID := 0;
   Self.RomaneioId := 0;
end;

procedure TVenda.ImprimirGrafico(DadosVendas : TClientDataSet; DadosItensVendas : TClientDataSet; prTotalPago : Real; CaminhoImpressora : String );
var ImpMatricial   : TrdPrint;
    lrTot_Produtos : Real;
    lrTot_Desconto : Real;
    liCont         : integer;
begin
   ImpMatricial := TrdPrint.Create(Nil);
   impMatricial.OpcoesPreview.Preview     := True;
   impMatricial.OpcoesPreview.PreviewZoom := 100;
   impMatricial.TamanhoQteLinhas          := 1;
   impMatricial.TamanhoQteColunas         := 39;
   impMatricial.FonteTamanhoPadrao        := S17cpp;
   impmatricial.Impressora                := Grafico;
   impmatricial.PortaComunicacao          := CaminhoImpressora;
    impMatricial.UsaGerenciadorImpr       := False;
   if CaminhoImpressora='LPT1' then
     impMatricial.UsaGerenciadorImpr      := True;
   impMatricial.Abrir;

   FLinha := 01;
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '_','_',39,0));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha, 001, 'Emitido em :' + FormatDatetime( 'dd/mm/yyyy hh:mm:ss', Now ) );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',39,0));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,Copy(Empresa.Nome_Fantasia,1,39));
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

procedure TVenda.ImprimirGrafico80Colunas(DadosVendas : TClientDataSet; DadosItensVendas : TClientDataSet;  CaminhoImpressora : String );
var ImpMatricial   : TrdPrint;
    lrTot_Produtos : Real;
    lrTot_Desconto : Real;
    liCont         : integer;
    Mensagem       : TStringList;
    ItendVendas    : TClientDataSet;
Begin
   ImpMatricial := TrdPrint.Create(Nil);
   impMatricial.OpcoesPreview.PreviewZoom := 100;
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 33;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   impmatricial.Impressora                := Grafico;
   impMatricial.UsaGerenciadorImpr        := False;
   if CaminhoImpressora='LPT1' then
     impMatricial.UsaGerenciadorImpr      := True;
   impMatricial.Abrir;

   FLinha := 01;
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '_','_',80,0));
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha, 001, Empresa.Nome_Fantasia, [] );
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha, 001, Empresa.Endereco.logradouro+', '+Empresa.Endereco.numero+' Bairro.: '+Empresa.Endereco.bairro+' '+
                                  Empresa.Endereco.cidade+'-'+Empresa.Endereco.uf, [] );
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha, 001,'Telefones '+Empresa.Telefones, [] );
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha, 001,'Site.: '+Empresa.Site, [] );
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha, 001,'Email.: '+Empresa.Email, [] );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',80,0));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Emissao...: '+formatdateTime('dd/mm/YYYY',DadosVendas.FieldByName( 'Data_Venda' ).AsDateTime)+' Orc.: '+incZero(DadosVendas.FieldByName( 'SeqVenda' ).AsString,8) );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Cliente...: '+Copy(IntToStr(Cliente.Id)+'-'+Cliente.Descricao,1,80 ) );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'CNPJ.:'+Cliente.CPF+' Inscrição Estadual.:'+Cliente.InscricaoEstadual );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Endereco..: '+Cliente.Endereco.logradouro+', '+Cliente.Endereco.numero+' Bairro.: '+Cliente.Endereco.bairro+' '+
                                              Cliente.Endereco.cidade+'-'+Cliente.Endereco.uf );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Telefone..: '+Cliente.Telefones);
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',80,0));
   FLinha := FLinha + 1;                //   123456789,123456789,123456789,12345
   impMatricial.Imp( FLinha, 001, 'Codigo |P R O D U T O S                       |Quatidade|Pc. Unit|   Vlr Total|' );
   FLinha := FLinha + 1;        // 123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',80,0));
   FLinha := FLinha + 1;
   DadosVendas .First;
   lrTot_Produtos := 0;
   lrTot_Desconto := 0;
   licont := 0;
   DadosItensVendas.locate('Seqvenda',self.VendaID,[]);
   While ( self.VendaID = DadosItensVendas.fieldByname('SeqVenda').AsInteger) and ( not DadosItensVendas.Eof) Do
   Begin
      impMatricial.Imp ( FLinha, 001, inczero(DadosItensVendas.FieldByName( 'Codigo' ).AsString,5));
      impMatricial.Imp ( FLinha, 008,'|'+DadosItensVendas.FieldByName( 'Descricao' ).AsString );
      impMatricial.ImpD( FLinha, 058,FormatFloat( '#,##0.00', DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat)+'|', [ ] );
      impMatricial.ImpD( FLinha, 067,FormatFloat( '#,##0.00', Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) )+'|', [ ] );
      impMatricial.ImpD( FLinha, 080,FormatFloat( '#,##0.00', Arredondar ( DadosItensVendas.FieldByName( 'Qtde_Venda' ).AsFloat *
                                                                          ( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat -
                                                                            DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat ), 2 ) )+'|' , [ ] );
      lrTot_Produtos := lrTot_Produtos + ( DadosItensVendas.FieldByName( 'Qtde_Venda' ).AsFloat * Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) );
      lrTot_Desconto := lrTot_Desconto + ( DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat * DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat );

      liCont := liCont + 1;
      FLinha := FLinha + 1;
      DadosItensVendas .Next;
   end;
   impMatricial.Imp ( FLinha, 001, IncDigito( '-', '-', 80, 0 ) );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Total de Produtos Listado.: ' );
   impMatricial.ImpD( FLinha, 039, IntToStr( liCont ), [ ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Valor a Pagar.............:');
   impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', ( lrTot_Produtos - lrTot_Desconto ) ), [ ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, IncDigito( '=', '=', 80, 0 ) );
   FLinha := FLinha + 2;
   //impMatricial.Imp(FLinha,001,'Forma Pag.: '+Copy(inczero(IntToStr(Self.FormaPagamento.Id),3)+'-'+FormaPagamento.Descricao,1,25));
   //FLinha := FLinha + 1;

   impMatricial.Imp ( FLinha, 001, '___________________________');
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, Cliente.Descricao);

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
   impMatricial.Fechar;
end;


procedure TVenda.ImprimirGrafico80ColunasM2(DadosVendas,
  DadosItensVendas: TClientDataSet; CaminhoImpressora: String);
var ImpMatricial   : TrdPrint;
    lrTot_Produtos : Real;
    lrTot_Desconto : Real;
    liCont         : integer;
    Mensagem       : TStringList;
    ItendVendas    : TClientDataSet;
    I              : Integer;
begin
   ImpMatricial := TrdPrint.Create(Nil);
   impMatricial.OpcoesPreview.PreviewZoom := 100;
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 33;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   impmatricial.Impressora                := Grafico;
   impMatricial.UsaGerenciadorImpr        := False;
   if CaminhoImpressora='LPT1' then
     impMatricial.UsaGerenciadorImpr      := True;
   impMatricial.Abrir;

   FLinha := 01;
   impMatricial.Imp(FLinha,030,'DOCUMENTO AUXILIAR DE VENDA');
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '_','_',80,0));
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha, 001, Empresa.Nome_Fantasia, [] );
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha, 001, Empresa.Endereco.logradouro+', '+Empresa.Endereco.numero+' Bairro.: '+Empresa.Endereco.bairro+' '+
                                  Empresa.Endereco.cidade+'-'+Empresa.Endereco.uf, [] );
   FLinha := FLinha + 1;
   impMatricial.ImpC(FLinha, 001,'Telefones '+Empresa.Telefones, [] );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',80,0));
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Emissao...: '+formatdateTime('dd/mm/YYYY',DadosVendas.FieldByName( 'Data_Venda' ).AsDateTime)+' Orc.: '+incZero(DadosVendas.FieldByName( 'SeqVenda' ).AsString,8) );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Cliente...: '+Copy(IntToStr(Cliente.Id)+'-'+Cliente.Descricao,1,80 ) );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'CNPJ.:'+Cliente.CPF+' Inscrição Estadual.:'+Cliente.InscricaoEstadual );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Endereco..: '+Cliente.Endereco.logradouro+', '+Cliente.Endereco.numero+' Bairro.: '+Cliente.Endereco.bairro+' '+
                                              Cliente.Endereco.cidade+'-'+Cliente.Endereco.uf );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Pto.Refere: '+Cliente.Endereco.PontoReferencia);
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',80,0));
   FLinha := FLinha + 1;                //   123456789,123456789,123456789,12345
   impMatricial.Imp( FLinha, 001, 'Codigo |P R O D U T O S                       |Quatidade|Pc. Unit|   Vlr Total|' );
   FLinha := FLinha + 1;        // 123456789,123456789,123456789,123456789,123456789,123456789,123456789,123456789
   impMatricial.Imp(FLinha,001,IncDigito( '-','-',80,0));
   FLinha := FLinha + 1;
   DadosVendas .First;
   lrTot_Produtos := 0;
   lrTot_Desconto := 0;
   licont := 0;
   DadosItensVendas.locate('Seqvenda',self.VendaID,[]);
   While ( self.VendaID = DadosItensVendas.fieldByname('SeqVenda').AsInteger) and ( not DadosItensVendas.Eof) Do
   Begin
      impMatricial.Imp ( FLinha, 001, inczero(DadosItensVendas.FieldByName( 'Codigo' ).AsString,5));
      impMatricial.Imp ( FLinha, 008,'|'+DadosItensVendas.FieldByName( 'Descricao' ).AsString );
      impMatricial.ImpD( FLinha, 058,FormatFloat( '#,##0.00', DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat)+'|', [ ] );
      impMatricial.ImpD( FLinha, 067,FormatFloat( '#,##0.00', Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) )+'|', [ ] );
      impMatricial.ImpD( FLinha, 080,FormatFloat( '#,##0.00', Arredondar ( DadosItensVendas.FieldByName( 'Qtde_Venda' ).AsFloat *
                                                                          ( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat -
                                                                            DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat ), 2 ) )+'|' , [ ] );
      lrTot_Produtos := lrTot_Produtos + ( DadosItensVendas.FieldByName( 'Qtde_Venda' ).AsFloat * Arredondar( DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) );
      lrTot_Desconto := lrTot_Desconto + ( DadosItensVendas.FieldByName( 'Vlr_Desconto' ).AsFloat * DadosItensVendas.FieldByName( 'Qtde_venda').AsFloat );

      liCont := liCont + 1;
      FLinha := FLinha + 1;
      DadosItensVendas .Next;
   end;
   impMatricial.Imp ( FLinha, 001, IncDigito( '-', '-', 80, 0 ) );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Total de Produtos Listado.: ' );
   impMatricial.ImpD( FLinha, 039, IntToStr( liCont ), [ ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Valor a Pagar.............:');
   impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', ( lrTot_Produtos - lrTot_Desconto ) ), [ ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Desconto Total ...........:' );
   impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', lrTot_Desconto ), [ ] );
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, 'Valor Total...............:');
   impMatricial.ImpD( FLinha, 039, FormatFloat( '#,##0.00', ( lrTot_Produtos - lrTot_Desconto ) ), [ ] );
   FLinha := FLinha + 1;
   impMatricial.Imp(FLinha,001,'Forma Pag.: '+Copy(inczero(IntToStr(Self.FormaPagamento.Id),3)+'-'+FormaPagamento.Descricao,1,25));
   FLinha := FLinha + 2;
   impMatricial.Imp(FLinha,001,'Vencimento: ' );
   FLinha := FLinha + 1;
   for I := 0 to Self.Vencimentos.Count - 1 do
   begin
       case I of
          0: impMatricial.Imp(FLinha,004,Self.Vencimentos[I]+'_________________' );
          1: impMatricial.Imp(FLinha,041,Self.Vencimentos[I]+'_________________' );
          2:
          begin
             FLinha := FLinha + 1;
             impMatricial.Imp(FLinha,004,Self.Vencimentos[I]+'_________________' );
          end;
          3: impMatricial.Imp(FLinha,041,Self.Vencimentos[I]+'_________________' );
          4:
          begin
             FLinha := FLinha + 1;
             impMatricial.Imp(FLinha,004,Self.Vencimentos[I]+'_________________' );
          end;
          5: impMatricial.Imp(FLinha,041,Self.Vencimentos[I]+'_________________' );
          6:
          begin
             FLinha := FLinha + 1;
             impMatricial.Imp(FLinha,004,Self.Vencimentos[I]+'_________________' );
          end;
          7: impMatricial.Imp(FLinha,041,Self.Vencimentos[I]+'_________________' );
       end;
   end;
   FLinha := FLinha + 1;

   impMatricial.Imp ( FLinha, 001, IncDigito( '=', '=', 80, 0 ) );
   FLinha := FLinha + 2;

   impMatricial.Imp ( FLinha, 001, '___________________________');
   FLinha := FLinha + 1;
   impMatricial.Imp ( FLinha, 001, Cliente.Descricao);

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
   WriteLn(F, '',c17cpi+EscDraft+Copy(Empresa.Nome_Fantasia,1,39));
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
   WriteLn(F, '',c17cpi+EscDraft+'Quatidade|Pc. Unit| Unid.|   Vlr Total|' );
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
                     IncDigito( FormatFloat( '#,##0.00', (DadosItensVendas.FieldByName( 'Pco_Venda' ).AsFloat / StrToIntDef(DadosItensVendas.FieldByName( 'QtdeEmbalagem').AsString,1)) ),' ',8,0)+
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

procedure TVenda.Imprimir(DadosVendas, DadosItensVendas: TClientDataSet;
  CaminhoImpressora: String; prTotalPago: Real; TipoImpressao : Integer);
begin
  case TipoImpressao of
     0: ImprimirGrafico(DadosVendas,DadosItensVendas,prTotalPago,CaminhoImpressora);
     1: ImprimirMatricial(DadosVendas,DadosItensVendas,CaminhoImpressora);
     2: ImprimirBematec(DadosVendas,DadosItensVendas,CaminhoImpressora,prTotalPago);
     3: ImprimirGrafico80Colunas(DadosVendas,DadosItensVendas,CaminhoImpressora);
     4: ImprimirGrafico80ColunasM2(DadosVendas,DadosItensVendas,CaminhoImpressora);
  end;
end;

procedure TVenda.ImprimirBematec(DadosVendas,DadosItensVendas: TClientDataSet; CaminhoImpressora : String; prTotalPago : Real);
const
    sComando = #27 + #109;
  var F: TextFile;
     lrTot_Produtos : Real;
     lrTot_Desconto : Real;
     liCont         : Integer;
     I: Integer;
     DaoCaixa : TDaoCaixa;
begin
  DaoCaixa := TDaoCaixa.Create(FConexao);

  for I := 0 to Self.Numerovias-1 do
  begin
     AssignFile(F, CaminhoImpressora  );
     Rewrite(F);
     WriteLn(F, '',IncDigito( '_','_',39,0));
     WriteLn(F, '','Emitido em :' + FormatDatetime( 'dd/mm/yyyy hh:mm:ss', Now ) );
     WriteLn(F, '',IncDigito( '-','-',39,0));
     WriteLn(F, '',Copy(Empresa.Nome_Fantasia,1,39));
     WriteLn(F, '',IncDigito( '-','-',39,0));
     WriteLn(F, '',Copy('Nota de Pagamento',1,39));
     WriteLn(F, '',IncDigito( '-','-',39,0));
     WriteLn(F, '',Copy(inczero(DadosVendas.FieldByName( 'Cod_Cliente' ).AsString,5)+' - '+ DadosVendas.FieldByName( 'Nome_Cliente' ).AsString ,1, 39 ) );
     WriteLn(F, '','Emissao...: '+formatdateTime('dd/mm/YYYY',DadosVendas.FieldByName( 'Data_Venda' ).AsDateTime)+' Orc.: '+incZero(DadosVendas.FieldByName( 'SeqVenda' ).AsString,8) );
     WriteLn(F, '','Forma Pag.: '+Copy(inczero(IntToStr(Self.FormaPagamento.Id),3)+'-'+FormaPagamento.Descricao,1,25));
     WriteLn(F, '','Vendedor..: '+Copy(inczero(DadosVendas.FieldByName( 'Cod_Funcionario' ).AsString,3)+'-'+Self.Funcionario.Descricao,1,25));
     WriteLn(F, '','NºControle: '+inczero(DadosVendas.FieldByName( 'SeqVenda' ).AsString,6) );
     WriteLn(F, '','Caixa.....: '+DaoCaixa.RetornarNomeCaixa( DadosVendas.FieldByName( 'Cod_Caixa' ).AsInteger) );
     WriteLn(F, '',IncDigito( '=','=',39,0));
     WriteLn(F, '','Codigo |P R O D U T O S           |Und|' );
     WriteLn(F, '','Quatidade|Pc. Unit| Desc.|   Vlr Total|' );
     WriteLn(F, '',IncDigito( '=', '=', 39, 0 ) );

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
        if self.ValorPendendente=0 then
           self.ValorPendendente := lrTot_Produtos;
        WriteLn(F, '',  'Valor Pago......:'+IncDigito(  FormatFloat( '#,##0.00', prTotalPago ) ,' ',13,0) );
        if (( Self.ValorPendendente  - lrTot_Desconto ) - prTotalPago) > 0 then
        begin
           WriteLn(F, '',  'A Pagar na Entrega: '+IncDigito( FormatFloat( '#,##0.00', ( ( Self.ValorPendendente - lrTot_Desconto ) - prTotalPago)),' ',10,0 ) );
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

procedure TVenda.SetData_Venda(const Value: TDateTime);
begin
  FData_Venda := Value;
end;

procedure TVenda.SetEmpresa(const Value: TEmpresa);
begin
  FEmpresa := Value;
end;

procedure TVenda.SetEntregue(const Value: Boolean);
begin
  FEntregue := Value;
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

procedure TVenda.SetPeso_total(const Value: Real);
begin
  FPeso_total := Value;
end;

procedure TVenda.SetRomaneioId(const Value: Integer);
begin
  FRomaneioId := Value;
end;

procedure TVenda.SetValorPendendente(const Value: Real);
begin
  FValorPendendente := Value;
end;

procedure TVenda.SetValor_Total(const Value: Real);
begin
  FValor_Total := Value;
end;

procedure TVenda.SetVencimentos(const Value: TStringList);
begin
  FVencimentos := Value;
end;

procedure TVenda.SetVendaID(const Value: Integer);
begin
  FVendaID := Value;
end;

end.
