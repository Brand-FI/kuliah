// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doAction()
{
	if(objButtonAction.sprite_index == button_attack)
	{
		for (var i = 0; i < array_length(global.participants); i++) 
		{
		    if (global.participants[i].team == "enemy") 
			{
				global.participants[i].hp -=  global.participants[0].attack * 30;
				return true;
			}
		}
	}
	else if(objButtonAction.sprite_index == button_skill)
	{
		for (var i = 0; i < array_length(global.participants); i++) 
		{
		    if (global.participants[i].team == "enemy") 
			{
				if(global.participants[0].mana >= 20)
				{
					global.participants[i].hp -=  global.participants[0].attack * 70;	
					global.participants[0].mana = global.participants[0].mana - 10
					return true;
				}
				else
				{
					return false;	
				}
			}
		}
	}
	else if(objButtonAction.sprite_index == button_special)
	{
		for (var i = 0; i < array_length(global.participants); i++) 
		{
		    if (global.participants[i].team == "enemy") 
			{
				if(global.participants[0].mana == global.participants[0].max_mana)
				{
					global.participants[i].hp -=  global.participants[0].attack * 300;	
					global.participants[0].mana -= global.participants[0].max_mana;
					return true;
				}
				else
				{
					return false;		
				}
			}
		}
	}

}