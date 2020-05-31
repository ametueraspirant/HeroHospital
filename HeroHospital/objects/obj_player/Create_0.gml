/// @description Initialize player

// convert global variables to local variables
g2l_jump = global.g_key_up;
g2l_duck = global.g_key_down;
g2l_left = global.g_key_left;
g2l_right = global.g_key_right;
g2l_punch = global.g_key_punch;
g2l_kick = global.g_key_kick;
g2l_use = global.g_key_use;
g2l_block = global.g_key_block;
g2l_dash = global.g_key_dash;
g2l_menu = global.g_key_menu;
g2l_debug = global.g_key_debug;

// define default stats
max_speed_h_current = 0;
max_speed_h_walk = 5;
max_speed_h_run = 10;
max_speed_h_sprint = 15;
max_speed_h_crouch = 4;
max_speed_v_current = 0;
max_speed_v_air = 20;
max_speed_v_wall = 5;
stamina_current = 200;
stamina_base = 200;
jump_power = 15;

// define current speed variables
speed_x = 0;
speed_y = 0;
speed_x_saved = 0;
speed_y_saved = 0;

// define current friction variables
frict = 0;
frict_ground = .6;
frict_air = .4;
frict_crouch = .3;

// define current acceleration variables
accel = 0;
accel_ground = 1;
accel_air = .5;
accel_crouch = 0.8;

// define current weight variables
weight = 0;
weight_default = .5;
weight_fall = .8;
weight_wall = .4;

// define current timers
t_fall = 0;
t_coyote = 0;
t_jump = 0;
t_duck = 0;
t_left = 0;
t_right = 0;
t_dash = 0;
t_punch = 0;
t_kick = 0;
t_use = 0;
t_block = 0;
t_reset = 10;

// define current states
where_on = p_on_where.on_air;
last_on = p_on_where.on_air;
is_ground = p_is_ground.is_not;
is_air = p_is_air.is_not;
is_wall = p_is_wall.is_not;
is_ledge = p_is_ledge.is_not;
is_swim = p_is_swim.is_not;
