// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawnEnemy()
{
	
	var roomName = room_get_name(room);
	if(roomName = "kilusplain")
	{
		var number = irandom(2)
		if(number == 0)
		{
			//PLACEHOLDER
			currentEnemy[0] = instance_create_layer(960,360, "enemy_instances", objWolf);	
		}
		else
		{
			//PLACEHOLDER
			currentEnemy[0] = instance_create_layer(960,360, "enemy_instances", objGhoul);	
		}
		 instance_create_layer(960,360, "enemy_instances", objBattleManager);
		
	}
}