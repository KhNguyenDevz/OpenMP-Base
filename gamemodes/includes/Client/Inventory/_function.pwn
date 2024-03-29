stock LoadPlayerInventory(playerid)
{
	new invQuery[1280];
	format(invQuery, sizeof(invQuery), "SELECT * FROM `inventory` WHERE `uid` = '%d'", GetPlayerSQLId(playerid));
	mysql_tquery(MainPipeline, invQuery, "OnLoadPlayerInventory", "i", playerid);
	return 1;
}
stock ReLoadPlayerInventory(playerid)
{
	for(new i = 0; i < MAX_INV_PAGES; i++)
	{
		for(new j = 0; j < MAX_INV_ITEM; j++)
		{
			PlayerInvItem[playerid][i][pInvItemID][j] = 0;
			PlayerInvItem[playerid][i][pInvAmount][j] = 0;
		}
	}
	new invQuery[1280];
	format(invQuery, sizeof(invQuery), "SELECT * FROM `inventory` WHERE `uid` = '%d'", GetPlayerSQLId(playerid));
	mysql_tquery(MainPipeline, invQuery, "OnLoadPlayerInventory", "i", playerid);
	return 1;
}

stock GetPlayerItem(playerid, page = 0)
{
	for(new i = 0; i < PlayerInvInfo[playerid][PlayerPage[playerid]][pCountItem]+1; i++)
	{
		PlayerTextDrawShow(playerid,ItemBackground[playerid][i]);
	}
	for(new i = 0; i < MAX_INV_ITEM; i++)
	{
		PlayerTextDrawColor(playerid, ItemInv[playerid][page][i], -1);
		PlayerTextDrawShow(playerid, ItemInv[playerid][page][i]);
		PlayerTextDrawShow(playerid, ItemName[playerid][page][i]);
	}

	for(new i = 0; i < 4; i++)
	{
		PlayerTextDrawShow(playerid, btnInv[playerid][i]);
	}
	for(new i = 0; i < TradeAllItem[playerid]; i++)
	{
		PlayerTextDrawShow(playerid, TradeItem[playerid][i]);
		PlayerTextDrawShow(playerid, TradeName[playerid][i]);
	}
}
stock GetPlayerPage(playerid)
{
	return floatround(CountAllItem[playerid]/MAX_INV_ITEM, floatround_ceil);
}


stock ReloadTextDraw(playerid, PlayerText:textdrawreload)
{
	PlayerTextDrawHide(playerid, PlayerText:textdrawreload);
	PlayerTextDrawShow(playerid, PlayerText:textdrawreload);
	return 1;
}

stock PlayerSelectItem(playerid, color_item)
{
	switch(color_item){
		case 0:{
			PlayerTextDrawColor(playerid, ItemInv[playerid][PlayerPage[playerid]][pSelect[playerid]-1], -1);
			ReloadTextDraw(playerid, ItemInv[playerid][PlayerPage[playerid]][pSelect[playerid]-1]);
		}
		case 1:{
			PlayerTextDrawColor(playerid, ItemInv[playerid][PlayerPage[playerid]][pSelect[playerid]-1], -16711681);
			ReloadTextDraw(playerid, ItemInv[playerid][PlayerPage[playerid]][pSelect[playerid]-1]);
		}
	}
}
stock CreateInvItem(playerid, itemid, page, amountz)
{
	new Float:InvX, Float:InvY, Float:NameX, Float:NameY;
	new InvIndex = PlayerInvInfo[playerid][page][pCountItem];

	if(PlayerInvInfo[playerid][page][pCountItem] >= 19) 
	{
		page +=1;
		PlayerInvInfo[playerid][page][pCountItem] = 0;
		InvIndex = 0;
	}

	InvAmount[playerid][PlayerPage[playerid]][InvIndex] = amountz;

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
	else if(InvIndex < 21) {
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

	InventoryInfo[playerid][page][invSlot][InvIndex+1] = itemInfo[itemid][item_id];
	PlayerInvInfo[playerid][page][pCountItem]++;
	CountAllItem[playerid] ++;

	return 1;
}

stock CreateInvTrade(playerid, itemid, amountz)
{
	new Float:InvX, Float:InvY, Float:NameX, Float:NameY;
	
	new TradeIndex = TradeAllItem[playerid];
	if(TradeIndex > 20) Msg(playerid, -1, "Max item !");
	InvTradeInfo[playerid][trade_amount] = amountz;

	if(TradeIndex < 5){
		InvX = 345+(34*TradeIndex);
		InvY = 120.000;

		NameX = 362.5+(34*TradeIndex);
		NameY = 158.000;
	}
	else if(TradeIndex < 10){
		InvX = 345+(34*(TradeIndex-5));
		InvY = 163.000;

		NameX = 362.5+(34*(TradeIndex-5));
		NameY = 200.000;
	}
	else if(TradeIndex < 15){
		InvX = 345+(34*(TradeIndex-10));
		InvY = 206.000;

		NameX = 362.5+(34*(TradeIndex-10));
		NameY = 245.000;
	}
	else if(TradeIndex < 21) {
		InvX = 345+(34*(TradeIndex-15));
		InvY = 249.000;

		NameX = 362.5+(34*(TradeIndex-15));
		NameY = 289.000;
	}
	printf("TradeIndex:%d",TradeIndex);
	TradeItem[playerid][TradeIndex] = CreatePlayerTextDraw(playerid, InvX, InvY, itemInfo[itemid][item_txd]);
	PlayerTextDrawTextSize(playerid, TradeItem[playerid][TradeIndex], 33.000, 42.000);
	PlayerTextDrawAlignment(playerid, TradeItem[playerid][TradeIndex], 1);
	PlayerTextDrawColor(playerid, TradeItem[playerid][TradeIndex], -1);
	PlayerTextDrawSetShadow(playerid, TradeItem[playerid][TradeIndex], 0);
	PlayerTextDrawSetOutline(playerid, TradeItem[playerid][TradeIndex], 0);
	PlayerTextDrawBackgroundColor(playerid, TradeItem[playerid][TradeIndex], 255);
	PlayerTextDrawFont(playerid, TradeItem[playerid][TradeIndex], 4);
	PlayerTextDrawSetProportional(playerid, TradeItem[playerid][TradeIndex], 1);

	TradeName[playerid][TradeIndex] = CreatePlayerTextDraw(playerid, NameX, NameY, itemInfo[itemid][item_name]);
	PlayerTextDrawLetterSize(playerid, TradeName[playerid][TradeIndex], 0.129, 0.599);
	PlayerTextDrawTextSize(playerid, TradeName[playerid][TradeIndex], 4.000, 30.000);
	PlayerTextDrawAlignment(playerid, TradeName[playerid][TradeIndex], 2);
	PlayerTextDrawColor(playerid, TradeName[playerid][TradeIndex], -1);
	PlayerTextDrawSetShadow(playerid, TradeName[playerid][TradeIndex], 1);
	PlayerTextDrawSetOutline(playerid, TradeName[playerid][TradeIndex], 0);
	PlayerTextDrawBackgroundColor(playerid, TradeName[playerid][TradeIndex], 150);
	PlayerTextDrawFont(playerid, TradeName[playerid][TradeIndex], 1);
	PlayerTextDrawSetProportional(playerid, TradeName[playerid][TradeIndex], 1);

	TradeAllItem[playerid]+=1;
	InvTradeInfo[playerid][trade_id] = itemid;
	return 1;
}

stock GetPlayerItemID(page, slot)
{
	// new slotitem;
	if(page == 1) return slot;
	else return (20*page)-(slot)-1;
}
stock GetDropIDFree()
{
	new dropid;
	for(new i = 0; i < MAX_OBJECT_DROP_ITEM; i++)
	{
		if(DropItemInfo[i][d_id] == 0)
		{
			dropid = i;
			break;
		}
	}
	return dropid;
}
stock GetIndexInv(playerid, gitemid, gamount)
{
	new freeindex;
	for(new i = 0; i < MAX_INV_ITEM; i++)
	{
		new ItemId = PlayerInvItem[playerid][PlayerPage[playerid]][pInvItemID][i], 
			ItemAmount = PlayerInvItem[playerid][PlayerPage[playerid]][pInvAmount][i];

		if(ItemId == gitemid && ItemAmount == gamount)
		{
			freeindex = i;
			break;
		}
	}
	return freeindex;
}
stock GetFreeIndexInv(playerid)
{
	new freeindex;
	for(new j = 0; j < MAX_INV_PAGES; j++)
	{
		if(freeindex != 0) break;

		for(new i = 0; i < MAX_INV_ITEM; i++)
		{
			new ItemId = PlayerInvItem[playerid][j][pInvItemID][i], 
				ItemAmount = PlayerInvItem[playerid][j][pInvAmount][i];

			if(ItemId == 0 && ItemAmount == 0)
			{
				freeindex = i;
				break;
			}
		}
	}
	return freeindex;
}
stock DestroyInvItem(playerid, page, index)
{
	PlayerTextDrawDestroy(playerid, ItemInv[playerid][page][index+1]);
	PlayerTextDrawDestroy(playerid, ItemName[playerid][page][index+1]);

	HidePlayerIndexInv(playerid);
	ReloadInv(playerid);

	InventoryInfo[playerid][page][invSlot][index+1] = 0;
	PlayerInvInfo[playerid][page][pCountItem] -= 1;
	CountAllItem[playerid] -= 1;

	new dropitemid[MAX_PLAYERS], dropitemamount[MAX_PLAYERS];
	dropitemid[playerid] = PlayerInvItem[playerid][PlayerPage[playerid]][pInvItemID][index];
	dropitemamount[playerid] = PlayerInvItem[playerid][PlayerPage[playerid]][pInvAmount][index];

	DropItem(playerid, dropitemid[playerid],dropitemamount[playerid]);
	// printf("Item: %d | Amount: %d ", dropitemid[playerid],dropitemamount[playerid]);
	return 1;
}
stock CreateDropObject(objid, objitemid,objamount, Float:DropObjX, Float:DropObjY, Float:DropObjZ)
{
	new szDrop[1280];
	format(szDrop, sizeof(szDrop), "{53f55b}%s (Amount: %d) {ffffff}\nSu dung {53f55b}H{ffffff}", itemInfo[objitemid][item_name], objamount);
	DropItemInfo[objid][d_object] = CreateObject(2969, DropObjX, DropObjY, DropObjZ-1, 0.0, 0.0, 0.0,  100);
	DropItemInfo[objid][d_label] = CreateDynamic3DTextLabel(szDrop, -1, DropObjX, DropObjY, DropObjZ-1, 100);
	return 1;
}
stock DropItem(playerid, dropitem_id, dropamount)
{
	new Float:DropObject[4], DropIDz, szDropQuery[1280];

	DropIDz = GetDropIDFree();
	DropItemInfo[DropIDz][d_id] = DropIDz;
	DropItemInfo[DropIDz][d_uid] = GetPlayerSQLId(playerid);
	DropItemInfo[DropIDz][d_itemid] = dropitem_id;
	DropItemInfo[DropIDz][d_amount] = dropamount;
	format(szDropQuery, sizeof(szDropQuery), "DELETE FROM `inventory` WHERE `item` = '%d' AND `amount` = '%d' AND `uid` = '%d'", 
		DropItemInfo[DropIDz][d_itemid],
		DropItemInfo[DropIDz][d_amount],
		GetPlayerSQLId(playerid)
	);
	mysql_query(MainPipeline, szDropQuery);

	GetPlayerPos(playerid, DropObject[0], DropObject[1], DropObject[2]);
	format(szDropQuery, sizeof(szDropQuery), "INSERT INTO `inventory_drop` SET \
		`item` = '%d', `amount` = '%d', `uid` = '%d', `posx` = '%0.2f', `posy` = '%0.2f', `posz` = '%0.2f'",
		DropItemInfo[DropIDz][d_itemid],
		DropItemInfo[DropIDz][d_amount],
		DropItemInfo[DropIDz][d_uid],
		DropObject[0], DropObject[1], DropObject[2]);

	mysql_tquery(MainPipeline, szDropQuery, "OnInvDropItem", "iii", playerid,DropItemInfo[DropIDz][d_itemid],DropItemInfo[DropIDz][d_amount]);
	CreateDropObject(DropItemInfo[DropIDz][d_id], DropItemInfo[DropIDz][d_itemid],DropItemInfo[DropIDz][d_amount], DropObject[0], DropObject[1], DropObject[2]);
	HidePlayerIndexInv(playerid);
	ReLoadPlayerInventory(playerid);
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
	CreateInvItem(playeridadd, item, PlayerPage[playerid],amount);

	new additemIndex = GetFreeIndexInv(playerid);
	PlayerInvItem[playerid][PlayerPage[playerid]][pInvItemID][additemIndex] = item;
	PlayerInvItem[playerid][PlayerPage[playerid]][pInvAmount][additemIndex] = amount;
	HidePlayerIndexInv(playerid);
	ReloadInv(playeridadd);
	return 1;
}

CMD:addtrade(playerid, params[])
{
	new playeridadd, item, amount;

	if(sscanf(params, "iii",playeridadd, item, amount)) return SendClientMessage(playerid, -1, "SU DUNG: /addtrade [playerid] [item] [amount]");

	CreateInvTrade(playerid, item, amount);
	ReloadInv(playeridadd);
	return 1;
}

stock InvMess(playerid, case_action, item)
{
	new szInvMess[1280];
	switch(case_action)
	{
		case 1: {
			format(szInvMess, sizeof(szInvMess), "{42f560}[INVENTORY]{ffffff}:Bạn đã sử dụng vật phẩm %s", itemInfo[item][item_name]);
		}
		case 2:{
			format(szInvMess, sizeof(szInvMess), "{42f560}[INVENTORY]{ffffff}:Bạn đã vứt vật phẩm %s", itemInfo[item][item_name]);
		}
	}
	SendClientMessage(playerid, -1, szInvMess);
	return 1;
}

stock UseItem(playerid, itemid)
{
	switch(itemid)
	{
		case 1: {
			GivePlayerValidWeapon(playerid, 22, 60000);
		}
		case 2: {
			GivePlayerValidWeapon(playerid, 30, 60000);
		}
		case 3: {
			GivePlayerValidWeapon(playerid, 27, 60000);
		}
		case 4: {
			ApplyAnimation(playerid, "VENDING", "VEND_Drink2_P", 4.0, 0, 0, 0, 0, 0, 1);
		}
		case 5: {
			GivePlayerValidWeapon(playerid, 29, 60000);
		}
		case 6: {
			GivePlayerValidWeapon(playerid, 31, 60000);
		}
		case 7: {
			GivePlayerValidWeapon(playerid, 25, 60000);
		}
		case 8: {
			GivePlayerValidWeapon(playerid, 28, 60000);
		}
		case 9: {
			GivePlayerValidWeapon(playerid, 32, 60000);
		}
		case 10: {
			GivePlayerValidWeapon(playerid, 24, 60000);
		}
		case 11: {
			GivePlayerValidWeapon(playerid, 26, 60000);
		}
		case 12: {
			GivePlayerValidWeapon(playerid, 34, 60000);
		}
		case 17:
		{
			ApplyAnimation(playerid, "VENDING", "VEND_Drink2_P", 4.0, 0, 0, 0, 0, 0, 1);
		}
		case 18:
		{
			ApplyAnimation(playerid, "VENDING", "VEND_Drink2_P", 4.0, 0, 0, 0, 0, 0, 1);
		}
		case 19:
		{
			ApplyAnimation(playerid, "VENDING", "VEND_Drink2_P", 4.0, 0, 0, 0, 0, 0, 1);
		}
		case 20:
		{
			ApplyAnimation(playerid, "VENDING", "VEND_Drink2_P", 4.0, 0, 0, 0, 0, 0, 1);
		}
	}
	InvMess(playerid, 1, itemid);
	return 1;
}
