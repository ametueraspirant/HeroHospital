/// @description Move camera

if camera_mode == g_camera_state.c_player
{	
	x=lerp(x, obj_player.x + obj_player.look_dir * 100 + obj_player.speed_x * 20, 0.05);
	y=lerp(y, obj_player.y + obj_player.speed_y * 12, 0.05);
}
