//Script jalan saat di LOBBY

globalvar saveFile;
saveFile = "divine.dat";

randomize()
globalvar combatState;
combatState = false;

window_set_fullscreen(true);

if (!audio_is_playing(soundBGM1))
{
    audio_play_sound(soundBGM1, 1, true);
}

