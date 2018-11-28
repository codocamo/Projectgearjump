/// @description Insert description here
// You can write your code in this editor

var camx = camera_get_view_x(view_camera[0]) 
var camy = camera_get_view_y(view_camera[0]) 
var camw = camera_get_view_width(view_camera[0])
var camh = camera_get_view_height(view_camera[0])

draw_set_font(fnt_renner_ingametext_big);
draw_set_halign(fa_center);

if(paused){
	//do stuff
	
	draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	draw_sprite_ext(spr_flashdarken,1,0,0,1,1,0,c_white,0.9);
	draw_text_color(view_wport[0] * 0.5, view_hport[0] * 0.5 + 150, "~ Paused ~",c_white, c_white,c_white,c_white,1 )
    //draw_text(view_wport[0] * 0.5, view_hport[0] * 0.5, "Paused");
	
	if(!instance_exists(obj_optionsButton))
	{
	instance_create_depth(camx + (camw *0.5), camy + (camh *0.5) + 100, -100,obj_optionsButton)
	}
	else
	{
		obj_optionsButton.x =camx + (camw *0.5)
		obj_optionsButton.y =camy + (camh *0.5) + 100
	}

}