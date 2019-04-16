/// @description Insert description here
// You can write your code in this editor

if(active)
{
	draw_sprite(spr_pkupslide,1, x,y)
}
else
{
	draw_sprite(spr_pkupslide,0, x,y)
}

//draw_sprite(spr_helpbox,0, x,y+60)

draw_set_font(fnt_renner_ingametext_med)
draw_set_halign(fa_center);
draw_text_ext_transformed_color(x,y+ 30, "Press D\nFor More Power" ,30, 200, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 )

