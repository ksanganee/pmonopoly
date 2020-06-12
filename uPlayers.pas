unit uPlayers;

interface

uses
  uTile, SysUtils, Vcl.Graphics;

type
  TPlayer = class
    protected
      FName : string;
      FPos, FBalance, FRandomNum : integer;
      FHousenum, FHotelnum : integer;
      FDiff : char;
      FInJail : boolean;
      FJailCards, FJailTurns:integer;

      function GetName:string;
      procedure SetName(n:string);
      function GetPos:integer;
      procedure SetPos(p:integer);
      function GetBalance:integer;
      procedure SetBalance(b:integer);
      function GetRandomNum:integer;
      function GetDiff:char;
      procedure SetDiff(d:char);
      function GetInJail:boolean;
      procedure SetInjail(j:boolean);

    public
      alive, human, computer : boolean;
      Roll1, Roll2 : integer;

      Constructor create(n:string;c:boolean;d:char);
      //Returns the amount of money to be paid when the properties tax chance is drawn
      function GetPropertiesTax : integer;
      //Property which enabled interaction with the field FName
      property name:string read GetName write SetName;
      //Property which enabled interaction with the field FPos
      property pos:integer read GetPos write SetPos;
      //Property which enabled interaction with the field FBalance
      property balance:integer read GetBalance write SetBalance;
      //Property which enabled interaction with the field FRandomUpper - the variable which
      property randomupper:integer read GetRandomNum;
      //Returns a string used to output to the player which contains their name and balance
      function GetBalanceLine:string;
      //Property which enabled interaction with the field FDiff
      property diff:char read GetDiff write SetDiff;
      //Property which enabled interaction with the field FInJail
      property InJail:boolean read GetInJail write SetInJail;
      //Returns the value in FJailCards - not a property as game interacts with the field
      //differently
      function GetJailCards:integer;
      //Increments FJailCards by 1
      procedure IncJailCards;
      //Increments FJailTurns by 1
      procedure IncJailTurns;
      //Returns the value in FJailTurns
      function GetJailTurns:integer;
      //Sets Jail turns to 0
      procedure ResetJailTurns;
      //Causes FBalance to increase by the argument/parameter
      procedure IncreaseBalance(value:integer);
      //Causes FBalance to decrease by the argument/parameter
      procedure DecreaseBalance(value:integer);

      //GUI methods
      //Returns a y coordinate which is dependant on FPos for the counter
      function GetLeftPos:integer;
      //Returns an x coordinate which is dependant on FPos for the counter
      function GetTopPos:integer;
      //Returns a colour which depends on the player number
      function GetColour(playernum:integer):TColor;
      //Returns a (different to GetColour) colour which depends on the player number
      function GetMortgageColour(playernum:integer):TColor;
  end;

implementation

{ TPlayer }

constructor TPlayer.create(n:string;c:boolean;d:char);
begin
  Fname := n;
  if c = False then
  begin
    human := True;
  end
  else
  begin
    computer := True;
    Fdiff := d;
    if Fdiff = 'e' then FRandomNum := 5;
    if Fdiff = 'm' then FRandomNum := 3;
    if Fdiff = 'h' then FRandomNum := 2;
  end;
  Fbalance := 1500;
  Fjailturns := 0;
  Fpos := 0;
  alive := True;
end;

function TPlayer.GetPos: integer;
begin
  result := FPos;
end;

function TPlayer.GetPropertiesTax: integer;
var
  runningcost : integer;
begin
  runningcost := 25 * Fhousenum;
  runningcost := runningcost + (120 * Fhotelnum);
  result := runningcost;
end;

function TPlayer.GetRandomNum: integer;
begin
  result := FRandomNum;
end;

procedure TPlayer.DecreaseBalance(value: integer);
begin
  FBalance := FBalance - value;
end;

function TPlayer.GetBalance: integer;
begin
  result := FBalance;
end;

function TPlayer.GetBalanceLine: string;
begin
  result := FName + '''s new balance is £' + inttostr(FBalance);
end;

function TPlayer.GetColour(playernum: integer): TColor;
begin
  case playernum of
    0 : result := $00F91800;
    1 : result := $002F0DEC;
    2 : result := $0000EA0C;
    3 : result := $0000F9F2;
  end;
end;

function TPlayer.GetDiff: char;
begin
  result := FDiff;
end;

function TPlayer.GetInJail: boolean;
begin
  result := FInJail;
end;

function TPlayer.GetJailCards: integer;
begin
  result := FJailCards;
end;

function TPlayer.GetJailTurns: integer;
begin
  result := FJailTurns;
end;

function TPlayer.GetLeftPos: integer;
var
  relativepos : integer;
begin
  if FInJail = True then
  begin
    result := 132;
  end
  else
  begin
    case pos of
      0: begin
        result := 443
      end;
      1..9: begin
        relativepos := pos mod 10;
        result := (434 - (relativepos*30));
      end;
      10: begin
        result := 108;
      end;
      11..19: begin
        result := 117;
      end;
      20: begin
        result := 124;
      end;
      21..29: begin
        relativepos := pos mod 10;
        result := (134 + (relativepos * 30));
      end;
      30: begin
        result := 132;
      end;
      31..39: begin
        result := 451;
      end;
    end;
  end;
end;

function TPlayer.GetMortgageColour(playernum: integer): TColor;
begin
  case playernum of
    0 : result := $00AE7D68;
    1 : result := $006456A3;
    2 : result := $005C8D63;
    3 : result := $0044AFB5;
  end;
end;

function TPlayer.GetName: string;
begin
  result := FName;
end;

function TPlayer.GetTopPos: integer;
var
  relativepos : integer;
begin
  if Finjail = True then
  begin
    result := 443;
  end
  else
  begin
    case pos of
      0: begin
        result := 448
      end;
      1..9: begin
        result := 455;
      end;
      10: begin
        if Finjail = true then
        begin
          result := 443
        end
        else
        begin
          result := 464
        end;
      end;
      11..19: begin
        relativepos := pos mod 10;
        result := (439 - (relativepos * 30));
      end;
      20: begin
        result := 129;
      end;
      21..29: begin
        result := 121;
      end;
      30: begin
        result := 443;
      end;
      31..39: begin
        relativepos := pos mod 10;
        result := ((137 + relativepos * 30));
      end;
    end;
  end;
end;

procedure TPlayer.IncJailCards;
begin
  inc(FJailCards);
end;

procedure TPlayer.IncJailTurns;
begin
  inc(FJailTurns);
end;

procedure TPlayer.IncreaseBalance(value: integer);
begin
  FBalance := FBalance + value;
end;

procedure TPlayer.ResetJailTurns;
begin
  FJailTurns := 0;
end;

procedure TPlayer.SetBalance(b: integer);
begin
  FBalance := b;
end;

procedure TPlayer.SetDiff(d: char);
begin
  FDiff := d;
end;

procedure TPlayer.SetInjail(j: boolean);
begin
  FInJail := j;
end;

procedure TPlayer.SetName(n: string);
begin
  FName := n;
end;

procedure TPlayer.SetPos(p: integer);
begin
  FPos := p;
end;

end.
