/// @description Insert description here
// You can write your code in this editor


if (obj_player.x + (obj_player.sprite_width/2) >= x + (sprite_width/2) && toggle)
{
	obj_player.respawnpos_xy=[obj_player.x- (obj_player.sprite_width/2),obj_player.y];
	obj_player.checkpointsprite = [obj_player.sprite_index,obj_player.image_index];
	
	toggle = !toggle
}