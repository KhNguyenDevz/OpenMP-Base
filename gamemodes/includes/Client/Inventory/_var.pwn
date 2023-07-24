#define MAX_INV_PAGES 10
#define MAX_INV_ITEM 20
#define DAFAULT_INV_PAGE 0
#define MAX_TRADE_PAGES 10
#define MAX_INV_TRADE 20

enum PInventory_Info
{
	pSelectItemID,
	pCountItem,
	pTrade[MAX_INV_TRADE]
}

new PlayerInvInfo[MAX_PLAYERS][MAX_INV_PAGES][PInventory_Info];

enum Inventory_Info{
	invSlot[MAX_INV_ITEM]
}
new InventoryInfo[MAX_PLAYERS][MAX_INV_PAGES][Inventory_Info];
new CountAllItem[MAX_PLAYERS];
new PlayerPage[MAX_PLAYERS];
enum InventoryItem_Info
{
	item_id,
	item_txd[64],
	item_name[128],
	item_usage[1280]
}
new const itemInfo[][InventoryItem_Info] = {
	{0, "", "None", "None"},
	{1, "mdl-2003:item_9mm", "Sung 9MM", "Sung ngan, su dung dan Pistol,su dung vu khi va sau do su dung hop dan."},
	{2, "mdl-2003:item_ak47", "Sung AK47", "Sung truong tu dong, su dung dan Rifle, su dung vu khi va sau do su dung hop dan."},
	{3, "mdl-2003:item_spas", "Sung Spas",  "Shotgun ban tu dong, su dung dan Shotgun, su dung vu khi va sau do su dung hop dan."},
	{4, "mdl-2003:item_waterbottle", "Nuoc Loc", "Dung de uong."}
};

new PlayerText: ItemBackground[MAX_PLAYERS][41];
// new PlayerText: TradeBackground[MAX_PLAYERS][21];

new PlayerText: btnInv[MAX_PLAYERS][4];

new PlayerText: WeightInv[MAX_PLAYERS][2];

new PlayerText: btnPage[MAX_PLAYERS][6];

new PlayerText: ItemInv[MAX_PLAYERS][MAX_INV_PAGES][MAX_INV_ITEM];
new PlayerText: ItemName[MAX_PLAYERS][MAX_INV_PAGES][MAX_INV_ITEM];
new PlayerText: TradeInv[MAX_PLAYERS][MAX_TRADE_PAGES][MAX_INV_TRADE];
