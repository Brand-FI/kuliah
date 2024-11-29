if (combatState != true && gamePause = false) 
{
	var roomName = room_get_name(room)

    if ( wKeyCooldown <= 0) 
	{
        wKeyCooldown = wKeyCooldownTime; 
		changeBG(roomName, countStep);
		randomSpawnMob();	
        countStep++;
		}

    }
	
