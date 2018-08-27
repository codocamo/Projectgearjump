/// @description Insert description here
// You can write your code in this editor
start_ornaments = false
if(start_ornaments)
{
	
	if(start_alarm)
	{
		alarm[0] = 70
		start_alarm = false
		
		var cam_min_x = camera_get_view_x(view_camera[0])
		var cam_max_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) 
		var cam_min_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + sprite_height
		var cam_max_y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) * 2)
		
		amount = floor(random_range(1,2))
		pos_x = random_range(cam_min_x, cam_max_x)
		pos_y = random_range(cam_min_y, cam_max_y)
		img_frame = [floor(random(sprite_get_number(sprite_index))),floor(random(sprite_get_number(sprite_index)))]
		//show_message(string(amount)+ " "+ string(pos_x) +" "+ string(pos_y) + " "+ string(img_frame))
	}
	
	
	switch(amount)
	{
		case 1: {
			draw_sprite(spr_starornaments, img_frame[0], pos_x, pos_y) ; 
		}break;
		case 2:{
			draw_sprite(spr_starornaments, img_frame[0], pos_x, pos_y) ; 
			draw_sprite(spr_starornaments, img_frame[1], pos_x, pos_y) ; 
		} ;break;
	}
}