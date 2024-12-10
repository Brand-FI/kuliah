function PlaySound()
{
	var nama = room_get_name(room)
	if(nama == "Lobby")
	{
		audio_stop_all()
		audio_play_sound(lobby, 1, true);
	}
	else if(nama == "GachaRoom")
	{
		audio_stop_all()
		audio_play_sound(chill, 1, true);
	}
	else if(nama == "PartySelector")
	{
		audio_stop_all()
		audio_play_sound(travel, 1, true);
	}
	else if(nama == "kilusplain")
	{
		if(combatState == false && countStep % 10 >= 0 && countStep % 10 < 5)
		{
			audio_stop_all()
			audio_play_sound(cloud_3, 1, true);
		}
		else if(combatState == false && countStep % 10 >= 5 && countStep % 10 < 10)
		{
			audio_stop_all()
			audio_play_sound(plain_night, 1, true);
		}
		else
		{
			audio_stop_all()
			audio_play_sound(battle, 1, true);	
		}
	}
	else if(nama == "kilusforest")
	{
		if(combatState == false && countStep % 10 >= 0 && countStep % 10 < 5)
		{
			audio_stop_all()
			audio_play_sound(forest_day, 1, true);
		}
		else if(combatState == false && countStep % 10 >= 5 && countStep % 10 < 10)
		{
			audio_stop_all()
			audio_play_sound(night_1, 1, true);
		}
		else
		{
			audio_stop_all()
			audio_play_sound(Intruder, 1, true);	
		}
	}
	else if(nama == "levinastemple")
	{
		if(combatState == false && countStep % 10 >= 0 && countStep % 10 < 5)
		{
			audio_stop_all()
			audio_play_sound(temple_day, 1, true);
		}
		else if(combatState == false && countStep % 10 >= 5 && countStep % 10 < 10)
		{
			audio_stop_all()
			audio_play_sound(erosion, 1, true);
		}
		else
		{
			audio_stop_all()
			audio_play_sound(battlemusic_temple, 1, true);
		}
	}


}