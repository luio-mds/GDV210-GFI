if(variable_global_exists("active_building"))
{
	if(instance_exists(obj_player) && global.active_building != 0)
	{
		if(global.active_building.active)
		{
			if(global.active_building.x + global.active_building.sprite_width / 2 - obj_player.x < 5)
			{
		        start_qte(global.player_health);
				//create phone screen
				//instance_create_depth(0, 0, -100, obj_phone);
				global.active_building.active = false;
		    }
		}
	}
}

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
		audio_play_sound(snd_success_01,10,false,0.9,1);
        // trigger success effects
		global.active_building.m_distortion_level--;
		//turn phone off
		if(instance_exists(obj_phone))
		{
			global.game_paused = true;
			//create dog button
			instance_create_layer(100, 100, "Instances", obj_button_dog);
			instance_create_layer(100, 250, "Instances", obj_button_dognews);
			//instance_create_layer(100, 400, "Instances", obj_button_dognews);
			
			//obj_phone.phoneON = false;
		}
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
		if(instance_exists(obj_phone))
		{
			obj_phone.phoneON = false;
		}
		audio_stop_sound(snd_qte_01);
    }
}


