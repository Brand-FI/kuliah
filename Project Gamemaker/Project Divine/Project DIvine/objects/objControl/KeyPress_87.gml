if (combatState != true) 
{
move = countMove % 10; 
if (move >= 0 && move <= 4) 
{
    changeBGKiluDay(); 
} 
else if (move >= 5 && move <= 9) 
{
    changeBGKiluNight(); 
}
	countMove++
   randomSpawnMob1();
}
