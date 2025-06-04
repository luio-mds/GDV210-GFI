event_inherited();

room_goto(rm_main);
global.player_health -= 10;

switch (global.active_textbox)
{
    case "distort1":
        global.distort1 = true;
        break;

    case "distort2":
        global.distort2 = true;
        break;

    default:
        break;
}

global.active_textbox = "";

instance_destroy();
