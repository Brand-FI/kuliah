audio_play_sound(menu_1, 1, false);
if(room_get_name(room) != "kilusforest" && countWolf >= 1 && countGhoul >= 1)
{
	gamePause = false;
	room_goto(kilusforest);
	instance_destroy(objMapSelection);
	instance_destroy(objButtonMenuKf);
	instance_destroy(objButtonMenuKp);
	instance_destroy(objButtonMenuLt);
	instance_destroy();
}