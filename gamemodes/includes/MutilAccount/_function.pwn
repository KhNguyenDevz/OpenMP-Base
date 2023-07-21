#include <YSI\y_hooks>

enum UserInfoz{
	u_id,
	u_name[MAX_PLAYER_NAME],
	u_password[64],
	u_lastlogin[1280]
}
new UserInfo[MAX_PLAYERS][UserInfoz];
stock GetAccoutName(playerid)
{
	new name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, name, sizeof(name));
	return name;
}

stock AuthCheckingAccount(playerid)
{
	new sz_AuthCheck[1280];
	format(sz_AuthCheck, sizeof(sz_AuthCheck), "SELECT * FROM `master-account` WHERE `Username` = '%s'", GetAccoutName(playerid));

	mysql_tquery(MainPipeline, sz_AuthCheck, "AuthCheckedAccount", "i", playerid);
	return 1;
}
stock ShowAuthDialog(playerid, exits)
{
	switch(exits)
	{
		case 1: {
			Dialog_Show(playerid, USER_LOGIN, DIALOG_STYLE_PASSWORD, "Dang nhap tai khoan", "Chao mung ban quay tro lai may chu cua chung toi\nVui long nhap mat khau de tiep tuc", ">>", "<<");
		}
		default:{
			Dialog_Show(playerid, USER_REGISTER, DIALOG_STYLE_PASSWORD, "Dang ky tai khoan", "Chao mung ban da den voi may chu cua chung toi\nVui long nhap mat khau de tiep tuc", ">>", "<<");
		}
	}
}

AccountGetPassword(const username[])
{
	new 
		Cache:iCache, Key[129] = "Invalid User", query[128];

	format(query, sizeof(query), "SELECT `Password` FROM `master-account` WHERE `Username` = '%s'", username);

	iCache = mysql_query(MainPipeline, query);
	if(cache_num_rows())
	{
		cache_get_value_name(0, "Password", Key);
	}
	cache_delete(iCache);
	return Key;
}

AccountGetInfo(playerid, const username[])
{
	new 
		Cache:iCache, Key[129] = "Invalid User", query[128];

	format(query, sizeof(query), "SELECT * FROM `master-account` WHERE `Username` = '%s'", field, username);

	iCache = mysql_query(MainPipeline, query);
	if(cache_num_rows())
	{
		cache_get_value_name(0, "id", UserInfo[playerid][u_id]);
		cache_get_value_name(0, "Username", UserInfo[playerid][u_id]);
		cache_get_value_name(0, "Password", UserInfo[playerid][u_password]);
		cache_get_value_name(0, "LastLogin", UserInfo[playerid][u_lastlogin]);

	}
	cache_delete(iCache);
	return 1;
}

forward AuthCheckedAccount(playerid);
public AuthCheckedAccount(playerid)
{
	if(cache_num_rows())
	{
		ShowAuthDialog(playerid, 1);
	}
	else {
		ShowAuthDialog(playerid, 0);
	}
	return 1;
}

Dialog:USER_LOGIN(playerid, response, listitem, inputtext[]){
	if(isnull(inputtext)) return Dialog_Show(playerid, USER_LOGIN, DIALOG_STYLE_PASSWORD, "Dang nhap tai khoan", "Chao mung ban quay tro lai may chu cua chung toi\n{fa3e3e}Mat khau khong duoc de trong", ">>", "<<");
	if(6 < strlen(inputtext) < 64) return Dialog_Show(playerid, USER_LOGIN, DIALOG_STYLE_PASSWORD, "Dang nhap tai khoan", "Chao mung ban quay tro lai may chu cua chung toi\n{fa3e3e}Mat khau tu 6 den 64 ki tu", ">>", "<<");


	if(!strcmp(AccountGetPassword(GetAccoutName(playerid), inputtext)))
	{
		AccountGetInfo(playerid, GetAccoutName(playerid));

		new GetCharacterInfostr[1280];
		format(GetCharacterInfostr, sizeof(GetCharacterInfostr), "SELECT * FROM `accounts` WHERE `MasterAccountID` = '%s'", UserInfo[playerid][u_id]);
		mysql_tquery(MainPipeline, GetCharacterInfostr, "AccountSelect", "i", playerid);
	}
}