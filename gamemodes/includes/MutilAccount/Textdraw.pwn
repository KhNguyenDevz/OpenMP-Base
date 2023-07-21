#include <YSI\y_hooks>


new PlayerText: SelectCharacter[MAX_PLAYERS][3];

hook OnPlayerConnect(playerid)
{
	SelectCharacter[playerid][0] = CreatePlayerTextDraw(playerid, 213.000, 128.000, "New textdraw");
	PlayerTextDrawLetterSize(playerid, SelectCharacter[playerid][0], 0.250, 1.099);
	PlayerTextDrawTextSize(playerid, SelectCharacter[playerid][0], 11.000, 64.000);
	PlayerTextDrawAlignment(playerid, SelectCharacter[playerid][0], 2);
	PlayerTextDrawColor(playerid, SelectCharacter[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, SelectCharacter[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, SelectCharacter[playerid][0], 556554495);
	PlayerTextDrawSetShadow(playerid, SelectCharacter[playerid][0], 1);
	PlayerTextDrawSetOutline(playerid, SelectCharacter[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, SelectCharacter[playerid][0], 150);
	PlayerTextDrawFont(playerid, SelectCharacter[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, SelectCharacter[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, SelectCharacter[playerid][0], 1);

	SelectCharacter[playerid][1] = CreatePlayerTextDraw(playerid, 307.000, 128.000, "New textdraw");
	PlayerTextDrawLetterSize(playerid, SelectCharacter[playerid][1], 0.250, 1.099);
	PlayerTextDrawTextSize(playerid, SelectCharacter[playerid][1], 11.000, 64.000);
	PlayerTextDrawAlignment(playerid, SelectCharacter[playerid][1], 2);
	PlayerTextDrawColor(playerid, SelectCharacter[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, SelectCharacter[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, SelectCharacter[playerid][1], 556554495);
	PlayerTextDrawSetShadow(playerid, SelectCharacter[playerid][1], 1);
	PlayerTextDrawSetOutline(playerid, SelectCharacter[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, SelectCharacter[playerid][1], 150);
	PlayerTextDrawFont(playerid, SelectCharacter[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, SelectCharacter[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, SelectCharacter[playerid][1], 1);

	SelectCharacter[playerid][2] = CreatePlayerTextDraw(playerid, 406.000, 127.000, "New textdraw");
	PlayerTextDrawLetterSize(playerid, SelectCharacter[playerid][2], 0.250, 1.099);
	PlayerTextDrawTextSize(playerid, SelectCharacter[playerid][2], 11.000, 64.000);
	PlayerTextDrawAlignment(playerid, SelectCharacter[playerid][2], 2);
	PlayerTextDrawColor(playerid, SelectCharacter[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, SelectCharacter[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, SelectCharacter[playerid][2], 556554495);
	PlayerTextDrawSetShadow(playerid, SelectCharacter[playerid][2], 1);
	PlayerTextDrawSetOutline(playerid, SelectCharacter[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, SelectCharacter[playerid][2], 150);
	PlayerTextDrawFont(playerid, SelectCharacter[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, SelectCharacter[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, SelectCharacter[playerid][2], 1);
	return 1;
}