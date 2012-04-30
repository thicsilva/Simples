unit uLancarComanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, bsSkinCtrls, bsdbctrls, Mask, bsSkinBoxCtrls;

type
  TfrmLancaComanda = class(TForm)
    edtcod_Cliente: TbsSkinEdit;
    cmbNome_Cliente: TbsSkinDBLookupComboBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtCod_Produto: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    cmbNome_Produto: TbsSkinDBLookupComboBox;
    edtQtde_Venda: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancaComanda: TfrmLancaComanda;

implementation

{$R *.dfm}

end.
