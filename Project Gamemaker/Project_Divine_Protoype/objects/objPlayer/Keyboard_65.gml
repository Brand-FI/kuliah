/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2EFBD86E
/// @DnDArgument : "x" "-movement_speed"
/// @DnDArgument : "x_relative" "1"
x += -movement_speed;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 25FA3C3F
/// @DnDArgument : "xscale" "-player_scale"
/// @DnDArgument : "yscale" "player_scale"
image_xscale = -player_scale;image_yscale = player_scale;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35C42058
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "anim_run"
anim_run = true;