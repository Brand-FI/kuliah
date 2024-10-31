if (combatState != true) 
{
	if(countStep % 10 >= 0 && countStep % 10 < 5)
	{
		changeBGKiluDay()
	}
	else
	{
		changeBGKiluNight()	
	}
	countStep++
   // randomSpawnMob1();
}
