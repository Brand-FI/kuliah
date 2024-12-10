if(selected == false)
{
	var roomName = room_get_name(room);
	if(roomName == "PartySelector")
	{
		audio_play_sound(Bromin_lead, 1, false);
	}
	else
	{
		audio_play_sound(button_2, 1, false);
	}

	selected = true;	
}
else
{
	audio_play_sound(button_2, 1, false);
	selected = false;	
}