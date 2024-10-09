/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 55F31798
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "value" "keyboard_check(ord("D")) - keyboard_check(ord("A"))"
var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 045BC01A
/// @DnDArgument : "expr" "move_x * movement_speed"
/// @DnDArgument : "var" "move_x"
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
	var l314040D5_0;l314040D5_0 = keyboard_check(vk_space);if (l314040D5_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F3531C1
		/// @DnDParent : 314040D5
		/// @DnDArgument : "var" "jump_cd"
		if(jump_cd == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12A1267E
			/// @DnDInput : 2
			/// @DnDParent : 0F3531C1
			/// @DnDArgument : "expr" "-jump_speed"
			/// @DnDArgument : "expr_1" "2"
			/// @DnDArgument : "var" "move_y"
			/// @DnDArgument : "var_1" "jump_cd"
			move_y = -jump_speed;
			jump_cd = 2;}}}

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
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 4;}}

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

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 326F36B4
/// @DnDArgument : "key" "ord("J")"
var l326F36B4_0;l326F36B4_0 = keyboard_check_pressed(ord("J"));if (l326F36B4_0){	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6E05BD25
	/// @DnDApplyTo : {objPlayer}
	/// @DnDParent : 326F36B4
	/// @DnDArgument : "object" "objMob1"
	/// @DnDSaveInfo : "object" "objMob1"
	with(objPlayer) {
	var l6E05BD25_0 = instance_place(0, 0, [objMob1]);
	}if ((l6E05BD25_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59207356
		/// @DnDParent : 6E05BD25
		/// @DnDArgument : "expr" " - damage"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "objMob1.hp"
		objMob1.hp +=  - damage;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F597366
/// @DnDArgument : "var" "jump_cd"
/// @DnDArgument : "not" "1"
if(!(jump_cd == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61AE1DB8
	/// @DnDParent : 5F597366
	/// @DnDArgument : "expr" "- (1 / fps)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "jump_cd"
	jump_cd += - (1 / fps);}