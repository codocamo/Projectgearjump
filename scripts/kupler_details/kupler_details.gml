 draw_sprite_ext(spr_flashdarken,1,0,0,1,1.1,0,c_white,0.9); 
 draw_set_font(fnt_gnomon_oottitle_big); 
 draw_text_ext_color(500, 100,string_hash_to_newline("OORT CLOUD BODY"), 25, 1200, c_white, c_white, c_white, c_white, 1); 
 draw_set_font(fnt_renner_ingametext_big); 
 draw_text_ext_color(500, 200,string_hash_to_newline("Explore and find the warp point...you will know when you see it"), 25, 1200, c_red, c_red, c_red, c_red, 1); 
 draw_text_ext_color(200, 300,string_hash_to_newline("Class: Asteroid???##Hazzards: NONE##Atmosphere: NONE##Fun Fact: Its not fun"), 25, 1200, c_white, c_white, c_white, c_white, 1); 
 
 
 
ini_open("savedata.ini")
var time = ini_read_string("rm_lvl1_kupler", "time", "Time: --:--")
var count = ini_read_string("rm_lvl1_kupler", "count", "Minerals: 0/0")
var rank = ini_read_string("rm_lvl1_kupler", "rank", "--")
ini_close()

draw_text_ext_color(700, 300,string_hash_to_newline(time+ "##" + count + "##" + "Rank: "), 25, 1200, c_white, c_white, c_white, c_white, 1); 
 