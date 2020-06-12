unit uBoard;

interface

uses
  StrUtils, SysUtils, Dialogs, Classes, uTile, types;

type
  TBoard = class
    protected
      FFreeParkingBal:integer;

      function GetFreeParkingBal:integer;
      procedure SetFreeParkingBal(v:integer);

    public
      //This array holds the 40 tiles that compose the physical board
      tiles : array [0..39] of TTile;

      constructor Create;
      //This property enabled interaction with the Field FFreeParkingBal
      property FreeParkingBal:integer read GetFreeParkingBal write SetFreeParkingBal;
  end;

implementation

{ TBoard }

constructor TBoard.Create;
var
  tilefile : textfile;
  line : string;
  tileinfo : TStringDynArray;
  tilenum : integer;
begin
  AssignFile(tilefile,'tiles.txt');
  Reset(tilefile);

  tilenum := 0;
  while not(EOF(tilefile)) do
  begin
    readln(tilefile,line);
    tileinfo := splitstring(line,',');

    tiles[tilenum] := TTile.Create(tileinfo);
    inc(tilenum);
  end;
  closefile(tilefile);
  FFreeParkingBal := 0;
end;

function TBoard.GetFreeParkingBal: integer;
begin
  result := FFreeParkingBal
end;

procedure TBoard.SetFreeParkingBal(v: integer);
begin
  FFreeParkingBal := v;
end;

end.
