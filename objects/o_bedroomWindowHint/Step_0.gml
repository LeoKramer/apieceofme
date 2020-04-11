/// @description 
if(place_meeting(x,y,o_player) && !gotHint)
{
	hintInst = instance_create_layer(o_player.x, o_player.y, "Dialogs", o_bedroomRainHint);
	gotHint = true;
	alarm[0] = room_speed * 1;
}