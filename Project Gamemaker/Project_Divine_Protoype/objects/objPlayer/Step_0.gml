/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 258E88FD
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "value" "keyboard_check(ord("D")) - keyboard_check(ord("A"))"
var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 68836C75
/// @DnDArgument : "expr" "move_x * movement_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * movement_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4FD2EF12
/// @DnDInput : 2
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" ""
/// @DnDArgument : "object" "my_tilemap"
/// @DnDArgument : "object_1" "objMob1"
/// @DnDSaveInfo : "object_1" "objMob1"
var l4FD2EF12_0 = instance_place(x + 0, y + 2, [my_tilemap, objMob1]);if ((l4FD2EF12_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A70BE8E
	/// @DnDParent : 4FD2EF12
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 30C631EE
	/// @DnDParent : 4FD2EF12
	var l30C631EE_0;l30C631EE_0 = keyboard_check(vk_space);if (l30C631EE_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3853E01C
		/// @DnDParent : 30C631EE
		/// @DnDArgument : "var" "jump_cd"
		if(jump_cd == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 533E2796
			/// @DnDInput : 2
			/// @DnDParent : 3853E01C
			/// @DnDArgument : "expr" "-jump_speed"
			/// @DnDArgument : "expr_1" "0.8"
			/// @DnDArgument : "var" "move_y"
			/// @DnDArgument : "var_1" "jump_cd"
			move_y = -jump_speed;
			jump_cd = 0.8;}}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 22460FD0
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7066D3C4
	/// @DnDParent : 22460FD0
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C735957
		/// @DnDParent : 7066D3C4
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 4;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 2D2A9BB2
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "object" "my_tilemap"
move_and_collide(move_x, move_y, my_tilemap,4,0,0,-1,-1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 139C9015
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "1"
if(move_x < 0){	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 3134150A
	/// @DnDParent : 139C9015
	/// @DnDArgument : "xscale" "-player_scale"
	/// @DnDArgument : "yscale" "0"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale = -player_scale;image_yscale += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B894C44
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "2"
if(move_x > 0){	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 4D654ADB
	/// @DnDParent : 3B894C44
	/// @DnDArgument : "xscale" "player_scale"
	/// @DnDArgument : "yscale" "0"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale = player_scale;image_yscale += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C898763
/// @DnDArgument : "var" "jump_cd"
/// @DnDArgument : "not" "1"
if(!(jump_cd == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DD33287
	/// @DnDParent : 5C898763
	/// @DnDArgument : "expr" "- (1 / 60)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "jump_cd"
	jump_cd += - (1 / 60);}