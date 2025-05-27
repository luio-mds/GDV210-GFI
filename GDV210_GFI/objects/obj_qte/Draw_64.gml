if (qte_active)
{
    draw_set_font(fnt_qte);
	draw_set_alpha(1);
    draw_set_color(c_white);

    // Draw the prompt text
    var center_x = display_get_gui_width() / 2;
    draw_text(center_x - string_width("MASH " + chr(qte_key)) / 2, 50, "MASH " + chr(qte_key) + "!");

    // Draw mash progress
    var progress_text = string(qte_mash_count) + " / " + string(qte_required_mashes);
    draw_text(center_x - string_width(progress_text) / 2, 80, progress_text);

    // Draw a time bar
    var time_ratio = qte_timer / qte_time_limit;
    draw_set_color(c_red);
    draw_rectangle(center_x - 100, 110, center_x - 100 + 200 * time_ratio, 130, false);
}