if(combatState == true)
{
	instance_create_layer(global.participants[0].x + 138, global.participants[0].y - 190, "Instances", objButtonUp); 
	instance_create_layer(global.participants[0].x + 138, global.participants[0].y - 150, "Instances", objButtonDown);
	instance_create_layer(global.participants[0].x, global.participants[0].y - 170, "Instances", objButtonAction);
}