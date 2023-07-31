hook OnPlayerConnect(playerid)
{
	ProgressCustomPTD[playerid][0] = CreatePlayerTextDraw(playerid, 313.000000, 389.000000, "_");
	PlayerTextDrawFont(playerid, ProgressCustomPTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, ProgressCustomPTD[playerid][0], 0.600000, 3.050005);
	PlayerTextDrawTextSize(playerid, ProgressCustomPTD[playerid][0], 307.500000, 163.000000);
	PlayerTextDrawSetOutline(playerid, ProgressCustomPTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, ProgressCustomPTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, ProgressCustomPTD[playerid][0], 2);
	PlayerTextDrawColor(playerid, ProgressCustomPTD[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, ProgressCustomPTD[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, ProgressCustomPTD[playerid][0], 255);
	PlayerTextDrawUseBox(playerid, ProgressCustomPTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, ProgressCustomPTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, ProgressCustomPTD[playerid][0], 0);

	ProgressCustomPTD[playerid][1] = CreatePlayerTextDraw(playerid, 313.000000, 407.000000, "_");
	PlayerTextDrawFont(playerid, ProgressCustomPTD[playerid][1], 3);
	PlayerTextDrawLetterSize(playerid, ProgressCustomPTD[playerid][1], 0.220832, 1.049999);
	PlayerTextDrawTextSize(playerid, ProgressCustomPTD[playerid][1], 298.500000, 163.000000);
	PlayerTextDrawSetOutline(playerid, ProgressCustomPTD[playerid][1], 0);
	PlayerTextDrawSetShadow(playerid, ProgressCustomPTD[playerid][1], 1);
	PlayerTextDrawAlignment(playerid, ProgressCustomPTD[playerid][1], 2);
	PlayerTextDrawColor(playerid, ProgressCustomPTD[playerid][1], -1);
	PlayerTextDrawBackgroundColor(playerid, ProgressCustomPTD[playerid][1], 255);
	PlayerTextDrawBoxColor(playerid, ProgressCustomPTD[playerid][1], 135);
	PlayerTextDrawUseBox(playerid, ProgressCustomPTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, ProgressCustomPTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, ProgressCustomPTD[playerid][1], 0);

	ProgressCustomBar[playerid][0] = CreatePlayerProgressBar(playerid, 238.000000, 392.000000, 154.500000, 13.000000, 1687547391, 100.000000);
	SetPlayerProgressBarValue(playerid, ProgressCustomBar[playerid][0], 1.000000);
	return 1;
}