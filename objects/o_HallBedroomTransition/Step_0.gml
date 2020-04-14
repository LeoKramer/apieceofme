/// @description 
if(place_meeting(x,y,o_player))
{
	room_goto(r_bedroom);
	o_player.destinationRoom = ROOMS.BEDROOM;
	o_player.previousRoom = ROOMS.HALL;
	o_player.state = PLAYERSTATE.TRANSITIONING;
}