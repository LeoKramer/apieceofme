/// @description 
//check room change
if(room != r_livingRoom) visible = false;
else if(!didPlayerFirstEncounter && room == r_livingRoom) visible = true;

if(!didPlayerFirstEncounter)
{
	if(distance_to_object(o_player) < 100)
	{
		didPlayerFirstEncounter = true;
		o_player.interacting = true;
		o_player.didMotherFirstEncounter = true;
		alarm[0] = room_speed * 1.5;
	}
}

if(walkingToTheDoor)
{
	if(y > o_livingRoomPiano.y + o_mother.sprite_width)
	{	
		x -= 3;
		y -= 3;
	}
	else if(x > o_livingRoomShelf.x)
	{
		x -= 3;
		o_player.interacting = false;
	}
	else if(x > o_livingRoomDoor.x)
	{
		x -= 3;
		y -= 3;
	}
	else
	{
		visible = false;
		sprite_index = s_motherIdleFront;
		walkingToTheDoor = false;
	}
}

