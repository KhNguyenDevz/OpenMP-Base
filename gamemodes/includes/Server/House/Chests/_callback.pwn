#include <YSI\y_hooks>

hook OnGameModeInit()
{
	mysql_tquery(MainPipeline, "SELECT * FROM `chests`", "OnLoadChests", "");
	return 1;
}

forward OnLoadChest();
public OnLoadChest()
{
	for(new i = 0; i < cache_num_rows(); i++)
	{
		cache_get_field_content(i,  "id", strGetInvItem, MainPipeline); HouseChest[i][ChestID] = strval(strGetInvItem);
		cache_get_field_content(i,  "posx", strGetInvItem, MainPipeline); HouseChest[i][ChestX] = floatstr(strGetInvItem);
		cache_get_field_content(i,  "posy", strGetInvItem, MainPipeline); HouseChest[i][ChestY] = floatstr(strGetInvItem);
		cache_get_field_content(i,  "posz", strGetInvItem, MainPipeline); HouseChest[i][ChestZ] = floatstr(strGetInvItem);
		cache_get_field_content(i,  "interior", strGetInvItem, MainPipeline); HouseChest[i][ChestInterior] = strval(strGetInvItem);
		cache_get_field_content(i,  "ownerid", strGetInvItem, MainPipeline); HouseChest[i][ChestOwnerID] = strval(strGetInvItem);
		
		for(new j = 0; j < 20; j++)
		{
			new szChest[128];
			format(szChest, sizeof(szChest), "item%d", j);
			cache_get_field_content(i, szChest, strGetInvItem, MainPipeline); HouseChest[i][ChestItem][j] = floatstr(strGetInvItem);
		}
		for(new j = 0; j < 20; j++)
		{
			new szChest[128];
			format(szChest, sizeof(szChest), "amount%d", j);
			cache_get_field_content(i, szChest, strGetInvItem, MainPipeline); HouseChest[i][ChestAmount][j] = floatstr(strGetInvItem);
		}
	}
}