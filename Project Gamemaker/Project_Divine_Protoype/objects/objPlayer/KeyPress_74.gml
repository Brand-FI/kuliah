/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 299403E7
/// @DnDApplyTo : {objPlayer}
/// @DnDArgument : "object" "objMob1"
/// @DnDSaveInfo : "object" "objMob1"
with(objPlayer) {
var l299403E7_0 = instance_place(0, 0, [objMob1]);
}if ((l299403E7_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F4610DC
	/// @DnDParent : 299403E7
	/// @DnDArgument : "expr" "-damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "objMob1.health"
	objMob1.health += -damage;}