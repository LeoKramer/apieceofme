/// @description 
room_speed = 60;
persistent = true;

hsp = 0;
vsp = 0;
walksp = 3;

state = PLAYERSTATE.WALKING;
side = PLAYERSIDE.FRONT;

enum PLAYERSTATE
{
	WALKING,
	INTERACTING,
	TRANSITIONING
}

enum PLAYERSIDE
{
	BACK,
	FRONT,
	LEFT,
	RIGHT
}

enum ROOMS
{
	BEDROOM,
	HALL,
	LIVINGROOM
}
previousRoom = ROOMS.BEDROOM;
destinationRoom = ROOMS.HALL;

interacting = true;
collectedBedroomPiece = false;