#include <YSI\y_hooks>

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case DIALOG_PASSWORD:
		{
			if(!response) Kick(playerid);
			if(0 < strlen(inputtext) > 64){
				ShowPlayerNotice(playerid, "Mat khau phai be hon 64 ki tu", 2000);
				Dialog_Show(playerid,DIALOG_PASSWORD, DIALOG_STYLE_INPUT, "Mat khau", "{fc031c}Vui long nhap mat khau cua ban vao day", ">>", "<<");
			}
			SetPVarString(playerid, "AuthPassword_", inputtext);

			new szPassInput[1280];
			for(new i = 0; i < strlen(inputtext); i++)
			{
				strcat(szPassInput, ".",sizeof(szPassInput));
			}
			PlayerTextDrawSetString(playerid, AuthPTD[playerid][5], szPassInput);
			PlayerTextDrawHide(playerid,AuthPTD[playerid][5]);
			PlayerTextDrawShow(playerid,AuthPTD[playerid][5]);
		}
	}
	return 1;
}