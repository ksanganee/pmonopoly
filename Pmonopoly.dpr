program Pmonopoly;

uses
  Vcl.Forms,
  uGameForm in 'uGameForm.pas' {GameForm},
  uTile in 'uTile.pas',
  uPlayers in 'uPlayers.pas',
  uBoard in 'uBoard.pas',
  uTrade in 'uTrade.pas',
  uStack in 'uStack.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGameForm, GameForm);
  Application.Run;
end.
