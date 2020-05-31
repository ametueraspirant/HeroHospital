/// @description Initialize Game

// set global variables for key binding
global.g_key_up = ord("W");
global.g_key_down = ord("S");
global.g_key_left = ord("A");
global.g_key_right = ord("D");
global.g_key_punch = ord("J");
global.g_key_kick = ord("K");
global.g_key_block = ord("L");
global.g_key_dash = vk_space;
global.g_key_menu = vk_escape;
global.g_key_debug = vk_f3;

// define main game layer for spawning
global.l_main_layer = "Instances";

// create the camera object
instance_create_layer(0, 0, global.l_main_layer, obj_game_camera);

#region // player enum states
enum p_on_where
{
	on_ground,
	on_air,
	on_wall,
	on_ledge,
	on_swim
}

enum p_is_ground
{
	is_idle,
	is_walk,
	is_run,
	is_sprint,
	is_crouch,
	is_crouch_walk,
	is_roll,
	is_slide,
	is_dash,
	is_land,
	is_hard_land,
	is_not
}

enum p_is_air
{
	is_rise,
	is_fall,
	is_not
}

enum p_is_wall
{
	is_run,
	is_slide,
	is_climb,
	is_jump,
	is_not
}

enum p_is_ledge
{
	is_hang,
	is_climb,
	is_not
}

enum p_is_swim
{
	is_not
}
#endregion

#region // mob enum states

#endregion

#region //misc enum states
enum g_camera_state
{
	c_player,
	c_action,
	c_cutscene
}
#endregion



// randomise
randomise();