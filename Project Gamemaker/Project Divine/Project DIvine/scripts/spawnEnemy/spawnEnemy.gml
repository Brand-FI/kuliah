function spawnEnemy()
{
	audio_stop_all()
	PlaySound()
	var roomName = room_get_name(room);
	if(roomName = "kilusplain")
	{
		if(countStep % 10 >= 0 && countStep % 10 < 5)
		{
			currentEnemy[0] = instance_create_layer(960,360, "enemy_instances", objWolf);	
		}
		else
		{
			currentEnemy[0] = instance_create_layer(960,360, "enemy_instances", objGhoul);	
		}
		 instance_create_layer(960,360, "enemy_instances", objBattleManager);
		
	}
	
	if(roomName = "kilusforest")
	{
		if(countStep % 10 >= 0 && countStep % 10 < 5)
		{
			currentEnemy[0] = instance_create_layer(960,540, "enemy_instances", objWSnake);	
		}
		else
		{
			currentEnemy[0] = instance_create_layer(960,540, "enemy_instances", objBSnake);	
		}
		 instance_create_layer(960,360, "enemy_instances", objBattleManager);
	}
	
	if(roomName = "levinastemple")
	{
		if(countStep % 10 >= 0 && countStep % 10 < 5)
		{
			randomize()
			var rdm = irandom(1);
			if(rdm = 0)
			{
			 currentEnemy[0] = instance_create_layer(960,540, "enemy_instances", objWSnake);	
			}
			else
			{
			 currentEnemy[0] = instance_create_layer(960,540, "enemy_instances", objBSnake);	
			}
			
		}
		else
		{
			currentEnemy[0] = instance_create_layer(960,360, "enemy_instances", objLevina);
		}
		instance_create_layer(960,360, "enemy_instances", objBattleManager);
	}
}