if(objPlayer.remnant >= 160)
{
	objPlayer.remnant -= 160;
	objGachaBanner.visible = false;
	objButton1Pull.state = true;
	instance_create_depth(960, 540, -1, objGachaLogic);
}