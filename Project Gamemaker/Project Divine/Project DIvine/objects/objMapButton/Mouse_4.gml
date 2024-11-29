audio_play_sound(menu_1, 1, false);
if(combatState == false)
{
	gamePause = true;
	instance_create_depth(85, 250, 2, objMapSelection);
	instance_create_depth(85, 250, 1, objButtonMenuKp);
	instance_create_depth(708, 250, 1, objButtonMenuKf);
	instance_create_depth(1331, 250, 1, objButtonMenuLt);
	instance_create_depth(770, 1000, 1, objExitMap);
}
