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
	global.mineralcount[0] += 1
}

