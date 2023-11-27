right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
up_key = keyboard_check(vk_up);


InteractKeyPressed=keyboard_check_pressed(ord("Z"))
if InteractKeyPressed=true
	{
		var _checkDIR=face *90;
		
		//see if interactable
		var _checkX= x +lengthdir_x(interactdist,_checkDIR);
		var _checky= y +lengthdir_y(interactdist,_checkDIR);
		var _pushBlockInst= instance_place(_checkX, _checky, Object3);
		//if there is, tell to slide and what dir
		if instance_exists(_pushBlockInst) && _pushBlockInst.sliding=false
		{
			_pushBlockInst.sliding=true;
			_pushBlockInst.faceDIR=face;
		}
	}
		





xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;
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
sprite_index=sprite[face];

//animate
if xspd == 0 && yspd == 0 {image_index=0};

