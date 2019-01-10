/// @description Run shader

//Wave back and forth between 1 and 0 for the demo
DissolveAmount = 1 + ((0 - 1) * 0.5) + sin((((current_time * 0.001) + 8 * 0) / 8) * (pi*2)) * ((0 - 1) * 0.5); 

//Draw the sprite using the shader, that's it!
DissolveShader(sprite_index,image_index,x,y,DissolveAmount);

//Demo text
draw_set_halign(fa_center);
draw_text(x,y+32,string_hash_to_newline(string(DissolveAmount)));


