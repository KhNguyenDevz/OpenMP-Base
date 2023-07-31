new PlayerText: SpeedoPTD[MAX_PLAYERS][29];
stock ShowPlayerSpeedo(playerid)
{
	for(new i = 0; i < sizeof(SpeedoPTD); i++)
	{
		PlayerTextDrawShow(playerid, SpeedoPTD[playerid][i]);
	}
	SetPVarInt(playerid, #openSpeedo, 1);
	return 1;
}


stock HidePlayerSpeedo(playerid)
{
	PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][19], 0, 3.000);
	for(new i = 0; i < sizeof(SpeedoPTD); i++)
	{
		PlayerTextDrawHide(playerid, SpeedoPTD[playerid][i]);
	}
	SetPVarInt(playerid, #openSpeedo, 0);
	return 1;
}

stock UpdatePlayerSpeedo(playerid, fuel, speed)
{
	new szSpeedo[1280], vehicleid = GetPlayerVehicleID(playerid), szColor[5];
	new engine,lights,alarm,doors,bonnet,boot,objective;
	GetVehicleParamsEx(vehicleid,engine,lights,alarm,doors,bonnet,boot,objective);

	new ValueFuel = 0.57*fuel;

	switch(speed)
	{
	    case 0..50: szColor = "~w~";
	    case 51..80: szColor = "~y~";
	    default: szColor = "~r~";
	}
	if(IsVIPcar(vehicleid) || IsAdminSpawnedVehicle(vehicleid) || GetVehicleModel(vehicleid) == 481 || GetVehicleModel(vehicleid) == 509 || GetVehicleModel(vehicleid) == 510)
	{
		PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][19], 57.000, 3.000);
	}
	else{
		PlayerTextDrawTextSize(playerid, SpeedoPTD[playerid][19], ValueFuel, 3.000);
	}

	format(szSpeedo, sizeof(szSpeedo), "%s%i",szColor, speed);
	PlayerTextDrawSetString(playerid,SpeedoPTD[playerid][28], szSpeedo);


	if(Seatbelt[playerid] == 0) PlayerTextDrawSetString(playerid, SpeedoPTD[playerid][21], "~r~SB");
	else PlayerTextDrawSetString(playerid, SpeedoPTD[playerid][21], "~g~SB");
	
	if(engine == VEHICLE_PARAMS_ON) PlayerTextDrawSetString(playerid, SpeedoPTD[playerid][22], "~g~ENGINE");
	else PlayerTextDrawSetString(playerid, SpeedoPTD[playerid][22], "~r~ENGINE");

	if(lights == VEHICLE_PARAMS_ON) PlayerTextDrawSetString(playerid, SpeedoPTD[playerid][23], "~g~LIGHTS");
	else PlayerTextDrawSetString(playerid, SpeedoPTD[playerid][23], "~r~LIGHTS");	

	format(szSpeedo, sizeof(szSpeedo), "%s", GetVehicleName(GetVehicleModel(vehicleid)));
	PlayerTextDrawSetString(playerid, SpeedoPTD[playerid][20], szSpeedo);

	// ShowPlayerSpeedo(playerid);
	return 1;
}