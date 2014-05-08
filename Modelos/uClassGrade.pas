unit uClassGrade;

interface

Type TGrade = class
  private
    FDescricao: String;
    Fid: Integer;
    procedure SetDescricao(const Value: String);
    procedure Setid(const Value: Integer);

  public
    property id : Integer read Fid write Setid;
    property Descricao : String read FDescricao write SetDescricao;


end;

implementation

{ TGrade }

procedure TGrade.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TGrade.Setid(const Value: Integer);
begin
  Fid := Value;
end;

end.
