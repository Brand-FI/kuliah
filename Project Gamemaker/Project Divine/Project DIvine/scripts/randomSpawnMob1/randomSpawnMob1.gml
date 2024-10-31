function randomSpawnMob1()
{
	random_set_seed(current_time);
	var rdm = irandom(100);
	random_set_seed(current_second);
	var rdm2 = irandom(100);
	if(rdm2 <= rdm)
	{
		instance_create_layer(960, 360, "Instances", objWolf);
		combatState = true;
	}

}
