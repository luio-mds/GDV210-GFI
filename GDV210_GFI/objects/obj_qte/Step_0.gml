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
		//turn phone off
		obj_phone.phoneON = false;
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
		//turn phone off
		obj_phone.phoneON = false;
    }
}


