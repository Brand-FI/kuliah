function doAction()
{
	var damage;
	if(objButtonAction.sprite_index == button_attack)
	{
		global.participants[0].NormalAttack();
		return true;
	}
	else if(objButtonAction.sprite_index == button_skill)
	{
		if(global.participants[0].BasicSkill())
		{
			return true;	
		}
		else
		{
			return false;	
		}
	}
	else if(objButtonAction.sprite_index == button_special)
	{
		if(global.participants[0].SpecialSkill())
		{
			return true;	
		}
		else
		{
			return false;	
		}
	}

}