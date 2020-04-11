/// @description 

// Check hint
if(place_meeting(x,y,o_player) && !alreadyCollected)
{
	if(hintInst == 0) hintInst = instance_create_layer(o_player.x, o_player.y, "Dialogs", o_interactHint);
	// Check interaction
	if(o_player.key_interact)
	{
		o_player.collectedBedroomPiece = true;
		alreadyCollected = true;
		layer_set_visible("ComicBackground", true);
		instance_create_layer(x,y,"ComicObjects", o_bedroomComic);
		o_player.interacting = true;
	}
}
else
{
	if(hintInst != 0) 
	{
		instance_destroy(hintInst);
		hintInst = 0;
	}
}


