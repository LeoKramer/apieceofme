// Calculate movement
var _hmove = key_right - key_left;
hsp = _hmove * walksp;

var _vmove = key_down - key_up;
vsp = _vmove * walksp;

// Horizontal collision with wall or unlockable path
if (place_meeting(x+hsp,y,o_wall))
{
	while (!place_meeting(x+sign(hsp),y,o_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x+hsp,y,o_unlockable))
{
	while (!place_meeting(x+sign(hsp),y,o_unlockable))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

// Vertical collision with wall
if (place_meeting(x,y+vsp,o_wall))
{
	while (!place_meeting(x,y+sign(vsp),o_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x,y+vsp,o_unlockable))
{
	while (!place_meeting(x,y+sign(vsp),o_unlockable))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// Animation
image_speed = 0.3;
if(_vmove == 1)
{
	sprite_index = s_playerWalkingFront;
	side = PLAYERSIDE.FRONT;
}
else if(_vmove == -1)
{
	sprite_index = s_playerWalkingBack;
	side = PLAYERSIDE.BACK;
}
else if(_hmove == 1 && _vmove == 0 || _hmove == -1 && _vmove == 0)
{
	sprite_index = s_playerWalkingSide;
	if(hsp != 0) image_xscale = sign(hsp);
	
	if(hsp < 0)
		side = PLAYERSIDE.LEFT;
	else
		side = PLAYERSIDE.RIGHT;
}

// Check idle
if(hsp == 0 && vsp == 0)
{
	switch(side)
	{
		case PLAYERSIDE.FRONT:
			sprite_index = s_playerIdleFront;
			break;
		case PLAYERSIDE.BACK:
			sprite_index = s_playerIdleBack;
			break;
		case PLAYERSIDE.RIGHT:
			sprite_index = s_playerIdleSide;
			break;
		case PLAYERSIDE.LEFT:
			sprite_index = s_playerIdleSide;
			image_xscale = -1;
			break;
	}
}

if(interacting) state = PLAYERSTATE.INTERACTING;