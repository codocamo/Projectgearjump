/// @description Insert description here
// You can write your code in this editor
var info_row = 290;
var info_row_x_start = 150;
var button_bar = 430


switch(global.leveljustcompleted)
{
	case "rm_lvl1_kupler": {
		draw_set_font(fnt_gnomon_oottitle_big); 
		draw_set_halign(fa_center); 
		draw_text_ext_transformed_color(1024/2,50, "OORT CLOUD BODY" ,100, 1024, 1, 1, 0, c_dkgray,c_dkgray,c_dkgray,c_dkgray, 1 );
		draw_text_ext_transformed_color(1024/2,150, "concluded" ,100, 1024, 0.5, 0.5, 0, c_dkgray,c_dkgray,c_dkgray,c_dkgray, 1 );
	} 
		break;
	default:  draw_set_font(fnt_avayx); draw_text_ext_transformed_color(0,0, "level name not found" ,20, 200, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 ); break;
}



//Time information
var time = "Time: "+ string(global.secondsminuteshours[2]) + ":" + string(global.secondsminuteshours[1]) + ":" + string(global.secondsminuteshours[0]) 
if (global.secondsminuteshours[2] <= 0){
	var time = "Time: "+ string(global.secondsminuteshours[1]) + ":" + string(global.secondsminuteshours[0]) 
}
draw_set_font(fnt_renner_ingametext_big); 
draw_set_halign(fa_left); 
draw_text_ext_transformed_color(info_row_x_start,info_row, time ,100, 300, 1, 1, 0, c_red,c_red,c_red,c_red, 1 );
		
//Mineralk information
var mineralcount = "Minerals: " + string(global.mineralcount[0]) + "/" + string(global.mineralcount[1])
draw_set_font(fnt_renner_ingametext_big); 
draw_set_halign(fa_left); 
draw_text_ext_transformed_color(info_row_x_start + 250,info_row, mineralcount ,100, 300, 1, 1, 0, c_red,c_red,c_red,c_red, 1 );

//rank information
draw_set_font(fnt_renner_ingametext_big); 
draw_set_halign(fa_left); 
draw_text_ext_transformed_color(info_row_x_start + 550,info_row, "Rank:" ,100, 300, 1, 1, 0, c_red,c_red,c_red,c_red, 1 );



draw_sprite_ext(spr_btnbar,0, 0,button_bar,1,1,0,c_white,1)
