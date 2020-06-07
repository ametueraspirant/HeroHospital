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
	
/* remedial ledge id code. old variables that will be changed
inst = instance_place(x + runDir, y, ledgeCollider);
if(inst == noone)inst = instance_place(x + runDir, y + 1, ledgeCollider);
if(place_meeting(x + runDir, y + 1, ledgeCollider) and inst != noone){
	ledgeTouch = inst;
}*/

// even more miscellaneous-er checks
if(keyboard_check(vk_anykey))has_moved = true;
if(key_debug)debug = !debug;
if(key_menu)menu = !menu;
#endregion

#region // Movement checks


/* try this out for adding speed fractions...
#region Speed Fractions
//Add fractions back
x_speed_ +=        x_fraction_;
y_speed_ +=        y_fraction_;

//Store and remove fractions for the next frame, so we're always in an integer position
//Int64s don't store fractions, so we're essentially flooring our numbers to remove the fraction, this also caps the value of our speed to 4.something quintrillion.
x_fraction_ =    frac(x_speed_);
x_speed_ =        int64(x_speed_);
y_fraction_ =    frac(y_speed_);
y_speed_ =        int64(y_speed_);
#endregion
*/

/* this here movement code will need to be changed to fit the slopes.
//horizontal movement and collision
if(keyRight and !place_meeting(x + 1, y, colliderParent)){
	if(xSpeed <= maxRunSpeed){
		xSpeed += accel;
	}
}
if(keyLeft and !place_meeting(x - 1, y, colliderParent)){
	if(xSpeed >= -maxRunSpeed){
		xSpeed -= accel;
	}
}
if(xSpeed != 0){
	if(abs(xSpeed) < 0.7 and ((!keyLeft and !keyRight) or (keyLeft and keyRight) or keyDuck)){
		xSpeed = 0;
	}
	xSpeed -= sign(xSpeed) * frict;
}	
//falling and vertical collision
if(!place_meeting(x, y + ySpeed, colliderParent)){
	y += ySpeed;
	if(ySpeed <= maxFallSpeed){
		ySpeed += weight;
	}
} else {
	while(!place_meeting(x, y + sign(ySpeed), colliderParent)){
	y += sign(ySpeed);
	}
	ySpeed = 0
}
if(!place_meeting( x + xSpeed, y, colliderParent)){
	x += xSpeed;
} else {
	while(!place_meeting(x + sign(xSpeed), y, colliderParent)){
		x += sign(xSpeed);
	}
	xSpeed = 0;
}*/
#endregion

#region // Collision checks


#endregion

#region // Movement state machine


#endregion
