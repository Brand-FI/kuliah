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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1EB00967
/// @DnDInput : 2
/// @DnDArgument : "expr" "clamp(x, camWidth/2, room_width-camWidth/2);"
/// @DnDArgument : "expr_1" "clamp(y, camHeight/2, room_height-camHeight/2);"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = clamp(x, camWidth/2, room_width-camWidth/2);;
y = clamp(y, camHeight/2, room_height-camHeight/2);;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 29BD63F2
/// @DnDInput : 3
/// @DnDArgument : "function" "camera_set_view_pos"
/// @DnDArgument : "arg" "view_camera[0]"
/// @DnDArgument : "arg_1" "x-camWidth/2"
/// @DnDArgument : "arg_2" "y-camHeight/2"
camera_set_view_pos(view_camera[0], x-camWidth/2, y-camHeight/2);