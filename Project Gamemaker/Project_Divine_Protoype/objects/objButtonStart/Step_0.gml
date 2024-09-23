/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4973B81A
/// @DnDArgument : "var" "room_goto(STARTUI)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(room_goto(STARTUI) == true)){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 16E95A4A
	/// @DnDParent : 4973B81A
	instance_destroy();}