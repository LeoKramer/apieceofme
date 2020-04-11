/// @description 
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

image_alpha = 0;

readTime = false;
alarm[0] = room_speed * 2;