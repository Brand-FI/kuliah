function changeBG(roomName, countStep) 
{
	if(countStep % 10 >= 0 && countStep % 10 < 5)
	{
		if (roomName == "kilusplain") 
		{
		    fade_out = true; 
		    fade_alpha = 0; 
		    var rdm = irandom(5);
		    if (rdm == 0) 
			new_bg_sprite = kPlainDay1;
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
		else if(roomName == "kilusforest")
		{
		    fade_out = true; 
		    fade_alpha = 0; 
		    var rdm = irandom(5);
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
		else if(roomName == "levinastemple")
		{
		    fade_out = true; 
		    fade_alpha = 0; 
		    var rdm = irandom(3);
		    if (rdm == 0) new_bg_sprite = LTempleDay1;
		    else if (rdm == 1) 
			new_bg_sprite = LTempleDay2;
		    else if (rdm == 2) 
			new_bg_sprite = LTempleDay3;
		    else if (rdm == 3) 
			new_bg_sprite = LTempleDay4;
		}
	}
	else
	{
		if (roomName == "kilusplain") 
		{
			fade_out = true;
		    fade_alpha = 0; 
		    var rdm = irandom(5);
		    if (rdm == 0) new_bg_sprite = kPlainNight1;
		    else if (rdm == 1) new_bg_sprite = kPlainNight2;
		    else if (rdm == 2) new_bg_sprite = kPlainNight3;
		    else if (rdm == 3) new_bg_sprite = kPlainNight4;
		    else if (rdm == 4) new_bg_sprite = kPlainNight5;
		    else new_bg_sprite = kPlainNight6;
		}
		else if(roomName == "kilusforest")
		{
			fade_out = true;
		    fade_alpha = 0; 
		    var rdm = irandom(5);
		    if (rdm == 0) new_bg_sprite = kForestNight1;
		    else if (rdm == 1) new_bg_sprite = kForestNight2;
		    else if (rdm == 2) new_bg_sprite = kForestNight3;
		    else if (rdm == 3) new_bg_sprite = kForestNight4;
		    else if (rdm == 4) new_bg_sprite = kForestNight5;
		    else new_bg_sprite = kForestNight6;
		}
		else if(roomName == "levinastemple")
		{
			fade_out = true;
		    fade_alpha = 0; 
		    var rdm = irandom(3);
		    if (rdm == 0) new_bg_sprite = LTempleNight1;
		    else if (rdm == 1) 
			new_bg_sprite = LTempleNight2;
		    else if (rdm == 2) 
			new_bg_sprite = LTempleNight3;
		    else if (rdm == 3) 
			new_bg_sprite = LTempleNight4;
		}
	}
	currentBackground = new_bg_sprite;
}
