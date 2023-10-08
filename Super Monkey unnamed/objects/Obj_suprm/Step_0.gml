right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);


xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

x+=xspd;
y+=yspd;

sprite_index=sprite[face];

//animate


if place_meeting(x+xspd, y, Obj_wall ) == true
	{
		xspd=0;
	}
if place_meeting(x, y+yspd, Obj_wall ) == true
	{
		yspd=0;
	}
if xspd == 0 && yspd == 0 {image_index=0};
if yspd == 0
{
if xspd > 0 {face=RIGHT};
if xspd < 0 {face=LEFT};
}
if xspd > 0 && face==LEFT {face=RIGHT};
if xspd < 0 && face == RIGHT {face=LEFT};
if xspd == 0
{
if yspd > 0 {face=DOWN};
if yspd < 0 {face=UP};
}
if yspd > 0 && face == UP {face=DOWN};
if yspd < 0 && face == DOWN {face=UP};






