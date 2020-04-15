var referenceObject;
var offset;

if(destinationRoom == ROOMS.HALL)
{
	if(previousRoom = ROOMS.BEDROOM) 
	{
		referenceObject = o_hallBedroomTransition; 
		offset = 1;
	}
	else if(previousRoom == ROOMS.LIVINGROOM)
	{
		referenceObject = o_hallLivingRoomTransition;
		offset = -100;
	}
}

if(destinationRoom == ROOMS.BEDROOM)
{
	referenceObject = o_bedroomTransition; 
	offset = -66;
}

if(destinationRoom == ROOMS.LIVINGROOM)
{
	referenceObject = o_livingRoomHallTransition;
	offset = 1;
}

o_player.x = referenceObject.x;
o_player.y = referenceObject.y + offset;
state = PLAYERSTATE.WALKING;