function changeBG(roomName, countStep) 
{
	if (roomName == "kilusplain") 
	{
		if(countStep % 10 >= 0 && countStep % 10 < 5)
		{
		    fade_out = true; 
		    fade_alpha = 0; 
		    var rdm = irandom(6);
		    if (rdm == 0) new_bg_sprite = kPlainDay1;
		    else if (rdm == 1) 
			new_bg_sprite = kPlainDay2;
		    else if (rdm == 2) 
			new_bg_sprite = kPlainDay3;
		    else if (rdm == 3) 
			new_bg_sprite = kPlainDay4;
		    else if (rdm == 4) 
			new_bg_sprite = kPlainDay5;
		    else 
			new_bg_sprite = kPlainDay6;
		}
		else
		{
			fade_out = true;
		    fade_alpha = 0; 
		    var rdm = irandom(6);
		    if (rdm == 0) new_bg_sprite = kPlainNight1;
		    else if (rdm == 1) new_bg_sprite = kPlainNight2;
		    else if (rdm == 2) new_bg_sprite = kPlainNight3;
		    else if (rdm == 3) new_bg_sprite = kPlainNight4;
		    else if (rdm == 4) new_bg_sprite = kPlainNight5;
		    else new_bg_sprite = kPlainNight6;
		}
	}
	
	if(roomName == "kilusforest")
	{
		if(countStep % 10 >= 0 && countStep % 10 < 5)
		{
		    fade_out = true; 
		    fade_alpha = 0; 
		    var rdm = irandom(6);
		    if (rdm == 0) new_bg_sprite = kForestDay1;
		    else if (rdm == 1) 
			new_bg_sprite = kForestDay2;
		    else if (rdm == 2) 
			new_bg_sprite = kForestDay3;
		    else if (rdm == 3) 
			new_bg_sprite = kForestDay4;
		    else if (rdm == 4) 
			new_bg_sprite = kForestDay5;
		    else 
			new_bg_sprite = kForestDay6;
		}
		else
		{
			fade_out = true;
		    fade_alpha = 0; 
		    var rdm = irandom(6);
		    if (rdm == 0) new_bg_sprite = kForestNight1;
		    else if (rdm == 1) new_bg_sprite = kForestNight2;
		    else if (rdm == 2) new_bg_sprite = kForestNight3;
		    else if (rdm == 3) new_bg_sprite = kForestNight4;
		    else if (rdm == 4) new_bg_sprite = kForestNight5;
		    else new_bg_sprite = kForestNight6;
		}
	}
}
