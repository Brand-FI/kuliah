if (combatState != true && gamePause = false) 
{
	var roomName = room_get_name(room)

    if ( wKeyCooldown <= 0) 
	{
		if (countStep % 7 == 0)
		{
		    PlaySound();
		}
        wKeyCooldown = wKeyCooldownTime; 
		changeBG(roomName, countStep);
		if(array_length(global.party) > 0)
		{
				randomSpawnMob();		
		}
        countStep++;
    }
}