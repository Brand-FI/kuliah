/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 22F3ACBD
/// @DnDArgument : "x" "5"
/// @DnDArgument : "y" "5"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""HP ""
draw_text_transformed(5, 5, string("HP ") + "", 2, 2, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6295C832
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l6295C832_0=($FF000000 >> 24);
draw_set_alpha(l6295C832_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 521C89EC
/// @DnDArgument : "x1" "55"
/// @DnDArgument : "y1" "15"
/// @DnDArgument : "x2" "255"
/// @DnDArgument : "y2" "38"
/// @DnDArgument : "value" "health"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF3F"
draw_healthbar(55, 15, 255, 38, health, $FFFFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF3F & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 3CF4D5C9
/// @DnDArgument : "x1" "55"
/// @DnDArgument : "y1" "39"
/// @DnDArgument : "x2" "255"
/// @DnDArgument : "y2" "62"
/// @DnDArgument : "mincol" "$FFFFA100"
/// @DnDArgument : "maxcol" "$FFFFA100"
draw_healthbar(55, 39, 255, 62, 100, $FFFFFFFF & $FFFFFF, $FFFFA100 & $FFFFFF, $FFFFA100 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));