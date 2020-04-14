/// @description 
if(place_meeting(x,y,o_player))
{
	room_goto(r_livingRoom);
	o_player.destinationRoom = ROOMS.LIVINGROOM;
	o_player.previousRoom = ROOMS.HALL;
	o_player.state = PLAYERSTATE.TRANSITIONING;
}