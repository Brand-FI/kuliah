function spawnEnemy()
{
	var roomName = room_get_name(room);
	if(roomName = "kilusplain")
	{
		var number = irandom(2)
		if(number == 0)
		{
			currentEnemy[0] = instance_create_layer(960,360, "enemy_instances", objWolf);	
		}
		else
		{
			currentEnemy[0] = instance_create_layer(960,360, "enemy_instances", objGhoul);	
		}
		 instance_create_layer(960,360, "enemy_instances", objBattleManager);
		
	}
}