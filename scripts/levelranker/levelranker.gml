var mineralcount = "Minerals: " + string(global.mineralcount[0]) + "/" + string(global.mineralcount[1])

if(global.leveljustcompleted = "rm_lvl1_kupler")
{
	if((global.secondsminuteshours[1] < 1) && (global.mineralcount[0] == global.mineralcount[1]))
	{
		global.rank[0] = "S";
		global.rank[1] = "superb";
		global.rank[2] =  make_color_rgb(120, 82, 169);
	}
	else if(global.secondsminuteshours[1] < 1 && (global.mineralcount[0] > (global.mineralcount[1]/2)))
	{
		global.rank[0] = "A";
		global.rank[1] = "acceptable/Adequate";
		global.rank[2] =  make_color_rgb(211, 175, 55);
	}
	else if(global.secondsminuteshours[1] < 1 && (global.mineralcount[0] < (global.mineralcount[1]/2)))
	{
		global.rank[0] = "B";
		global.rank[1] = "basic";
		global.rank[2] =  make_color_rgb(190, 195, 198);
	}
	else if(global.secondsminuteshours[1] < 3)
	{
		global.rank[0] = "C";
		global.rank[1] = "casual";
		global.rank[2] = make_color_rgb(161, 104, 75);
	}
	else
	{
		global.rank[0] = "D";
		global.rank[1] = "disaster"
		global.rank[2] = make_color_rgb(48, 31, 13);
	}
}