#define MAX_CHEST 5000
#define MAX_CHEST_ITEM 20

enum Chest_Info{
	ChestID,
	Float:ChestX,
	Float:ChestY,
	Float:ChestZ,
	ChestItem[MAX_CHEST_ITEM],
	ChestAmount[MAX_CHEST_ITEM],
	ChestInterior,
	ChestOwnerID
}

new HouseChest[MAX_CHEST][MAX_CHEST_ITEM];

