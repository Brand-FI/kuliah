audio_play_sound(soundButtonClick, 1, false);

if(objButtonAction.sprite_index == button_attack)
{
	objButtonAction.sprite_index = button_special;	
}
else if(objButtonAction.sprite_index == button_skill)
{
	objButtonAction.sprite_index = button_attack;	
}
else
{
	objButtonAction.sprite_index = button_skill;	
}