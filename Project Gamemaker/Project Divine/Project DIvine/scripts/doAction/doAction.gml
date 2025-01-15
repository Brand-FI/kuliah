 global.action_in_progress = false; 

function doAction() 
{
	if(combatState == true)
	{
	    if (global.action_in_progress == true) 
	        return false;
		
	    if (objButtonAction.sprite_index == button_attack) 
		{
	        global.action_in_progress = true;
	        global.participants[0].NormalAttack();
	        objButtonAction.visible = false;
	        objButtonUp.visible = false;
	        objButtonDown.visible = false;
	        objButtonAction.alarm[0] = 2 * room_speed;
	    }
	    else if (objButtonAction.sprite_index == button_skill) 
		{
	        if (global.participants[0].BasicSkill()) 
			{
				global.action_in_progress = true;
	            objButtonAction.visible = false;
	            objButtonUp.visible = false;
	            objButtonDown.visible = false;
	            objButtonAction.alarm[0] = 2 * room_speed;  
	            return true;
	        } 
			else 
			{
	            return false; 
	        }
	    }
	    else if (objButtonAction.sprite_index == button_special) 
		{
	        if (global.participants[0].SpecialSkill()) 
			{
				global.action_in_progress = true;
	            objButtonAction.visible = false;
	            objButtonUp.visible = false;
	            objButtonDown.visible = false;
	            objButtonAction.alarm[0] = 2 * room_speed;  
	            return true;
	        } else 
			{
	            return false;  
	        }
	    }
	}
}
