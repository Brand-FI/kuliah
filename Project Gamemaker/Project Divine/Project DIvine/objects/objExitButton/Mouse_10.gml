/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2AC7D77C
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "spr_exit_open"
/// @DnDSaveInfo : "spriteind" "spr_exit_open"
sprite_index = spr_exit_open;
image_index = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4D57B587
/// @DnDArgument : "soundid" "door_opening"
/// @DnDSaveInfo : "soundid" "door_opening"
audio_play_sound(door_opening, 0, 0, 1.0, undefined, 1.0);