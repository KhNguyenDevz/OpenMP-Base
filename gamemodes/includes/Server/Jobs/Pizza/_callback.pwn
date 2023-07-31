#include <YSI\y_hooks>
#define LOADING_LAYBANH 2
hook OnGameModeInit()
{
	CreateDynamic3DTextLabel("Lay banh {f7f063}Pizza{FFFFFF}\nSu dung 'N' de thao tac", -1, 376.4395,-113.7065,1001.4922-0.5, 30);
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(IsPlayerInRangeOfPoint(playerid, 2.0, 376.4395,-113.7065,1001.4922))
	{
		if(newkeys == KEY_NO)
		{
			if(GetPizza[playerid]) return JobMessage(playerid, "Ban da lay banh truoc do roi !");
			ProgressStart(playerid,LOADING_LAYBANH, 5, "dang lay banh pizza");
			TogglePlayerControllable(playerid,0);
		}
	}
	if(GetPizza[playerid])
	{
		if(newkeys == KEY_NO)
		{

			new pizzaveh = GetClosestCar(playerid, 448, 3.0);
			if(IsPlayerInRangeOfVehicle(playerid, pizzaveh, 3.0) && pizzaveh == PizzaDeliveryVehicle[playerid])
			{
				if(CatBanhPizza[playerid] == 0)
				{
					RemovePlayerAttachedObject(playerid, 0);
					CatBanhPizza[playerid] = 1;
					CamBanhPizza[playerid] = 0;
					Msg(playerid, -1, "*** Ban da cat banh pizza vao xe cua minh");
				}
				else if(CamBanhPizza[playerid] == 0)
				{
					ApplyAnimation(playerid, "CARRY", "liftup", 4.0, 0, 0, 0, 0, 0, 1);
					ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
					SetPlayerAttachedObject(playerid, 0, 2814, 5, 0.134999, -0.052999, 0.120000, -81.700050, 0.000000, 10.999993, 1.000000, 1.000000, 1.000000);
					CamBanhPizza[playerid] = 1;
					CatBanhPizza[playerid] = 0;
					Msg(playerid, COLOR_LIGHTBLUE, "*** Ban da lay chiec banh ra ngoai");
				}
			}
			else Msg(playerid, -1, "*** Ban khong o gan xe pizza cua minh de co the thao tac");
		}
	}
	return 1;
}

public OnPlayerLoadFinished(playerid, progress_id)
{
	switch(progress_id)
	{
		case LOADING_LAYBANH:
		{
			TogglePlayerControllable(playerid, 1);
			GetPizza[playerid] = 1;
			ApplyAnimation(playerid, "CARRY", "liftup", 4.0, 0, 0, 0, 0, 0, 1);
			ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
			SetPlayerAttachedObject(playerid, 0, 2814, 5, 0.134999, -0.052999, 0.120000, -81.700050, 0.000000, 10.999993, 1.000000, 1.000000, 1.000000);
			Msg(playerid, COLOR_LIGHTBLUE, "*** Ban da lay banh thanh cong, hay tien ra xe pizza va bam 'N' de bo banh vao xe");

			new rand = random(MAX_HOUSES - 1);
			while(!(HouseInfo[rand][hOwned])) {
				if(++rand >= MAX_HOUSES) {
					rand = 0;
				}
			}
			DistanceToPizzaPoint[playerid] = GetPlayerDistanceFromPoint(playerid, HouseInfo[rand][hExteriorX], HouseInfo[rand][hExteriorY], HouseInfo[rand][hExteriorZ]);

			SetPlayerCheckpoint(playerid, HouseInfo[rand][hExteriorX], HouseInfo[rand][hExteriorY], HouseInfo[rand][hExteriorZ], 5);
			CP[playerid] = 100;
			Msg(playerid, -1, "{dff24e}*** Ban vui long giao chiec pizza nay den checkpoint tren ban do !");
		}
	}
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid)
{
	if(CP[playerid] == 100)
	{
		if(IsPlayerInAnyVehicle(playerid)) return Msg(playerid, COLOR_LIGHTRED, "*** Ban phai xuong xe de co the giao hang");
		if(CamBanhPizza[playerid] == 0) return Msg(playerid, COLOR_LIGHTRED, "*** Hay tien de xe cua minh va bam 'N' de lay banh va tien den checkpoint de giao no");

		new pCashPoint = floatround(DistanceToPizzaPoint[playerid]/20);
		new costgiao = Random(30, 100);
		new costtip = Random(0, 100);
		new realmoney = (pCashPoint-pCashPoint*10/100)+costgiao+costtip;

		new szPoint[2460];
		format(szPoint, sizeof(szPoint), 	
		"\\c Tien banh: {dff24e}%d{FFFFFF},\n\
		>\\c Thue VAT: {dff24e}10 phan tram{FFFFFF},\n\
		>\\c Phi giao hang: {dff24e}%d{FFFFFF},\n\
		>\\c Tien tip (Tien boa): {dff24e}%d{FFFFFF},\n\
		>\\c Quang duong: {dff24e}%0.2f{FFFFFF}\n\
		\n\
		>\\c Tong tien nhan duoc: {f55660}%d",
		pCashPoint,
		costgiao, costtip,DistanceToPizzaPoint[playerid],
		realmoney);
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "Thong tin giao hang", szPoint, "OK", "");
		PlayerInfo[playerid][pCash] += realmoney;

		GetPizza[playerid] = 0;
		CamBanhPizza[playerid] = 0;
		CatBanhPizza[playerid] = 0;
		CP[playerid] = 0;
		RemovePlayerAttachedObject(playerid, 0);
		DisablePlayerCheckpoint(playerid);
	}
}