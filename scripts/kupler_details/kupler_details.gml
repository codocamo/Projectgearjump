var width = camera_get_view_width(view_camera[0])
var center_point = width / 2
var screen_third = width / 3
var third_left_padding  = 100

var row_height = camera_get_view_height(view_camera[0])/4
var row_top_padding = 100

ini_open("savedata.ini")
global.old_time = ini_read_string("rm_lvl1_kupler", "time", "Time: --:--");
var count = ini_read_string("rm_lvl1_kupler", "count", "Minerals: 0/0");
global.old_rank = ini_read_string("rm_lvl1_kupler", "rank", "--");
ini_close()


draw_set_halign(fa_center)
 
 draw_sprite_ext(spr_flashdarken,1,0,0,1,1.1,0,c_white,0.9); 
 draw_set_font(fnt_gnomon_oottitle_big); 
 draw_text_ext_color(center_point, 0 ,string_hash_to_newline("OORT CLOUD BODY"), 25, width, c_white, c_white, c_white, c_white, 1); 
  
  draw_set_font(fnt_gnomon_oottitle_little); 
 draw_text_ext_color(center_point, 100,string_hash_to_newline("Part 1"), 25, width, c_white, c_white, c_white, c_white, 1); 
 
 draw_set_font(fnt_renner_ingametext_big); 
 draw_text_ext_color(center_point, row_height +(row_height/4),string_hash_to_newline("Just get to the end in one peice..."), 25, width, c_red, c_red, c_red, c_red, 1); 
 
 
 draw_set_font(fnt_renner_ingametext_little); 
 draw_set_halign(fa_left)
 //column 1
 draw_text_ext_color(0 + third_left_padding, row_height*2,string_hash_to_newline("Class: Asteroid???##Atmosphere: NONE"), 25, screen_third, c_white, c_white, c_white, c_white, 1); 
 //column 2
 draw_text_ext_color(screen_third + third_left_padding, row_height*2,string_hash_to_newline("Hazzards: NONE##Number of Exits: 2"), 25, screen_third, c_white, c_white, c_white, c_white, 1); 
 //column 3
 draw_text_ext_color((screen_third*2) + third_left_padding, row_height*2,string_hash_to_newline(global.old_time+ "##" + count), 25, screen_third, c_white, c_white, c_white, c_white, 1); 



 draw_set_halign(fa_center)
 draw_text_ext_color(width/4, row_height*3,string_hash_to_newline("Rank: "), 25, width/2, c_white, c_white, c_white, c_white, 1); 
 draw_text_ext_color((width/4) * 3, row_height*3,string_hash_to_newline("Fun Fact: Its not fun"), 25, width/2, c_white, c_white, c_white, c_white, 1); 

draw_set_font(fnt_dearest_rankfirstletter); 
draw_text_ext_color((width/4) + 120, (row_height*3) - 75,string_hash_to_newline(global.old_rank), 25, width/2, c_white, c_white, c_white, c_white, 1); 



draw_set_halign(fa_center);
draw_set_font(fnt_renner_ingametext_med); 
draw_text_ext_color(camera_get_view_width(view_camera[0])/2, 620-row_top_padding,string_hash_to_newline("([UP]/[DOWN] keys = select a level)  ([W] key = start)"), 25, camera_get_view_width(view_camera[0]), c_yellow, c_yellow, c_yellow, c_yellow, 1); 
 