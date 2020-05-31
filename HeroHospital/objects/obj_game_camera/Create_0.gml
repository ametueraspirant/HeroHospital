/// @description Initialise camera

width=1024;
height=768;
main_camera = camera_create_view(x, y, width, height ,0, self, -1, -1, width*.5, height*.5);
view_camera[0]=main_camera;
camera_mode = g_camera_state.c_player;
