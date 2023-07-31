#include <YSI\y_hooks>


hook OnPlayerConnect(playerid)
{
	PlayerPage[playerid] = 1;
	mysql_tquery(MainPipeline, "SELECT * FROM `inventory_drop`", "OnLoadDropInv", "");
	return 1;
}

InvClick(playerid, PlayerText:playertextid)
{
	for(new i = 0; i < 21; i++)
	{
		if(playertextid == ItemBackground[playerid][i]){
			new invSlotClick[MAX_PLAYERS];
			invSlotClick[playerid] = InventoryInfo[playerid][PlayerPage[playerid]][invSlot][i];
			// pSelect[playerid] = PlayerInvInfo[playerid][PlayerPage[playerid]][pSelectItemID];

			if(invSlotClick[playerid] != 0)
			{
				pCurrentSelect[playerid] = PlayerInvInfo[playerid][PlayerPage[playerid]][pSelectItemID];
				if(pCurrentSelect[playerid] > 0)
				{
					PlayerTextDrawColor(playerid, ItemInv[playerid][PlayerPage[playerid]][pCurrentSelect[playerid]-1], -1);
					ReloadTextDraw(playerid, ItemInv[playerid][PlayerPage[playerid]][pCurrentSelect[playerid]-1]);
				}

				PlayerInvInfo[playerid][PlayerPage[playerid]][pSelectItemID] = i;
				pSelect[playerid] = PlayerInvInfo[playerid][PlayerPage[playerid]][pSelectItemID];
				PlayerSelectItem(playerid, 1);

				if(pCurrentSelect[playerid] == pSelect[playerid]) { // Cancel Select
					
					PlayerTextDrawColor(playerid, ItemInv[playerid][PlayerPage[playerid]][pCurrentSelect[playerid]-1], -1);
					ReloadTextDraw(playerid, ItemInv[playerid][PlayerPage[playerid]][pCurrentSelect[playerid]-1]);

					PlayerInvInfo[playerid][PlayerPage[playerid]][pSelectItemID] = 0;
					pCurrentSelect[playerid] = 0;
				}
			}
		}
	}
	if(playertextid == btnInv[playerid][0])
	{
		new pSelectID[MAX_PLAYERS];
		pSelectID[playerid] = PlayerInvInfo[playerid][PlayerPage[playerid]][pSelectItemID];
		new invSlotClick[MAX_PLAYERS];
		invSlotClick[playerid] = InventoryInfo[playerid][PlayerPage[playerid]][invSlot][pSelectID[playerid]];

		UseItem(playerid, itemInfo[invSlotClick[playerid]][item_id]);
		HidePlayerIndexInv(playerid);
		// printf("Use | pSelect: %d\n",PlayerInvInfo[playerid][PlayerPage[playerid]][pSelectItemID]);
	}
	if(playertextid == btnPage[playerid][0])
	{
		if(PlayerPage[playerid] > 1)
		{
			PlayerPage[playerid] -=1;
			HidePlayerIndexInv(playerid);
			ReloadInv(playerid);
		}
	}
	if(playertextid == btnInv[playerid][3])
	{
		new pSelectID[MAX_PLAYERS];
		pSelectID[playerid] = PlayerInvInfo[playerid][PlayerPage[playerid]][pSelectItemID];
		new invSlotClick[MAX_PLAYERS];
		invSlotClick[playerid] = InventoryInfo[playerid][PlayerPage[playerid]][invSlot][pSelectID[playerid]];

		new szInfoInv[1280];
		format(szInfoInv, sizeof(szInfoInv), 
		"\\cThong Tin Vat Pham \n\
		\\cTen: %s \n\
		\\cSo luong: %d \n\
		\\cHuong dan su dung: %s",
		itemInfo[invSlotClick[playerid]][item_name],
		InvAmount[playerid][PlayerPage[playerid]][pSelectID[playerid]-1],
		itemInfo[invSlotClick[playerid]][item_usage]);
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Thong tin vat pham", szInfoInv, "OK", "");
	}
	if(playertextid == btnPage[playerid][1])
	{
		if(PlayerPage[playerid] >= 0 && PlayerPage[playerid] < GetPlayerPage(playerid)+1)
		{
			PlayerPage[playerid] +=1;
			HidePlayerIndexInv(playerid);
			ReloadInv(playerid);
		}
	}
	if(playertextid == btnInv[playerid][1])
	{
		new pSelectID[MAX_PLAYERS];
		pSelectID[playerid] = PlayerInvInfo[playerid][PlayerPage[playerid]][pSelectItemID];

		DestroyInvItem(playerid, PlayerPage[playerid], pSelectID[playerid]-1);
	}
	return 1;
}


forward OnInvDropItem(playerid, itemid, amount);
public OnInvDropItem(playerid, itemid, amount)
{
	new invlog[1280];
	format(invlog, sizeof(invlog), "%s da vut %s (Amount: %d)", GetPlayerNameExt(playerid),itemInfo[itemid][item_name], amount);
	Log("dropitem.log", invlog);
	return 1;
}

forward OnLoadPlayerInventory(playerid);
public OnLoadPlayerInventory(playerid)
{
	if(cache_num_rows() > 0)
	{
		new strGetInvItem[128], pinvpage = PlayerPage[playerid], countitem[MAX_PLAYERS] = 0;
		for(new i = 0; i < cache_num_rows(); i++)
		{
			if(i > 19*pinvpage) {
				pinvpage++;
				countitem[playerid] = 0;
			}

			cache_get_field_content(i,  "item", strGetInvItem, MainPipeline); PlayerInvItem[playerid][pinvpage][pInvItemID][countitem[playerid]] = strval(strGetInvItem);
			cache_get_field_content(i,  "amount", strGetInvItem, MainPipeline); PlayerInvItem[playerid][pinvpage][pInvAmount][countitem[playerid]] = strval(strGetInvItem);
			countitem[playerid]++;
		}
	}
}


forward OnLoadDropInv(playerid);
public OnLoadDropInv(playerid)
{
	new szQueyrLoadInv[1280];
	for(new i = 0; i < cache_num_rows(); i++)
	{
		cache_get_field_content(i, "id", szQueyrLoadInv, MainPipeline); DropItemInfo[i][d_id] = strval(szQueyrLoadInv);
		cache_get_field_content(i, "item", szQueyrLoadInv, MainPipeline); DropItemInfo[i][d_itemid] = strval(szQueyrLoadInv);
		cache_get_field_content(i, "amount", szQueyrLoadInv, MainPipeline); DropItemInfo[i][d_amount] = strval(szQueyrLoadInv);
		cache_get_field_content(i, "uid", szQueyrLoadInv, MainPipeline); DropItemInfo[i][d_uid] = strval(szQueyrLoadInv);

		cache_get_field_content(i, "posx", szQueyrLoadInv, MainPipeline); DropItemInfo[i][d_pos][0] = floatstr(szQueyrLoadInv);
		cache_get_field_content(i, "posy", szQueyrLoadInv, MainPipeline); DropItemInfo[i][d_pos][1] = floatstr(szQueyrLoadInv);
		cache_get_field_content(i, "posz", szQueyrLoadInv, MainPipeline); DropItemInfo[i][d_pos][2] = floatstr(szQueyrLoadInv);

		CreateDropObject(DropItemInfo[i][d_id], DropItemInfo[i][d_itemid],DropItemInfo[i][d_amount],DropItemInfo[i][d_pos][0],DropItemInfo[i][d_pos][1],DropItemInfo[i][d_pos][2]);
	}
}