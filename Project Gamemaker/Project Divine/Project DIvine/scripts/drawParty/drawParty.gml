function drawParty() {
    var spacing = 90;
    var start_x = (room_width - (155 * array_length(global.party) + spacing * (array_length(global.party) - 1))) / 2;
    var start_y = room_height - 270;

    // Check if global.party is defined and is an array
    if (global.party != undefined && array_length(global.party) > 0) {
        for (var i = 0; i < array_length(global.party); i++) {
            var character = global.party[i];

            // Check if the character is a valid instance
            if (instance_exists(character)) {
			
                // Draw character's assigned sprite directly
				
                draw_sprite(character.sprite_index, 0, start_x + (180 + spacing) * i, (start_y + 30));
                // Draw frame behind character 
                draw_sprite(spr_player_frame, 0, start_x + (180 + spacing) * i, start_y + 180);

                // Draw character name
                draw_set_font(FontSilverLarge);
                draw_set_color(c_white); // Set color for text
                draw_text((start_x - 50) + (180 + spacing) * i, start_y + 120, character.name);
                // Health bar
				var hp_percentage = (character.hp / character.max_health) * 100;
                draw_healthbar(
                    (start_x - 97) + (180 + spacing) * i, 
                    start_y + 163, 
                    (start_x - 100) + (180 + spacing) * i + 195, 
                    start_y + 193, 
                    hp_percentage,
                    c_black, c_red, c_lime, 0, true, true
                );

                // HP text
                draw_set_font(FontSilver);
                draw_set_color(c_white); // Set color for text
                draw_text((start_x - 50) + (180 + spacing) * i, start_y + 168, "HP: " + string(character.hp) + "/" + string(character.max_health));

                // Mana bar
                var mana_percentage = (character.mana / character.max_mana) * 100;
                draw_healthbar(
                    (start_x - 97) + (180 + spacing) * i,
                    start_y + 203,
                    (start_x - 100) + (180 + spacing) * i + 195,
                    start_y + 233,
                    mana_percentage,
                    c_black, c_blue, c_blue, 0, true, true
                );

                // MP text
                draw_set_color(c_white); // Set color for text
                draw_text((start_x - 50) + (180 + spacing) * i, start_y + 208, "MP: " + string(character.mana) + "/" + string(character.max_mana));
            }
        }
    }
}