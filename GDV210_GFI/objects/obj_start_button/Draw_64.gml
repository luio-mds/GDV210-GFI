draw_set_alpha(textAlpha);
draw_set_font(fnt_button);
draw_set_color(c_ltgrey);
draw_text(room_width /2 + 100 ,room_height / 2 + 150,"Click to start");
draw_sprite(spr_mouse,0,room_width /2 + 50 ,room_height / 2 + 150);
draw_set_alpha(1);
draw_set_font(fnt_qte);
draw_text(room_width - 180 ,room_height + 200,"A JLAYZ Game (c) 2025")