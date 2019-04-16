if(global.leveljustcompleted = "rm_lvl1_kupler")
{
	if((global.secondsminuteshours[1] < 1) && (global.mineralcount[0] == global.mineralcount[1]))
	{
		global.rank[0] = "S";
		global.rank[1] = "SUPERB";
		global.rank[2] =  make_color_rgb(224, 216, 254);
		global.rank[3] =  620
		global.rank[4] =  50
	}
	else if(global.secondsminuteshours[1] < 1 && (global.mineralcount[0] > (global.mineralcount[1]/2)))
	{
		global.rank[0] = "A";
		global.rank[1] = "ADEQUATE";
		global.rank[2] =  make_color_rgb(238  ,203,99);
		global.rank[3] =  650
		global.rank[4] =  70
	}
	else if(global.secondsminuteshours[1] < 1 && (global.mineralcount[0] < (global.mineralcount[1]/2)))
	{
		global.rank[0] = "B";
		global.rank[1] = "BASIC";
		global.rank[2] =  make_color_rgb(190, 195, 198);
		global.rank[3] =  620
		global.rank[4] =  50
	}
	else if(global.secondsminuteshours[1] < 3)
	{
		global.rank[0] = "C";
		global.rank[1] = "CASUAL";
		global.rank[2] = make_color_rgb(241  , 212  , 182);
		global.rank[3] =  640
		global.rank[4] =  50
	}
	else
	{
		global.rank[0] = "D";
		global.rank[1] = "DISASTER"
		global.rank[2] = make_color_rgb(245 , 197 , 197);
		global.rank[3] =  645
		global.rank[4] =  40
	}
}
else
{
	global.rank[0] = "N";
	global.rank[1] = "Not found"
	global.rank[2] = make_color_rgb(245 , 197 , 197);
	global.rank[3] =  645
	global.rank[4] =  40
}