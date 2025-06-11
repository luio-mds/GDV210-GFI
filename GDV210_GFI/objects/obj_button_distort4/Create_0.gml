distort_level = 1;

if (room != rm_room) exit;

// Frame config
var frame_x = global.button_frame_x;
var frame_y = global.button_frame_y;
var frame_w = global.button_frame_width;
var frame_h = global.button_frame_height;

// Base weights
var weight1 = 1 + global.distort1_level;
var weight2 = 1 + global.distort2_level;
var weight3 = 1 + global.distort3_level;

var total_weight = weight1 + weight2 + weight3;

// Calculate weight
var m_weight = 1;
switch (object_index)
{
    case obj_button_distort1: m_weight = weight1; break;
    case obj_button_distort2: m_weight = weight2; break;
    case obj_button_distort3: m_weight = weight3; break;
}

// Calculate height
var button_h = (m_weight / total_weight) * frame_h;

// Calculate y_offset
var y_offset = 0;
if (object_index == obj_button_distort2)
    y_offset = (weight1 / total_weight) * frame_h;
else if (object_index == obj_button_distort3)
    y_offset = ((weight1 + weight2) / total_weight) * frame_h;

// Set position and size
x = frame_x;
y = frame_y + y_offset;
image_xscale = frame_w / sprite_width;
image_yscale = button_h / sprite_height;