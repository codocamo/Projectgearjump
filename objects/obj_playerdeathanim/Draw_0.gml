/// @description Insert description here
// You can write your code in this editor


//draw_sprite(spr_playerdeath, -1, x, y);
sprite_index = spr_playerdeath;
DissolveAmount = lerp(DissolveAmount, 0, 0.05 );
x = lerp(x, currentx - 100, 0.05)
y = lerp(y, currenty - 100, 0.05)
DissolveShader(sprite_index,image_index,x,y,DissolveAmount);


if(DissolveAmount < 0.01){ 
	//room_restart();
	obj_glitchshadercontrol.intensity = 0
	death_cleanup()
	//obj_player.x = obj_player.respawnpos_xy[0]
	//obj_player.y = obj_player.respawnpos_xy[1]
	//obj_player.player_dying = false
	instance_destroy()
	
}; //restart the level
else if(DissolveAmount < 0.02)
{
	obj_glitchshadercontrol.intensity = 5
}
else
{
	obj_glitchshadercontrol.intensity += 0.1
}
