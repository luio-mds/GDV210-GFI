if (global.active_textbox != "")
{
    draw_set_font(fnt_media);
    draw_set_color(c_black);
    draw_rectangle(350, 120, 780, 400, false);
    draw_set_color(c_white);

    if (global.active_textbox == "distort1")
    {
        draw_text_ext(360, 130, "Media 1: lorem ipsum dolor sit amet blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", 24, 400);
    }
    else if (global.active_textbox == "distort2")
    {
        draw_text_ext(360, 130, "Media 2: The quick brown fox jumps over the lazy dog blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah", 24, 400);
    }

    if (!instance_exists(obj_button_next))
    {
        instance_create_layer(630, 410, "Instances", obj_button_next);
    }
}
