/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4EF89D8B
/// @DnDArgument : "xscale" "player_scale"
/// @DnDArgument : "yscale" "player_scale"
image_xscale = player_scale;image_yscale = player_scale;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6DB147B4
/// @DnDInput : 3
/// @DnDArgument : "expr_2" "layer_tilemap_get_id("Tiles_Layer")"
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "var_1" "move_y"
/// @DnDArgument : "var_2" "my_tilemap"
move_x = 0;
move_y = 0;
my_tilemap = layer_tilemap_get_id("Tiles_Layer");