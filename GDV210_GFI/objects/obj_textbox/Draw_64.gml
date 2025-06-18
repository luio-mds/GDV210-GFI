if (global.active_textbox != "")
{
    draw_set_font(fnt_media);
    draw_rectangle(350, 120, 700, 400, false);

    if (global.active_textbox == "distort1")
    {
		//bakery
		//social media
		if (global.distort1 = true)
		{
			draw_sprite_ext(spr_gmo2, 0, 350, 60, 0.475, 0.475, 0, c_white, 1);
		}
		else
		{
			draw_sprite_ext(spr_gmo1, 0, 350, 60, 0.475, 0.475, 0, c_white, 1);
		}
    }
    else if (global.active_textbox == "distort2")
    {
		//bus stop
		//social media
		draw_sprite_ext(spr_lgbtq_01, 0, 350, 60, 0.475, 0.475, 0, c_white, 1);
        //draw_text_ext(360, 130, "Media 2: The quick brown fox jumps over the lazy dog blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", 24, 400);
    }
    else if (global.active_textbox == "distort3")
    {
		//cafe
		//social media
        draw_sprite_ext(spr_conspiracy_01, 0, 350, 60, 0.475, 0.475, 0, c_white, 1);
		//draw_text_ext(360, 130, "Media 3: blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", 24, 400);
    }
	else if (global.active_textbox == "distort4")
    {
		//bakery
		//video
        draw_text_ext(360, 130, "Video 1: blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", 24, 400);
    }
	else if (global.active_textbox == "distort5")
    {
		//video
        draw_text_ext(360, 130, "Video 2: blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", 24, 400);
    }
	else if (global.active_textbox == "distort6")
    {
		//bus stop
		//video
		draw_sprite_ext(spr_lgbtq_02, 0, 350, 100, 0.475, 0.475, 0, c_white, 1);
        //draw_text_ext(360, 130, "Video 3: blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", 24, 400);
    }
	else if (global.active_textbox == "distort7")
    {
		//cafe
		//news
		draw_sprite_ext(spr_conspiracy_02, 0, 350, 60, 0.475, 0.475, 0, c_white, 1);
        //draw_text_ext(360, 130, "News 1: blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", 24, 400);
    }
	else if (global.active_textbox == "distort8")
    {
		//news
		draw_sprite_ext(spr_news_01, 0, 350, 60, 0.475, 0.475, 0, c_white, 1);
        //draw_text_ext(360, 130, "News 2: blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", 24, 400);
    }
	else if (global.active_textbox == "distort9")
    {
		//news
        draw_text_ext(360, 130, "News 3: blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", 24, 400);
    }

    if (!instance_exists(obj_button_next))
    {
        instance_create_layer(630, 450, "Instances", obj_button_next);
    }
}
