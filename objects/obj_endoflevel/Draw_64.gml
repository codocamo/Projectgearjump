/// @description Insert description here
// You can write your code in this editor

switch(global.leveljustcompleted)
{
	case "rm_lvl1_kupler": draw_set_font(fnt_avayx); draw_set_halign(fa_left); draw_text_ext_transformed_color(100,75, "Kupler body concluded" ,100, 1000, 1, 1, 0, c_dkgray,c_dkgray,c_dkgray,c_dkgray, 1 ); break;
	default:  draw_set_font(fnt_avayx); draw_text_ext_transformed_color(0,0, "level name not found" ,20, 200, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 ); break;
}



