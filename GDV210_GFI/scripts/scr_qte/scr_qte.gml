function start_qte(player_health)
{
    global.game_paused = true;
    qte_active = true;

    var keys = [];

    // Determine difficulty based on health
    if (player_health > 80)
    {
        keys = [ord("W"), ord("A"), ord("S"), ord("D")];
    }
    else
    {
        keys = [ord("Y"), ord("3"), ord("X"), ord("J"), ord("P"), ord("M"), ord("G"), ord("9")];
    }

    qte_key = keys[irandom(array_length(keys) - 1)];
	

    // Set timer and required mashes based on health
    qte_time_limit = 180 - (100 - player_health) * 1.2; // 3s at 100, 0.8s at 0 health
    qte_timer = qte_time_limit;
    qte_required_mashes = 10 + (100 - player_health) / 5; // 10 to 30
    qte_mash_count = 0;
	
	show_debug_message(chr(qte_key));
	show_debug_message(qte_timer);
	show_debug_message(qte_required_mashes);
	
	//sound
	audio_play_sound(snd_notification_01,10,false,0.5);
	audio_play_sound(snd_qte_01,10,true,3,0);
}