/// @description 
if(playerOnBed && canMove)
{
	if(o_player.key_interact)
	{
		o_player.visible = true;
		o_player.interacting = false;
		playerOnBed = false;
		image_index = 0;
		canLieDown = false;
		alarm[2] = room_speed * 1;
	}
}

if(distance_to_object(o_player) <= 1 && !playerOnBed && canLieDown)
{
	if(o_player.key_interact)
	{
		o_player.interacting = true;
		o_player.visible = false;
		playerOnBed = true;
		image_index = 2;
		canMove = false;
		alarm[1] = room_speed * 1;
	}
}