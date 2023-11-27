
//state we are in
if sliding == false
	{
		//set startpoint
		startpointx = x;
		startpointy = y;
		//reset movement
		xspd=0;
		yspd=0;
	}
if sliding == true
	{
		//get direction
		var _realDIR = faceDIR * 90;
		//get target coords
		var _targetxdist= lengthdir_x(gridSpace, _realDIR);
		var _targetydist= lengthdir_y(gridSpace, _realDIR);
		targetx = startpointx + _targetxdist;
		targety = startpointy + _targetydist;
		
		//set the speeds
		var _Targetdist = point_distance(x, y, targetx, targety);
		var _Finalspd = min( movespd, _Targetdist );
		xspd=lengthdir_x(_Finalspd, _realDIR);
		yspd=lengthdir_y(_Finalspd, _realDIR);
		//dont let block move to walled grid space
		if place_meeting(targetx,targety, Obj_wall)
			{
				xspd=0;
				yspd=0;
			}
	}
	
	//move
x +=xspd;
y +=yspd;

//done with sliding

if xspd == 0 && yspd == 0
	{
		sliding=false;
	}
	
	//depth
	depth= -bbox_bottom;