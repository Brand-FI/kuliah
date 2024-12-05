function PlaySound()
{
	var nama = room_get_name(room)
	if(nama == "Lobby")
	{
		audio_stop_all()
		audio_play_sound(lobby, 1, true);
	}
	else if(nama == "kilusplain")
	{
		if(combatState == false)
		{
			audio_stop_all()
			audio_play_sound(cloud_3, 1, true);
		}
		else
		{
			audio_stop_all()
			audio_play_sound(battle, 1, true);	
		}
	}
	else if(nama == "kilusforest")
	{
		if(combatState == false)
		{
			audio_stop_all()		
			audio_play_sound(night_1, 1, true);
		}
		else
		{
			audio_stop_all()
			audio_play_sound(battle, 1, true);	
		}
	}


}