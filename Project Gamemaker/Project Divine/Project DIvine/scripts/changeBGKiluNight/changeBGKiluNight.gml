
function changeBGKiluNight() {

    fade_out = true;
    fade_alpha = 0; 


    var rdm = irandom(6);


    if (rdm == 0) new_bg_sprite = kPlainNight1;
    else if (rdm == 1) new_bg_sprite = kPlainNight2;
    else if (rdm == 2) new_bg_sprite = kPlainNight3;
    else if (rdm == 3) new_bg_sprite = kPlainNight4;
    else if (rdm == 4) new_bg_sprite = kPlainNight5;
    else new_bg_sprite = kPlainNight6;

}
