////@param choice?
var dialog_done = argument[3];

var move_level = false;

var mousex = mouse_x 
var mousey = mouse_y

draw_set_font(fnt_gravity);
draw_set_halign(fa_center);


if(argument[0])
{
	var btnsize = [sprite_get_width(spr_instinctbtn),sprite_get_height(spr_instinctbtn)]
	var btn1pos = [260, 505];
	//as the camera is moving but the button is not we have to pluss the camera movement to the buttons possition else the camera will leave the buttons hitbox behind (then you have to minus half the button size for some reason)
	var btn1coll = [btn1pos[0] + (camera_get_view_x(view_camera[0]) - (btnsize[0]/2)), btn1pos[1] + (camera_get_view_y(view_camera[0]) - (btnsize[1]/2))]
	var btn2pos = [750, 505];
	var btn2coll = [btn2pos[0] + (camera_get_view_x(view_camera[0]) - (btnsize[0]/2)), btn2pos[1] + (camera_get_view_y(view_camera[0]) - (btnsize[1]/2))]
	var btn1state = 0;
	var btn2state = 0;

	if((mousex > btn1coll[0] && mousex < (btn1coll[0] + btnsize[0])) && (mousey > btn1coll[1] && mousey < (btn1coll[1] + btnsize[1])))
	{
		if(mouse_check_button_pressed(mb_left))
		{
			btn1state = 2; 
			global.branch += 1; 
			advance_dialog = true;
			dialog_adder(room_get_name(room) + "_branch_" + string(global.branch));
			instance_destroy()
			start_dialog(0);
			
		}
		else{btn1state = 1}
	}
	else{btn1state = 0};
	
	if((mousex > btn2coll[0] && mousex < (btn2coll[0] + btnsize[0])) && (mousey > btn2coll[1] && mousey < (btn2coll[1] + btnsize[1])))
	{
		if(mouse_check_button_pressed(mb_left))
		{
			btn2state = 2; 
			global.branch *= 10; 
			advance_dialog = true;
			dialog_adder(room_get_name(room) + "_branch_" + string(global.branch));
			instance_destroy()
			start_dialog(0);
		}
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
	
	draw_text_ext_color(btn1pos[0], btn1pos[1] - 20, argument[1], 25, btnsize[0], c_white, c_white, c_white, c_white, 1)
	draw_text_ext_color(btn2pos[0], btn2pos[1] - 20, argument[2], 25, btnsize[0], c_white, c_white, c_white, c_white, 1)
	
	
}
else
{
	var btnsize = [sprite_get_width(spr_instinctbtn),sprite_get_height(spr_instinctbtn)]
	var btn1pos = [500, 505];
	//as the camera is moving but the button is not we have to pluss the camera movement to the buttons possition else the camera will leave the buttons hitbox behind (then you have to minus half the button size for some reason)
	var btn1coll = [btn1pos[0] + (camera_get_view_x(view_camera[0]) - (btnsize[0] /2) ), btn1pos[1] + (camera_get_view_y(view_camera[0]) - (btnsize[1] /2))]
	var btn1state = 0;
	

	if((mousex > btn1coll[0] && mousex < (btn1coll[0] + btnsize[0])) && (mousey > btn1coll[1] && mousey < (btn1coll[1] + btnsize[1])))
	{
		if(mouse_check_button_pressed(mb_left))
		{
			btn1state = 2; 
			advance_dialog = true; 
			alarmon = false; 
			drawbuttons = false;
			
			if(dialog_done)
			{
				move_level = true
			}
		}
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
	
	draw_text_ext_color(btn1pos[0], btn1pos[1] - 20, argument[1], 25, btnsize[0], c_white, c_white, c_white, c_white, 1)
	
}



if(move_level)
{
	global.branch *= -1
	//show_message("do the thing" + string(global.branch))
}
