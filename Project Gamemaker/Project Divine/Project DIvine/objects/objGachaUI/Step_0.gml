
 
if (currentIndex == array_length(myArray)) {
   instance_destroy();
    gachaState = false;
	objGachaBanner.visible = true;
	objButton10Pull.visible = true;
	objButton1Pull.visible = true;
	objDisplayRemnant.visible = true;
	objButton10Pull.alarm[0] = room_speed * 1;
	objButton1Pull.alarm[0] = room_speed * 1;
}
if (fade_out) {
    fade_alpha += 0.95; // FADE SPEED
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        fade_out = false;


        var bg = layer_get_id("Background");
        var bgid = layer_background_get_id(bg);
        layer_background_sprite(bgid, new_bg_sprite);

        fade_in = true; 
    }
}

if (fade_in) {
    fade_alpha -= 0.05; 
    if (fade_alpha <= 0) {
        fade_alpha = 0;
        fade_in = false; 
    }
}

if (keyCooldown > 0) {
        keyCooldown--;
}




