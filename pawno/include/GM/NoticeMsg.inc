#pragma warning disable 213
forward HideNoticeMsg(playerid);

new PlayerText: NoticePTD[MAX_PLAYERS][1];

// ########### FUNCTION ############
// native ShowPlayerNotice(playerid, const fmat[]);

stock ShowPlayerNotice(playerid, const fmat[], time)
{
	new fmatz[1280];
	format(fmatz, sizeof(fmatz), "%s", fmat);

	PlayerTextDrawHide(playerid, NoticePTD[playerid][0]);

	PlayerTextDrawSetString(playerid, NoticePTD[playerid][0], fmatz);
	PlayerTextDrawShow(playerid, NoticePTD[playerid][0]);

	SetTimerEx("HidePlayerNotice", time, 0, "i", playerid);
	return 1;
}
forward HidePlayerNotice(playerid);
public HidePlayerNotice(playerid)
{
	PlayerTextDrawHide(playerid, NoticePTD[playerid][0]);	
}

hook OnPlayerConnect(playerid){
	NoticePTD[playerid][0] = CreatePlayerTextDraw(playerid, 320.000, 385.000, "_");
	PlayerTextDrawLetterSize(playerid, NoticePTD[playerid][0], 0.300, 1.500);
	PlayerTextDrawTextSize(playerid, NoticePTD[playerid][0], 0.000, 304.000);
	PlayerTextDrawAlignment(playerid, NoticePTD[playerid][0], 2);
	PlayerTextDrawColor(playerid, NoticePTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, NoticePTD[playerid][0], 1);
	PlayerTextDrawSetOutline(playerid, NoticePTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, NoticePTD[playerid][0], 150);
	PlayerTextDrawFont(playerid, NoticePTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, NoticePTD[playerid][0], 1);
	return 1;
}
