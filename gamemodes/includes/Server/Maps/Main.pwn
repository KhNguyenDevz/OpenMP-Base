#include <YSI\y_hooks>

hook OnPlayerConnect(playerid)
{
	// Spawn Player Map
	RemoveBuildingForPlayer(playerid, 4832, 1610.796, -2285.835, 52.750, 0.250);
	RemoveBuildingForPlayer(playerid, 4948, 1610.796, -2285.835, 52.750, 0.250);
	RemoveBuildingForPlayer(playerid, 1525, 1624.625, -2296.242, 14.312, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1619.507, -2267.203, 20.179, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1619.507, -2305.812, 20.179, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1650.796, -2271.195, 5.234, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1650.789, -2303.531, 5.234, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1653.960, -2267.734, -4.023, 0.250);
	RemoveBuildingForPlayer(playerid, 4992, 1654.539, -2286.804, 13.320, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 1658.164, -2271.890, 8.742, 0.250);
	return 1;
}