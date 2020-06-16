/// @description Move the player

#region // Input checks
key_jump = keyboard_check(g2l_jump);
key_jump_tap = keyboard_check_pressed(g2l_jump);
key_duck = keyboard_check(g2l_duck);
key_duck_tap = keyboard_check_pressed(g2l_duck);
key_left = keyboard_check(g2l_left);
key_left_tap = keyboard_check_pressed(g2l_left);
key_right = keyboard_check(g2l_right);
key_right_tap = keyboard_check_pressed(g2l_right);
key_punch = keyboard_check(g2l_punch);
key_punch_tap = keyboard_check_pressed(g2l_punch);
key_kick = keyboard_check(g2l_kick);
key_kick_tap = keyboard_check_pressed(g2l_kick);
key_block = keyboard_check(g2l_block);
key_block_tap = keyboard_check_pressed(g2l_block);
key_dash = keyboard_check(g2l_dash);
key_dash_tap = keyboard_check_pressed(g2l_dash);
key_menu = keyboard_check(g2l_menu);
key_debug = keyboard_check(g2l_debug);
#endregion

#region // Miscellaneous variable checks
// if the player is moving, change direction to check collisions
if(speed_x > 0)run_dir = 1;
else if(speed_x < 0)run_dir = -1;
// on player input, flip character.
if(accel != 0) {
	if(key_right and !key_left)look_dir = 1;
	if(key_left and !key_right)look_dir = -1;
}

// if the player presses a button, set a 10 frame buffer
if(key_jump_tap and t_jump < t_set)t_jump = t_set;
if(key_duck_tap and t_duck < t_set)t_jump = t_set;
if(key_left_tap and t_left < t_set)t_left = t_set;
if(key_right_tap and t_right < t_set)t_right = t_set;
if(key_punch_tap and t_punch < t_set)t_punch = t_set;
if(key_kick_tap and t_kick < t_set)t_kick = t_set;
if(key_block_tap and t_block < t_set)t_block = t_set;
if(key_dash_tap and t_dash < t_set)t_dash = t_set;

// decrement the buffers by one per frame
if(t_jump > 0)t_jump--;
if(t_duck > 0)t_duck--;
if(t_left > 0)t_left--;
if(t_right > 0)t_right--;
if(t_punch > 0)t_punch--;
if(t_kick > 0)t_kick--;
if(t_block > 0)t_block--;
if(t_dash > 0)t_dash--;

// even more miscellaneous-er checks
if(keyboard_check(vk_anykey))has_moved = true;
if(key_debug)debug = !debug;
if(key_menu)menu = !menu;
#endregion

#region // Movement checks
//split speeds into incremental numbers and save the fractions
var_save = increment_fractions(speed_x, speed_y, speed_x_fraction, speed_y_fraction);
speed_x = var_save[0]; speed_y = var_save[1]; speed_x_fraction = var_save[2]; speed_y_fraction = var_save[3];


#endregion

#region // Collision checks


#endregion

#region // Movement state machine


#endregion
