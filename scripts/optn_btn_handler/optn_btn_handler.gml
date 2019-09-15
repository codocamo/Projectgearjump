////@param choice?
var dialog_done = argument[3];

var move_level = false

var mousex = mouse_x 
var mousey = mouse_y

draw_set_font(fnt_gravity);
draw_set_halign(fa_center);

var advance_branch = argument[0];

if(argument[1] != "" && argument[2] !="") //double button
{
	var btnsize = [sprite_get_width(spr_instinctbtn),sprite_get_height(spr_instinctbtn)]
	var btn1pos = [260, 505];
	//as the camera is moving but the button is not we have to pluss the camera movement to the buttons possition else the camera will leave the buttons hitbox behind (then you have to minus half the button size for some reason)
	var btn1coll = [btn1pos[0] + (camera_get_view_x(view_camera[0]) - (btnsize[0]/2)), btn1pos[1] + (camera_get_view_y(view_camera[0]) - (btnsize[1]/2))]
	var btn2pos = [750, 505];
	var btn2coll = [btn2pos[0] + (camera_get_view_x(view_camera[0]) - (btnsize[0]/2)), btn2pos[1] + (camera_get_view_y(view_camera[0]) - (btnsize[1]/2))]
	
	var btn1state = 0;
	var btn2state = 0;
	
	var bypass1 = false
	var bypass2 = false
	if(keyboard_check_pressed(ord("A")))
	{
		bypass1 = true
	}
	else if (keyboard_check_pressed(ord("D")))
	{
		bypass2 = true
	}

	if((mousex > btn1coll[0] && mousex < (btn1coll[0] + btnsize[0])) && (mousey > btn1coll[1] && mousey < (btn1coll[1] + btnsize[1])) || bypass1)
	{
		if(mouse_check_button_pressed(mb_left) || bypass1)
		{
			btn1state = 2; 
			global.branch += 1; 
			advance_dialog = true;
			dialog_adder(global.level_just_unlocked + "_" + room_get_name(room) + "_branch_" + string(global.branch));

			//instance_destroy()
			start_dialog(0);
			obj_soundcontroller.play_instinctbtn_click_snd = true
			
		}
		else{btn1state = 1}
	}
	else{btn1state = 0};
	
	if((mousex > btn2coll[0] && mousex < (btn2coll[0] + btnsize[0])) && (mousey > btn2coll[1] && mousey < (btn2coll[1] + btnsize[1])) || bypass2)
	{
		if(mouse_check_button_pressed(mb_left) || bypass2)
		{
			btn2state = 2; 
			global.branch *= 10; 
			advance_dialog = true;
			dialog_adder(global.level_just_unlocked + "_" + room_get_name(room) + "_branch_" + string(global.branch));

			//instance_destroy()
			start_dialog(0);
			obj_soundcontroller.play_instinctbtn_click_snd = true
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
	//help text
	draw_text_transformed_color(btn1pos[0], btn1pos[1] + 30, "click or press [A] to select", 0.5, 0.5, 0,  c_gray, c_gray, c_gray, c_gray, 1)
	
	draw_text_ext_color(btn2pos[0], btn2pos[1] - 20, argument[2], 25, btnsize[0], c_white, c_white, c_white, c_white, 1)
	//helptext
	draw_text_transformed_color(btn2pos[0], btn2pos[1] + 30, "click or press [D] to select", 0.5, 0.5, 0,  c_gray, c_gray, c_gray, c_gray, 1)
	
	
}
else //single button
{
	var btnsize = [sprite_get_width(spr_instinctbtn),sprite_get_height(spr_instinctbtn)]
	var btn1pos = [500, 505];
	//as the camera is moving but the button is not we have to pluss the camera movement to the buttons possition else the camera will leave the buttons hitbox behind (then you have to minus half the button size for some reason)
	var btn1coll = [btn1pos[0] + (camera_get_view_x(view_camera[0]) - (btnsize[0] /2) ), btn1pos[1] + (camera_get_view_y(view_camera[0]) - (btnsize[1] /2))]
	var btn1state = 0;
	
	var bypass = false
	if(keyboard_check_pressed(ord("A")))
	{
		bypass = true
	}
	
	if((mousex > btn1coll[0] && mousex < (btn1coll[0] + btnsize[0])) && (mousey > btn1coll[1] && mousey < (btn1coll[1] + btnsize[1])) || bypass)
	{
		if(mouse_check_button_pressed(mb_left) || bypass)
		{
			btn1state = 2; 
			alarmon = false; 
			drawbuttons = false;
			advance_dialog = true; 
			if(advance_branch)
			{
				global.branch += 1; 
				dialog_adder(global.level_just_unlocked + "_" + room_get_name(room) + "_branch_" + string(global.branch));
				start_dialog(0);
			}
			else
			{
				
			}
			if(dialog_done)
			{
				move_level = true
			}
			obj_soundcontroller.play_instinctbtn_click_snd = true
			
			
			
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
	//help text
	draw_text_transformed_color(btn1pos[0], btn1pos[1] + 30, "click or press [A] to select", 0.5, 0.5, 0,  c_gray, c_gray, c_gray, c_gray, 1)
	
}



if(move_level)
{
	
	global.branch *= -1
	//global.branch = "null"
	
	//show_message("do the thing" + string(global.branch))
}
