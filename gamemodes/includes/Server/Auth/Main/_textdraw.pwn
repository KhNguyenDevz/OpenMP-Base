#include <YSI\y_hooks>

hook OnPlayerConnect(playerid)
{
	AuthPTD[playerid][0] = CreatePlayerTextDraw(playerid, 0.000, 0.000, "mdl-2002:bg");
	PlayerTextDrawTextSize(playerid, AuthPTD[playerid][0], 640.000, 449.000);
	PlayerTextDrawAlignment(playerid, AuthPTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, AuthPTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, AuthPTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, AuthPTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, AuthPTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, AuthPTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, AuthPTD[playerid][0], 1);

	AuthPTD[playerid][1] = CreatePlayerTextDraw(playerid, 88.000, 207.000, "mdl-2002:login");
	PlayerTextDrawTextSize(playerid, AuthPTD[playerid][1], 81.000, 36.000);
	PlayerTextDrawAlignment(playerid, AuthPTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, AuthPTD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, AuthPTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, AuthPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, AuthPTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, AuthPTD[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, AuthPTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, AuthPTD[playerid][1], 1);

	AuthPTD[playerid][2] = CreatePlayerTextDraw(playerid, 89.000, 131.000, "mdl-2002:form");
	PlayerTextDrawTextSize(playerid, AuthPTD[playerid][2], 186.000, 84.000);
	PlayerTextDrawAlignment(playerid, AuthPTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, AuthPTD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, AuthPTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, AuthPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, AuthPTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, AuthPTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, AuthPTD[playerid][2], 1);

	AuthPTD[playerid][3] = CreatePlayerTextDraw(playerid, 192.000, 207.000, "mdl-2002:register");
	PlayerTextDrawTextSize(playerid, AuthPTD[playerid][3], 81.000, 36.000);
	PlayerTextDrawAlignment(playerid, AuthPTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, AuthPTD[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, AuthPTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, AuthPTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, AuthPTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, AuthPTD[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, AuthPTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, AuthPTD[playerid][3], 1);

	AuthPTD[playerid][4] = CreatePlayerTextDraw(playerid, 124.000, 153.000, "_"); // Username
	PlayerTextDrawLetterSize(playerid, AuthPTD[playerid][4], 0.290, 1.600);
	PlayerTextDrawTextSize(playerid, AuthPTD[playerid][4], 262.000, 6.000);
	PlayerTextDrawAlignment(playerid, AuthPTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, AuthPTD[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, AuthPTD[playerid][4], 2);
	PlayerTextDrawSetOutline(playerid, AuthPTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, AuthPTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, AuthPTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, AuthPTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, AuthPTD[playerid][4], 0);

	AuthPTD[playerid][5] = CreatePlayerTextDraw(playerid, 124.000, 188.000, "_"); // Password
	PlayerTextDrawLetterSize(playerid, AuthPTD[playerid][5], 0.290, 1.600);
	PlayerTextDrawTextSize(playerid, AuthPTD[playerid][5], 260.000, 13.000);
	PlayerTextDrawAlignment(playerid, AuthPTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, AuthPTD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, AuthPTD[playerid][5], 2);
	PlayerTextDrawSetOutline(playerid, AuthPTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, AuthPTD[playerid][5], 150);
	PlayerTextDrawFont(playerid, AuthPTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, AuthPTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, AuthPTD[playerid][5], 1);
	return 1;
}