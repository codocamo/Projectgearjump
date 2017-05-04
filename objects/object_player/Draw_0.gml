/// @description Insert description here
// You can write your code in this editor

if(player_dying == true){
draw_sprite(spr_playerdeath, -1, x, y);
sprite_index = spr_playerdeath;
if(image_index > image_number - 1){ room_restart();};
} 
else if(mid_jump == false){
draw_sprite(spr_playerrun, -1, x, y); 
sprite_index = spr_playerrun;
}
else if(mid_jump == true){
draw_sprite(spr_playerjump, -1, x, y); 
sprite_index = spr_playerjump;
}
