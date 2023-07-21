new VehicleCustomName[][VehCus_Info] = 
{
    {0,"arac"},
    {1," Ducati Diavel 1260"},
    {2,"Land Creiser"},
    {3,"McLaren"},
    {4,"Bentayga"},
    {5,"Canix"},
    {6,"Carrera S"},
    {7,"Huntleys"},
    {8,"Crossbar"},
    {9,"Nmax"},
    {10,"Gwing"},
    {11,"NRG-500 V1"},
    {12,"GLS Brabus 800"},
    {13,"Scramjet"},
    {14,"AMG SL63"},
    {15,"Oneo"},
    {16,"Tahoe"},
    {17,"IQX"},
    {18,"Harley"},
    {19,"Boatwood"},
    {20,"Dream"},
    {21,"Nuevo"},
    {22,"Newvo"},
    {23,"Lamborghini Aventador"},
    {24,"Lamborghini MCLG"},
    {25,"Lamborghini Gallardo"},
    {26,"Lamborghini Tenzo"},
    {27,"Lamborghini GLDC"},
    {28,"SH350i"},
    {29,"Ducati 1299"},
    {30,"Vario 150"},
    {31,"Ducati Hyp"},
    {32,"Z1000"},
    {33,"Exciter"},
    {34,"GT-R Nismo"},
    {35,"Supra"},
    {36,"Honda Civic"},
    {37,"Lexus LC 500"},
    {38,"Lexus RX"},
    {39,"Toyota 4 Runner"},
    {40,"Jerko"},
    {41,"R-R Phantom"},
    {42,"Container"},
    {43,"BMW X7"},
    {44,"Cadillac"},
    {45,"Hummer"},
    {46,"S450 4Matic"},
    {47,"Pagani Huayra"},
    {48,"BMW M760Lii"},
    {49,"PORSCHE TAYCAN"},
    {50,"SH350I"},
    {51,"Maybach S680"},
    {52,"Ferrari"}
};


stock GetVehicleNameExz(vehid)
{
	if(vehid > 399 && vehid < 612){
		return VehicleName[GetVehicleModel(vehid)-400];
	}
	else
	{
        new VehID;
        if(vehid == 613) VehID = 1;
        if(vehid == 662) VehID = 2;
        if(vehid == 665) VehID = 3;
        if(vehid == 667) VehID = 4;
        if(vehid == 699) VehID = 5;
        if(vehid == 794) VehID = 6;
        if(vehid == 796) VehID = 7;
        if(vehid == 798) VehID = 8;
        if(vehid == 907) VehID = 9;
        if(vehid == 909) VehID = 10;
        if(vehid == 999) VehID = 11;
        if(vehid == 1195) VehID = 12;
        if(vehid == 1197) VehID = 13;
        if(vehid == 1199) VehID = 14;
        if(vehid == 1201) VehID = 15;
        if(vehid == 1203) VehID = 16;
        if(vehid == 1206) VehID = 17;
        if(vehid == 1573) VehID = 18;
        if(vehid == 2883) VehID = 19;
        if(vehid == 3136) VehID = 20;
        if(vehid == 3138) VehID = 21;
        if(vehid == 3140) VehID = 22;
        if(vehid == 3142) VehID = 23;
        if(vehid == 3146) VehID = 24;
        if(vehid == 3148) VehID = 25;
        if(vehid == 3150) VehID = 26;
        if(vehid == 3152) VehID = 27;
        if(vehid == 3154) VehID = 28;
        if(vehid == 3156) VehID = 29;
        if(vehid == 3158) VehID = 30;
        if(vehid == 3160) VehID = 31;
        if(vehid == 3162) VehID = 32;
        if(vehid == 3164) VehID = 33;
        if(vehid == 3166) VehID = 34;
        if(vehid == 3177) VehID = 35;
        if(vehid == 3181) VehID = 36;
        if(vehid == 3183) VehID = 37;
        if(vehid == 3185) VehID = 38;
        if(vehid == 3188) VehID = 39;
        if(vehid == 3190) VehID = 40;
        if(vehid == 3192) VehID = 41;
        if(vehid == 3195) VehID = 42;
        if(vehid == 3197) VehID = 43;
        if(vehid == 3199) VehID = 44;
        if(vehid == 3201) VehID = 45;
        if(vehid == 3203) VehID = 46;
        if(vehid == 3205) VehID = 47;
        if(vehid == 3207) VehID = 48;
        if(vehid == 3209) VehID = 49;
        if(vehid == 3211) VehID = 50;
        if(vehid == 3213) VehID = 51;
        if(vehid == 3216) VehID = 52;
        if(vehid == 3217) VehID = 53;

        return VehicleCustomName[VehID][v_name];
    }
}