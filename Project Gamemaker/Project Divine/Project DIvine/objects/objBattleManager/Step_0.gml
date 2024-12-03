if (turnOrder == true) 
{
	for (var i = array_length(global.participants) - 1; i >= 0; i--) 
	{
	    if (global.participants[i].hp <= 0) 
	    {
	        if (instance_exists(global.participants[i])) 
	        {
	            instance_destroy(global.participants[i]);
			}
	        for (var j = 0; j < array_length(global.party); j++) 
	        {
	            if (global.party[j] == global.participants[i]) 
	            {
	                array_delete(global.party, j, 1);
	                break;  
	            }
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
		// jika ada yang mati dari global.party maka dihapus dari party
		for (var i = array_length(global.party) - 1; i >= 0; i--) 
		{
		    if (global.party[i].hp <= 0) 
		    {
		        array_delete(global.party, i, 1);
				instance_destroy(global.party[i]);
		    }
		}
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
			updateParty();
			global.participants[0].ManaRegen(); // Mana regen setiap turn dimulai
		    instance_create_layer(global.participants[0].x, global.participants[0].y, "Instances", objTurnOrder);
			turnOrder = false;
		} 
		else 
		{
		   attack_random()
		   turnOrder = false;
		}	
	}
}
