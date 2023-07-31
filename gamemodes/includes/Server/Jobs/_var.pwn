#define 	DIALOG_GETJOB 		6000
#define 	DIALOG_ACTIONJOB	6001

enum Job_info{
	job_id,
	Float:job_PosX,
	Float:job_PosY,
	Float:job_PosZ,
	Float:job_PosA,
	job_maxmb,
	job_level,
	job_idveh,
	job_skin
}

new DynamicLabelJob[][Job_info] = {
	{1,2103.5359,-1803.7394,13.5547,93.7562, 100, 1, 448, 155}
};
new Float:VehiclesSpawnJob[][4] = {
	{2099.7107,-1803.8320,13.1533,86.9801}
};

new PizzaDeliveryVehicle[MAX_PLAYERS];
new PizzaDeliveryVehicleSpawned[MAX_PLAYERS];
new Text3D:PizzaDeliveryVehicleText[MAX_VEHICLES];