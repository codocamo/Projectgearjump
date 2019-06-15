/// @description Insert description here
// You can write your code in this editor


if (obj_player.x >= x  && toggle)
{
	
	obj_player.respawnpos_xy=[obj_player.x- (obj_player.sprite_width/2),obj_player.y];
	obj_player.checkpointsprite = [obj_player.sprite_index,obj_player.image_index];
	
	toggle = !toggle
	with(obj_checkppoint)
	{
		active = false;
	}
	active = true;
	
	bluechkptstore = obj_chkpt.chkpt
	bluechkpt_ftrstore = obj_chkpt.chkpt_ftr
}