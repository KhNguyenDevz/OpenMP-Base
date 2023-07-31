#include <YSI\y_hooks>

hook OnPlayerConnect(playerid)
{
	SpeedoPTD[playerid][0] = CreatePlayerTextDraw(playerid, 126.166, 370.666, "particle:lamp_shad_64");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][0], 76.000, 33.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][0], 673720351);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][0], 0);

	SpeedoPTD[playerid][1] = CreatePlayerTextDraw(playerid, 184.806, 348.250, "_");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][1], 69.000, 51.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][1], -40817153);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][1], 0);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][1], 0);
	PlayerTextDrawSetPreviewModel(playerid, SpeedoPTD[playerid][1], 2153);
	PlayerTextDrawSetPreviewRot(playerid, SpeedoPTD[playerid][1], 0.000, -15.000, 90.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, SpeedoPTD[playerid][1], 0, 0);

	SpeedoPTD[playerid][2] = CreatePlayerTextDraw(playerid, 204.586, 385.583, "ld_beat:chit");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][2], 20.000, 20.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][2], -40817153);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][2], 0);

	SpeedoPTD[playerid][3] = CreatePlayerTextDraw(playerid, 166.065, 344.749, "_");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][3], 67.000, 55.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][3], -40817153);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][3], 0);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][3], 0);
	PlayerTextDrawSetPreviewModel(playerid, SpeedoPTD[playerid][3], 2153);
	PlayerTextDrawSetPreviewRot(playerid, SpeedoPTD[playerid][3], 0.000, -15.000, 90.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, SpeedoPTD[playerid][3], 0, 0);

	SpeedoPTD[playerid][4] = CreatePlayerTextDraw(playerid, 190.433, 391.416, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][4], 24.000, 11.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][4], -40817153);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][4], 0);

	SpeedoPTD[playerid][5] = CreatePlayerTextDraw(playerid, 182.000, 386.000, "ld_beat:chit");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][5], 20.000, 20.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][5], -40817153);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][5], 0);

	SpeedoPTD[playerid][6] = CreatePlayerTextDraw(playerid, 206.362, 345.333, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][6], 24.000, 11.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][6], -40817153);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][6], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][6], 0);

	SpeedoPTD[playerid][7] = CreatePlayerTextDraw(playerid, 196.622, 341.833, "ld_beat:chit");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][7], 20.000, 20.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][7], -40817153);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][7], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][7], 0);

	SpeedoPTD[playerid][8] = CreatePlayerTextDraw(playerid, 203.551, 352.333, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][8], 17.000, 44.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][8], -40817153);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][8], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][8], 0);

	SpeedoPTD[playerid][9] = CreatePlayerTextDraw(playerid, 220.517, 341.833, "ld_beat:chit");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][9], 20.000, 20.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][9], -40817153);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][9], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][9], 0);

	SpeedoPTD[playerid][10] = CreatePlayerTextDraw(playerid, 231.115, 412.083, "particle:lamp_shad_64");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][10], -131.000, -67.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][10], 673720436);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][10], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][10], 0);

	SpeedoPTD[playerid][11] = CreatePlayerTextDraw(playerid, 176.007, 365.166, "ld_beat:chit");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][11], 15.000, 15.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][11], 336860415);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][11], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][11], 0);

	SpeedoPTD[playerid][12] = CreatePlayerTextDraw(playerid, 181.058, 373.333, "_");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][12], 10.000, 9.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][12], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][12], 336860415);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][12], 336860160);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][12], 5);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][12], 0);
	PlayerTextDrawSetPreviewModel(playerid, SpeedoPTD[playerid][12], 2153);
	PlayerTextDrawSetPreviewRot(playerid, SpeedoPTD[playerid][12], 0.000, -15.000, 90.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, SpeedoPTD[playerid][12], 0, 0);

	SpeedoPTD[playerid][13] = CreatePlayerTextDraw(playerid, 174.132, 372.166, "ld_beat:chit");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][13], 15.000, 15.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][13], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][13], 336860415);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][13], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][13], 0);

	SpeedoPTD[playerid][14] = CreatePlayerTextDraw(playerid, 123.433, 367.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][14], 59.000, 17.500);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][14], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][14], 336860415);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][14], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][14], 0);

	SpeedoPTD[playerid][15] = CreatePlayerTextDraw(playerid, 117.442, 365.166, "ld_beat:chit");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][15], 15.000, 15.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][15], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][15], 336860415);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][15], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][15], 0);

	SpeedoPTD[playerid][16] = CreatePlayerTextDraw(playerid, 125.305, 379.166, "_");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][16], -10.000, -9.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][16], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][16], 336860415);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][16], 336860160);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][16], 5);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][16], 0);
	PlayerTextDrawSetPreviewModel(playerid, SpeedoPTD[playerid][16], 2153);
	PlayerTextDrawSetPreviewRot(playerid, SpeedoPTD[playerid][16], 0.000, -15.000, 90.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, SpeedoPTD[playerid][16], 0, 0);

	SpeedoPTD[playerid][17] = CreatePlayerTextDraw(playerid, 115.099, 372.166, "ld_beat:chit");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][17], 15.000, 15.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][17], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][17], 336860415);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][17], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][17], 0);

	SpeedoPTD[playerid][18] = CreatePlayerTextDraw(playerid, 124.001, 378.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][18], 57.000, 3.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][18], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][18], -1166921985);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][18], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][18], 0);

	SpeedoPTD[playerid][19] = CreatePlayerTextDraw(playerid, 124.001, 378.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][19], 0.000, 3.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][19], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][19], -124373249);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][19], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][19], 0);

	SpeedoPTD[playerid][20] = CreatePlayerTextDraw(playerid, 152.973, 366.916, "_"); // Veh Name
	PlayerTextDrawLetterSize(playerid, SpeedoPTD[playerid][20], 0.115, 1.080);
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][20], 9.000, 79.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][20], 2);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][20], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][20], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][20], 2);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][20], 1);

	SpeedoPTD[playerid][21] = CreatePlayerTextDraw(playerid, 122.000, 350.000, "SB");
	PlayerTextDrawLetterSize(playerid, SpeedoPTD[playerid][21], 0.180, 1.191);
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][21], 9.000, 6.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][21], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][21], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][21], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][21], 1);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][21], 1);

	SpeedoPTD[playerid][22] = CreatePlayerTextDraw(playerid, 144.000, 350.000, "ENGINE");
	PlayerTextDrawLetterSize(playerid, SpeedoPTD[playerid][22], 0.180, 1.191);
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][22], 9.000, 6.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][22], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][22], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][22], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][22], 1);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][22], 1);

	SpeedoPTD[playerid][23] = CreatePlayerTextDraw(playerid, 172.000, 350.000, "LIGHTS");
	PlayerTextDrawLetterSize(playerid, SpeedoPTD[playerid][23], 0.180, 1.191);
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][23], 9.000, 6.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][23], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][23], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][23], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][23], 1);

	SpeedoPTD[playerid][24] = CreatePlayerTextDraw(playerid, 182.000, 385.500, "ld_beat:chit");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][24], 20.000, 20.500);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][24], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][24], 336860415);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][24], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][24], 0);

	SpeedoPTD[playerid][25] = CreatePlayerTextDraw(playerid, 195.000, 390.000, "KM/H");
	PlayerTextDrawLetterSize(playerid, SpeedoPTD[playerid][25], 0.128, 1.156);
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][25], 9.000, 6.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][25], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][25], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][25], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][25], 2);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][25], 1);

	SpeedoPTD[playerid][26] = CreatePlayerTextDraw(playerid, 204.586, 385.583, "ld_beat:chit");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][26], 20.000, 20.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][26], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][26], 336860415);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][26], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][26], 0);

	SpeedoPTD[playerid][27] = CreatePlayerTextDraw(playerid, 191.468, 389.083, "ld_spac:white");
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][27], 23.000, 13.500);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][27], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][27], 336860415);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][27], 255);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][27], 0);

	SpeedoPTD[playerid][28] = CreatePlayerTextDraw(playerid, 203.000, 363.000, "255"); // speed
	PlayerTextDrawLetterSize(playerid, SpeedoPTD[playerid][28], 0.273, 1.500);
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][28], -13.000, 6.000);
	PlayerTextDrawAlignment(playerid, SpeedoPTD[playerid][28], 1);
	PlayerTextDrawColor(playerid, SpeedoPTD[playerid][28], -1);
	PlayerTextDrawSetShadow(playerid, SpeedoPTD[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, SpeedoPTD[playerid][28], 1);
	PlayerTextDrawBackgroundColor(playerid, SpeedoPTD[playerid][28], 134);
	PlayerTextDrawFont(playerid, SpeedoPTD[playerid][28], 3);
	PlayerTextDrawSetProportional(playerid, SpeedoPTD[playerid][28], 1);
	return 1;
}
