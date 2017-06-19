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


display_set_gui_size(display_get_width()-1900,display_get_height()-1400)
draw_sprite(spr_helptext, help_chkpt, x, y);

//sprite