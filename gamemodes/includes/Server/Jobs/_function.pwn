stock SetPlayerJob(playerid, jobid)
{
	if(jobid == 0){
		new szJob[1280];
		PlayerInfo[playerid][pJob] = 0;
		format(szJob, sizeof(szJob), "{87bbff}*** Ban da nghi cong viec %s", GetJobName(jobid));
		Msg(playerid, -1, szJob);
		return 1;
	}

	else if(PlayerInfo[playerid][pJob] == 0) {
		PlayerInfo[playerid][pJob] = jobid;

		new szJob[1280];
		format(szJob, sizeof(szJob), "{87bbff}*** Ban da nhan duoc cong viec %s", GetJobName(jobid));
		Msg(playerid, -1, szJob);
	}
	else if(PlayerInfo[playerid][pJob2] == 0) {
		PlayerInfo[playerid][pJob2] = jobid;

		new szJob[1280];
		format(szJob, sizeof(szJob), "{87bbff}*** Ban da nhan duoc cong viec 2 la %s", GetJobName(jobid));
		Msg(playerid, -1, szJob);
	}
	else Msg(playerid, COLOR_LIGHTRED, "*** Ban vui long nghi viec truoc khi nhan cong viec moi");
}

stock GetJobName(jobid)
{
	new JobName[1280];
	switch(jobid)
	{
		case 1: JobName = "Pizza Delivery";
		default: JobName = "Khong xac dinh";
	}
	return JobName;
}

stock GetJobMember(jobid)
{
	new countmember;
	foreach(new i:Player)
	{
		if(PlayerInfo[i][pJob] == jobid || PlayerInfo[i][pJob2] == jobid)
		{
			countmember = jobid;
		}
	}
	return countmember;
}

stock JobMessage(playerid, msg[])
{
	new szJobMsg[1280];
	format(szJobMsg, sizeof(szJobMsg), "{539dfc}[THONG BAO JOB]:{FFFFFF} %s", msg);
	SendClientMessage(playerid, -1, szJobMsg);
	return 1;
}

stock ShowJobInfo(playerid, jobid)
{
	new szGetJob[1280], szGetJobInfo[1280];
	format(szGetJob, sizeof(szGetJob), "Xin viec {539dfc}%s", GetJobName(DynamicLabelJob[jobid][0]));
	format(szGetJobInfo, sizeof(szGetJobInfo), 
		"#Thong tin \n\
		\n\
		\tCong Viec\t{539dfc}%s(%d) \n\
		\tNhan Vien\t%d/%d \n\
		\tCap do\t%d\n\
		\tPhuong tien\t%s\n\
		\tTrang phuc\t%d\n\
		\n\
		\n{ebd234}> Xin viec", GetJobName(DynamicLabelJob[jobid][job_id]), DynamicLabelJob[jobid][job_id],
		GetJobMember(DynamicLabelJob[jobid][job_id]), DynamicLabelJob[jobid][job_maxmb],
		DynamicLabelJob[jobid][job_level],
		GetVehicleName(DynamicLabelJob[jobid][job_idveh]),
		DynamicLabelJob[jobid][job_skin]
	);
	Dialog_Show(playerid, DIALOG_GETJOB, DIALOG_STYLE_LIST, szGetJob, szGetJobInfo, ">>","<<");
}

CMD:ptest(playerid, params[])
{
	ProgressStart(playerid,1, 12000, "Loading test");
	return 1;
}
