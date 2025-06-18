// Get GUI mouse position
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Check if mouse is over this GUI-drawn button
if (point_in_rectangle(mx, my, x, y, x + sprite_width, y + sprite_height)) {
    if (mouse_check_button_pressed(mb_left)) {
        show_debug_message("GUI button clicked!");
        // Do your action here
		audio_play_sound(snd_click_01,10,false,1,0.15);
		obj_phone.phoneON = false;
		audio_play_sound(snd_bark_01,10,false,1.5);
		global.player_health += 5;
    }
}
if(!obj_phone.phoneON)
{
	global.game_paused = false;
	instance_destroy(self);
}