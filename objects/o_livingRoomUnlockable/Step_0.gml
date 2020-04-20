/// @description 
if(distance_to_object(o_player) <= 1)
{
	if(o_player.key_interact && o_player.collectedMotherPortraitPiece)
	{
		o_player.interacting = true;
		layer_set_visible("ComicBackground", true);
		instance_create_layer(x,y,"ComicObjects", o_livingRoomComic);
		instance_destroy(o_livingRoomPianoLocked);
		instance_destroy(o_livingRoomPianoPiece);
		instance_destroy(o_livingRoomUnlockable);
	}
}