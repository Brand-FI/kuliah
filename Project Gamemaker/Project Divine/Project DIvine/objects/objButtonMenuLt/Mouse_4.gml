audio_play_sound(menu_1, 1, false);
if(room_get_name(room) != "levinastemple" && countWSnake >= 1 && countBSnake >= 1)
{
	gamePause = false;
	instance_destroy(objMapSelection);
	instance_destroy(objButtonMenuKf);
	instance_destroy(objButtonMenuKp);
	instance_destroy(objButtonMenuLt);
	instance_destroy();
	room_goto(levinastemple);	
}