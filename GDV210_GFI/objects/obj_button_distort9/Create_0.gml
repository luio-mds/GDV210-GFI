distort_level = 1;

if (room != rm_room) exit;

// Frame config
var frame_x = global.button_frame_x;
var frame_y = global.button_frame_y;
var frame_w = global.button_frame_width;
var frame_h = global.button_frame_height;

// Base weights
var weight7 = 1 + global.distort7_level;
var weight8 = 1 + global.distort8_level;
var weight9 = 1 + global.distort9_level;

var total_weight = weight7 + weight8 + weight9;

// Calculate weight
var m_weight = 1;
switch (object_index)
{
    case obj_button_distort7: m_weight = weight7; break;
    case obj_button_distort8: m_weight = weight8; break;
    case obj_button_distort9: m_weight = weight9; break;
}

// Calculate height
var button_h = (m_weight / total_weight) * frame_h;

// Calculate y_offset
var y_offset = 0;
if (object_index == obj_button_distort8)
    y_offset = (weight7 / total_weight) * frame_h;
else if (object_index == obj_button_distort9)
    y_offset = ((weight7 + weight8) / total_weight) * frame_h;

// Set position and size
x = frame_x;
y = frame_y + y_offset;
image_xscale = frame_w / sprite_width;
image_yscale = button_h / sprite_height;