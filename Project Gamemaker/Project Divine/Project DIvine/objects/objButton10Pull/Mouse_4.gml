if(clicked == false)
{
	if(objPlayer.remnant >= 1600)
	{
		objPlayer.remnant -= 1600;
		objGachaBanner.visible = false;
		objButton10Pull.state = true;
		instance_create_depth(960, 540, 1, objGachaLogic);
		clicked = true;
	}	
}