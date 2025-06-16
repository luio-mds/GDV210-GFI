if (qte_active)
{
	
    qte_timer -= 1;

    if (keyboard_check_pressed(qte_key))
    {
        qte_mash_count += 1;
    }

    // Check success
    if (qte_mash_count >= qte_required_mashes)
    {
        qte_active = false;
		global.game_paused = false;
        show_debug_message("QTE Success!");
        // trigger success effects
		global.active_building.m_distortion_level--;
		//turn phone off
		obj_phone.phoneON = false;
		audio_stop_sound(snd_qte_01);
    }

    // Check fail
    if (qte_timer <= 0)
    {
        qte_active = false;
		global.game_paused = false;
		global.player_health -= 10;
        show_debug_message("QTE Failed!");
        // trigger fail effects
		failed = true;
		shake = true;
		shakeDur = 15;
		audio_play_sound(snd_error_01,10,false,3,0.55,1.2);
		//turn phone off
		obj_phone.phoneON = false;
				audio_stop_sound(snd_qte_01);
    }
}


