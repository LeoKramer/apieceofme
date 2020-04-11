/// @description 
if(distance_to_object(o_player) <= 1)
{
	if(o_player.key_interact && o_player.collectedBedroomPiece)
	{
		instance_destroy(o_bedroomUnlockable);
		instance_destroy(o_bedroomDoorLocked);
		instance_destroy(o_bedroomPiece);
	}
}