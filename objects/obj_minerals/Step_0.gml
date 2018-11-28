/// @description Insert description here
// You can write your code in this editor


if(collided && point_distance(x, y , obj_player.x - (obj_player.player_bbox_width/2) + sprite_width/2, obj_player.y - obj_player.player_bbox_height) > 15)
{
	move_towards_point(obj_player.x - (obj_player.player_bbox_width/2) + sprite_width/2 , obj_player.y - obj_player.player_bbox_height, 15)
	image_xscale = image_xscale * 0.9;
	image_yscale = image_xscale * 0.9;
}
else if(!safetyboolean)
{
	speed = 0;
	instance_destroy(id)
	collided = false; 
	obj_soundcontroller.play_pickup = true
	
	//ini_open("savedata.ini")
	global.mineralcount[0] += 1
	obj_mineralmanager.index+=1
	global.mineralsavearraycolection[obj_mineralmanager.index] = [room_get_name(room),global.mineralcount[0], id]
	//show_message(string(global.mineralsavearraycolection))
	//ini_write_real(room_get_name(room), global.mineralcount[0], id)
	//ini_close()
	
	
}

