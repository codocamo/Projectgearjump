////@param choice?

var mousex = mouse_x 
var mousey = mouse_y

draw_set_font(fnt_gravity);
draw_set_halign(fa_center);


if(argument[0])
{
	var btn1pos = [300, 500];
	var btn1coll = [btn1pos[0] + (camera_get_view_x(view_camera[0]) - 135), btn1pos[1] + (camera_get_view_y(view_camera[0]) - 35.25)]
	var btn2pos = [700, 500];
	var btn2coll = [btn2pos[0] + (camera_get_view_x(view_camera[0]) - 135), btn2pos[1] + (camera_get_view_y(view_camera[0]) - 35.25)]
	var btnsize = [sprite_get_width(spr_instinctbtn),sprite_get_height(spr_instinctbtn)]
	var btn1state = 0;
	var btn2state = 0;

	if((mousex > btn1coll[0] && mousex < (btn1coll[0] + btnsize[0])) && (mousey > btn1coll[1] && mousey < (btn1coll[1] + btnsize[1])))
	{
		if(mouse_check_button_pressed(mb_left)){btn1state = 2}
		else{btn1state = 1}
	}
	else{btn1state = 0};
	
	if((mousex > btn2coll[0] && mousex < (btn2coll[0] + btnsize[0])) && (mousey > btn2coll[1] && mousey < (btn2coll[1] + btnsize[1])))
	{
		if(mouse_check_button_pressed(mb_left)){btn2state = 2}
		else{btn2state = 1}
	}
	else{btn2state = 0};
	
	
	switch(btn1state)
	{
		case 0 : draw_sprite(spr_instinctbtn, 0, btn1pos[0], btn1pos[1]); break;
		case 1 : draw_sprite(spr_instinctbtn, 1, btn1pos[0], btn1pos[1]); break;
		case 2 : draw_sprite(spr_instinctbtn, 2, btn1pos[0], btn1pos[1]); break;
		default : draw_sprite(spr_instinctbtn, 0, 600, 475); 
	}
	switch(btn2state)
	{
		case 0 : draw_sprite(spr_instinctbtn, 0, btn2pos[0], btn2pos[1]); break;
		case 1 : draw_sprite(spr_instinctbtn, 1, btn2pos[0], btn2pos[1]); break;
		case 2 : draw_sprite(spr_instinctbtn, 2, btn2pos[0], btn2pos[1]); break;
		default : draw_sprite(spr_instinctbtn, 0, 600, 475); 
	}
	
	draw_text_ext_color(btn2pos[0], btn2pos[1], argument[1], 25, 200, c_purple, c_purple, c_purple, c_purple, 1)
	//draw_text_ext_color(500, 100, dialog_output_1, 25, 200, c_purple, c_purple, c_purple, c_purple, 1)
	
	
}
else
{
	var btn1pos = [500, 500];
	var btn1coll = [btn1pos[0] + (camera_get_view_x(view_camera[0]) - 135), btn1pos[1] + (camera_get_view_y(view_camera[0]) - 35.25)]
	var btnsize = [sprite_get_width(spr_instinctbtn),sprite_get_height(spr_instinctbtn)]
	var btn1state = 0;
	

	if((mousex > btn1coll[0] && mousex < (btn1coll[0] + btnsize[0])) && (mousey > btn1coll[1] && mousey < (btn1coll[1] + btnsize[1])))
	{
		if(mouse_check_button_pressed(mb_left)){btn1state = 2}
		else{btn1state = 1}
	}
	else{btn1state = 0};
	
	switch(btn1state)
	{
		case 0 : draw_sprite(spr_instinctbtn, 0, btn1pos[0], btn1pos[1]); break;
		case 1 : draw_sprite(spr_instinctbtn, 1, btn1pos[0], btn1pos[1]); break;
		case 2 : draw_sprite(spr_instinctbtn, 2, btn1pos[0], btn1pos[1]); break;
		default : draw_sprite(spr_instinctbtn, 0, 600, 475); 
	}
	
	draw_text_ext_color(btn1pos[0], btn1pos[1], argument[1], 25, 200, c_purple, c_purple, c_purple, c_purple, 1)
}

//show_message("view mouse x: " + string(window_view_mouse_get_x(0)) + "mouse x: " + string(mouse_x))
//show_message("view mouse x: " + string(window_view_mouse_get_x(0)) + "mouse x: " + string(mouse_x) + "camx: " + string(camera_get_view_y(view_camera[0])))
//show_message(camera_get_view_x(view_camera[0]))
