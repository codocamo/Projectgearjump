/// @description Insert description here
// You can write your code in this editor


switch(room_get_name(room))
{
	//case "rm_pre_tutorial": draw_sprite(spr_kupler, -1, obj_player.x, 2500);
	case "rm_pre_tutorial": draw_sprite(spr_kupler, -1, obj_player.x, obj_player.player_y_at_trigger + 1280);
	case "rm_tutorial": draw_sprite(spr_kupler, -1, obj_player.x, obj_player.player_y_at_trigger + 1280);
}

