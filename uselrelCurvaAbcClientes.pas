unit uselrelCurvaAbcClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormBase, RDprint, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls, Mask,
  ExtCtrls, ToolWin, ComCtrls;

type
  Tfrmselrelcurvaabcclientes = class(TFormBase)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinExPanel1: TbsSkinExPanel;
    lblTurma: TbsSkinStdLabel;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    cmbPeriodo: TbsSkinComboBox;
    bsSkinExPanel2: TbsSkinExPanel;
    edtCurvaa: TbsSkinSpinEdit;
    edtCurvaB: TbsSkinSpinEdit;
    edtCurvaC: TbsSkinSpinEdit;
    bsSkinLabel1: TbsSkinLabel;
    bsSkinLabel2: TbsSkinLabel;
    bsSkinLabel3: TbsSkinLabel;
    impMatricial: TRDprint;
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    pvilinha : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselrelcurvaabcclientes: Tfrmselrelcurvaabcclientes;

implementation

uses uFuncoes, uPrincipal,DBClient;

{$R *.dfm}

procedure Tfrmselrelcurvaabcclientes.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmselrelcurvaabcclientes.btnokClick(Sender: TObject);
var lstParametros : TStringlist;
    cdsDadosImpressao : TClientDataSet;
    lrValorTotal : Real;
    lrQtde_Total : Real;
    lrTotalCurvaA : Real;
    lrTotalCurvaB : Real;
    lrTotalCurvaC : Real;
    lrAcumulado : Real;
    lrTotalGeral : Real;
    ImprimiuCurva : Boolean;
    ImprimiuCurvab: Boolean;
begin
   if StrToFloat(edtCurvaa.Text)+StrToFloat(edtCurvab.Text)+StrToFloat(edtCurvaC.Text)>100 then
   begin
      CaixaMensagem( 'A soma da curva não pode ser superior a 100%', ctAviso, [ cbOk ], 0 );
      exit;
   end;

   lstParametros := TStringlist.Create;
   lstParametros.Add(dtpData_Ini.Text);
   lstParametros.Add(dtpData_Fim.Text);

   cdsDadosImpressao := gconexao.BuscarDadosSQL( 'select sum(Itens.Qtde_venda) as Qtde_Total, '+
                                                 '       Sum(Itens.Vlr_total) as Valor_Total '+
                                                 'from T_vendas venda '+
                                                 '     inner join T_itensVendas itens on itens.seqvenda = venda.Seqvenda '+
                                                 '     Left Join T_Produtos Prod on Prod.Codigo=Itens.Cod_Produto '+
                                                 'where Data_Venda>=:parDataInicial and Data_Venda<=:parDataFinal' ,lstParametros);
   lrValorTotal :=  cdsDadosImpressao.FieldByName('Valor_Total').AsFloat;
   lrQtde_Total :=  cdsDadosImpressao.FieldByName('Qtde_Total').AsFloat;

   cdsDadosImpressao := gconexao.BuscarDadosSQL( 'select Venda.Cod_Cliente as Cod_Produto, '+
                                                 '        Cli.Descricao, '+
                                                 '        sum(Itens.Qtde_venda) as Qtde_Total, '+
                                                 '        Sum(Itens.Vlr_total) as Valor_Total '+
                                                 'from T_vendas venda '+
                                                 '     inner join T_itensVendas itens on itens.seqvenda = venda.Seqvenda '+
                                                 '     Left Join T_Produtos Prod on Prod.Codigo=Itens.Cod_Produto '+
                                                 '     Left Join T_Clientes Cli on Cli.Codigo=Venda.Cod_Cliente '+
                                                 'where Data_Venda>=:parDataInicial and Data_Venda<=:parDataFinal '+
                                                 'group by venda.Cod_Cliente,Cli.Descricao '+
                                                 'order by 4 desc ',lstParametros);
   InicializarImpressao(impmatricial);
   lrTotalCurvaA := 0;
   lrAcumulado   := 0;
   lrTotalGeral := 0;
   ImprimiuCurva := True;
   ImprimiuCurvab := true;
   while not cdsDadosImpressao.Eof do
   begin
      lrTotalCurvaA := lrTotalCurvaA + cdsDadosImpressao.FieldBYName('Valor_Total').AsFloat;
      lrTotalGeral := lrTotalGeral + cdsDadosImpressao.FieldBYName('Valor_Total').AsFloat;
      lrAcumulado := lrAcumulado + ((cdsDadosImpressao.FieldBYName('Valor_Total').AsFloat/lrValorTotal)*100);
      impmatricial.Imp(pvilinha,001,IncZero(cdsDadosImpressao.FieldBYName('Cod_Produto').AsString,5)+' '+cdsDadosImpressao.FieldBYName('Descricao').AsString );
      impmatricial.Impd(pvilinha,050,FormatFloat(',0',cdsDadosImpressao.FieldBYName('Qtde_Total').AsFloat),[]);
      impmatricial.Impd(pvilinha,060,FormatFloat(',0.00',cdsDadosImpressao.FieldBYName('Valor_Total').AsFloat),[]);
      impmatricial.Impd(pvilinha,070,FormatFloat(',0.00',(cdsDadosImpressao.FieldBYName('Valor_Total').AsFloat/lrValorTotal)*100),[]);
      impmatricial.Impd(pvilinha,080,FormatFloat(',0.00',arredondar(lrAcumulado,2)),[]);
      if (lrAcumulado >= strToFloat(edtCurvaa.Text)) and ( ImprimiuCurva ) then
      begin
         pvilinha := pvilinha + 1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pvilinha := pvilinha + 1;
         impmatricial.Imp(pvilinha,001,'Total da Curva A');
         impmatricial.Impd(pvilinha,060,FormatFloat(',0.00',lrTotalCurvaA),[]);
         pvilinha := pvilinha + 1;
         ImprimiuCurva := False;
      end;
      if (lrAcumulado >= (strToFloat(edtCurvab.Text)+strToFloat(edtCurvaa.Text))) and ( ImprimiuCurvab) then
      begin
         pvilinha := pvilinha + 1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pvilinha := pvilinha + 1;
         impmatricial.Imp(pvilinha,001,'Total da Curva B');
         impmatricial.Impd(pvilinha,060,FormatFloat(',0.00',lrTotalCurvaA),[]);
         pvilinha := pvilinha + 1;
         ImprimiuCurvab:= False;
         lrTotalCurvaA := 0
      end;

      pvilinha := pvilinha + 1;
      if pvilinha>66 then
         impmatricial.Novapagina;
      cdsDadosImpressao.Next;
   end;
   pvilinha := pvilinha + 1;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pvilinha := pvilinha + 1;
   impmatricial.Imp(pvilinha,001,'Total da Curva C');
   impmatricial.Impd(pvilinha,060,FormatFloat('0.00',lrTotalCurvaA),[]);
   pvilinha := pvilinha + 1;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pvilinha := pvilinha + 1;
   impmatricial.Imp(pvilinha,001,'Total Geral');
   impmatricial.Impd(pvilinha,060,FormatFloat('0.00',lrTotalGeral),[]);
   impmatricial.Fechar;

end;

procedure Tfrmselrelcurvaabcclientes.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure Tfrmselrelcurvaabcclientes.FormShow(Sender: TObject);
begin
   cmbPeriodoChange(Sender);
end;

procedure Tfrmselrelcurvaabcclientes.impMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), Pagina );
   pviLinha := 06;
   TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                       Quantidade  Valor Total  %Part. Acumulado');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1; inherited;
end;

end.
