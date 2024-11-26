
audio_play_sound(soundButtonClick, 1, false);

doAction(sprite_index);
instance_destroy();
instance_destroy(objTurnOrder);
instance_destroy(objButtonDown);
instance_destroy(objButtonUp);
turnOrder = true;