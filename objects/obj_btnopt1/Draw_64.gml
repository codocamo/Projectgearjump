/// @description Insert description here
// You can write your code in this editor

switch(btn_pos)
{
	case 0 : draw_sprite(spr_instinctbtn, 0, 600, 475); break;
	case 1 : draw_sprite(spr_instinctbtn, 1, 600, 475); break;
	case 2 : draw_sprite(spr_instinctbtn, 2, 600, 475); break;
	//default : draw_sprite(spr_instinctbtn, 0, 600, 475); 
}
show_message(sprite_get_bbox_right(sprite_index));

//sprite_get_bbox_left(sprite_index)

//sprite_collision_mask()
//if(btn_pos = 0) draw_sprite(spr_instinctbtn, 0, x, y);
//else if(btn_pos = 1) draw_sprite(spr_playerburn, 1, x, y);
//else if(btn_pos = 2) draw_sprite(spr_instinctbtn, 2, x, y);

//draw_sprite(spr_instinctbtn, 0, x, y)