/// @description Insert description here
// You can write your code in this editor
var info_row = 290;
var info_row_x_start = 125;
var button_bar = 430
var camwidth = camera_get_view_width(view_camera[0]) 

switch(global.leveljustcompleted)
{
	//draws the enbd level details
	case "rm_lvl1_kupler": {
		
		draw_set_font(fnt_gnomon_oottitle_big); 
		draw_set_halign(fa_center); 
		draw_text_ext_transformed_color(camwidth/2,50, "OORT CLOUD BODY" ,100, camwidth, 1, 1, 0, c_dkgray,c_dkgray,c_dkgray,c_dkgray, 1 );
		draw_text_ext_transformed_color(camwidth/2,150, "Part 1 concluded" ,100, camwidth, 0.5, 0.5, 0, c_dkgray,c_dkgray,c_dkgray,c_dkgray, 1 );
	
		var colour = c_red
		var alpha1 = 1
		var alpha2 = 0.2
		var alpha3 = 0.2
		if (global.levelexit = "B")
		{
			colour = c_red
			alpha1 = 0.2
		    alpha2 = 1
			alpha3 = 0.2
		}
		if (global.levelexit = "C")
		{
			colour = c_red
			alpha1 = 0.2
		    alpha2 = 0.2
			alpha3 = 1
		}
		
		draw_set_font(fnt_renner_ingametext_med); 
		draw_set_halign(fa_center); 
		var camwidthhalf = (camwidth/2) - 50
		draw_text_ext_transformed_color(camwidthhalf,225, "Exit:" ,20, camwidth, 1, 1, 0, c_red,c_red,c_red,c_red, 1 );
		draw_text_ext_transformed_color(camwidthhalf + 75,225, "A" ,20, camwidth, 1, 1, 0, colour,colour,colour,colour, alpha1 );
		draw_text_ext_transformed_color(camwidthhalf + 125 ,225, "B" ,20, camwidth, 1, 1, 0, colour,colour,colour,colour, alpha2 );
		draw_text_ext_transformed_color(camwidthhalf + 175 ,225, "C" ,20, camwidth, 1, 1, 0, colour,colour,colour,colour, alpha3 );
	
	
	} 
		break;
	default:  draw_set_font(fnt_gnomon_oottitle_big); draw_set_halign(fa_center); draw_text_ext_transformed_color(camwidth/2,50, "level name not found", 100, camwidth, 1, 1, 0, c_blue,c_blue,c_blue,c_blue, 1 );details_exist = false; break;
	
	

}



//Time information
var hours
var minutes 
var seconds 
if (global.secondsminuteshours[2] < 10){hours = "0" + string(global.secondsminuteshours[2])} else {hours = string(global.secondsminuteshours[2])}
if (global.secondsminuteshours[1] < 10){minutes = "0" + string(global.secondsminuteshours[1])} else {minutes = string(global.secondsminuteshours[1])}
if (global.secondsminuteshours[0] < 10){seconds = "0" + string(global.secondsminuteshours[0])}else {seconds = string(global.secondsminuteshours[0])}

var time = "Time: "+ hours + ":" + minutes + ":" + seconds 
if (global.secondsminuteshours[2] <= 0){
	var time = "Time: "+ minutes + ":" + seconds 
}
draw_set_font(fnt_renner_ingametext_med); 
draw_set_halign(fa_left); 
draw_text_ext_transformed_color(info_row_x_start,info_row, time ,100, 300, 1, 1, 0, c_red,c_red,c_red,c_red, 1 );
		

//rank information
levelranker();

var rankletter = global.rank[0]
var rankword = global.rank[1]
var rankcolour = global.rank[2]

draw_set_font(fnt_dearest_rankfirstletter); 
draw_set_halign(fa_left); 
draw_text_ext_transformed_color(info_row_x_start + global.rank[3],info_row - global.rank[4], rankletter ,100, 300, 1, 1, 0, rankcolour,rankcolour,rankcolour,rankcolour, 1 );

var rank = "Rank:"
draw_set_font(fnt_renner_ingametext_med); 
draw_set_halign(fa_left); 
draw_text_ext_transformed_color(info_row_x_start + 550,info_row, rank ,100, 300, 1, 1, 0, c_red,c_red,c_red,c_red, 1 );

draw_set_halign(fa_left); 
draw_text_ext_transformed_color(info_row_x_start + 630,info_row, rankword ,100, 300, 1, 1, 0, c_red,c_red,c_red,c_red, 1 );

//btnbar
draw_sprite_ext(spr_btnbar,0, 0,button_bar,1,1,0,c_white,1)

//if(details_exist)
//{
	//Mineral information
	var totalminerals
	var mineralcount = "Minerals: " + string(global.mineralcount[0]) + "/" + string(global.mineralcount[1])
	draw_set_font(fnt_renner_ingametext_med); 
	draw_set_halign(fa_left); 
	draw_text_ext_transformed_color(info_row_x_start + 265,info_row, mineralcount ,100, 300, 1, 1, 0, c_red,c_red,c_red,c_red, 1 );


//Saving everything out
if(details_exist)
{
	//set up 
	
	
	var old_minutes = 99
	var old_seconds = 99
	if(string_copy(global.old_time, 7, 2) != "--")
	{
		old_minutes = int64(string_copy(global.old_time, 7, 8))
		old_seconds = int64(string_copy(global.old_time, 10, 11))
	}
	
	
	var rank_value = ds_map_create()
	ds_map_add(rank_value, "--", 0)
	ds_map_add(rank_value, "N", -1)
	ds_map_add(rank_value, "D", 1)
	ds_map_add(rank_value, "C", 2)
	ds_map_add(rank_value, "B", 3)
	ds_map_add(rank_value, "A", 4)
	ds_map_add(rank_value, "S", 5)


	
	//save out info
	ini_open("savedata.ini");
	ini_write_string("leveljustcompleted", "level", global.leveljustcompleted)
    
	//only save if the time is better	
	
	if(old_minutes > minutes){ini_write_string(global.leveljustcompleted, "time", time);}
	else if (old_minutes = minutes && old_seconds > seconds){ini_write_string(global.leveljustcompleted, "time", time);}
	
	
	//only save if the rank is better
	if(rank_value[? global.old_rank] > rank_value[? rankletter]){ini_write_string(global.leveljustcompleted, "rank", rankletter);}
	
	ini_write_string(global.leveljustcompleted, "count", mineralcount);
	

	for(var i = 1; i <= array_length_1d(global.mineralsavearraycolection) - 1; i++)
	{
		var savearray = global.mineralsavearraycolection[i];
		ini_write_real(savearray[0], savearray[1], savearray[2]);
	}


	ini_close();
	
	if(!global.isdemo)
	{
		ini_open("levelmanager.ini");
		var is_level_unlocked = ini_read_string(global.unlock_level_list[? global.leveljustcompleted], "unlocked", "not found")
	
		if(is_level_unlocked = "false")
		{
			ini_write_string(global.unlock_level_list[? global.leveljustcompleted], "unlocked", "true")
			global.level_just_unlocked = ini_read_string(global.unlock_level_list[? global.leveljustcompleted], "name", "Latest planet name not found")
			ini_write_string("misc", "last_unlocked", global.level_just_unlocked)
		}
		else{global.level_just_unlocked = "go to default"}
		ini_close();
	}
	details_exist = false

}
