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
draw_sprite(spr_helptext, help_chkpt, x, y - 1500);

//sprite