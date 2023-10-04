right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);


xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;


if place_meeting(x+xspd, y, Obj_wall ) == true
	{
		xspd=0;
	}
if place_meeting(x, y+yspd, Obj_wall ) == true
	{
		yspd=0;
	}
//collisions





x +=xspd;
y +=yspd;