function randomSpawnMob1() {
    randomize(); 
    
    var rdm = irandom(100);
	var spawnChance = 20; 
  
    if (rdm <= spawnChance) {
        instance_create_layer(960, 360, "Instances", objWolf);
        combatState = true; 
    }
}
