#include <a_samp>
new PlayerText:ProgressCustomPTD[MAX_PLAYERS][2];
new PlayerBar:ProgressCustomBar[MAX_PLAYERS][1];

forward OnPlayerLoadFinished(playerid, progress_id);
enum ploading_info{
	pl_time,
	pl_value,
}
new PlayerLoadingz[MAX_PLAYERS][ploading_info];
new LoadingTimer[MAX_PLAYERS];
stock ProgressStart(playerid,loadingid, time, caption[])
{
	PlayerTextDrawSetString(playerid, ProgressCustomPTD[playerid][1], caption);
	PlayerTextDrawShow(playerid, ProgressCustomPTD[playerid][0]);
	PlayerTextDrawShow(playerid, ProgressCustomPTD[playerid][1]);

	SetPlayerProgressBarValue(playerid, ProgressCustomBar[playerid][0], 1.000000);
	SetPlayerProgressBarMaxValue(playerid, ProgressCustomBar[playerid][0], 1000);
	ShowPlayerProgressBar(playerid, ProgressCustomBar[playerid][0]);
	
	PlayerLoadingz[playerid][pl_time] = time/1000;
	PlayerLoadingz[playerid][pl_value] = 0;

	LoadingTimer[playerid] = SetTimerEx("LoadingCallback_", PlayerLoadingz[playerid][pl_time], 1, "ii", playerid,loadingid);
	return 1;
}

forward LoadingCallback_(playerid, loading_id);
public LoadingCallback_(playerid,loading_id)
{
	if(PlayerLoadingz[playerid][pl_value] >= 1000){
		KillTimer(LoadingTimer[playerid]);

		CallRemoteFunction("OnPlayerLoadFinished", "ii", playerid, loading_id);

		PlayerLoadingz[playerid][pl_value] = 0;
		PlayerLoadingz[playerid][pl_time] = 0;

		PlayerTextDrawHide(playerid, ProgressCustomPTD[playerid][0]);
		PlayerTextDrawHide(playerid, ProgressCustomPTD[playerid][1]);
		HidePlayerProgressBar(playerid, ProgressCustomBar[playerid][0]);
	}
	else{
		PlayerLoadingz[playerid][pl_value] +=1;
		SetPlayerProgressBarValue(playerid, ProgressCustomBar[playerid][0], PlayerLoadingz[playerid][pl_value]);
		ShowPlayerProgressBar(playerid, ProgressCustomBar[playerid][0]);
	}
	return 1;
}
