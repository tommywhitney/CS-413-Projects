/// @description Insert description here
// You can write your code in this editor

min_view_x = 0;
min_view_y = 0;

max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);

target_x = x;
target_y = y;