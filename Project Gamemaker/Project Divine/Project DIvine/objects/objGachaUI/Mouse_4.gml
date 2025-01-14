
if(keyCooldown <= 0)
{
    fade_out = true;
    fade_alpha = 0;
	new_bg_sprite = kPlainNight6;
	keyCooldown = keyCooldownTime; 
	currentIndex++
	if (currentIndex != array_length(myArray)) {
		audio_play_sound(twinkle, 1, false);
	}	
}
