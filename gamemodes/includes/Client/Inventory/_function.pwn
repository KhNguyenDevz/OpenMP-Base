stock GetPlayerItem(playerid, page = 0)
{
	// for(new i = 0 ; i < 12; i++)
	// {
	// 	if(PlayerInfo[playerid][pGuns][i] == 22) CreateInvItem(playerid, 0, GetPlayerPage(playerid));
	// 	if(PlayerInfo[playerid][pGuns][i] == 30) CreateInvItem(playerid, 1, GetPlayerPage(playerid));
	// 	if(PlayerInfo[playerid][pGuns][i] == 27) CreateInvItem(playerid, 2, GetPlayerPage(playerid));
	// }
	// CreateInvItem(playerid, 3, GetPlayerPage(playerid));
	for(new i = 0; i < MAX_INV_ITEM; i++)
	{
		PlayerTextDrawShow(playerid, ItemInv[playerid][page][i]);
		PlayerTextDrawShow(playerid, ItemName[playerid][page][i]);
	}

	for(new i = 0; i < 4; i++)
	{
		PlayerTextDrawShow(playerid, btnInv[playerid][i]);
	}
}
stock GetPlayerPage(playerid)
{
	return floatround(CountAllItem[playerid]/MAX_INV_ITEM);
}

stock CreateInvItem(playerid, itemid, page)
{
	new Float:InvX, Float:InvY, Float:NameX, Float:NameY;
	new InvIndex = PlayerInvInfo[playerid][page][pCountItem];

	if(InvIndex < 5){
		InvX = 96+(34*InvIndex);
		InvY = 120.000;

		NameX = 113.5+(34*InvIndex);
		NameY = 158.000;
	}
	else if(InvIndex < 10){
		InvX = 96+(34*(InvIndex-5));
		InvY = 163.000;

		NameX = 113.5+(34*(InvIndex-5));
		NameY = 200.000;
	}
	else if(InvIndex < 15){
		InvX = 96+(34*(InvIndex-10));
		InvY = 206.000;

		NameX = 113.5+(34*(InvIndex-10));
		NameY = 245.000;
	}
	else{
		InvX = 96+(34*(InvIndex-15));
		InvY = 249.000;

		NameX = 113.5+(34*(InvIndex-15));
		NameY = 289.000;
	}

	ItemInv[playerid][page][InvIndex] = CreatePlayerTextDraw(playerid, InvX, InvY, itemInfo[itemid][item_txd]);
	PlayerTextDrawTextSize(playerid, ItemInv[playerid][page][InvIndex], 33.000, 42.000);
	PlayerTextDrawAlignment(playerid, ItemInv[playerid][page][InvIndex], 1);
	PlayerTextDrawColor(playerid, ItemInv[playerid][page][InvIndex], -1);
	PlayerTextDrawSetShadow(playerid, ItemInv[playerid][page][InvIndex], 0);
	PlayerTextDrawSetOutline(playerid, ItemInv[playerid][page][InvIndex], 0);
	PlayerTextDrawBackgroundColor(playerid, ItemInv[playerid][page][InvIndex], 255);
	PlayerTextDrawFont(playerid, ItemInv[playerid][page][InvIndex], 4);
	PlayerTextDrawSetProportional(playerid, ItemInv[playerid][page][InvIndex], 1);

	ItemName[playerid][page][InvIndex] = CreatePlayerTextDraw(playerid, NameX, NameY, itemInfo[itemid][item_name]);
	PlayerTextDrawLetterSize(playerid, ItemName[playerid][page][InvIndex], 0.129, 0.599);
	PlayerTextDrawTextSize(playerid, ItemName[playerid][page][InvIndex], 4.000, 30.000);
	PlayerTextDrawAlignment(playerid, ItemName[playerid][page][InvIndex], 2);
	PlayerTextDrawColor(playerid, ItemName[playerid][page][InvIndex], -1);
	PlayerTextDrawSetShadow(playerid, ItemName[playerid][page][InvIndex], 1);
	PlayerTextDrawSetOutline(playerid, ItemName[playerid][page][InvIndex], 0);
	PlayerTextDrawBackgroundColor(playerid, ItemName[playerid][page][InvIndex], 150);
	PlayerTextDrawFont(playerid, ItemName[playerid][page][InvIndex], 1);
	PlayerTextDrawSetProportional(playerid, ItemName[playerid][page][InvIndex], 1);

	InventoryInfo[playerid][page][invSlot][InvIndex] = itemInfo[itemid][item_id];
	printf("Add item: invSlot: %d | InvIndex: %d",InventoryInfo[playerid][page][invSlot][InvIndex], InvIndex);
	PlayerInvInfo[playerid][page][pCountItem]++;
	CountAllItem[playerid] ++;

	return 1;
}

CMD:inv1(playerid, params[])
{
	if(GetPVarInt(playerid, #open_inv) == 1) return HidePlayerIndexInv(playerid);
	ShowPlayerIndexInv(playerid);
	return 1;
}
CMD:additem(playerid, params[])
{
	new playeridadd, item, amount;

	if(sscanf(params, "iii",playeridadd, item, amount)) return SendClientMessage(playerid, -1, "SU DUNG: /additem [playerid] [item] [amount]");
	CreateInvItem(playeridadd, item, PlayerPage[playerid]);
	ReloadInv(playeridadd);
	return 1;
}
