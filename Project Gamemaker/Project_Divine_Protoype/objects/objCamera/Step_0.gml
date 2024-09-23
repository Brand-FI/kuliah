/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7953A11C
/// @DnDArgument : "var" "follow"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(follow == noone)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3659D30B
	/// @DnDInput : 2
	/// @DnDParent : 7953A11C
	/// @DnDArgument : "expr" "follow.x"
	/// @DnDArgument : "expr_1" "follow.y"
	/// @DnDArgument : "var" "xTo"
	/// @DnDArgument : "var_1" "yTo"
	xTo = follow.x;
	yTo = follow.y;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 51462494
/// @DnDInput : 2
/// @DnDArgument : "expr" "(xTo -x) / 25"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "(yTo - y) / 25"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += (xTo -x) / 25;
y += (yTo - y) / 25;

/// @DnDAction : YoYo Games.Cameras.Set_View_Var
/// @DnDVersion : 1
/// @DnDHash : 6850E07A
/// @DnDArgument : "var" "4"
/// @DnDArgument : "view" "1920"
/// @DnDArgument : "value" "x - (camera_get_view_width(view_camera[0]) * 0.5)"
view_set_wport(1920, x - (camera_get_view_width(view_camera[0]) * 0.5));

/// @DnDAction : YoYo Games.Cameras.Set_View_Var
/// @DnDVersion : 1
/// @DnDHash : 3BA5911A
/// @DnDArgument : "var" "5"
/// @DnDArgument : "view" "1080"
/// @DnDArgument : "value" "y - (camera_get_view_height(view_camera[0]) * 0.5)"
view_set_hport(1080, y - (camera_get_view_height(view_camera[0]) * 0.5));