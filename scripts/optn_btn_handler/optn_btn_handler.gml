////@param choice?

//var mousex = window_mouse_get_x()
//var mousey = window_mouse_get_y()

//var mousex = display_mouse_get_x()
//var mousey = display_mouse_get_x()

var mousex = window_view_mouse_get_x(0) 
var mousey = window_view_mouse_get_y(0)

if(argument[0])
{
	var btn1pos = [200, 475];
	var btn2pos = [600, 475];
	var btnsize = [sprite_get_width(spr_instinctbtn),sprite_get_height(spr_instinctbtn)]
	var btn1state = 0;
	var btn2state = 0;
	
	//if((mousex > btn2pos[0] && mousex < btn2pos[0] + btnsize[0]) && (mousey > btn2pos[1] && mousey < btn2pos[1] + btnsize[1] )){btn2state = 1}
	//else{btn2state = 0};
	
	if((mousex > btn2pos[0]+ camera_get_view_x(view_camera[0]) && mousex < (btn2pos[0] + btnsize[0]) + camera_get_view_x(view_camera[0]))){btn2state = 1}
	else{btn2state = 0};
	
	switch(btn2state)
	{
		case 0 : draw_sprite(spr_instinctbtn, 0, 600, 475); break;
		case 1 : draw_sprite(spr_instinctbtn, 1, 600, 475); break;
		case 2 : draw_sprite(spr_instinctbtn, 2, 600, 475); break;
		//default : draw_sprite(spr_instinctbtn, 0, 600, 475); 
	}
}
else
{
}

//show_message("view mouse x: " + string(window_view_mouse_get_x(0)) + "mouse x: " + string(mouse_x))
//show_message(camera_get_view_x(view_camera[0]))


//window_views_mouse_get_x()
//window_mouse_get_x()
//display_mouse_get_x()
//mouse_x