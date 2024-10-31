// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function changeBGKiluDay(){
    random_set_seed(current_time);
    
    var bg = layer_get_id("Background_Game");
    var bgid = layer_background_get_id(bg);
    var rdm = irandom(6);

    if (rdm == 0) 
    {
        layer_background_sprite(bgid, kPlainDay1);
    }
    else if (rdm == 1) 
    {
        layer_background_sprite(bgid, kPlainDay2);
    }
    else if (rdm == 2) 
    {
        layer_background_sprite(bgid, kPlainDay3);
    }
    else if (rdm == 3) 
    {
        layer_background_sprite(bgid, kPlainDay4);
    }
    else if (rdm == 4) 
    {
        layer_background_sprite(bgid, kPlainDay5);
    }
	else
	{
		layer_background_sprite(bgid, kPlainDay6);
	}
}