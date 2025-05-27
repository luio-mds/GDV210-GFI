
draw_set_font(fnt_qte);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(20, display_get_gui_height() - 40, "Player Health: " + string(global.player_health));