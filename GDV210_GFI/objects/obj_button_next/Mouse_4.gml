event_inherited();

global.player_health -= 10;

switch (global.active_textbox)
{
    case "distort1":
        global.distort1 = true;
		global.distort1_level += 1;
        break;

    case "distort2":
        global.distort2 = true;
		global.distort2_level += 1;
        break;
		
    case "distort3":
        global.distort3 = true;
		global.distort3_level += 1;
        break;
		
	case "distort4":
        global.distort4 = true;
		global.distort4_level += 1;
        break;
		
	case "distort5":
        global.distort5 = true;
		global.distort5_level += 1;
        break;
		
	case "distort6":
        global.distort6 = true;
		global.distort6_level += 1;
        break;
		
	case "distort7":
        global.distort7 = true;
		global.distort7_level += 1;
        break;
		
	case "distort8":
        global.distort8 = true;
		global.distort8_level += 1;
        break;
		
	case "distort9":
        global.distort9 = true;
		global.distort9_level += 1;
        break;
		
    default:
        break;
}

global.active_textbox = "";

global.distortion_level = global.distort1_level + global.distort2_level + global.distort3_level + global.distort4_level
+ global.distort5_level + global.distort6_level + global.distort7_level + global.distort8_level + global.distort9_level;

global.distortion_level /= 9;

create_fade(rm_wait);

audio_play_sound(snd_next_day_01,10,false);

instance_destroy();
