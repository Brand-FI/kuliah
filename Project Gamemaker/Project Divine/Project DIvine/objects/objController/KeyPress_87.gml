if (combatState != true) 
{

    if ( wKeyCooldown <= 0) 
	{
        wKeyCooldown = wKeyCooldownTime; 
        
        if (countStep % 10 >= 0 && countStep % 10 < 5) {
            changeBGKiluDay();
        } else {
            changeBGKiluNight();
        }
        countStep++;
    }


}
