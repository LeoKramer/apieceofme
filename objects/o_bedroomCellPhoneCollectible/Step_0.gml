/// @description 
if(place_meeting(x,y,o_player) && !alreadyCollected)
{
	if(hintInst == 0) hintInst = instance_create_layer(o_player.x, o_player.y, "Dialogs", o_interactHint);
}
else
{
	if(hintInst != 0) 
	{
		instance_destroy(hintInst);
		hintInst = 0;
	}
}