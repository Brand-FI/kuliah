audio_play_sound(menu_1, 1, false);
if(room_get_name(room) != "kilusplain")
{
	room_goto(kilusplain);
	gamePause = false;
	instance_destroy(objMapSelection);
	instance_destroy(objButtonMenuKf);
	instance_destroy(objButtonMenuKp);
	instance_destroy(objButtonMenuLt);
	instance_destroy();
	
}