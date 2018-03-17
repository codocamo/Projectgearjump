if(global.leveljustcompleted = "rm_lvl1_kupler")
{
	if((global.secondsminuteshours[1] < 1) && (global.mineralcount[0] == global.mineralcount[1]))
	{
		global.rank = "Superb"
	}
	else if(global.secondsminuteshours[1] < 1)
	{
		global.rank = "Acceptable/Adequate"
	}
	else if(global.secondsminuteshours[1] < 2)
	{
		global.rank = "Basic"
	}
	else if(global.secondsminuteshours[1] < 3)
	{
		global.rank = "Careless/Casual"
	}
	else
	{
		global.rank = "Disaster"
	}
}