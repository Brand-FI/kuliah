/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 045BC01A
/// @DnDInput : 2
/// @DnDArgument : "expr" "keyboard_check(ord("D")) - keyboard_check(ord("A"))"
/// @DnDArgument : "expr_1" "move_x * movement_speed"
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "var_1" "move_x"
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x = move_x * movement_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 35E2A0ED
/// @DnDInput : 2
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" ""
/// @DnDArgument : "object" "my_tilemap"
/// @DnDArgument : "object_1" "objMob1"
/// @DnDSaveInfo : "object_1" "objMob1"
var l35E2A0ED_0 = instance_place(x + 0, y + 2, [my_tilemap, objMob1]);if ((l35E2A0ED_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09D7F9D0
	/// @DnDParent : 35E2A0ED
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 314040D5
	/// @DnDParent : 35E2A0ED
	var l314040D5_0;l314040D5_0 = keyboard_check(vk_space);if (l314040D5_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12A1267E
		/// @DnDParent : 314040D5
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 29026771
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05FB02E9
	/// @DnDParent : 29026771
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03F85CDC
		/// @DnDParent : 05FB02E9
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "move_y"
		move_y = 4;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 6D3D357C
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "object" "my_tilemap"
move_and_collide(move_x, move_y, my_tilemap,4,0,0,-1,-1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F53472E
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "1"
if(move_x < 0){	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 50220E21
	/// @DnDParent : 0F53472E
	/// @DnDArgument : "xscale" "-player_scale"
	/// @DnDArgument : "yscale" "0"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale = -player_scale;image_yscale += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 011E5D00
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "2"
if(move_x > 0){	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 6864FD15
	/// @DnDParent : 011E5D00
	/// @DnDArgument : "xscale" "player_scale"
	/// @DnDArgument : "yscale" "0"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale = player_scale;image_yscale += 0;}