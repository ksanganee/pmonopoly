unit uTile;

interface

uses
  SysUtils, Dialogs, Classes, types;

type

  TTile = class
    protected
      FID, FCost:integer;
      FName:string;
      FRentPrices:array[0..5] of integer;
      FIsProperty, FSpecialCase, FOwned, FMortgaged:boolean;
      FMortgagePrice, FBuildingPrice, FOwnedBy, FProperties:integer;

      function GetID:integer;
      function GetName:string;
      function GetCost:integer;
      function IsSpecialCase:boolean;
      function GetMortgagePrice:integer;
      function GetBuildingPrice:integer;
      function GetOwned:boolean;
      procedure SetOwned(b:boolean);
      function GetOwnedBy:integer;
      procedure SetOwnedBy(p:integer);
      function IsMortgaged:boolean;
      procedure SetMortgaged(m:boolean);

    public
      constructor Create(tileinfo:TStringDynArray);
      //Property which enabled interaction with the field FID
      property ID:integer read GetID;
      //Property which enabled interaction with the field FName
      property Name:string read GetName;
      //Property which enabled interaction with the field FCost
      property cost:integer read GetCost;
      //Retunrs the value in FIsProperty
      function IsProperty:boolean;
      //Property which enabled interaction with the field FSpecialCase
      property SpecialCase:boolean read IsSpecialCase;
      //Property which enabled interaction with the field FMortgagePrice
      property MortgagePrice:integer read GetMortgagePrice;
      //Property which enabled interaction with the field FBuildingPrice
      property BuildingPrice:integer read GetBuildingPrice;
      //Property which enabled interaction with the field FOwned
      property owned:boolean read GetOwned write SetOwned;
      //Property which enabled interaction with the field FOwnedBy
      property OwnedBy:integer read GetOwnedBy write SetOwnedBy;
      //Property which enabled interaction with the field FMortgaged
      property Mortgaged:boolean read IsMortgaged write SetMortgaged;
      //Increments the number of houses/hotels as FProperties by 1
      procedure IncProperties;
      //Returns the number of houses/hotels as FProperties
      function GetProperties:integer;
      //Returns the rent expected for landing on that tile depending on the type and the
      //number of houses on it
      function GetRent:integer;
  end;

implementation

{ TTile }

constructor TTile.Create(tileinfo:TStringDynArray);
var
  i : integer;
begin
  Fid := strtoint(tileinfo[0]);
  Fname := tileinfo[2];

  if tileinfo[1] = 'True' then
  begin
    FisProperty := True;
    FCost := strtoint(tileinfo[3]);

    if tileinfo[4] = 'True' then
    begin
      FSpecialcase := True;
    end
    else
    begin
      for i := 0 to 5 do
      begin
        FRentPrices[i] := strtoint(tileinfo[i+5]);
      end;
      Fbuildingprice := strtoint(tileinfo[11]);
    end;
    Fmortgageprice := cost div 2;
  end
  else
  begin
    FisProperty := False;
  end;

  owned := False;
  ownedby := -1;
  FProperties := 0;
  mortgaged := False;

  if Fid = 0 then
  begin
    Fisproperty := False;
  end;
end;

function TTile.GetBuildingPrice: integer;
begin
  result := FBuildingPrice;
end;

function TTile.GetCost: integer;
begin
  result := FCost;
end;

function TTile.GetID: integer;
begin
  result := FID;
end;

function TTile.GetMortgagePrice: integer;
begin
  result := FMortgagePrice;
end;

function TTile.GetName: string;
begin
  result := Fname;
end;

function TTile.GetOwned: boolean;
begin
  result := FOwned;
end;

function TTile.GetOwnedBy: integer;
begin
  result := FOwnedBy;
end;

function TTile.GetProperties:integer;
begin
  result := FProperties;
end;

function TTile.GetRent: integer;
begin
  result := FRentPrices[FProperties];
end;

procedure TTile.IncProperties;
begin
  inc(FProperties);
  try
    FMortgageprice := FMortgageprice + round(0.5 * FBuildingprice);
  except
    On E: EInvalidOp do
    begin
      FMortgagePrice := FMortgagePrice + (FBuildingPrice div 2);
    end;
  end;
end;

function TTile.IsMortgaged: boolean;
begin
  result := FMortgaged;
end;

function TTile.IsProperty: boolean;
begin
  result := FIsProperty;
end;

function TTile.IsSpecialCase: boolean;
begin
  result := FSpecialCase;
end;

procedure TTile.SetMortgaged(m: boolean);
begin
  FMortgaged := m;
  if m = True then FProperties := 0
end;

procedure TTile.SetOwned(b: boolean);
begin
  FOwned := b;
end;

procedure TTile.SetOwnedBy(p: integer);
begin
  FOwnedBy := p;
end;

end.
