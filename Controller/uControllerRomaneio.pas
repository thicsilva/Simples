unit uControllerRomaneio;


interface

uses uClassConexao;

Type TControllerRomaneio = class
   private
     FConexao : Tconexao;
   public
     Constructor Create(Conexao : TConexao);
     procedure Cancelar(RomaneioId : Integer);
end;
implementation

uses uDaoRomaneio, uDaoVenda, SysUtils;

{ TControllerRomaneio }

procedure TControllerRomaneio.Cancelar(RomaneioId: Integer);
var DaoRomaneio : TDaoRomaneio;
    DaoVenda : TDaovenda;
begin
    DaoRomaneio := TDaoRomaneio.Create(Fconexao);
    DaoRomaneio.Cancelar(RomaneioId);
    DaoVenda := TDaovenda.Create(Fconexao);
    DaoVenda.CancelarRomaneio(RomaneioId);
    FreeAndNil(DaoRomaneio);
    FreeAndNil(DaoVenda);
end;

constructor TControllerRomaneio.Create(Conexao: TConexao);
begin
  FConexao := Conexao;
end;

end.
