#include <YSI\y_hooks>


hook OnPlayerConnect(playerid)
{
	PlayerPage[playerid] = 0;
	return 1;
}

InvClick(playerid, PlayerText:playertextid)
{
	for(new i = 0; i < 21; i++)
	{
		if(playertextid == ItemBackground[playerid][i]){
			new invSlotClick[MAX_PLAYERS];
			invSlotClick[playerid] = InventoryInfo[playerid][PlayerPage[playerid]][invSlot][i];
			if(invSlotClick[playerid] != 0)
			{
				new szformatz[1280];
				format(szformatz, sizeof(szformatz), "Vat Pham: %s", itemInfo[invSlotClick[playerid]][item_name]);
				SendClientMessage(playerid, -1, szformatz);
			}
			else SendClientMessage(playerid, -1, "Vat Pham: None");

			printf("InvClick: %d | Name:%s | TXD: %s",InventoryInfo[playerid][PlayerPage[playerid]][invSlot][i], itemInfo[invSlotClick[playerid]][item_name],itemInfo[invSlotClick[playerid]][item_txd]);
		}
	}
	return 1;
}