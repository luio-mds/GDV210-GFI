draw_set_color(c_white);
draw_set_font(fnt_waitInfo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var gw = display_get_gui_width();
var gh = display_get_gui_height();

if (drawSprite) 
{
    draw_sprite_ext(currentSprite, 0, gw * 0.5, gh * 0.5, 1.3, 1.3, 0, c_white, 1);
} 
else if (drawText) 
{
    //draw_text(gw * 0.2, gh * 0.15, currentText);
	draw_text(gw * 0.5, gh * 0.5, currentText);
}

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);