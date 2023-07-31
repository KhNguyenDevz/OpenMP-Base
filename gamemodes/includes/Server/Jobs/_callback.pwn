hook OnGameModeInit()
{
	for(new i = 0; i < sizeof(DynamicLabelJob); i++)
	{
		new szLabelJob[1280];
		format(szLabelJob, sizeof(szLabelJob), "{539dfc}%s{FFFFFF}\nSu dung 'H' de thao tac", GetJobName(DynamicLabelJob[i][job_id]));
		CreateDynamic3DTextLabel(szLabelJob, -1,DynamicLabelJob[i][job_PosX], DynamicLabelJob[i][job_PosY], DynamicLabelJob[i][job_PosZ], 100);

		CreateActor(155, DynamicLabelJob[i][job_PosX], DynamicLabelJob[i][job_PosY], DynamicLabelJob[i][job_PosZ], DynamicLabelJob[i][job_PosA]);
	}
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	for(new i = 0; i < sizeof(DynamicLabelJob); i++)
	{
		if(IsPlayerInRangeOfPoint(playerid, 1.0,DynamicLabelJob[i][job_PosX], DynamicLabelJob[i][job_PosY], DynamicLabelJob[i][job_PosZ]))
		{
			if(newkeys == KEY_CTRL_BACK)
			{
				SetPVarInt(playerid, #jobid, i);
				printf("PJob: %d | ID Job: %d",PlayerInfo[playerid][pJob], DynamicLabelJob[i][job_id]);
				if(PlayerInfo[playerid][pJob] == DynamicLabelJob[i][job_id] || PlayerInfo[playerid][pJob2] == DynamicLabelJob[i][job_id])
				{
					Dialog_Show(playerid, DIALOG_ACTIONJOB, DIALOG_STYLE_LIST, "Thao tac cong viec", 
						"Lay trang phuc\nLay phuong tien\nNghi viec", ">>", "<<");
				}
				else ShowJobInfo(playerid, i);
			}
		}
	}
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case DIALOG_ACTIONJOB:
		{
			new pjobz = GetPVarInt(playerid, #jobid);
			printf("pjobz: %d",pjobz);
			if(PlayerInfo[playerid][pJob] == pjobz || PlayerInfo[playerid][pJob2] == pjobz)
			{
				if(listitem == 0)
				{
					PlayerInfo[playerid][pModel] = DynamicLabelJob[pjobz][job_skin];
					SetPlayerSkin(playerid, DynamicLabelJob[pjobz][job_skin]);
					JobMessage(playerid, "Ban da lay trang phuc thanh cong");
				}
				if(listitem == 1)
				{
					if(pjobz == 0)
					{
						if(PizzaDeliveryVehicleSpawned[playerid]) return JobMessage(playerid, "Ban da lay phuong tien truoc do");
						if(PizzaDeliveryVehicle[playerid] != INVALID_VEHICLE_ID)
						{
							PizzaDeliveryVehicle[playerid] = CreateVehicle(DynamicLabelJob[pjobz][job_idveh], VehiclesSpawnJob[pjobz][0], VehiclesSpawnJob[pjobz][1], VehiclesSpawnJob[pjobz][2], VehiclesSpawnJob[pjobz][3], 1, 1, 1000);
							if(PizzaDeliveryVehicle[playerid]){
								PizzaDeliveryVehicleSpawned[playerid] = 1;
								PutPlayerInVehicle(playerid, PizzaDeliveryVehicle[playerid], 0);

								new sz3d[1280];
								format(sz3d, sizeof(sz3d), "Phuong tien cua {539dfc}%s{FFFFFF}", GetPlayerNameEx(playerid));
								PizzaDeliveryVehicleText[PizzaDeliveryVehicle[playerid]] = Create3DTextLabel(sz3d, -1, VehiclesSpawnJob[pjobz][0], VehiclesSpawnJob[pjobz][1], VehiclesSpawnJob[pjobz][2], 50.0, 0, 1);
								Attach3DTextLabelToVehicle(PizzaDeliveryVehicleText[PizzaDeliveryVehicle[playerid]], PizzaDeliveryVehicle[playerid], 0.0, 0.0, 0.0);
							}
						}
					}
				}
				if(listitem == 2)
				{
					SetPlayerJob(playerid, 0);
				}
			}
		}
		case DIALOG_GETJOB:
		{
			if(response)
			{
				if(listitem != 6)
				{
					new pjobz = GetPVarInt(playerid, #jobid);
					ShowJobInfo(playerid, pjobz);
				}
				if(listitem == 6)
				{
					new pjobz = GetPVarInt(playerid, #jobid);
					if(GetJobMember(DynamicLabelJob[pjobz][job_id]) > DynamicLabelJob[pjobz][job_maxmb]) return JobMessage(playerid, "Cong viec da dat gioi han nhan vien!");
					if(PlayerInfo[playerid][pLevel] < DynamicLabelJob[pjobz][job_level]) return JobMessage(playerid, "Ban khong du cap do de lam cong viec nay!");

					SetPlayerJob(playerid, pjobz+1);
				}
			}
		}
	}
}