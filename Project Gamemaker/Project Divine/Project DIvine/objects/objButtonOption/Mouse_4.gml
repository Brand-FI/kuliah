audio_play_sound(backpack, 1, false);
room_goto(Lobby)
PlaySound();
combatState = false;
countStep = 0;
audio_stop_all();
if instance_exists(objGachaUI)
{
	instance_destroy(objGachaUI);
}

