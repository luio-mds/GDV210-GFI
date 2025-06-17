global.player = id;

if (!variable_global_exists("player_health")) {
    global.player_health = 100;
}

depth = 0;
movespeed = 4;
move_x = 0;
move_y = 0;
m_health = global.player_health;