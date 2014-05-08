unit uClassItemGrade;

interface

type TItemGrade = class
  private
    FId: integer;
    FGradeId: Integer;
    FTamanho: String;
    procedure SetGradeId(const Value: Integer);
    procedure SetId(const Value: integer);
    procedure SetTamanho(const Value: String);
  public
    property Id : integer read FId write SetId;
    property GradeId : Integer read FGradeId write SetGradeId;
    property Tamanho : String read FTamanho write SetTamanho;
end;

implementation

{ TItemGrade }

procedure TItemGrade.SetGradeId(const Value: Integer);
begin
  FGradeId := Value;
end;

procedure TItemGrade.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TItemGrade.SetTamanho(const Value: String);
begin
  FTamanho := Value;
end;

end.
