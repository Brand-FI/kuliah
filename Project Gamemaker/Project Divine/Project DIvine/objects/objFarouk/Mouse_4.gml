var roomName = room_get_name(room);
if(roomName == "PartySelector")
{
	if(selected == false)
	{
		audio_play_sound(Sean_great, 1, false);
		selected = true;	
	}
	else
	{
		audio_play_sound(button_2, 1, false);
		selected = false;	
	}		
}