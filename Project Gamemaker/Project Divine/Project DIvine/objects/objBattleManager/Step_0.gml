if (turnOrder == true) 
{
    for (var i = array_length(global.participants) - 1; i >= 0; i--) 
    {
        if (global.participants[i].hp <= 0) 
        {
			if(global.participants[i].team == "enemy")
			{
				instance_destroy(global.participants[i])
			}
            array_delete(global.participants, i, 1);
        }
    }
    var characters_alive = array_length(array_filter(global.participants, function(p) 
	{ return p.team == "character" && p.hp > 0; }));
	
    var enemies_alive = array_length(array_filter(global.participants, function(p) 
	{ return p.team == "enemy" && p.hp > 0; }));
	
    if (characters_alive == 0 || enemies_alive == 0) 
	{
        combatState = false;  
		PlaySound();
        instance_destroy();
    }
	
	global.participants[0].action_value += 10000 / global.participants[0].spd;
	
	array_sort(global.participants, function(a, b) {
	    return a.action_value - b.action_value;
	});
	
	if(combatState == true)
	{
		if (global.participants[0].team == "character") 
		{
			global.participants[0].ManaRegen(); // Mana regen setiap turn dimulai
		    instance_create_layer(global.participants[0].x, global.participants[0].y, "Instances", objTurnOrder);
			turnOrder = false;
		} 
		else 
		{
		   attack_random()
		   turnOrder = true;
		}	
	}
}
