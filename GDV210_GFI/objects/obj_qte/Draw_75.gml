/// @description Insert description here
// You can write your code in this editor



if (qte_active)
{
    draw_set_font(fnt_qte);
	draw_set_alpha(1);
    draw_set_color(c_white);

    // Draw the prompt text
    //var center_x = display_get_gui_width() / 2;
    var center_x = obj_phone.bbox_right / 2;
	var line_y = obj_phone.bbox_top + 100;
    draw_text(center_x - string_width("MASH " + chr(qte_key)) / 2, line_y + 50, "MASH " + chr(qte_key) + "!");

    // Draw mash progress
    var progress_text = string(qte_mash_count) + " / " + string(qte_required_mashes);
    draw_text(center_x - string_width(progress_text) / 2, line_y + 80, progress_text);

    // Draw a time bar
    var time_ratio = qte_timer / qte_time_limit;
    draw_set_color(c_red);
    draw_rectangle(center_x - 100, line_y + 110, center_x - 100 + 200 * time_ratio, line_y + 130, false);
	
	// draw messages
	draw_text(center_x - 50, line_y, "something seems different today!");
}
