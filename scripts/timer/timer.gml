
if (timer_once)
{
	global.secondsminuteshours = [0,0,0] 
	timer_once = false;
	
}



if(!obj_player.endoflevel)
{
	global.secondsminuteshours[0] +=1/room_speed
}

if(global.secondsminuteshours[0] < 60 && global.secondsminuteshours[0] > 59.9)
{
	global.secondsminuteshours[0] = 0;
	global.secondsminuteshours[1] += 1;
}

if(global.secondsminuteshours[1] == 60)
{
	global.secondsminuteshours[1] = 0;
	global.secondsminuteshours[2] += 1; 
}

