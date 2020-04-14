var referenceObject;
var offset;

if(destinationRoom == ROOMS.HALL)
{
	if(previousRoom = ROOMS.BEDROOM) 
	{
		referenceObject = o_hallBedroomTransition; 
		offset = 1;
	}
}

if(destinationRoom == ROOMS.BEDROOM)
{
	referenceObject = o_bedroomTransition; 
	offset = -66;
}

o_player.x = referenceObject.x;
o_player.y = referenceObject.y + offset;
state = PLAYERSTATE.WALKING;