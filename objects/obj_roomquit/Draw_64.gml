/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
var sep = 40
var text_box_width = room_width - 30

if (click_tracker >= 100)
{
	draw_set_font(fnt_renner_ingametext_big); 
	draw_text_ext_color(room_width/2, 210,string_hash_to_newline("WOW. You clicked 100 times.#....Congrats! I guess."), sep, text_box_width, c_red, c_red, c_red, c_red, 1);
	
	draw_set_font(fnt_renner_ingametext_little); 
	draw_text_ext_color(room_width/2, 400,string_hash_to_newline("I hope you weren't expecting a 1UP or anything."), sep, text_box_width, c_red, c_red, c_red, c_red, 1); 

}
else if (click_tracker >= 10)
{
	draw_set_font(fnt_renner_ingametext_big); 
	draw_text_ext_color(room_width/2, 210,string_hash_to_newline("I Said Good Day!!"), sep, text_box_width, c_red, c_red, c_red, c_red, 1); 
}
else if (click_tracker >= 3)
{
	draw_set_font(fnt_renner_ingametext_big); 
	draw_text_ext_color(room_width/2, 210,string_hash_to_newline("Okay, thats enough of that. you are welcome back anytime##Good Day!"), sep, text_box_width, c_red, c_red, c_red, c_red, 1); 
}
else if (click_tracker >= 2)
{
	draw_set_font(fnt_renner_ingametext_big); 
	draw_text_ext_color(room_width/2, 210,string_hash_to_newline("HOLD UP! Was there a spelling error in the word stranded back there?##I bet you wish you had some sort of button to go back and quickly check."), sep, text_box_width, c_red, c_red, c_red, c_red, 1); 
}
else if (click_tracker >= 1)
{
	draw_set_font(fnt_renner_ingametext_big); 
	draw_text_ext_color(room_width/2, 210,string_hash_to_newline("Yep! you are somewhat strended here, no back button or anything. #I dno, close the tab or something."), sep, text_box_width, c_red, c_red, c_red, c_red, 1); 
}
else if (click_tracker >= 0)
{
	
	draw_set_font(fnt_renner_ingametext_big); 
	draw_text_ext_color(room_width/2, 210,string_hash_to_newline("....This is a web demo.....the quit button doesn't really do anything here."), sep, text_box_width, c_red, c_red, c_red, c_red, 1); 
}
