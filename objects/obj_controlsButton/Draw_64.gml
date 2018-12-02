/// @description Insert description here
// You can write your code in this editor


if(btn_pos == 1)
{ 
	draw_sprite_ext(spr_controlsButton, 1,obj_optionsButton.controlsbtnpos_image[0], obj_optionsButton.controlsbtnpos_image[1],1, 1,0,c_white,obj_optionsButton.alpha);
	
}
else if(btn_pos == 2)
{
	showcontrols = true
	obj_optionsButton.menuopen = true;
		
	
}
else
{
	
	draw_sprite_ext(spr_controlsButton, 0, obj_optionsButton.controlsbtnpos_image[0], obj_optionsButton.controlsbtnpos_image[1],1, 1,0,c_white,obj_optionsButton.alpha);
}

if(showcontrols)
{
	draw_sprite_ext(spr_controlsButton, 1, obj_optionsButton.controlsbtnpos_image[0], obj_optionsButton.controlsbtnpos_image[1],1, 1,0,c_white,obj_optionsButton.alpha);
	
	draw_sprite_ext(spr_controlsbar, 1, obj_optionsButton.controlsbtnpos_image[0], obj_optionsButton.controlsbtnpos_image[1] - 170,1, 1,0,c_white,obj_optionsButton.alpha);	

	
	draw_set_halign(fa_left);
	draw_set_font(fnt_didactgothic_consciencetxt);
	draw_text_ext_transformed_color(obj_optionsButton.controlsbtnpos_image[0] - 180, obj_optionsButton.controlsbtnpos_image[1] - 130,string_hash_to_newline("[W]/[Space]    =    Jump#[I]    =    Jump gear 1#[O]    =    Jump gear 2#[P]    =    Jump gear 3#[D]    =    Interact#[A]    =    Use slide powerup#[S]    =    Use faze powerup"), 40, camera_get_view_width(view_camera[0]), 1, 1, 0,c_yellow, c_yellow, c_yellow, c_yellow, obj_optionsButton.alpha); 
	
	if (!instance_exists(obj_backButton)) {instance_create_depth(x,y, -130, obj_backButton);}
		
}
else{if (instance_exists(obj_backButton)) {instance_destroy(obj_backButton);}}