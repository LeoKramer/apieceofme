/// @description 
if(image_alpha < 1) image_alpha += 0.01;

if(o_player.key_interact && readTime)
{
	layer_set_visible("ComicBackground", false);
	instance_destroy(o_bedroomComic)
	o_player.interacting = false;
}