function drawParty() {
    var spacing = 90;
    var start_x = (room_width - (192 * array_length(global.party) + spacing * (array_length(global.party) - 1))) / 2;
    var start_y = room_height - 270;

    if (global.party != undefined && array_length(global.party) > 0) {
        for (var i = 0; i < array_length(global.party); i++) {
            var character = global.party[i];

            if (instance_exists(character)) {
			

                draw_sprite(character.banner_sprite, 0, start_x + (230 + spacing) * i, (start_y + 100));
                // draw frame
				draw_sprite(spr_player_frame, 0, start_x + (230 + spacing) * i, start_y + 105);

                // draw nama character
                draw_set_font(FontSilverLarge);
                draw_set_color(c_white); // Set color for text
				/*
				TESTING
                draw_text((start_x - 30) + (230 + spacing) * i, start_y , character.name);
				*/ 
				
                // draw Health bar
				var hp_percentage = (character.hp / character.max_health) * 100;
                draw_healthbar(
                    (start_x - 132) + (230 + spacing) * i, 
                    start_y + 158, 
                    (start_x - 100) + (230 + spacing) * i + 233, 
                    start_y + 188, 
                    hp_percentage,
                    c_black, c_red, c_lime, 0, true, true
                );

                // HP text
                draw_set_font(FontSilver);
                draw_set_color(c_white); // ganti warna text
                draw_text((start_x - 50) + (230 + spacing) * i, start_y + 163, "HP: " + string(character.hp) + "/" + string(character.max_health));

                // Mana bar
                var mana_percentage = (character.mana / character.max_mana) * 100;
                draw_healthbar(
                    (start_x - 133) + (230 + spacing) * i,
                    start_y + 210,
                    (start_x - 100) + (230 + spacing) * i + 233,
                    start_y + 240,
                    mana_percentage,
                    c_black, c_blue, c_blue, 0, true, true
                );

                // MP text
                draw_set_color(c_white); // Set color for text
                draw_text((start_x - 50) + (230 + spacing) * i, start_y + 215, "MP: " + string(character.mana) + "/" + string(character.max_mana));				draw_sprite(spr_player_frame, 0, start_x + (230 + spacing) * i, start_y + 105);
            }
        }
    }
}