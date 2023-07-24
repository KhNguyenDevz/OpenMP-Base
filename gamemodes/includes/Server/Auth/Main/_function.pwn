stock ShowPlayerAuthForm(playerid)
{
	PlayerTextDrawSetString(playerid, AuthPTD[playerid][4], GetPlayerNameEx(playerid));
	PlayerTextDrawSetString(playerid, AuthPTD[playerid][5], "Mat khau");

	for(new i = 0; i < MAX_TEXTDRAW_AUTH; i++)
	{
		PlayerTextDrawShow(playerid, AuthPTD[playerid][i]);
	}
	SetPVarInt(playerid, #open_auth, 1);
	SelectTextDraw(playerid, -1);
	return 1;
}

stock HidePlayerAuthForm(playerid)
{
	for(new i = 0; i < MAX_TEXTDRAW_AUTH; i++)
	{
		PlayerTextDrawHide(playerid, AuthPTD[playerid][i]);
	}
	SetPVarInt(playerid, #open_auth, 0);
	CancelSelectTextDraw(playerid);
	return 1;
}



Login_Click(playerid, PlayerText:playertextid)
{
	if(playertextid == AuthPTD[playerid][4])
	{
		Dialog_Show(playerid,DIALOG_USERNAME, DIALOG_STYLE_INPUT, "Tai khoan", "Vui long nhap tai khoan cua ban vao day", ">>", "<<");
	}
	if(playertextid == AuthPTD[playerid][5])
	{
		Dialog_Show(playerid,DIALOG_PASSWORD, DIALOG_STYLE_INPUT, "Mat khau", "Vui long nhap mat khau cua ban vao day", ">>", "<<");
	}
	if(playertextid == AuthPTD[playerid][1]) // login
	{
		if(!GetPVarInt(playerid, #account_exits)) return ShowPlayerNotice(playerid, "~r~Tai khoan cua ban chua ton tai !", 2000);
		new szPasswordz[128];
		GetPVarString(playerid, "AuthPassword_", szPasswordz, sizeof(szPasswordz));
		if(isnull(szPasswordz)) return ShowPlayerNotice(playerid, "Ban chua nhap day du thong tin", 2000);
		g_mysql_AccountLoginCheck(playerid);
	}
	if(playertextid == AuthPTD[playerid][3]) // register
	{
		if(GetPVarInt(playerid, #account_exits)) return ShowPlayerNotice(playerid, "~r~Tai khoan cua ban da ton tai !", 2000);

		new szPasswordz[128];
		GetPVarString(playerid, "AuthPassword_", szPasswordz, sizeof(szPasswordz));
		if(isnull(szPasswordz)) return ShowPlayerNotice(playerid, "Ban chua nhap day du thong tin", 2000);
		g_mysql_CreateAccount(playerid, szPasswordz);
	}
	return 1;
}