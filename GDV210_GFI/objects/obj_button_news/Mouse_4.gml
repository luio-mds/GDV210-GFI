event_inherited();

with (obj_button_distort4) instance_destroy();
with (obj_button_distort5) instance_destroy();
with (obj_button_distort6) instance_destroy();
with (obj_button_distort1) instance_destroy();
with (obj_button_distort2) instance_destroy();
with (obj_button_distort3) instance_destroy();

if (!instance_exists(obj_button_distort7))
{
instance_create_layer(100, 100, "Instances", obj_button_distort7);
instance_create_layer(100, 250, "Instances", obj_button_distort8);
instance_create_layer(100, 400, "Instances", obj_button_distort9);
}