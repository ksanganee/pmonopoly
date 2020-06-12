unit uGameForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uBoard,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Buttons,
  uPlayers, uTile, uStack, uTrade;

  //Smaller = shorter game; larger = longer game
  const GoMoney:integer = 100;

type
  TGameForm = class(TForm)
    GridPanel: TGridPanel;
    Start: TButton;
    PlayerNames: TLabel;
    Player1, Player2, Player3, Player4: TEdit;
    P1Type, P2Type, P3Type, P4Type: TCheckBox;
    AddPlayer, StartGame: TButton;
    PlayerType, PlayerDiff: TLabel;
    BoardIMG: TImage;
    P1Diff, P2Diff, P3Diff, P4Diff: TEdit;
    DiffHelp, Outp: TMemo;
    RollDiceB, EndTurnB: TButton;
    Buy, DBuy: TButton;
    CostLbl: TLabel;
    UseJC, DUseJc: TButton;
    ScaleFactorEdit: TEdit;
    p1c, p2c, p3c, p4c: TShape;
    tile1, tile3, tile5, tile6, tile8, tile9, tile11, tile12, tile13, tile14, tile15,
    tile16, tile18, tile19, tile21, tile23, tile24, tile25, tile26, tile27, tile28,
    tile29, tile31, tile32, tile34, tile35, tile37, tile39: TShape;
    p1b, p2b, p3b, p4b: TButton;
    OutL: TLabel;
    E1, E2: TEdit;
    L1, L2: TLabel;
    SendB: TButton;
    Lfrom: TLabel;
    TileL: TLabel;
    Lto: TLabel;
    AcceptB, RejectB: TButton;
    MortgageB, PropertiesB, TradeB: TButton;
    tile1img, tile3img, tile5img, tile6img, tile8img, tile9img, tile11img, tile12img,
    tile13img, tile14img, tile15img, tile16img, tile18img, tile19img, tile21img,
    tile23img, tile24img, tile25img, tile26img, tile27img, tile28img, tile29img,
    tile31img, tile32img, tile34img, tile35img, tile37img, tile39img: TImage;
    NameL, CostL, PropertiesL: TLabel;
    CloseB: TButton;

    procedure StartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AddPlayerClick(Sender: TObject);
    procedure StartGameClick(Sender: TObject);
    procedure RollDiceBClick(Sender: TObject);
    procedure EndTurnBClick(Sender: TObject);
    procedure BuyClick(Sender: TObject);
    procedure DBuyClick(Sender: TObject);
    procedure DUseJcClick(Sender: TObject);
    procedure UseJCClick(Sender: TObject);
    procedure GetScaleFactor;
    procedure tile1ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure TradeBClick(Sender: TObject);
    procedure p1bClick(Sender: TObject);
    procedure p2bClick(Sender: TObject);
    procedure p3bClick(Sender: TObject);
    procedure p4bClick(Sender: TObject);
    procedure tile3ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile5ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure RejectBClick(Sender: TObject);
    procedure SendBClick(Sender: TObject);
    procedure AcceptBClick(Sender: TObject);
    procedure tile6ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile8ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile9ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile11ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile12ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile13ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile14ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile15ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile16ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile18ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile19ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile21ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile23ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile24ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile25ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile26ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile27ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile28ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile29ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile31ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile32ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile34ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile35ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile37ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tile39ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure MortgageBClick(Sender: TObject);
    procedure PropertiesBClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure tile3imgMouseEnter(Sender: TObject);
    procedure tile1imgMouseEnter(Sender: TObject);
    procedure tile5imgMouseEnter(Sender: TObject);
    procedure tile6imgMouseEnter(Sender: TObject);
    procedure tile8imgMouseEnter(Sender: TObject);
    procedure tile9imgMouseEnter(Sender: TObject);
    procedure tile11imgMouseEnter(Sender: TObject);
    procedure tile12imgMouseEnter(Sender: TObject);
    procedure tile13imgMouseEnter(Sender: TObject);
    procedure tile14imgMouseEnter(Sender: TObject);
    procedure tile15imgMouseEnter(Sender: TObject);
    procedure tile16imgMouseEnter(Sender: TObject);
    procedure tile18imgMouseEnter(Sender: TObject);
    procedure tile19imgMouseEnter(Sender: TObject);
    procedure tile21imgMouseEnter(Sender: TObject);
    procedure tile23imgMouseEnter(Sender: TObject);
    procedure tile25imgMouseEnter(Sender: TObject);
    procedure tile24imgMouseEnter(Sender: TObject);
    procedure tile26imgMouseEnter(Sender: TObject);
    procedure tile27imgMouseEnter(Sender: TObject);
    procedure tile28imgMouseEnter(Sender: TObject);
    procedure tile29imgMouseEnter(Sender: TObject);
    procedure tile31imgMouseEnter(Sender: TObject);
    procedure tile32imgMouseEnter(Sender: TObject);
    procedure tile34imgMouseEnter(Sender: TObject);
    procedure tile35imgMouseEnter(Sender: TObject);
    procedure tile37imgMouseEnter(Sender: TObject);
    procedure tile39imgMouseEnter(Sender: TObject);
    procedure CloseBClick(Sender: TObject);

  private
  //Setup variables
    playernum : integer;

  //Game variables
    board:TBoard;
    players:array of TPlayer;
    ChanceStack, CChestStack : TNumberStack;
    CurrentPlayer, tradingplayer:integer;
    double, intrade, pendingtrade, mortgaging, buyinghouses:boolean;
    currenttrade:TTrade;
    p1alive,p2alive,p3alive,p4alive:boolean;
    ingame, allcomputerplayers:boolean;

  //Gui parts
    scalefctr : integer;
    propertyshapes : array [0..39] of TShape;
    procedure MoveCounter;
    procedure PrepareTileShapeArray;
    procedure setGUIstart;
    procedure setGUIplayerChoices;
    procedure setGUIgame;
    procedure HoverOver(t:integer);

    procedure StartPlayerGame;
    procedure PassedGo;
    procedure NormalTurn(r1,r2:integer;b,g:boolean);
    procedure RollDiceProcedure;
    procedure EndTurnProcedure;
    procedure nextplayer;
    procedure CheckForDouble;
    procedure RollLine(x,y:integer);
    procedure removePlayer(player:integer);
    function GetAlivePlayers:integer;
    function GetTrainOwned(p:integer):integer;
    procedure LandedOnChance;
    procedure LandedOnCommunityChest;
    procedure UseJailCard;
    procedure DontUseJailCard;
    procedure ClearCurrentTrade;
    procedure SetupTrade;
    procedure AcceptTrade;
    procedure RejectTrade;
    procedure TileShapeClick(p:integer);
    function PlayerOwnRange(player,clickedpos:integer):boolean;
    procedure ComputerTurn;
    function FAllComputerPlayers:boolean;
    procedure ComputerBuyProperties;
    procedure EndGame;
    function ArrayContains(arr:array of integer;elem:integer):boolean;
  end;

  Const PropertyIDs  : array  [0..27] of integer = (1,3,5,6,8,9,11,12,13,14,15,16,18,19,21,
  23,24,25,26,27,28,29,31,32,34,35,37,39);

var
  GameForm: TGameForm;

implementation

{$R *.dfm}

//When the accept trade button is clicked
procedure TGameForm.AcceptBClick(Sender: TObject);
begin
  accepttrade;
end;

//This uses the record created when making the trade and engages the exchange between the
//players, then it modifies the property images to match the correct owner
procedure TGameForm.accepttrade;
var
  i : integer;
begin
  players[CurrentPlayer].IncreaseBalance(currenttrade.moneyto);
  players[currenttrade.playerfrom].DecreaseBalance(currenttrade.moneyto);
  players[CurrentPlayer].DecreaseBalance(currenttrade.moneyfrom);
  players[currenttrade.playerfrom].IncreaseBalance(currenttrade.moneyfrom);
  for i := 0 to Length(currenttrade.propertiesto)-1 do
  begin
    board.tiles[currenttrade.propertiesto[i]].ownedby := CurrentPlayer;
    propertyshapes[currenttrade.propertiesto[i]].Brush.Color :=
    players[0].GetColour(CurrentPlayer);
  end;
  for i := 0 to Length(currenttrade.propertiesfrom)-1 do
  begin
    board.tiles[currenttrade.propertiesfrom[i]].ownedby := currenttrade.playerfrom;
    propertyshapes[currenttrade.propertiesfrom[i]].Brush.Color :=
    players[0].GetColour(currenttrade.playerfrom);
  end;
  ClearCurrentTrade;
  AcceptB.Hide;
  RejectB.Hide;
  RollDiceB.Enabled := True;
  pendingTrade := False;
  outp.Lines.Add('Trade accepted');
  intrade := false;
end;

//Enabled more players to be added at the getting players stage
procedure TGameForm.AddPlayerClick(Sender: TObject);
begin
  if playernum = 2 then
  begin
    Player3.Show;
    P3Type.Show;
    p3diff.show;
    inc(playernum)
  end
  else
  begin
    Player4.Show;
    P4Type.Show;
    p4diff.Show;
    inc(playernum);
    AddPlayer.Hide;
  end;
end;

//A generic function required for determining if a property had already been clicked in the
//trading section
function TGameForm.arraycontains(arr: array of integer; elem: integer): boolean;
var
  i: Integer;
begin
  for i := 0 to length(arr)-1 do
  begin
    if arr[i] = elem then result := True;
  end
end;

//Subtracts the cost of the propety from the player and changes the colour of the tile
//image
procedure TGameForm.BuyClick(Sender: TObject);
begin
  Buy.Hide;
  DBuy.Hide;
  CostLbl.Hide;
  players[CurrentPlayer].DecreaseBalance(board.tiles[players[CurrentPlayer].pos].cost);
  board.tiles[players[CurrentPlayer].pos].owned := True;
  board.tiles[players[CurrentPlayer].pos].ownedby := CurrentPlayer;
  Outp.Lines.Add(players[CurrentPlayer].name + ' has purchased ' +
  board.tiles[players[CurrentPlayer].pos].name);
  Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
  propertyshapes[players[CurrentPlayer].pos].Show;
  propertyshapes[players[CurrentPlayer].pos].Brush.Color :=
  players[0].GetColour(CurrentPlayer);
  if players[CurrentPlayer].balance < 0 then
  begin
    TradeB.Hide;
    outp.Lines.Add(players[CurrentPlayer].name + ' is currently in debt');
    outp.Lines.Add(players[CurrentPlayer].name +
    ' needs to mortgage properties to a positive balance or will be kicked out the game');
    MortgageB.Show;
  end;
  CheckForDouble;
end;

//Recursive call for the main turn function of a human player
procedure TGameForm.CheckForDouble;
begin
  if double = True then
  begin
    outp.Lines.Add(players[CurrentPlayer].name + ' rolled a double so takes another turn');
    outp.Lines.Add('');
    double := False;
    RollDiceProcedure;
  end
  else EndTurnB.Enabled := True;
end;

//Upon accepting or rejectying a trade, the record must be cleared
procedure TGameForm.ClearCurrentTrade;
begin
  Currenttrade.playerto := -1;
  Currenttrade.playerfrom := -1;
  setLength(Currenttrade.propertiesto, 1);
  setLength(Currenttrade.propertiesfrom, 1);
  Currenttrade.moneyto := 0;
  Currenttrade.moneyfrom := 0;
  tradingplayer := -1;
  E1.Text := '';
  E2.Text := '';
  Lfrom.Hide;
  lto.Hide;
  Currenttrade := Default(TTrade);
end;

//At the end of the game the close button closes the form
procedure TGameForm.CloseBClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to 39 do board.tiles[i].Free;
  board.Free;
  for i := 0 to length(players)-1 do players[i].Free;
  GameForm.Close;
end;

//Recursive call for the computer to buy properties on any tiles it can
procedure TGameForm.computerbuyproperties;
var
  i : integer;
begin
  for i := 0 to 27 do
  begin
    if (playerownrange(CurrentPlayer,propertyids[i]) = true) and
       (players[CurrentPlayer].balance > board.tiles[propertyids[i]].buildingprice) and
       (board.tiles[propertyids[i]].Getproperties < 5) then
    begin
      board.tiles[propertyids[i]].IncProperties;
      players[CurrentPlayer].DecreaseBalance(board.tiles[propertyids[i]].buildingprice);
      outp.Lines.Add(players[CurrentPlayer].name + ' purchased a property on ' +
      board.tiles[propertyids[i]].name + ' for £' +
      inttostr(board.tiles[propertyids[i]].buildingprice));
      if (players[CurrentPlayer].balance > 5 * board.tiles[propertyids[i]].buildingprice)
         and (players[CurrentPlayer].diff = 'h') then computerbuyproperties;
    end;
  end;
end;

//main function for the computer turn
procedure TGameForm.computerturn;
var
  randint1, r1, r2, newpos, rollsum, tempcost: integer;
begin
  randomize;
  if (pendingtrade = True) and (CurrentPlayer = currenttrade.playerto) then
  begin
    //Randomly decides to accept or reject a trade offer - more likely to accept if easy
    //difficulty
    if players[CurrentPlayer].diff = 'e' then randint1 := random(3);
    if players[CurrentPlayer].diff = 'm' then randint1 := random(5);
    if players[CurrentPlayer].diff = 'h' then randint1 := random(6);
    if randint1 = 0 then accepttrade
    else rejecttrade;
  end;
  r1 := random(6) + 1;
  r2 := random(6) + 1;
  //randint1 is determined by difficulty of the computer player and its value decides what
  //actions are taken on its turn e.g. buying properties or not
  randint1 := random(players[CurrentPlayer].randomupper);
  double := False;
  RollLine(r1,r2);
  if r1 = r2 then double := true;
  rollsum := r1 + r2;
  if players[CurrentPlayer].pos + rollsum > 39 then passedgo;
  if players[CurrentPlayer].injail = False then
  begin
    players[CurrentPlayer].pos := ((players[CurrentPlayer].pos + r1 + r2) mod 40);
    newpos := players[CurrentPlayer].pos;
    outp.Lines.Add(players[CurrentPlayer].name + ' has landed on ' +
    board.tiles[players[CurrentPlayer].pos].name);
    if (board.tiles[newpos].owned = False) and (board.tiles[newpos].isproperty) then
    begin
      if randint1 = 0 then
      begin
        //If possible and ranint1 is 0 then the property is bought
        if players[CurrentPlayer].diff = 'h' then
        begin
          if players[CurrentPlayer].balance > (2 * board.tiles[newpos].cost) then
          begin
            if (newpos = (players[0].pos - 7)) or
               (newpos = (players[1].Pos - 7)) or
               (newpos = 16) or
               (newpos = 18) or
               (newpos = 19) then
            begin
              players[CurrentPlayer].DecreaseBalance
              (board.tiles[players[CurrentPlayer].pos].cost);
              board.tiles[players[CurrentPlayer].pos].owned := True;
              board.tiles[players[CurrentPlayer].pos].ownedby := CurrentPlayer;
              Outp.Lines.Add(players[CurrentPlayer].name + ' has purchased ' +
              board.tiles[players[CurrentPlayer].pos].name);
              Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
              if allcomputerplayers = False then
              propertyshapes[players[CurrentPlayer].pos].Show;
              propertyshapes[players[CurrentPlayer].pos].Brush.Color :=
              players[CurrentPlayer].GetColour(CurrentPlayer);
            end;
          end;
        end
        else
        begin
          players[CurrentPlayer].DecreaseBalance(
          board.tiles[players[CurrentPlayer].pos].cost);
          board.tiles[players[CurrentPlayer].pos].owned := True;
          board.tiles[players[CurrentPlayer].pos].ownedby := CurrentPlayer;
          Outp.Lines.Add(players[CurrentPlayer].name + ' has purchased ' +
          board.tiles[players[CurrentPlayer].pos].name);
          Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
          if allcomputerplayers = False then propertyshapes[players[CurrentPlayer].pos]
          .Show;
          propertyshapes[players[CurrentPlayer].pos].Brush.Color :=
          players[CurrentPlayer].GetColour(CurrentPlayer);
        end;
      end
    end
    else
    begin
      if (board.tiles[players[CurrentPlayer].pos].owned = True) and
         (board.tiles[players[CurrentPlayer].pos].ownedby <> CurrentPlayer) and
         (board.tiles[players[CurrentPlayer].pos].mortgaged = False) and
         (board.tiles[players[CurrentPlayer].pos].specialcase = False) then
      begin
        players[CurrentPlayer].DecreaseBalance(board.tiles[players[CurrentPlayer].pos]
        .GetRent);
        players[board.tiles[players[CurrentPlayer].pos].ownedby].IncreaseBalance
        (board.tiles[players[CurrentPlayer].pos].GetRent);
        Outp.Lines.Add(board.tiles[players[CurrentPlayer].pos].name + ' is owned by ' +
        players[board.tiles[players[CurrentPlayer].pos].ownedby].name +
        ' and is owed £' + inttostr(board.tiles[players[CurrentPlayer].pos].getrent));
        Outp.Lines.Add(
        players[board.tiles[players[CurrentPlayer].pos].OwnedBy].GetBalanceLine);
        Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
      end
      else
      begin
        if (board.tiles[players[CurrentPlayer].pos].owned = True) and
           (board.tiles[players[CurrentPlayer].pos].ownedby <> CurrentPlayer) and
           (board.tiles[players[CurrentPlayer].pos].specialcase = False) then
        begin
          Outp.Lines.Add(board.tiles[players[CurrentPlayer].pos].name +
          ' is mortgaged so no rent is paid');
        end
        else
        begin
          if (board.tiles[players[CurrentPlayer].pos].owned = True) and
             (board.tiles[players[CurrentPlayer].pos].ownedby <> CurrentPlayer) and
             (board.tiles[players[CurrentPlayer].pos].specialcase = True) then
          begin
            if (board.tiles[players[CurrentPlayer].pos].id = 12) or
               (board.tiles[players[CurrentPlayer].pos].id = 28) then
            begin
              //Exchanges the rent in the unique utilities method
              if board.tiles[28].ownedby = board.tiles[12].ownedby then
              tempcost := 10 * (r1+r2)
              else tempcost := 4 * (r1+r2);
              players[CurrentPlayer].balance := players[CurrentPlayer].balance -
              tempcost;
              players[board.tiles[players[CurrentPlayer].pos].ownedby].balance :=
              players[board.tiles[players[CurrentPlayer].pos].ownedby].balance +
              tempcost;
              Outp.Lines.Add(board.tiles[players[CurrentPlayer].pos].name +
              ' is owned by ' +
              players[board.tiles[players[CurrentPlayer].pos].ownedby].name +
              ' and is owed £' + inttostr(tempcost));
              Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
              Outp.Lines.Add(players[board.tiles[players[CurrentPlayer].pos]
              .ownedby].GetBalanceLine);
            end
            else
            begin
              if (board.tiles[players[CurrentPlayer].pos].id = 5) or
                 (board.tiles[players[CurrentPlayer].pos].id = 15) or
                 (board.tiles[players[CurrentPlayer].pos].id = 25) or
                 (board.tiles[players[CurrentPlayer].pos].id = 35) then
              begin
                //Exchanges the rent in the unique station method
                tempcost := GetTrainOwned(board.tiles[players[CurrentPlayer].pos].OwnedBy);
                players[CurrentPlayer].balance := players[CurrentPlayer].balance - tempcost;
                players[board.tiles[players[CurrentPlayer].pos].ownedby].balance :=
                players[board.tiles[players[CurrentPlayer].pos].ownedby].balance + tempcost;
                Outp.Lines.Add(board.tiles[players[CurrentPlayer].pos].name +
                ' is owned by ' + players[board.tiles[players[CurrentPlayer].pos]
                .ownedby].name + ' and is owed £' + inttostr(tempcost));
                Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
                Outp.Lines.Add(players[board.tiles[players[CurrentPlayer].pos].ownedby]
                .GetBalanceLine);
              end
              else
              begin
                //The case statements for the unique tile locations
                case board.tiles[players[CurrentPlayer].pos].id of
                  20 : begin
                    //Upon landing on free parking, that player recieved all the
                    //amount collected from e.g. tax tiles
                    players[CurrentPlayer].IncreaseBalance(board.freeparkingbal);
                    if board.freeparkingbal = 0 then
                    begin
                      Outp.Lines.Add('There was no money on the free parking tile');
                    end
                    else
                    begin
                      Outp.Lines.Add(players[CurrentPlayer].name + ' got £' +
                      inttostr(board.freeparkingbal) + ' from free parking');
                    end;
                    board.freeparkingbal := 0;
                  end;

                  4 : begin
                    //Upon landing on income tax, the player pays 200 to the free
                    //parking balance
                    Outp.Lines.Add(players[CurrentPlayer].name +
                    ' paid $200 to free parking');
                    board.freeparkingbal := board.freeparkingbal + 200;
                    players[CurrentPlayer].DecreaseBalance(200);
                  end;

                  38 : begin
                    //Upon landing on super tax, the player pays 100 to the free parking
                    //balance
                    Outp.Lines.Add(players[CurrentPlayer].name +
                    ' paid $100 to free parking');
                    board.freeparkingbal := board.freeparkingbal + 100;
                    players[CurrentPlayer].DecreaseBalance(100);
                  end;

                  30 :begin
                    //Upon landing on go to jail, that player is sent to jail and
                    //GUI updated
                    players[CurrentPlayer].injail := True;
                    players[CurrentPlayer].IncJailTurns;
                    Outp.Lines.Add(players[CurrentPlayer].name + ' has entered jail');
                    players[CurrentPlayer].pos := 10;
                    MoveCounter;
                  end;

                  //7, 22 or 36 are all chance tiles
                  7 : landedonchance;
                  22 : landedonchance;
                  36 : landedonchance;

                  //2, 17, 33 are all community chest tiles
                  2 : landedoncommunitychest;
                  17 : landedoncommunitychest;
                  33 : landedoncommunitychest;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    //If in jail and the player has get out of jail free cards then the computer uses them
    if players[CurrentPlayer].GetJailCards > 0 then usejailcard
    else
    begin
      if double = True then
      begin
        players[CurrentPlayer].InJail := False;
        players[CurrentPlayer].ResetJailTurns;
        computerturn;
      end
      else
      begin
        outp.Lines.Add('computer player is in jail');
        players[CurrentPlayer].IncJailTurns;
      end;
    end;
  end;
  //Only update the positions of the counter if there is a human player

   if allcomputerplayers = False then MoveCounter;


  if (randint1 = 2) then
  begin
    //The computer recursively buys properties if it is able to
    computerbuyproperties;
  end;

  if double = True then computerturn
  else EndTurnProcedure;
end;

//If the player doesn't want to buy the property then the buttons are hidden
procedure TGameForm.DBuyClick(Sender: TObject);
begin
  DBuy.Hide;
  Buy.Hide;
  CostLbl.Hide;
end;

//If the player doesn't want to user their get out of jail free cards then a normal turn
//is initiated
procedure TGameForm.DontUseJailCard;
begin
  if double = True then
  begin
    RollLine(players[CurrentPlayer].roll1,players[CurrentPlayer].roll2);
    players[CurrentPlayer].injail := False;
    players[CurrentPlayer].ResetJailTurns;
    NormalTurn(players[CurrentPlayer].roll1,players[CurrentPlayer].roll2,true,false);
  end
  else
  begin
    RollLine(players[CurrentPlayer].roll1,players[CurrentPlayer].roll2);
    players[CurrentPlayer].IncJailTurns;
    if players[CurrentPlayer].Getjailturns > 3 then
    begin
      //As in the real game, if the player has been in jail for 3 turns, then on the 4th
      //they are charged
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' has been in jail for 3 turns and will be charged £100');
      players[CurrentPlayer].balance := players[CurrentPlayer].balance - 100;
      players[CurrentPlayer].injail := False;
      players[CurrentPlayer].Resetjailturns;
      NormalTurn(players[CurrentPlayer].roll1,players[CurrentPlayer].roll2,true,false);
      MoveCounter;
    end
  end;
end;

//If the player doesn't wish to use their get out of jail free cards then the buttons
//are hidden
procedure TGameForm.DUseJcClick(Sender: TObject);
begin
  DontUseJailCard;
  DUseJc.Hide;
  UseJc.Hide;
end;

//At the end of the computer turn, the final game state is shown to the user
procedure TGameForm.EndGame;
var
  i: Integer;
begin
  players[CurrentPlayer].computer := False;
  TradeB.hide;
  MortgageB.Hide;
  PropertiesB.Hide;
  CloseB.show;
  for i := 0 to 27 do
  begin
    if board.tiles[propertyids[i]].owned = True then
    begin
      propertyshapes[propertyids[i]].Show;
      propertyshapes[propertyids[i]].Brush.Color :=
      players[CurrentPlayer].GetColour(board.tiles[propertyids[i]].ownedby);
    end;
  end;
end;

//For when the end turn button is clicked
procedure TGameForm.EndTurnBClick(Sender: TObject);
begin
  endturnprocedure;
end;

//At the end of a turn, it prepares the game for the next players turn
procedure TGameForm.endturnprocedure;
var
  i :integer;
begin
  double := False;
  randomize;
  buy.Hide;
  dbuy.Hide;
  if players[CurrentPlayer].balance < 0 then
  begin
    //If the players balance is below zero then they are kicked out
    outp.Lines.Add(players[CurrentPlayer].name + ' has been kicked out the game');
    removePlayer(CurrentPlayer);

    //If that player is involved in the pending trade then it is cleared as would block
    //other trades in the future
    if (pendingtrade = True) and ((currenttrade.playerto = CurrentPlayer) or
       (currenttrade.playerfrom = CurrentPlayer)) then
    begin
      outp.Lines.Add('The current trade involved ' + players[CurrentPlayer].name +
      ' so has been cleared');
      for i := 0 to Length(currenttrade.propertiesto)-1 do
      begin
        propertyshapes[currenttrade.propertiesto[i]].Brush.Color :=
        players[CurrentPlayer].GetColour(board.tiles[currenttrade.propertiesto[i]].ownedby)
      end;
      for i := 0 to Length(currenttrade.propertiesfrom)-1 do
      begin
        propertyshapes[currenttrade.propertiesfrom[i]].Brush.Color :=
        players[CurrentPlayer].GetColour(
        board.tiles[currenttrade.propertiesfrom[i]].ownedby)
      end;
      clearcurrenttrade;
    end;
    //If there is 1 player remaining then the game is over
    if GetAlivePlayers = 1 then
    begin
      EndTurnB.Hide;
      RollDiceB.Hide;
      nextplayer;
      showmessage(players[CurrentPlayer].name + ' has won the game');
      EndGame;
    end
  end;
  //Organises the next alive player to become 'CurrentPlayer'
  nextPlayer;
  if players[CurrentPlayer].computer = True then
  begin
    computerturn;
  end
  else
  begin
    if (pendingtrade = True) and (CurrentPlayer = currenttrade.playerto) then
    begin
      RollDiceB.Enabled := False;
      outp.Lines.Add(players[CurrentPlayer].name + ' has recieved a trade from ' +
      players[currenttrade.playerfrom].name);
      outp.lines.Add(players[currenttrade.playerfrom].name + ' wants the tiles:');
      for i := 0 to Length(currenttrade.propertiesfrom)-1 do
      begin
        outp.Lines.Add(board.tiles[currenttrade.propertiesfrom[i]].name);
      end;
      outp.lines.Add('And £' + inttostr(currenttrade.moneyfrom));
      outp.Lines.Add('');
      outp.Lines.Add('In return for the tiles:');
      for i := 0 to Length(currenttrade.propertiesto)-1 do
      begin
        outp.Lines.Add(board.tiles[currenttrade.propertiesto[i]].name);
      end;
      outp.lines.Add('And £' + inttostr(currenttrade.moneyto));
      AcceptB.Show;
      RejectB.Show;
    end
    else
    begin
      RollDiceB.Enabled := True;
      if pendingtrade = False then TradeB.Show;
      MortgageB.Show;
      propertiesb.Show;
    end;
  end;
  CostLbl.Hide;
end;

//Function to determine if all the players involved in the game are computer controlled
function TGameForm.fallcomputerplayers: boolean;
begin
  if playernum = 3 then
  begin
    if (p1type.Checked = True) and (p2type.Checked = True) and (p3type.Checked = True)
    then result := True
    else result := False;
  end
  else
  begin
    if playernum = 4 then
    begin
      if (p1type.Checked = True) and (p2type.Checked = True) and (p3type.Checked = True)
      and (p4type.Checked = True) then result := True
      else result := False;
    end
    else
    begin
      if (p1type.Checked = True) and (p2type.Checked = True) then result := True
      else result := False;
    end
  end;
end;

//Prepares the form and ses up the gui
procedure TGameForm.FormCreate(Sender: TObject);
begin
  setGUIstart;
  GridPanel.Show;
  BoardIMG.Hide;
  scaled := true;
  ingame := False;
  preparetileshapearray;
end;

//If the mouse hovers over the form then the labels are hidden
procedure TGameForm.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  NameL.Hide;
  CostL.Hide;
  PropertiesL.Hide;
end;

//Determines how many players are alive
function TGameForm.GetAlivePlayers: integer;
var
  i, x : integer;
begin
  x := 0;
  for i := 0 to playernum-1 do
  begin
    if players[i].alive = True then inc(x)
  end;
  result := x;
end;

//Allows for the counters to be in the correct place as varies with screen reslution
procedure TGameForm.GetScaleFactor;
begin
  if strtoint(scaleFactoredit.Text) in [0..9] then
  begin
    scalefctr := strtoint(ScaleFactorEdit.Text);
  end
  else
  begin
    scalefctr := 1;
  end;
end;

//Determines the number of trains stations a particular player owns
function TGameForm.GetTrainOwned(p:integer): integer;
var
 count : integer;
begin
  count := 0;
  if board.tiles[5].ownedby = p then
  begin
    inc(count);
  end;
  if board.tiles[15].ownedby = p then
  begin
    inc(count);
  end;
  if board.tiles[25].ownedby = p then
  begin
    inc(count);
  end;
  if board.tiles[35].ownedby = p then
  begin
    inc(count);
  end;

  case count of
    1 : result := 25;
    2 : result := 50;
    3 : result := 100;
    4 : result := 200;
  end;
end;

//If the mouse hovers over a tile then the infomation about that is outputted in
//the labels
procedure TGameForm.hoverover(t: integer);
begin
  if ingame = True then
  begin
    NameL.Show;
    CostL.Show;
    PropertiesL.Show;
    NameL.Caption := 'Name: ' + board.tiles[t].name;
    CostL.Caption := 'Cost: £' + inttostr(board.tiles[t].cost);
    PropertiesL.Caption := 'Houses: ' + inttostr(board.tiles[t].Getproperties);
  end;
end;

procedure TGameForm.tile14imgMouseEnter(Sender: TObject);
begin
  hoverover(14);
end;

procedure TGameForm.tile3imgMouseEnter(Sender: TObject);
begin
  hoverover(3);
end;

//Completes a random and appropriate action for landed on a chance tile
procedure TGameForm.landedonchance;
var
  tempint : integer;
begin
  tempint := ChanceStack.Pop;
  case tempint of
    1 : begin
      Outp.Lines.Add(players[CurrentPlayer].name + ' drew the advance to go card');
      passedgo;
      players[CurrentPlayer].pos := 0;
    end;
    2 : begin
      players[CurrentPlayer].injail := True;
      players[CurrentPlayer].IncJailTurns;
      Outp.Lines.Add(players[CurrentPlayer].name + ' drew the advance to jail card');
      Outp.Lines.Add(players[CurrentPlayer].name + ' has entered jail');
      players[CurrentPlayer].pos := 10;
    end;
    3 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the advance to Pall Mall card');
      if players[CurrentPlayer].pos > 13 then passedgo;
      players[CurrentPlayer].pos := 13;
      NormalTurn(0,0,false,false);
    end;
    4 : begin
      Outp.Lines.Add(players[CurrentPlayer].name + ' drew the advance to Kings Cross card');
      if players[CurrentPlayer].pos > 5 then passedgo;
      players[CurrentPlayer].pos := 5;
      NormalTurn(0,0,false,false);
    end;
    5 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the advance to Trafalgar Square card');
      if players[CurrentPlayer].pos > 24 then passedgo;
      players[CurrentPlayer].pos := 24;
      NormalTurn(0,0,false,false);
    end;
    6 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the collect £150 from the bank card');
      players[CurrentPlayer].IncreaseBalance(150);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
    7 : begin
      Outp.Lines.Add(players[CurrentPlayer].name + ' drew the advance to Mayfair card');
      players[CurrentPlayer].pos := 39;
      NormalTurn(0,0,false,false);
    end;
    8 : begin
      Outp.Lines.Add(players[CurrentPlayer].name + ' drew the go back 3 spaces card');
      players[CurrentPlayer].pos := players[CurrentPlayer].pos - 3;
      Outp.Lines.Add(players[CurrentPlayer].name + ' is now on ' +
      board.tiles[players[CurrentPlayer].pos].name);
      NormalTurn(0,0,false,false);
    end;
    9 : begin
      outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the pay £40 per house and £120 per hotel card');
      tempint := players[CurrentPlayer].GetPropertiesTax;
      outp.Lines.Add(players[CurrentPlayer].name + ' has to pay £' + inttostr(tempint));
      players[CurrentPlayer].DecreaseBalance(tempint);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
    10 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the collect £100 from the bank card');
      players[CurrentPlayer].IncreaseBalance(100);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
    11 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the pay £150 for school fees card');
      players[CurrentPlayer].DecreaseBalance(150);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
    12 : begin
      outp.Lines.Add(players[CurrentPlayer].name + ' drew the get out of jail free card');
      players[CurrentPlayer].IncJailCards;
    end;
  end;
  ChanceStack.PushToBottom(tempint);
  MoveCounter;
end;

//Completes a random and appropriate action for landed on a community chest tile
procedure TGameForm.landedoncommunitychest;
var
  tempint:integer;
begin
  tempint := CChestStack.Pop;
  case tempint of
    1 : begin
      Outp.Lines.Add(players[CurrentPlayer].name + ' drew the advance to go card');
      passedgo;
      players[CurrentPlayer].pos := 0;
    end;
    2 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the advance to Old Kent Road card');
      if players[CurrentPlayer].pos > 1 then passedgo;
      players[CurrentPlayer].pos := 1;
      NormalTurn(0,0,false,false);
    end;
    3 : begin
      outp.Lines.Add(players[CurrentPlayer].name + ' drew the advance to jail card');
      players[CurrentPlayer].injail := True;
      players[CurrentPlayer].IncJailTurns;
      Outp.Lines.Add(players[CurrentPlayer].name + ' has enterd jail');
      players[CurrentPlayer].pos := 10;
    end;
    4 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the pay £100 for hospital fees card');
      players[CurrentPlayer].DecreaseBalance(100);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
    5 : begin
      Outp.Lines.Add(players[CurrentPlayer].name + ' drew the pay £50 for a doctor card');
      players[CurrentPlayer].DecreaseBalance(50);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
    6 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the collect £200 for a bank error card');
      players[CurrentPlayer].IncreaseBalance(200);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
    7 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the collect £100 from the bank');
      players[CurrentPlayer].IncreaseBalance(100);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
    8 :  begin
       Outp.Lines.Add(players[CurrentPlayer].name +
       ' drew the collect £100 as inheritance');
      players[CurrentPlayer].IncreaseBalance(100);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
    9 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the collect £20 from an income tax refund');
      players[CurrentPlayer].IncreaseBalance(20);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
    10 : begin
       Outp.Lines.Add(players[CurrentPlayer].name + ' drew the take a chance card');
       landedonchance;
    end;
    11 : begin
      outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the get out of jail free card');
      players[CurrentPlayer].IncJailCards;
    end;
    12 : begin
      Outp.Lines.Add(players[CurrentPlayer].name +
      ' drew the collect £50 from your stocks');
      players[CurrentPlayer].IncreaseBalance(50);
      Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    end;
  end;
  CChestStack.PushToBottom(tempint);
  MoveCounter
end;

//Following 4 procedures are for when trading is being completed and enabled the choice
//of who the trade is sent to
procedure TGameForm.p1bClick(Sender: TObject);
begin
  tradingplayer := 0;
  SetupTrade;
end;

procedure TGameForm.p2bClick(Sender: TObject);
begin
  tradingplayer := 1;
  SetupTrade;
end;

procedure TGameForm.p3bClick(Sender: TObject);
begin
  tradingplayer := 2;
  SetupTrade;
end;

procedure TGameForm.p4bClick(Sender: TObject);
begin
  tradingplayer := 3;
  SetupTrade;
end;

//Upon passing go, the correct player recieves a fixed amount of money
procedure TGameForm.passedgo;
begin
  Outp.Lines.Add(players[CurrentPlayer].name + ' recieved £' + inttostr(gomoney) +
  ' from for passing go');
  players[CurrentPlayer].IncreaseBalance(gomoney);
end;

//Determines if a player owns a colour range which the clicked position is part of
function TGameForm.playerownrange(player, clickedpos:integer): boolean;
begin
  if board.tiles[clickedpos].ownedby = CurrentPlayer then
  begin
    case clickedpos of
      1 : if board.tiles[clickedpos].ownedby = board.tiles[3].ownedby then result := True;
      3 : if board.tiles[clickedpos].ownedby = board.tiles[1].ownedby then result := True;
      6 : if (board.tiles[clickedpos].ownedby = board.tiles[8].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[9].ownedby) then result := True;
      8 : if (board.tiles[clickedpos].ownedby = board.tiles[9].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[6].ownedby) then result := True;
      9 : if (board.tiles[clickedpos].ownedby = board.tiles[6].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[8].ownedby) then result := True;
      11 : if (board.tiles[clickedpos].ownedby = board.tiles[13].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[14].ownedby) then result := True;
      13 : if (board.tiles[clickedpos].ownedby = board.tiles[14].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[11].ownedby) then result := True;
      14 : if (board.tiles[clickedpos].ownedby = board.tiles[11].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[13].ownedby) then result := True;
      16 : if (board.tiles[clickedpos].ownedby = board.tiles[18].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[19].ownedby) then result := True;
      18 : if (board.tiles[clickedpos].ownedby = board.tiles[19].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[16].ownedby) then result := True;
      19 : if (board.tiles[clickedpos].ownedby = board.tiles[16].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[18].ownedby) then result := True;
      21 : if (board.tiles[clickedpos].ownedby = board.tiles[23].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[24].ownedby) then result := True;
      23 : if (board.tiles[clickedpos].ownedby = board.tiles[24].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[21].ownedby) then result := True;
      24 : if (board.tiles[clickedpos].ownedby = board.tiles[21].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[23].ownedby) then result := True;
      26 : if (board.tiles[clickedpos].ownedby = board.tiles[27].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[29].ownedby) then result := True;
      27 : if (board.tiles[clickedpos].ownedby = board.tiles[29].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[26].ownedby) then result := True;
      29 : if (board.tiles[clickedpos].ownedby = board.tiles[26].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[27].ownedby) then result := True;
      31 : if (board.tiles[clickedpos].ownedby = board.tiles[32].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[34].ownedby) then result := True;
      32 : if (board.tiles[clickedpos].ownedby = board.tiles[34].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[31].ownedby) then result := True;
      34 : if (board.tiles[clickedpos].ownedby = board.tiles[31].ownedby) and
        (board.tiles[clickedpos].ownedby = board.tiles[32].ownedby) then result := True;
      37 : if board.tiles[clickedpos].ownedby = board.tiles[39].ownedby then result := True;
      39 : if board.tiles[clickedpos].ownedby = board.tiles[37].ownedby then result := True;
    else result := False;
    end;
  end
  else result := False;
end;

//Creates an array of TShapes at runtime from the elements on the form
procedure TGameForm.PrepareTileShapeArray;
var
  i: Integer;
begin
  for i := 0 to 27 do
  begin
    propertyshapes[propertyids[i]] := FindComponent('tile' + inttostr(propertyids[i]))
    as TShape;
    propertyshapes[propertyids[i]].Hide;
  end;
end;

//This allows the button to behave as a toggle for buying the properties
procedure TGameForm.PropertiesBClick(Sender: TObject);
begin
  if buyinghouses = False then
  begin
    buyinghouses := True;
    propertiesb.Caption := 'Stop buying';
    RollDiceB.enabled := False;
    TradeB.Enabled := False;
    EndTurnB.Enabled := False;
    MortgageB.Enabled := False;
    Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
  end
  else
  begin
    buyinghouses := False;
    propertiesb.Caption := 'Get Houses/Hotels';
    RollDiceB.enabled := True;
    TradeB.Enabled := True;
    MortgageB.Enabled := True;
  end;
end;

//This allows the button to behave as a toggle for mortgaging properties
procedure TGameForm.MortgageBClick(Sender: TObject);
begin
  if mortgaging = False then
  begin
    mortgageb.Caption := 'End mortgaging';
    mortgaging := True;
    RollDiceB.enabled := False;
    TradeB.Enabled := False;
    EndTurnB.Enabled := False;
    propertiesb.Enabled := False;
  end
  else
  begin
    mortgaging := False;
    Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
    mortgageb.caption := 'Mortgage tiles';
    RollDiceB.enabled := True;
    TradeB.Enabled := True;
    outp.Lines.Add('');
    propertiesb.Enabled := True;
  end;
end;

//This procedure is called to set the counter in the correct place for the user
procedure TGameForm.MoveCounter;
begin
  case CurrentPlayer of
    0: begin
      p1c.Left := scalefctr*players[CurrentPlayer].GetLeftPos;
      p1c.Top := scalefctr*players[CurrentPlayer].GetTopPos;
    end;
    1 : begin
      p2c.Left := scalefctr*players[CurrentPlayer].GetLeftPos;
      p2c.Top := scalefctr*players[CurrentPlayer].GetTopPos;
    end;
    2 : begin
      p3c.Left := scalefctr*players[CurrentPlayer].GetLeftPos;
      p3c.Top := scalefctr*players[CurrentPlayer].GetTopPos;
    end;
    3 : begin
      p4c.Left := scalefctr*players[CurrentPlayer].GetLeftPos;
      p4c.Top := scalefctr*players[CurrentPlayer].GetTopPos;
    end;
  end;
end;

//Called at the end of a complete turn to get the next player in the circular queue
procedure TGameForm.nextplayer;
begin
  CurrentPlayer := (CurrentPlayer + 1) mod playernum;
  EndTurnB.Enabled := False;
  if players[CurrentPlayer].alive = False then nextplayer
  else
  begin
    Outp.Lines.Add('');
    Outp.Lines.Add(players[CurrentPlayer].name + '''s turn');
  end;
end;

//Called for human players only and is similar to computerturn but just gives the user
//choices to make using buttons in the GUI
procedure TGameForm.NormalTurn(r1,r2:integer;b,g:boolean);
var
  tempcost, tempint, newpos :integer;
begin
  newpos := (players[CurrentPlayer].pos + r1 + r2) mod 40;
  players[CurrentPlayer].pos := newpos;
  if not((r1 = 0) and (r2 = 0)) then
  begin
    if b = false then
    begin
      RollLine(r1,r2);
      MoveCounter;
    end;
    Outp.Lines.Add(players[CurrentPlayer].name + ' has moved to ' +
    board.tiles[players[CurrentPlayer].pos].Name);
    if board.tiles[players[CurrentPlayer].pos].isproperty = False then
    begin
      Buy.Hide;
      DBuy.Hide;
    end;
    if g = true then passedgo;
  end;
  newpos := players[CurrentPlayer].pos;
  if board.tiles[newpos].IsProperty then
  begin
    if board.tiles[newpos].Owned = False then
    begin
      Buy.Show;
      DBuy.Show;
      CostLbl.Show;
      CostLbl.Caption := 'Cost: £' + inttostr(board.tiles[players[CurrentPlayer].pos].cost);
    end
    else
    begin
      if board.tiles[newpos].OwnedBy = CurrentPlayer then
      begin
        outp.Lines.Add(players[CurrentPlayer].name + ' owns ' +
        board.tiles[players[CurrentPlayer].pos].name);
      end
      else
      begin
        if board.tiles[newpos].Mortgaged = True then
        begin
          Outp.Lines.Add(board.tiles[players[CurrentPlayer].pos].name +
          ' is mortgaged so no rent is paid');
        end
        else
        begin
          if (board.tiles[newpos].SpecialCase = True) then
          begin
            if (board.tiles[newpos].ID = 12) or (board.tiles[newpos].ID = 28) then
            begin
              if board.tiles[28].ownedby = board.tiles[12].ownedby then tempcost :=
              10 * (r1+r2)
              else tempcost := 4 * (r1+r2);
              players[CurrentPlayer].DecreaseBalance(tempcost);
              players[board.tiles[players[CurrentPlayer].pos].ownedby]
              .IncreaseBalance(tempcost);
              Outp.Lines.Add(board.tiles[players[CurrentPlayer].pos].name +' is owned by '
              + players[board.tiles[players[CurrentPlayer].pos].ownedby].name +
              ' and is owed £' + inttostr(tempcost));
              Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
              Outp.Lines.Add(players[board.tiles[players[CurrentPlayer].pos]
              .ownedby].GetBalanceLine);
            end
            else
            begin
              tempcost := 0;
              tempint := GetTrainOwned(board.tiles[newpos].OwnedBy);
              if tempint = 1 then tempcost := 25;
              if tempint = 2 then tempcost := 50;
              if tempint = 3 then tempcost := 100;
              if tempint = 4 then tempcost := 200;
              players[CurrentPlayer].DecreaseBalance(tempcost);
              players[board.tiles[players[CurrentPlayer].pos].ownedby].
              IncreaseBalance(tempcost);
              Outp.Lines.Add(board.tiles[players[CurrentPlayer].pos].name +
              ' is owned by ' + players[board.tiles[players[CurrentPlayer].pos]
              .ownedby].name + ' and is owed £' + inttostr(tempcost));
              Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
              Outp.Lines.Add(players[board.tiles[players[CurrentPlayer].pos].ownedby]
              .GetBalanceLine);
            end;
          end
          else
          begin
            players[CurrentPlayer].DecreaseBalance(board.tiles[newpos].GetRent);
            players[board.tiles[newpos].OwnedBy].IncreaseBalance(
            board.tiles[newpos].GetRent);
            Outp.Lines.Add(board.tiles[players[CurrentPlayer].pos].name + ' is owned by '
            + players[board.tiles[players[CurrentPlayer].pos].ownedby].name +
            ' and is owed £' + inttostr(board.tiles[players[CurrentPlayer].pos].getrent));
            Outp.Lines.Add(players[CurrentPlayer].GetBalanceLine);
            Outp.Lines.Add(players[board.tiles[newpos].OwnedBy].GetBalanceLine);
          end;
        end;
      end;
    end;
  end
  else
  begin
    case board.tiles[players[CurrentPlayer].pos].id of
      20 : begin
        players[CurrentPlayer].IncreaseBalance(board.freeparkingbal);
        if board.freeparkingbal = 0 then
        begin
          Outp.Lines.Add('There was no money on the free parking tile');
        end
        else
        begin
          Outp.Lines.Add(players[CurrentPlayer].name + ' got £' +
          inttostr(board.freeparkingbal) + ' from free parking');
        end;
        board.freeparkingbal := 0;
      end;

      4 : begin
        Outp.Lines.Add(players[CurrentPlayer].name + ' paid $200 to free parking');
        board.freeparkingbal := board.freeparkingbal + 200;
        players[CurrentPlayer].DecreaseBalance(200);
      end;

      38 : begin
        Outp.Lines.Add(players[CurrentPlayer].name + ' paid $100 to free parking');
        board.freeparkingbal := board.freeparkingbal + 100;
        players[CurrentPlayer].DecreaseBalance(100);
      end;

      30 :begin
        players[CurrentPlayer].injail := True;
        players[CurrentPlayer].IncJailTurns;
        Outp.Lines.Add(players[CurrentPlayer].name + ' has entered jail');
        players[CurrentPlayer].pos := 10;
        MoveCounter;
      end
    end;
    if (board.tiles[players[CurrentPlayer].pos].id = 7) or
       (board.tiles[players[CurrentPlayer].pos].id = 22) or
       (board.tiles[players[CurrentPlayer].pos].id = 36) then
    begin
      landedonchance;
    end;
    if (board.tiles[players[CurrentPlayer].pos].id = 2) or
       (board.tiles[players[CurrentPlayer].pos].id = 17) or
       (board.tiles[players[CurrentPlayer].pos].id = 33) then
    begin
      landedoncommunitychest;
    end
  end;
  CheckForDouble
end;

//Required to reject trade but as is called by computer turn, I turned it into
//a procedure
procedure TGameForm.RejectBClick(Sender: TObject);
begin
  rejecttrade;
end;

//Just clears the trade as doesn't need to exchange anything
procedure TGameForm.rejecttrade;
var
  i : integer;
begin
  for i := 0 to Length(currenttrade.propertiesto)-1 do
  begin
    propertyshapes[currenttrade.propertiesto[i]].Brush.Color :=
    players[0].GetColour(board.tiles[currenttrade.propertiesto[i]].ownedby)
  end;
  for i := 0 to Length(currenttrade.propertiesfrom)-1 do
  begin
    propertyshapes[currenttrade.propertiesfrom[i]].Brush.Color :=
    players[0].GetColour(board.tiles[currenttrade.propertiesfrom[i]].ownedby)
  end;
  RollDiceB.Enabled := True;
  Outp.Show;
  AcceptB.Hide;
  REjectB.Hide;
  OutL.Hide;
  PendingTrade := False;
  outp.Lines.Add('Trade rejected');
  intrade := False;
  RollDiceB.Enabled := True;
  ClearCurrentTrade;
end;

//Sets the alive variable of that player to false as is required by other procedures
procedure TGameForm.removePlayer(player: integer);
var
  i : integer;
begin
  players[player].alive := False;
  case player of
    0 : p1alive := False;
    1 : p2alive := False;
    2 : p3alive := False;
    3 : p4alive := False;
  end;
  if GetAlivePlayers > 1 then
  begin
    for i := 0 to 27 do
    begin
      if board.tiles[propertyids[i]].OwnedBy = player then
      begin
        board.tiles[propertyids[i]].owned := False;
        propertyshapes[propertyids[i]].Brush.Color := clWhite;
        propertyshapes[propertyids[i]].Hide;
      end;
    end;
  end;
end;

//Required to clicking the button but as a procedure for the procedure computerturn
procedure TGameForm.RollDiceBClick(Sender: TObject);
begin
  RollDiceProcedure;
end;

//Rolls the dice and moves the player appropriately, also notifies the user if they are
//in debt to deal with it
procedure TGameForm.RollDiceProcedure;
var
  randint1, randint2, randsum : integer;
  passgo : boolean;
begin
  GetScaleFactor;
  Buy.Hide;
  DBuy.Hide;
  CostLbl.Hide;
  RollDiceB.Enabled := False;
  randomize;
  double := false;
  randint1 := random(6) + 1;
  randint2 := random(6) + 1;
  if randint1 = randint2 then double := true;
  randsum := randint2 + randint2;
  players[CurrentPlayer].roll1 := randint1;
  players[CurrentPlayer].roll2 := randint2;
  passgo := False;
  if players[CurrentPlayer].pos + randsum > 39 then passgo := True;
  if players[CurrentPlayer].injail = False then
  begin
    NormalTurn(randint1,randint2,false,passgo);
  end
  else
  begin
    if players[CurrentPlayer].GetJailCards > 0 then
    begin
      UseJc.Show;
      DUseJc.Show;
    end
    else
    begin
      DontUseJailCard;
    end;
  end;
  propertiesb.Hide;
  if players[CurrentPlayer].balance >= 0 then
  begin
    TradeB.hide;
    MortgageB.hide;
  end
  else
  begin
    TradeB.Hide;
    outp.Lines.Add(players[CurrentPlayer].name + ' is currently in debt');
    outp.Lines.Add(players[CurrentPlayer].name +
    ' needs to mortgage properties to a positive balance or will be kicked out the game');
    MortgageB.Show;
  end;
end;

//As often required, I turned it into a procedure
procedure TGameForm.RollLine(x, y: integer);
begin
  Outp.Lines.Add(players[CurrentPlayer].name + ' rolled a ' + inttostr(x) + ' and a '
  + inttostr(y));
end;

//Creates the trade record when send button clicked
procedure TGameForm.SendBClick(Sender: TObject);
var
  i : integer;
begin
  Outp.Show;
  E1.Hide;
  E2.Hide;
  L1.Hide;
  L2.Hide;
  TileL.Hide;
  SendB.hide;
  lfrom.Hide;
  Outl.Hide;
  lto.Hide;
  lfrom.Caption := '';
  lto.Caption := '';
  if E1.Text = '' then CurrentTrade.moneyto := 0
  else Currenttrade.moneyto := strtoint(E1.Text);
  if E2.Text = '' then CurrentTrade.moneyfrom := 0
  else currenttrade.moneyfrom := strtoint(E2.Text);
  MortgageB.Enabled := True;
  RollDiceB.Enabled := True;
  propertiesb.Enabled := True;
  for i := 0 to Length(currenttrade.propertiesto)-1 do
  begin
    propertyshapes[currenttrade.propertiesto[i]].Brush.Color :=
    players[0].GetColour(board.tiles[currenttrade.propertiesto[i]].ownedby)
  end;
  for i := 0 to Length(currenttrade.propertiesfrom)-1 do
  begin
    propertyshapes[currenttrade.propertiesfrom[i]].Brush.Color :=
    players[0].GetColour(board.tiles[currenttrade.propertiesfrom[i]].ownedby)
  end;
end;

//Acts as a panel by hiding/showing components
procedure TGameForm.setGUIgame;
begin
  GridPanel.Hide;
  BoardIMG.Show;
  Outp.Show;
  RollDiceB.Show;
  EndTurnB.Enabled := False;
  EndTurnB.Show;
end;

//Acts as a panel by hiding/showing components
procedure TGameForm.setGUIPlayerChoices;
begin
  Start.Hide;
  PlayerNames.Show;
  PlayerType.Show;
  Player1.Show;
  Player2.Show;
  Player3.Hide;
  Player4.Hide;
  P1Type.Show;
  P2Type.Show;
  P3Type.Hide;
  P4Type.Hide;
  AddPlayer.Show;
  StartGame.Show;
  PlayerDiff.Show;
  P1Diff.Show;
  p2diff.show;
  DiffHelp.Show;
end;

//Acts as a panel by hiding/showing components
procedure TGameForm.setGUIstart;
begin
  PlayerNames.Hide;
  PlayerType.Hide;
  Player1.Hide;
  Player2.Hide;
  Player3.Hide;
  Player4.Hide;
  P1Type.Hide;
  P2Type.Hide;
  P3Type.Hide;
  P4Type.Hide;
  AddPlayer.Hide;
  StartGame.Hide;
  playerdiff.hide;
  p1diff.hide;
  p2diff.Hide;
  p3diff.Hide;
  p4diff.Hide;
  DiffHelp.Hide;
  Outp.Hide;
  EndTurnB.Hide;
  RollDiceB.Hide;
  Buy.Hide;
  DBuy.Hide;
  CostLbl.Hide;
  UseJc.Hide;
  DUseJC.Hide;
  p1c.Hide;
  p2c.Hide;
  p3c.Hide;
  p4c.Hide;
  p1b.Hide;
  TileL.Hide;
  E1.Hide;
  E2.Hide;
  p2b.Hide;
  p3b.Hide;
  p4b.Hide;
  TradeB.Hide;
  AcceptB.Hide;
  RejectB.Hide;
  OutL.Hide;
  L1.Hide;
  L2.Hide;
  SendB.Hide;
  lfrom.Show;
  lto.Show;
  Start.Show;
  MortgageB.Hide;
  propertiesb.Hide;
  NameL.Hide;
  CostL.Hide;
  PropertiesL.Hide;
  CloseB.Hide;
end;

//Acts as a panel by hiding/showing components
procedure TGameForm.SetupTrade;
begin
  L1.Show;
  L2.Show;
  OutL.Show;
  E1.Show;
  E2.Show;
  SendB.Show;
  TileL.Show;
  currenttrade.playerto := tradingplayer;
  p1b.Hide;
  p2b.Hide;
  p3b.Hide;
  p4b.Hide;
  intrade := True
end;

//Creates the objects
procedure TGameForm.StartClick(Sender: TObject);
begin
  board := TBoard.Create;
  ChanceStack := TNumberStack.Create;
  CChestStack := TNumberStack.Create;
  ChanceStack.Shuffle;
  CChestStack.Shuffle;
  playernum := 2;
  setGUIPlayerChoices;
end;

//Moves the counters to the first place and initiates the first turn
procedure TGameForm.StartGameClick(Sender: TObject);
begin
  GetSCaleFactor;
  StartPlayerGame;
  setGUIgame;
  Outp.Lines.Add(players[CurrentPlayer].name + '''s turn');
  p1c.Left := scalefctr*432;
  p1c.top := scalefctr*436;
  p2c.Left := scalefctr*432;
  p2c.Top := scalefctr*459;
  p3c.Left := scalefctr*455;
  p3c.top := scalefctr*436;
  p4c.Left := scalefctr*455;
  p4c.Top := scalefctr*459;
  ingame := True;
  allcomputerplayers := fallcomputerplayers;
  if P1Type.Checked = True then computerturn;
end;

//From the input into the get players process, creates the required amount of players
// and of types determined by user
procedure TGameForm.StartPlayerGame;
var
  tempchar : char;
  tempname : string;
begin
  p1alive := True;
  p2alive := True;
  CurrentPlayer := 0;
  SetLength(players,playernum);
  if P1Diff.text = 'e' then tempchar := 'e'
  else
  begin
    if P1Diff.text = 'm' then tempchar := 'm'
    else
    begin
      if P1Diff.text = 'h' then tempchar := 'h'
      else tempchar := 'e'
    end;
  end;
  if Player1.Text = '' then
  begin
    tempname := 'Player1';
  end
  else
  begin
    tempname := Player1.Text;
  end;
  players[0] := TPlayer.create(tempname,P1Type.Checked,tempchar);

  if P2Diff.text = 'e' then tempchar := 'e'
  else
  begin
    if P2Diff.text = 'm' then tempchar := 'm'
    else
    begin
      if P2Diff.text = 'h' then tempchar := 'h'
      else tempchar := 'e'
    end;
  end;
  if Player2.Text = '' then
  begin
    tempname := 'Player2';
  end
  else
  begin
    tempname := Player2.Text;
  end;
  players[1] := TPlayer.create(tempname,P2Type.Checked,tempchar);

  p1c.Show;
  p2c.Show;
  p1b.caption := players[0].name;
  p2b.caption := players[1].name;
  if playernum = 3 then
  begin
    p3alive := True;
    if P3Diff.text = 'e' then tempchar := 'e'
    else
    begin
      if P3Diff.text = 'm' then tempchar := 'm'
      else
      begin
        if P3Diff.text = 'h' then tempchar := 'h'
        else tempchar := 'e'
      end;
    end;
    if Player3.Text = '' then
    begin
      tempname := 'Player3';
    end
    else
    begin
      tempname := Player3.Text;
    end;
    players[2] := TPlayer.create(tempname,P3Type.Checked,tempchar);
    p3c.Show;
    p3b.caption := players[2].name;
  end;
  if playernum = 4 then
  begin
    p3alive := True;
    p4alive := True;
    p3c.Show;
    p4c.Show;
    if P3Diff.text = 'e' then tempchar := 'e'
    else
    begin
      if P3Diff.text = 'm' then tempchar := 'm'
      else
      begin
        if P3Diff.text = 'h' then tempchar := 'h'
        else tempchar := 'e'
      end;
    end;
    if Player3.Text = '' then
    begin
      tempname := 'Player3';
    end
    else
    begin
      tempname := Player3.Text;
    end;
    players[2] := TPlayer.create(tempname,P3Type.Checked,tempchar);

    if P4Diff.text = 'e' then tempchar := 'e'
    else
    begin
      if P4Diff.text = 'm' then tempchar := 'm'
      else
      begin
        if P4Diff.text = 'h' then tempchar := 'h'
        else tempchar := 'e'
      end;
    end;
    if Player4.Text = '' then
    begin
      tempname := 'Player4';
    end
    else
    begin
      tempname := Player4.Text;
    end;
    players[3] := TPlayer.create(tempname,P4Type.Checked,tempchar);
    p3b.caption := players[2].name;
    p4b.caption := players[3].name;
  end;
end;

//The below short procedures are from clicking the images and tiles
procedure TGameForm.tile11ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(11);
end;

procedure TGameForm.tile11imgMouseEnter(Sender: TObject);
begin
  hoverover(11);
end;

procedure TGameForm.tile12ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(12);
end;

procedure TGameForm.tile12imgMouseEnter(Sender: TObject);
begin
  hoverover(12);
end;

procedure TGameForm.tile13ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(13);
end;

procedure TGameForm.tile13imgMouseEnter(Sender: TObject);
begin
  hoverover(13);
end;

procedure TGameForm.tile14ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(14);
end;

procedure TGameForm.tile15ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(15);
end;

procedure TGameForm.tile15imgMouseEnter(Sender: TObject);
begin
  hoverover(15);
end;

procedure TGameForm.tile16ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(16);
end;

procedure TGameForm.tile16imgMouseEnter(Sender: TObject);
begin
  hoverover(16);
end;

procedure TGameForm.tile18ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(18);
end;

procedure TGameForm.tile18imgMouseEnter(Sender: TObject);
begin
  hoverover(18);
end;

procedure TGameForm.tile19ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(19);
end;

procedure TGameForm.tile19imgMouseEnter(Sender: TObject);
begin
  hoverover(19);
end;

procedure TGameForm.tile1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(1);
end;

procedure TGameForm.tile1imgMouseEnter(Sender: TObject);
begin
  hoverover(1);
end;

procedure TGameForm.tile21ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(21);
end;

procedure TGameForm.tile21imgMouseEnter(Sender: TObject);
begin
  hoverover(21);
end;

procedure TGameForm.tile23ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(23);
end;

procedure TGameForm.tile23imgMouseEnter(Sender: TObject);
begin
  hoverover(23);
end;

procedure TGameForm.tile24ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(24);
end;

procedure TGameForm.tile24imgMouseEnter(Sender: TObject);
begin
  hoverover(24);
end;

procedure TGameForm.tile25ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(25);
end;

procedure TGameForm.tile25imgMouseEnter(Sender: TObject);
begin
  hoverover(25);
end;

procedure TGameForm.tile26ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(26);
end;

procedure TGameForm.tile26imgMouseEnter(Sender: TObject);
begin
  hoverover(26);
end;

procedure TGameForm.tile27ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(27);
end;

procedure TGameForm.tile27imgMouseEnter(Sender: TObject);
begin
  hoverover(27);
end;

procedure TGameForm.tile28ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(28);
end;

procedure TGameForm.tile28imgMouseEnter(Sender: TObject);
begin
  hoverover(28);
end;

procedure TGameForm.tile29ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(29);
end;

procedure TGameForm.tile29imgMouseEnter(Sender: TObject);
begin
  hoverover(29);
end;

procedure TGameForm.tile31ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(31);
end;

procedure TGameForm.tile31imgMouseEnter(Sender: TObject);
begin
  hoverover(31);
end;

procedure TGameForm.tile32ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(32);
end;

procedure TGameForm.tile32imgMouseEnter(Sender: TObject);
begin
  hoverover(32);
end;

procedure TGameForm.tile34ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(34);
end;

procedure TGameForm.tile34imgMouseEnter(Sender: TObject);
begin
  hoverover(34);
end;

procedure TGameForm.tile35ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(35);
end;

procedure TGameForm.tile35imgMouseEnter(Sender: TObject);
begin
  hoverover(35);
end;

procedure TGameForm.tile37ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(37);
end;

procedure TGameForm.tile37imgMouseEnter(Sender: TObject);
begin
  hoverover(37);
end;

procedure TGameForm.tile39ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(39);
end;

procedure TGameForm.tile39imgMouseEnter(Sender: TObject);
begin
  hoverover(39);
end;

procedure TGameForm.tile3ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(3);
end;

procedure TGameForm.tile5ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(5);
end;

procedure TGameForm.tile5imgMouseEnter(Sender: TObject);
begin
  hoverover(5);
end;

procedure TGameForm.tile6ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(6);
end;

procedure TGameForm.tile6imgMouseEnter(Sender: TObject);
begin
  hoverover(6);
end;

procedure TGameForm.tile8ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(8);
end;

procedure TGameForm.tile8imgMouseEnter(Sender: TObject);
begin
  hoverover(8);
end;

procedure TGameForm.tile9ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  tileshapeclick(9);
end;

procedure TGameForm.tile9imgMouseEnter(Sender: TObject);
begin
  hoverover(9);
end;

//Determines what action to perform from the global variables when the TShapes are clicked
procedure TGameForm.tileshapeclick(p: integer);
begin
  if intrade = True then
  begin
    if (board.tiles[p].ownedby = CurrentPlayer) and
       (arraycontains(currenttrade.propertiesto,p) = False) then
    begin
      SetLength(currenttrade.propertiesto, Length(currenttrade.propertiesto)+1);
      currenttrade.propertiesto[high(currenttrade.propertiesto)] := p;
      propertyshapes[p].Brush.Color := clBlack;
      lfrom.Show;
      lto.Caption := lto.Caption + inttostr(p) + ', ';
    end
    else
    begin
      if (board.tiles[p].ownedby = tradingplayer) and
         (arraycontains(currenttrade.propertiesfrom,p) = False) then
      begin
        SetLength(currenttrade.propertiesfrom, Length(currenttrade.propertiesfrom)+1);
        currenttrade.propertiesfrom[high(currenttrade.propertiesfrom)] := p;
        propertyshapes[p].Brush.Color := clBlack;
        lto.Show;
        lfrom.Caption := lfrom.Caption + inttostr(p) + ', ';
      end;
    end;
  end
  else
  begin
    if mortgaging = True then
    begin
      if (board.tiles[p].ownedby = CurrentPlayer) and
         (board.tiles[p].mortgaged = False) then
      begin
        propertyshapes[p].Brush.Color :=
        players[CurrentPlayer].GetMortgageColour(CurrentPlayer);
        players[CurrentPlayer].balance :=
        players[CurrentPlayer].balance + board.tiles[p].mortgageprice;
        board.tiles[p].mortgaged := True;
        outp.Lines.Add(board.tiles[p].name + ' mortgaged');
      end
      else
      begin
        if board.tiles[p].ownedby = CurrentPlayer then
        begin
          players[CurrentPlayer].balance := players[CurrentPlayer].balance -
          board.tiles[p].mortgageprice;
          board.tiles[p].mortgaged := False;
          outp.Lines.Add(board.tiles[p].name + ' unmortgaged');
        end;
      end;
    end
    else
    begin
      if buyinghouses = True then
      begin
        if (playerownrange(CurrentPlayer,p) = true) and
           (players[CurrentPlayer].balance > board.tiles[p].buildingprice) and
           (board.tiles[p].Getproperties < 5) then
        begin
          board.tiles[p].IncProperties;
          players[CurrentPlayer].balance := players[CurrentPlayer].balance -
          board.tiles[p].buildingprice;
          outp.Lines.Add(players[CurrentPlayer].name + ' purchased a property on ' +
          board.tiles[p].name + ' for £' + inttostr(board.tiles[p].buildingprice));
        end
        else
        begin
          outp.Lines.Add('You could not purchase a property on this tile');
        end;
      end;
    end;
  end;
end;

//Sets up the buttons for the correct number of players and hides the current player's
//button
procedure TGameForm.TradeBClick(Sender: TObject);
begin
  pendingtrade := True;
  currenttrade.playerfrom := CurrentPlayer;
  outp.Hide;
  if p1alive = True then p1b.Show;
  if p2alive = True then p2b.Show;
  if p3alive = True then p3b.Show;
  if p4alive = True then p4b.Show;
  case CurrentPlayer of
    0 : p1b.Hide;
    1 : p2b.Hide;
    2 : p3b.Hide;
    3 : p4b.Hide;
  end;

  EndTurnB.Enabled := False;
  TradeB.Hide;
  MortgageB.Enabled := False;
  propertiesb.Enabled := False;
  RollDiceB.Enabled := False;
end;

//Moves the player out of jail and calls the procedure to start their turn
procedure TGameForm.UseJailCard;
begin
  Outp.Lines.Add(players[CurrentPlayer].name + ' has used their get out of jail free card');
  Outp.Lines.Add(players[CurrentPlayer].name + ' rolled a ' +
  inttostr(players[CurrentPlayer].roll1) + ' and a ' + inttostr(players[CurrentPlayer].roll2));
  players[CurrentPlayer].injail := False;
  players[CurrentPlayer].Resetjailturns;
  NormalTurn(players[CurrentPlayer].roll1,players[CurrentPlayer].roll2,true,false);
  MoveCounter;
end;


//Calls the correct procedure to remove the player from jail and hide the buttons no
//longer required
procedure TGameForm.UseJCClick(Sender: TObject);
begin
  UseJailCard;
  UseJC.Hide;
  DUseJC.Hide;
end;

end.
