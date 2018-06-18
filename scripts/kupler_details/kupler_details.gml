var offset_y = 100
 
 draw_sprite_ext(spr_flashdarken,1,0,0,1,1.1,0,c_white,0.9); 
 draw_set_font(fnt_gnomon_oottitle_big); 
 draw_text_ext_color(500, 100-offset_y,string_hash_to_newline("OORT CLOUD BODY"), 25, 1200, c_white, c_white, c_white, c_white, 1); 
 draw_set_font(fnt_renner_ingametext_big); 
 draw_text_ext_color(400, 210-offset_y,string_hash_to_newline("Explore and find the warp point..."), 25, 1200, c_red, c_red, c_red, c_red, 1); 
 draw_text_ext_color(600, 260-offset_y,string_hash_to_newline("you will know when you see it"), 25, 1200, c_red, c_red, c_red, c_red, 1); 
 draw_set_font(fnt_renner_ingametext_med); 
 draw_text_ext_color(260, 350-offset_y,string_hash_to_newline("Class: Asteroid???##Hazzards: NONE##Atmosphere: NONE##Fun Fact: Its not fun"), 25, 1200, c_white, c_white, c_white, c_white, 1); 
 
 
 
ini_open("savedata.ini")
var time = ini_read_string("rm_lvl1_kupler", "time", "Time: --:--")
var count = ini_read_string("rm_lvl1_kupler", "count", "Minerals: 0/0")
var rank = ini_read_string("rm_lvl1_kupler", "rank", "--")
ini_close()

draw_text_ext_color(700, 350-offset_y,string_hash_to_newline(time+ "##" + count + "####" + "Rank: "), 25, 1200, c_white, c_white, c_white, c_white, 1); 

draw_set_font(fnt_dearest_rankfirstletter); 
draw_text_ext_color(800, 430-offset_y,string_hash_to_newline(rank), 25, 1200, c_white, c_white, c_white, c_white, 1); 


draw_set_font(fnt_renner_ingametext_med); 
draw_text_ext_color(480, 600-offset_y,string_hash_to_newline("up/down = select a level / W = start"), 25, 1200, c_yellow, c_yellow, c_yellow, c_yellow, 1); 
 