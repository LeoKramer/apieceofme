/// @description 
if(place_meeting(x,y,o_player))
{	
	room_goto(r_hall);
	o_player.destinationRoom = ROOMS.HALL;
	o_player.previousRoom = ROOMS.BEDROOM;
	o_player.state = PLAYERSTATE.TRANSITIONING;
}