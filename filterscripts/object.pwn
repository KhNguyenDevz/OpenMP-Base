
#include <a_samp>
#include <streamer>

public OnGameModeInit()
{
	// Truck
	CreateDynamicObject(3749, 2425.87451, -2089.50562, 18.40870,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3598, 2450.45361, -2137.99585, 14.60000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(705, 2434.27490, -2135.58569, 12.64000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(7561, 2496.34961, -2130.12012, 18.80920,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(3566, 2495.14282, -2125.08252, 15.00000,   0.00000, 0.00000, 270.00000);
	// VIP
	CreateDynamicObject(3533, 1797.99939, -1580.94116, 12.09220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3533, 1797.13477, -1576.30652, 12.09220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(10009, 1806.55029, -1589.30530, 16.18000,   0.00000, -15.98000, 131.71989);
	CreateDynamicObject(19588, 1800.21680, -1581.72461, 21.58960,   0.00000, 6.18000, -50.82000);
	CreateDynamicObject(19608, 1781.73169, -1559.65100, 21.85900,   0.00000, 0.00000, 40.62000);
	CreateDynamicObject(19129, 1774.42493, -1568.88843, 21.89650,   0.00000, 0.00000, 39.84002);
	CreateDynamicObject(19129, 1789.65186, -1556.01746, 21.89650,   0.00000, 0.00000, 40.26001);
	CreateDynamicObject(14762, 1778.77478, -1578.29126, 22.71300,   0.00000, 0.00000, -50.28000);
	CreateDynamicObject(14762, 1787.74646, -1570.78748, 22.71300,   0.00000, 0.00000, -50.28000);
	CreateDynamicObject(14762, 1796.92236, -1562.99866, 22.71300,   0.00000, 0.00000, -50.28000);
	CreateDynamicObject(14762, 1806.21631, -1555.15918, 22.71300,   0.00000, 0.00000, -50.28000);
	CreateDynamicObject(3532, 1776.79956, -1587.84558, 22.56690,   0.00000, 0.00000, 94.67999);
	CreateDynamicObject(3532, 1779.41882, -1587.36560, 22.56690,   0.00000, 0.00000, 95.69998);
	CreateDynamicObject(3532, 1782.06445, -1586.94312, 22.56690,   0.00000, 0.00000, 103.56000);
	CreateDynamicObject(3532, 1785.17822, -1585.61572, 22.56690,   0.00000, 0.00000, 130.68001);
	CreateDynamicObject(3532, 1787.99243, -1583.36169, 22.56690,   0.00000, 0.00000, 130.68001);
	CreateDynamicObject(3532, 1790.48657, -1581.25989, 22.56690,   0.00000, 0.00000, 130.68001);
	CreateDynamicObject(3532, 1798.43811, -1574.15869, 22.56690,   0.00000, 0.00000, 130.68001);
	CreateDynamicObject(3532, 1793.52795, -1578.47974, 22.56690,   0.00000, 0.00000, 130.68001);
	CreateDynamicObject(3532, 1793.52795, -1578.47974, 22.56690,   0.00000, 0.00000, 130.68001);
	CreateDynamicObject(3532, 1800.63904, -1571.91882, 22.56690,   0.00000, 0.00000, 130.68001);
	CreateDynamicObject(3532, 1803.50525, -1569.67920, 22.56690,   0.00000, 0.00000, 130.68001);
	CreateDynamicObject(3532, 1805.12720, -1568.13074, 22.56690,   0.00000, 0.00000, 130.68001);
	CreateDynamicObject(3532, 1807.17542, -1565.42419, 22.56690,   0.00000, 0.00000, 157.44003);
	CreateDynamicObject(3532, 1808.86157, -1562.17407, 22.56690,   0.00000, 0.00000, 157.44003);
	CreateDynamicObject(3532, 1810.24646, -1559.05432, 22.56690,   0.00000, 0.00000, 157.44003);
	CreateDynamicObject(3533, 1770.52295, -1575.11719, 26.15980,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3533, 1771.31836, -1569.02502, 26.15980,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3533, 1778.16614, -1555.45789, 26.15980,   0.00000, 0.00000, 6.66000);
	CreateDynamicObject(3533, 1792.57056, -1550.75476, 26.15980,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3533, 1798.80212, -1551.38062, 26.15980,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2314, 1781.68237, -1560.58459, 21.92750,   0.00000, 0.00000, 40.26000);
	CreateDynamicObject(14820, 1782.32910, -1560.14233, 22.52850,   0.00000, 0.00000, 40.14000);
	CreateDynamicObject(2229, 1784.78271, -1558.50000, 21.81770,   0.00000, 0.00000, 40.38000);
	CreateDynamicObject(2229, 1780.94458, -1561.78735, 21.81770,   0.00000, 0.00000, 40.38000);
	CreateDynamicObject(2232, 1784.35156, -1559.30042, 22.52120,   0.00000, 0.00000, 40.86000);
	CreateDynamicObject(2232, 1781.35901, -1561.92371, 22.52120,   0.00000, 0.00000, 40.86000);
	CreateDynamicObject(3524, 1782.66577, -1560.51416, 20.03930,   0.00000, 0.00000, 37.74000);
	CreateDynamicObject(3524, 1779.93506, -1563.94556, 23.07930,   0.00000, 0.00000, 37.74000);
	CreateDynamicObject(3524, 1786.22290, -1558.55896, 23.07930,   0.00000, 0.00000, 37.74000);
	CreateDynamicObject(19609, 1776.19934, -1566.90210, 21.93120,   0.00000, 0.00000, 57.96000);
	CreateDynamicObject(11689, 1774.74048, -1578.95605, 21.90230,   0.00000, 0.00000, 130.08009);
	CreateDynamicObject(11689, 1772.14661, -1575.91052, 21.90230,   0.00000, 0.00000, 130.08009);
	CreateDynamicObject(16151, 1800.33264, -1554.50427, 22.27370,   0.00000, 0.00000, 40.74000);
	CreateDynamicObject(2747, 1775.10242, -1578.57947, 22.36550,   0.00000, 0.00000, -51.24000);
	CreateDynamicObject(2747, 1772.51172, -1575.48157, 22.36550,   0.00000, 0.00000, -51.24000);
	CreateDynamicObject(3528, 1779.03442, -1557.09058, 29.09590,   0.00000, 0.00000, -52.86001);
	return 1;
}

public OnPlayerConnect(playerid)
{
	// Truck
	RemoveBuildingForPlayer(playerid, 3289, 2484.4141, -2141.0078, 12.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 3289, 2496.0625, -2141.0078, 12.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 3288, 2432.7266, -2133.0234, 12.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 3290, 2452.9609, -2129.0156, 25.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 3756, 2484.2344, -2118.5547, 17.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3755, 2484.2344, -2118.5547, 17.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3257, 2432.7266, -2133.0234, 12.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 3258, 2484.4141, -2141.0078, 12.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 3258, 2496.0625, -2141.0078, 12.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 3256, 2452.9609, -2129.0156, 25.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 3567, 2446.8281, -2075.8438, 13.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 3567, 2438.3594, -2075.8438, 13.2578, 0.25);
	return 1;
}