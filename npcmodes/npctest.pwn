//
// NPC Test Script
// Kye 2009
//

#include <a_npc>

forward TimerTest();

//------------------------------------------

main()
{
    //f("npctest: main()");
}

//------------------------------------------

public OnNPCModeInit()
{
	//f("npctest: OnNPCModeInit");
	SetTimer("TimerTest",10000,1);
}

//------------------------------------------

public OnNPCModeExit()
{
	//f("npctest: OnNPCModeExit");
}

//------------------------------------------

public TimerTest()
{
	//new ticker = GetTickCount() - g_LastTick;
    ////f("npctest: timer (%d)ms", ticker);
    //g_LastTick = GetTickCount();

    new msg[256];
    new name[64];
	new Float:X,Float:Y,Float:Z;
	new Float:Distance;
	new x;
	new num_streamed_in = 0;
	new num_connected = 0;
	
	x=0;
	while(x!=MAX_PLAYERS) {
	    if(IsPlayerConnected(x)) {
	        num_connected++;
	        if(IsPlayerStreamedIn(x)) {
	            num_streamed_in++;
	       		GetPlayerName(x,name,64);
				GetPlayerPos(x,X,Y,Z);
				GetDistanceFromMeToPoint(X,Y,Z,Distance);
				format(msg,256,"I see %s @ %f units with state:%d health:%d armour:%d weapon:%d",
						name,Distance,GetPlayerState(x),GetPlayerHealth(x),GetPlayerArmour(x),GetPlayerArmedWeapon(x));
				SendChat(msg);

				if(GetPlayerState(x) == PLAYER_STATE_DRIVER) {
				    format(msg,256,"I see %s driving vehicle: %d",name,GetPlayerVehicleID(x));
					SendChat(msg);
				}
				
			}
		}
		x++;
	}
	
	format(msg,256,"I have %d connected players with %d streamed in",num_connected,num_streamed_in);
	SendChat(msg);

	SendCommand("/me waits around patiently");
	SendCommand("/groundsit");
	
}

//------------------------------------------

public OnNPCConnect(myplayerid)
{
	//f("npctest: OnNPCConnect(My playerid=%d)", myplayerid);
}

//------------------------------------------

public OnNPCDisconnect(reason[])
{
	//f("npctest: OnNPCDisconnect(reason=%s)", reason);
}

//------------------------------------------

public OnNPCSpawn()
{
    //f("npctest: OnNPCSpawn");
}

//------------------------------------------

public OnNPCEnterVehicle(vehicleid, seatid)
{
	//f("npctest: OnNPCEnterVehicle(vehicleid=%d,seatid=%d)", vehicleid, seatid);
}

//------------------------------------------

public OnNPCExitVehicle()
{
    //f("npctest: OnNPCExitVehicle");
}

//------------------------------------------

public OnClientMessage(color, text[])
{
    //f("npctest: OnClientMessage(color=%d, text=%s)", color, text);
}

//------------------------------------------

public OnPlayerDeath(playerid)
{
    //f("npctest: OnPlayerDeath(playerid=%d)", playerid);
}

//------------------------------------------

public OnPlayerText(playerid, text[])
{
    //f("npctest: (CHAT)(from=%d, text=%s)", playerid, text);
}

//------------------------------------------

public OnPlayerStreamIn(playerid)
{
    //f("npctest: OnPlayerStreamIn(playerid=%d)", playerid);
}

//------------------------------------------

public OnPlayerStreamOut(playerid)
{
    //f("npctest: OnPlayerStreamOut(playerid=%d)", playerid);
}

//------------------------------------------

public OnVehicleStreamIn(vehicleid)
{
    //f("npctest: OnVehicleStreamIn(vehicleid=%d)", vehicleid);
}

//------------------------------------------

public OnVehicleStreamOut(vehicleid)
{
    //f("npctest: OnVehicleStreamOut(vehicleid=%d)", vehicleid);
}

//------------------------------------------



