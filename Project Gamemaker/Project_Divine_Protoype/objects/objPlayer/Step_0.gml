/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 78CE69F8
/// @DnDArgument : "var" "anim_run"
/// @DnDArgument : "value" "true"
if(anim_run == true){	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7D5A0F45
	/// @DnDParent : 78CE69F8
	/// @DnDArgument : "speed" "3"
	image_speed = 3;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7196DD98
else{	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 49EB77D3
	/// @DnDParent : 7196DD98
	/// @DnDArgument : "speed" "0"
	image_speed = 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6FEC68E4
/// @DnDApplyTo : all
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" ""
/// @DnDArgument : "object" "objPlayer"
/// @DnDSaveInfo : "object" "objPlayer"
with(all) {
var l6FEC68E4_0 = instance_place(x + 0, y + 0, [objPlayer]);
}if ((l6FEC68E4_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 5585BBAD
	/// @DnDParent : 6FEC68E4
	/// @DnDArgument : "force" "grav_player"
	gravity = grav_player;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6AC9A83F
else{	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 1A029249
	/// @DnDParent : 6AC9A83F
	/// @DnDArgument : "force" "0"
	gravity = 0;}