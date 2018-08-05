/// @description Insert description here
// You can write your code in this editor
if(pkupslidestate[0] && !inslide && slidehelp)
{
	draw_set_font(fnt_renner_ingametext_med)
	draw_text_ext_transformed_color(190,450, "Press S" ,20, 200, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 )
}
else if (inslide && slidehelp)
{
	
	draw_set_font(fnt_renner_ingametext_med)
	draw_text_ext_transformed_color(190 - 30,450, "Good!" ,20, 200, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 )
}


draw_sprite(spr_pkupslideindicator, 0, 215, 325)

if (pkupslidestate[0])
{
	
	if(endingcounter == 2)
	{
		slideiconx += obj_player.velocity[0]
		
		draw_sprite(spr_pkupslideindicator, pkupslidestate[1], slideiconx, 325)
	}
	else if(endingcounter != 3)
	{
		draw_sprite(spr_pkupslideindicator, pkupslidestate[1], 215, 325)
	}
}