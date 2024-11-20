if (fade_out) {
    fade_alpha += 0.05; // FADE SPEED
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        fade_out = false;


        var bg = layer_get_id("Background_Game");
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

// Cooldown pencet W berkurang setiap step / frame
if (wKeyCooldown > 0) {
        wKeyCooldown--;
}



