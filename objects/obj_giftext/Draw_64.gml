/// @description Insert description here
// You can write your code in this editor

//sprite_height =10;
//sprite_width = 10;

if(help_check && help_chkpt != help_chkpt_ftr)
{
	help_chkpt = help_chkpt_ftr
}
else if(!help_check && help_chkpt == help_chkpt_ftr)
{
	help_chkpt_ftr = help_chkpt_ftr + 1
}

var base_width = 1024
var base_height = 576
var aspect = display_get_width() / display_get_height();

//display_set_gui_size(display_get_width()-1900,display_get_height()-1400)
display_set_gui_size(base_height * aspect, base_height)

if (help_chkpt < 4)
{
	draw_sprite(spr_giftext, help_chkpt, x, y);
	image_index = spr_giftext
}
//sprite