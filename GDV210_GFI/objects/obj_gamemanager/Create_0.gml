global.game_paused = false;

global.distort1 = false;
global.distort2 = false;
global.distort3 = false;
global.distort4 = false;
global.distort5 = false;
global.distort6 = false;

global.button_frame_x = 58;
global.button_frame_y = 137;
global.button_frame_width = 259;
global.button_frame_height = 405;

global.distort1_level = 0;
global.distort2_level = 0;
global.distort3_level = 0;
global.distort4_level = 0;
global.distort5_level = 0;
global.distort6_level = 0;

global.distortion_level = 0;
global.active_building = 0;

distort_buttons = [
    obj_button_distort1,
    obj_button_distort2,
    obj_button_distort3,
    obj_button_distort4,
    obj_button_distort5,
    obj_button_distort6
];

distort_weights = [1, 1, 1, 1, 1, 1];

global.player_health = 100;
global.active_textbox = "";

display_set_gui_size(800, 580);