/// @description 
// Check hint
if(place_meeting(x,y,o_player) && !alreadyCollected && o_player.didMotherFirstEncounter)
{
	if(hintInst == 0) hintInst = instance_create_layer(o_player.x, o_player.y, "Dialogs", o_interactHint);
	// Check interaction
	if(o_player.key_interact)
	{
		o_player.collectedMotherPortraitPiece = true;
		alreadyCollected = true;
		o_player.interacting = true;
		instance_create_layer(o_player.x, o_player.y, "Dialogs", o_hallMotherPortraitInteractionDialog);
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