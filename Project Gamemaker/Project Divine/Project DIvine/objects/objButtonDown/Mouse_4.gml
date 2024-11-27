audio_play_sound(button_2, 1, false);

if(objButtonAction.sprite_index == button_attack)
{
	objButtonAction.sprite_index = button_skill;	
}
else if(objButtonAction.sprite_index == button_skill)
{
	objButtonAction.sprite_index = button_special;	
}
else
{
	objButtonAction.sprite_index = button_attack;	
}