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

