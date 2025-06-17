draw_self();

spritedraw = 0;
if(object_index == obj_button_distort1 || object_index == obj_button_distort2 || object_index == obj_button_distort3)
{
	spritedraw = spr_media_social;
}

if(object_index == obj_button_distort4 || object_index == obj_button_distort5 || object_index == obj_button_distort6)
{
	spritedraw = spr_media_tube;
}

if(object_index == obj_button_distort7 || object_index == obj_button_distort8 || object_index == obj_button_distort9)
{
	spritedraw = spr_media_news;
}
draw_sprite_ext(spritedraw,0,x + sprite_width / 2, y + sprite_height / 2,sprite_height / 64,sprite_height / 64,0,1,1);

draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draw_text(x + sprite_width / 2, y + sprite_height / 2, button_text);
		  
// Reset alignment for textbox
draw_set_halign(fa_left);
draw_set_valign(fa_top);