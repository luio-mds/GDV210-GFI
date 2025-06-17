
if (room == rm_end) 
{
    if (!audio_is_playing(global.music)) 
	{
        global.music = audio_play_sound(snd_distorted_01, 10, true);
    }
}


if (room == rm_main) 
{
    if (!audio_is_playing(global.music)) 
	{
		if (global.player_health >= 70)
		{
			global.music = audio_play_sound(snd_city_01, 10, true);
		}
		else if (global.player_health < 70 && global.player_health >= 40)
		{
			global.music = audio_play_sound(snd_city_02, 10, true);
		}
		else if (global.player_health < 40)
		{
			global.music = audio_play_sound(snd_city_03, 10, true);
		}
    }
}

if (room == rm_room) 
{
    if (!audio_is_playing(global.music)) 
	{
        global.music = audio_play_sound(snd_home_01, 10, true);
    }
}