function attack_random() 
{
	randomize()
	var rdm = irandom(99);
	if(rdm >= 0 && rdm <= 15)
	{
	   global.participants[0].NormalAttack();
	   global.participants[0].alarm[0] = room_speed * 2;
	}
	else if(rdm >= 16 && rdm <= 99)
	{
	   global.participants[0].SpecialAttack();
	   global.participants[0].alarm[0] = room_speed * 2;
	}	
}

