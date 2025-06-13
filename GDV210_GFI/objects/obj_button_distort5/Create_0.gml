distort_level = 1;

if (room != rm_room) exit;

// Frame config
var frame_x = global.button_frame_x;
var frame_y = global.button_frame_y;
var frame_w = global.button_frame_width;
var frame_h = global.button_frame_height;

// Base weights
var weight4 = 1 + global.distort4_level;
var weight5 = 1 + global.distort5_level;
var weight6 = 1 + global.distort6_level;

var total_weight = weight4 + weight5 + weight6;

// Calculate weight
var m_weight = 1;
switch (object_index)
{
    case obj_button_distort4: m_weight = weight4; break;
    case obj_button_distort5: m_weight = weight5; break;
    case obj_button_distort6: m_weight = weight6; break;
}

// Calculate height
var button_h = (m_weight / total_weight) * frame_h;

// Calculate y_offset
var y_offset = 0;
if (object_index == obj_button_distort5)
    y_offset = (weight4 / total_weight) * frame_h;
else if (object_index == obj_button_distort6)
    y_offset = ((weight4 + weight5) / total_weight) * frame_h;

// Set position and size
x = frame_x;
y = frame_y + y_offset;
image_xscale = frame_w / sprite_width;
image_yscale = button_h / sprite_height;