// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doAction(sprite_index)
{
	if(sprite_index == button_attack)
	{
		for (var i = 0; i < array_length(global.participants); i++) 
		{
		    if (global.participants[i].team == "enemy") 
			{
				global.participants[i].hp -=  global.participants[0].attack * 30;
			}
		}
	}
	else if(sprite_index == button_skill)
	{
			
	}
	else
	{
		
	}

}