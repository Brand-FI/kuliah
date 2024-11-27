function attack_random() 
{
	randomize()
	var rdm = irandom(99);
	if(rdm >= 0 && rdm <= 15)
	{
	   global.participants[0].NormalAttack();
	}
	else if(rdm >= 16 && rdm <= 99)
	{
	   global.participants[0].SpecialAttack();
	}	
}

