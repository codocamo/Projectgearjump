/// @description Insert description here
// You can write your code in this editor


if(btn_pos == 1)
{ 
	if(obj_soundcontroller.mute) {draw_sprite_ext(spr_soundButton, 0, obj_optionsButton.mutebtnpos_image[0], obj_optionsButton.mutebtnpos_image[1],1.3, 1.3,0,c_white,obj_optionsButton.alpha);}
	else {draw_sprite_ext(spr_soundButton, 1,  obj_optionsButton.mutebtnpos_image[0], obj_optionsButton.mutebtnpos_image[1],1.3, 1.3,0,c_white,obj_optionsButton.alpha);}
}
else if(btn_pos == 2)
{
	if(obj_soundcontroller.mute) {draw_sprite_ext(spr_soundButton, 1, obj_optionsButton.mutebtnpos_image[0], obj_optionsButton.mutebtnpos_image[1],1, 1,0,c_white,obj_optionsButton.alpha);}
	else {draw_sprite_ext(spr_soundButton, 0, obj_optionsButton.mutebtnpos_image[0], obj_optionsButton.mutebtnpos_image[1],1, 1,0,c_white,obj_optionsButton.alpha);}
}
else
{
	if(obj_soundcontroller.mute) {draw_sprite_ext(spr_soundButton, 0,  obj_optionsButton.mutebtnpos_image[0], obj_optionsButton.mutebtnpos_image[1],1, 1,0,c_white,obj_optionsButton.alpha);}
	else {draw_sprite_ext(spr_soundButton, 1, obj_optionsButton.mutebtnpos_image[0], obj_optionsButton.mutebtnpos_image[1],1, 1,0,c_white,obj_optionsButton.alpha);}
}
