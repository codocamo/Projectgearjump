/// @description Insert description here
// You can write your code in this editor


if(drawplanet)
{//create planet sprite layer(set default sprite)
	//call script that changes the sprite depending on goto[1]
	obj_levelswitcher.planetspr_x = obj_player.x + 400
	obj_levelswitcher.planetspr_y = (obj_player.player_y_at_trigger + 2500) + 280
	
	planetlayerid = layer_create(1);
	planetlayerspriteid = layer_sprite_create(planetlayerid, planetspr_x, planetspr_y, spr_jumpdef);
	
	planet_spr_switcher();
	drawplanet = false;
}






if(waitforinput)
{
	
	if(keyboard_check_pressed(vk_down))
	{
		goto[1] = goto[1] + 1;
		if(goto[1] +1 > array_length_1d(unlockedlevellist))
		{
			goto[1] = 1
		}
		
		animatedown = true;
		firstphase= true;
		waitforinput = false;
	}
	else if(keyboard_check_pressed(vk_up))
	{
		goto[1] = goto[1] + 1;
		if(goto[1] +1 > array_length_1d(unlockedlevellist))
		{
			goto[1] = 1
		}
		
		animateup = true;
		firstphase= true;
		waitforinput = false;
	}
	else if(keyboard_check_pressed(vk_space))
	{
		obj_levelswitcher.drawleveldetails = false;
		obj_levelswitcher.waitforinput = false;
		obj_player.cameramove = false;
		obj_player.doonce = true;
		obj_player.advancetonextlvl = true;
	}
}


if(animatedown)
{
	var animspeed = 20;
	var toplimit = 700;
	var bottomlimit = 300;
	
	if (layer_sprite_get_y(planetlayerspriteid) > planetspr_y - toplimit && firstphase)
	{
		drawleveldetails = false;
		layer_sprite_y(planetlayerspriteid,layer_sprite_get_y(planetlayerspriteid) - animspeed)
	}
	else if(firstphase)
	{
		planet_spr_switcher();
		layer_sprite_y(planetlayerspriteid, planetspr_y + bottomlimit)
		firstphase = false;
		secondphase = true;
	}
	else if (layer_sprite_get_y(planetlayerspriteid) > planetspr_y && secondphase)
	{
		layer_sprite_y(planetlayerspriteid,layer_sprite_get_y(planetlayerspriteid) - animspeed)
	}
	else
	{
		drawleveldetails = true;
		secondphase = false;
		waitforinput = true;
		animatedown = false
	}
	
}
else if(animateup)
{
	var animspeed = 20;
	var toplimit = 700;
	var bottomlimit = 300;
	
	if (layer_sprite_get_y(planetlayerspriteid) < planetspr_y + bottomlimit && firstphase)
	{
		drawleveldetails = false;
		layer_sprite_y(planetlayerspriteid,layer_sprite_get_y(planetlayerspriteid) + animspeed)
	}
	else if(firstphase)
	{
		planet_spr_switcher();
		layer_sprite_y(planetlayerspriteid, planetspr_y - toplimit)
		firstphase = false;
		secondphase = true;
	}
	else if (layer_sprite_get_y(planetlayerspriteid) < planetspr_y && secondphase)
	{
		layer_sprite_y(planetlayerspriteid,layer_sprite_get_y(planetlayerspriteid) + animspeed)
	}
	else
	{
		drawleveldetails = true;
		secondphase = false;
		waitforinput = true;
		animateup = false;
	}
	
}