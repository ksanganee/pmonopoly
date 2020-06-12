unit uTrade;

interface

type
  TTrade = record
    //PlayerTo = Stores the player number of the player who the trade is directed to
    //PlayerFrom = Stores the player number of the player who the trade is form
    PlayerTo, PlayerFrom : integer;
    //PropertiesTo = Stores the ids of the properties which PlayerFrom wants to give away
    //PropertiesFrom = Stores the ids of the properties which PlayerFrom wants in return
    PropertiesTo, PropertiesFrom : array of integer;
    //MoneyTo = Stores the amount of money which PlayerFrom wants to give away
    //MoneyFrom = Stores the amount of money which PlayerFrom wants in return
    MoneyTo, MoneyFrom : integer;
  end;

implementation

end.
