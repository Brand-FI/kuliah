if (combatState != true) 
{
	instance_create_layer(960, 2184, "Instances", ObjectP1);
    random_set_seed(current_time);
    
    var bg = layer_get_id("Background_Game");
    var bgid = layer_background_get_id(bg);
    var rdm = irandom(4);

    if (rdm == 0) 
    {
        layer_background_sprite(bgid, inazuma1);
    }
    else if (rdm == 1) 
    {
        layer_background_sprite(bgid, inazuma2);
    }
    else if (rdm == 2) 
    {
        layer_background_sprite(bgid, inazuma3);
    }
    else if (rdm == 3) 
    {
        layer_background_sprite(bgid, inazuma4);
    }
    else 
    {
        layer_background_sprite(bgid, inazuma5);
    }

    randomSpawnMob1();
}
