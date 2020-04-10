/// @description 
room_speed = 60;

hsp = 0;
vsp = 0;
walksp = 3;

state = PLAYERSTATE.WALKING;
side = PLAYERSIDE.FRONT;

enum PLAYERSTATE
{
	WALKING,
	INTERACTING
}

enum PLAYERSIDE
{
	BACK,
	FRONT,
	LEFT,
	RIGHT
}