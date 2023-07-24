#include <YSI\y_hooks>
new PlayerText: HudPTD[MAX_PLAYERS][13];

stock SetHudPercent(playerid, Float:percent, hudid)
{
	if(percent > 100) return SendClientMessage(playerid, -1, "Exceeding Hud Value");
	// printf("Percent: %f | Value:%f", percent(percent/100)*(-20));
	switch(hudid)
	{
		case 0: {
			PlayerTextDrawTextSize(playerid, HudPTD[playerid][1], 18.500, (percent/100)*(-20));
			ReloadHud(playerid, 0);
		}
		case 1: {
			PlayerTextDrawTextSize(playerid, HudPTD[playerid][3], 18.500, (percent/100)*(-20));
			ReloadHud(playerid, 1);
		}
		case 2: {
			PlayerTextDrawTextSize(playerid, HudPTD[playerid][5], 18.500, (percent/100)*(-20));
			ReloadHud(playerid, 2);
		}
	}
	return 1;
}
stock ShowPlayerHud(playerid)
{
	PlayerTextDrawShow(playerid, HudPTD[playerid][0]);
	PlayerTextDrawShow(playerid, HudPTD[playerid][1]);
	PlayerTextDrawShow(playerid, HudPTD[playerid][2]);
	PlayerTextDrawShow(playerid, HudPTD[playerid][3]);
	PlayerTextDrawShow(playerid, HudPTD[playerid][4]);
	PlayerTextDrawShow(playerid, HudPTD[playerid][5]);
	PlayerTextDrawShow(playerid, HudPTD[playerid][7]);
	PlayerTextDrawShow(playerid, HudPTD[playerid][8]);
	PlayerTextDrawShow(playerid, HudPTD[playerid][9]);
}
stock ReloadHud(playerid, hudid)
{
	switch(hudid)
	{
		case 0:{
			PlayerTextDrawHide(playerid, HudPTD[playerid][1]);
			PlayerTextDrawShow(playerid, HudPTD[playerid][1]);
		}
		case 1:{
			PlayerTextDrawHide(playerid, HudPTD[playerid][3]);
			PlayerTextDrawShow(playerid, HudPTD[playerid][3]);
		}
		case 2:{
			PlayerTextDrawHide(playerid, HudPTD[playerid][5]);
			PlayerTextDrawShow(playerid, HudPTD[playerid][5]);
		}
	}
	return 1;
}