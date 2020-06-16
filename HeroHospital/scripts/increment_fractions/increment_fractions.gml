///var_save = increment_fractions()
///val1 = var_save[0]; val2 = var_save[1];
// code courtesy of r/GameMaker discord
var x_speed = argument0
var y_speed = argument1
var x_fraction = argument2
var y_fraction = argument3

//Add fractions back
x_speed += x_fraction;
y_speed += y_fraction;

//Store and remove fractions for the next frame, so we're always in an integer position
//Int64s don't store fractions, so we're essentially flooring our numbers to remove the fraction, this also caps the value of our speed to 4.something quintrillion.
x_fraction =    frac(x_speed);
x_speed =        int64(x_speed);
y_fraction =    frac(y_speed);
y_speed =        int64(y_speed);

return [x_speed, y_speed, x_fraction, y_fraction];