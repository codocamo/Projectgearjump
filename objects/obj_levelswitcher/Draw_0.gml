/// @description Insert description here
// You can write your code in this editor

///sets the x of the plannet sprite
if(instance_exists(obj_player))
{
	obj_levelswitcher.planetspr_x = obj_player.x - 250
}



//draws the planet
if(drawplanet)
{//create planet sprite layer(set default sprite)
	
	obj_levelswitcher.planetspr_y = (obj_player.player_y_at_trigger + 2500) + 700

	
	//just makes the layer
	planetlayerid = layer_create(1, "planetlayer");
	//just makes the sprite
	planetlayerspriteid = layer_sprite_create(planetlayerid, planetspr_x, planetspr_y, spr_jumpdef);
	
	//decide what the start plannet is
	level_select_start_point()
	
	//calls script that changes the sprite depending on goto[1]
	planet_spr_switcher();
	
	//sets to false
	drawplanet = false;
}

//move the layer if the sprite has been created above
if(planetlayerspriteid != "none")
{
	layer_sprite_x(planetlayerspriteid,planetspr_x)
}


if(waitforinput)
{
	var planets =  unlockedplanetllist
	var levels = planets[planetiterator] 
	
	if(keyboard_check_pressed(vk_down) && !global.isdemo)
	{
		//goto[1] = goto[1] + 1;
		planetiterator++
		
		if(planetiterator > array_length_1d(planets) - 1)
		{
			planetiterator = 1
		}
		
		animatedown = true;
		firstphase= true;
		waitforinput = false;
	}
	else if(keyboard_check_pressed(vk_up)  && !global.isdemo)
	{
		
		//goto[1] = goto[1] - 1;
		planetiterator--
		if(planetiterator < 1)
		{
			planetiterator = array_length_1d(planets) - 1
		}
		
		animateup = true;
		firstphase= true;
		waitforinput = false;
	}
	else if(keyboard_check_pressed(vk_right)  && !global.isdemo)
	{
		//goto[1] = goto[1] + 1;
		leveliterator++
		
		if(leveliterator > array_length_1d(levels) - 1)
		{
			leveliterator = 1
		}
		
		animateright = true;
		firstphase= true;
		waitforinput = false;
	}
	else if(keyboard_check_pressed(vk_left)  && !global.isdemo)
	{
		//goto[1] = goto[1] + 1;
		leveliterator--
		
		if(leveliterator < 1)
		{
			leveliterator = array_length_1d(levels) - 1
		}
		
		animateleft = true;
		firstphase= true;
		waitforinput = false;
	}
	else if(keyboard_check_pressed(ord("W")))
	{
		obj_levelswitcher.drawleveldetails = false;
		obj_levelswitcher.waitforinput = false;
		obj_player.cameramove = false;
		obj_player.doonce = true;
		obj_player.advancetonextlvl = true;
	}
}




//the animation
if layer_exists("planetlayer")
{
var animspeed = 25;
var planetwidth = sprite_get_width(layer_sprite_get_sprite(planetlayerspriteid))
var camwidthx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) 
var camx = camera_get_view_x(view_camera[0])
var planetheight = sprite_get_height(layer_sprite_get_sprite(planetlayerspriteid))
var camheighty = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) 
var camy = camera_get_view_y(view_camera[0])

if(animateup)
{
	
	if (layer_sprite_get_y(planetlayerspriteid) - (planetheight/2) < camheighty && firstphase)
	{
		drawleveldetails = false;
		layer_sprite_y(planetlayerspriteid,layer_sprite_get_y(planetlayerspriteid) + animspeed)
	}
	else if(firstphase)
	{
		planet_spr_switcher();
		layer_sprite_y(planetlayerspriteid, camy - (planetheight/2))
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
else if(animatedown)
{

	if (layer_sprite_get_y(planetlayerspriteid) + (planetheight/2) > camy && firstphase)
	{

		drawleveldetails = false;
		layer_sprite_y(planetlayerspriteid,layer_sprite_get_y(planetlayerspriteid) - animspeed)
	}
	else if(firstphase)
	{
		planet_spr_switcher();
		layer_sprite_y(planetlayerspriteid, camheighty + (planetheight/2))
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
		animatedown = false;

	}
	
}
else if(animateleft)
{
	//if (layer_sprite_get_x(planetlayerspriteid) - (planetwidth/2)  < camwidthx  && firstphase)
	//{

		drawleveldetails = false;
		layer_sprite_angle(planetlayerspriteid, planetangle)
		//layer_sprite_x(planetlayerspriteid,layer_sprite_get_x(planetlayerspriteid) + animspeed)
	//}
	//else if(firstphase)
	//{
	//	planet_spr_switcher();
	//	layer_sprite_x(planetlayerspriteid, camx - planetwidth/2)
	//	firstphase = false;
	//	secondphase = true;
	//}
	//else if (layer_sprite_get_x(planetlayerspriteid) < planetspr_x && secondphase)
	//{
	//	layer_sprite_x(planetlayerspriteid,layer_sprite_get_x(planetlayerspriteid) + animspeed)
	//}
	//else
	if(secondphase)
	{
	
		drawleveldetails = true;
		secondphase = false;
		waitforinput = true;
		animateleft = false;

	}
	else
	{
		planetangle -= 1.5
	}
	
}
else if(animateright)
{
	drawleveldetails = false;
	layer_sprite_angle(planetlayerspriteid, planetangle)
	if(secondphase)
	{
	
		drawleveldetails = true;
		secondphase = false;
		waitforinput = true;
		animateright = false;

	}
	else
	{
		planetangle += 1.5
	}
	
	/*if (layer_sprite_get_x(planetlayerspriteid) + (planetwidth/2)  > camx  && firstphase)
	{

		drawleveldetails = false;
		layer_sprite_x(planetlayerspriteid,layer_sprite_get_x(planetlayerspriteid) - animspeed)
	}
	else if(firstphase)
	{
		planet_spr_switcher();
		layer_sprite_x(planetlayerspriteid, camwidthx + planetwidth/2)
		firstphase = false;
		secondphase = true;
	}
	else if (layer_sprite_get_x(planetlayerspriteid) > planetspr_x && secondphase)
	{
		layer_sprite_x(planetlayerspriteid,layer_sprite_get_x(planetlayerspriteid) - animspeed)
	}
	else
	{
		
		drawleveldetails = true;
		secondphase = false;
		waitforinput = true;
		animateright = false;

	}*/
	
	
	
}
}