function randomSpawnMob() {
    randomize(); 
    
    var rdm = irandom(100);
	var spawnChance = 20; 
  
    if (rdm <= spawnChance) {
      spawnEnemy()
      combatState = true; 
    }
}
