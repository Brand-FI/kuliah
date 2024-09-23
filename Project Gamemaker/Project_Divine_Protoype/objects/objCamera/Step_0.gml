/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33C8CFC2
/// @DnDArgument : "var" "follow"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(follow == noone)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 414B4375
	/// @DnDInput : 2
	/// @DnDParent : 33C8CFC2
	/// @DnDArgument : "expr" "follow.x"
	/// @DnDArgument : "expr_1" "follow.y"
	/// @DnDArgument : "var" "xTo"
	/// @DnDArgument : "var_1" "yTo"
	xTo = follow.x;
	yTo = follow.y;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 497832F7
/// @DnDInput : 2
/// @DnDArgument : "expr" " (xTo -x) / 25"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" " (yTo - y) / 25"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x +=  (xTo -x) / 25;
y +=  (yTo - y) / 25;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 29BD63F2
/// @DnDInput : 3
/// @DnDArgument : "function" "camera_set_view_pos"
/// @DnDArgument : "arg" "view_camera[0]"
/// @DnDArgument : "arg_1" " x - (camera_get_view_width(view_camera[0]) * 0.5)"
/// @DnDArgument : "arg_2" " y - (camera_get_view_height(view_camera[0]) * 0.5)"
camera_set_view_pos(view_camera[0],  x - (camera_get_view_width(view_camera[0]) * 0.5),  y - (camera_get_view_height(view_camera[0]) * 0.5));