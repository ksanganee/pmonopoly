unit uStack;

interface

type

  TNumberStack = class
    protected
      numbers : array [0..11] of integer;
      //Swaps the numbers in the positions a and b
      procedure Swap(a,b:integer);
    public
      constructor Create;
      //Shuffle which uses the Fisher-Yates shuffle algorithm
      procedure Shuffle;
      //Pops the topmost number of the array and returns it
      function Pop:integer;
      //Pushes the argument x to the bottom of the stack
      procedure PushToBottom(x:integer);
  end;

implementation

{ TNumberStack }

constructor TNumberStack.Create;
var
  i: Integer;
begin
  for i := 0 to 11 do
  begin
    numbers[i] := i+1;
  end;
end;

function TNumberStack.Pop: integer;
var
  tempint:integer;
  i: Integer;
begin
  tempint := numbers[0];
  for i := 0 to 10 do numbers[i] := numbers[i+1];
  result := tempint;
end;

procedure TNumberStack.PushToBottom(x: integer);
begin
  numbers[11] := x;
end;

procedure TNumberStack.Shuffle;
var
  i, Random1, Random2: Integer;
begin
  for i := 0 to 200 do
  begin
    Random1 := Random(12);
    Random2 := Random(12);
    if Random1 <> Random2 then Swap(Random1,Random2);
  end;
end;

procedure TNumberStack.Swap(a,b:integer);
var
  tempint:integer;
begin
  tempint := numbers[a];
  numbers[a] := numbers[b];
  numbers[b] := tempint;
end;

end.
