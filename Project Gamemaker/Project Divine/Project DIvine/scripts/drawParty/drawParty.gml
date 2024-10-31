function drawParty() {
    var spacing = 60; // Jarak antar karakter
    var start_x = (room_width - (180 * array_length(global.party) + spacing * (array_length(global.party) - 1))) / 2; // Posisi awal X agar karakter terpusat
    var start_y = room_height - 270; // Posisi Y hampir di bawah layar

    for (var i = 0; i < array_length(global.party); i++) {
        var character = global.party[i];
        draw_sprite(spr_player_frame, 0, start_x + (216 + spacing) * i, start_y + 180); // Lokasi Player Frame
        
        // Draw character sprite based on name
        switch (character.name) {
            case "Ayaka":
                draw_sprite(spr_ayaka, 0, start_x + (216 + spacing) * i, start_y);
                break;
            case "Charlotte":
                draw_sprite(spr_charlotte, 0, start_x + (216 + spacing) * i, start_y);
                break;
            case "Furina":
                draw_sprite(spr_furina, 0, start_x + (216 + spacing) * i, start_y);
                break;
            case "Raiden":
                draw_sprite(spr_raiden, 0, start_x + (216 + spacing) * i, start_y);
                break;
            case "Kazuha":
                draw_sprite(spr_kazuha, 0, start_x + (216 + spacing) * i, start_y);
                break;
            case "Itto":
                draw_sprite(spr_itto, 0, start_x + (216 + spacing) * i, start_y);
                break;
        }

        // Draw character name with a larger font
        draw_set_font(FontSilverLarge); // Set to the larger font for names
        draw_text((start_x - 50) + (216 + spacing) * i, start_y + 140, character.name); 

        // Draw health bar instead of health text
        var hp = character.health; // Current health
        var max_hp = character.max_health; // Maximum health
        var pc = (hp / max_hp) * 100; // Percentage of health

        // Drawing the health bar
        draw_healthbar(
            (start_x - 100) + (216 + spacing) * i, // x1
            start_y + 190, // y1
            (start_x - 100) + (216 + spacing) * i + 180, // x2 (width of the health bar)
            start_y + 210, // y2
            pc, // amount (percentage of health)
            c_black, // backcol
            c_red, // mincol
            c_lime, // maxcol
            0, // direction
            true, // showback
            true  // showborder
        );

        // Draw HP text using the smaller font
        draw_set_font(FontSilver); // Set to the smaller font for HP
        draw_text((start_x - 100) + (216 + spacing) * i, start_y + 190, "HP: " + string(character.health) + "/" + string(character.max_health));

        // MP
        // Draw mana bar
        var mana = character.mana; // Current mana
        var max_mana = character.max_mana; // Maximum mana
        var pc_mana = (mana / max_mana) * 100; // Percentage of mana

        draw_healthbar(
            (start_x - 100) + (216 + spacing) * i, // x1
            start_y + 215, // y1 (below health bar)
            (start_x - 100) + (216 + spacing) * i + 180, // x2 (width of the mana bar)
            start_y + 235, // y2
            pc_mana, // amount (percentage of mana)
            c_black, // backcol
            c_blue, // mincol (color when no mana)
            c_blue, // maxcol (color when full mana)
            0, // direction
            true, // showback
            true  // showborder
        );

        // Draw mana (MP) text using the smaller font
        draw_text((start_x - 100) + (216 + spacing) * i, start_y + 215, "MP: " + string(character.mana) + "/" + string(character.max_mana));
    }
}
