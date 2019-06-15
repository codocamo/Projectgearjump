/// @description Insert description here
// You can write your code in this editor
if(whiteflash)
{
		draw_sprite(spr_flashdarken, 0,0,0);
}


if(drawleveldetails)
{
	switch(room_get_name(room))
	{
		case "rm_tutorial": kupler_details(); break;
		case "rm_pre_tutorial": kupler_details(); break;
	}
}

if((animateleft || animateright) && !drawleveldetails)
{
	draw_sprite_ext(spr_flashdarken, 1, 0,0, 1, 1, 0, c_white, leveldetailsmaskalpha)
	if(leveldetailsmaskalpha < 1)
	{
		leveldetailsmaskalpha += 0.1
	}
	else {secondphase = true ;}
}
else
{
	draw_sprite_ext(spr_flashdarken, 1, 0,0, 1, 1, 0, c_white, leveldetailsmaskalpha)
	if (leveldetailsmaskalpha > 0)
	{
		
		leveldetailsmaskalpha -= 0.1
	}
	
}