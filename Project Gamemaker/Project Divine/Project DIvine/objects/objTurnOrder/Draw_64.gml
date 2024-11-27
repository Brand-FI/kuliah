if (combatState == true) {
    var display_limit = 7;      // Max number of characters to display
    var start_x = 145;          // Starting X position
    var start_y = 60;          // Starting Y position
    var spacing = 20;          // Spacing between sprites (vertical)

    // Loop through participants to draw their turn-order sprites
    for (var i = 0; i < min(display_limit, array_length(global.participants)); i++) {
        var actor = global.participants[i];
        var pos_x = start_x;
        var pos_y = start_y + i * (sprite_get_height(actor.turn_sprite) + spacing); // Adjust position vertically

        // If it's the first character in the turn order (current turn)
        if (i == 0) {
            // Optional: Highlight or emphasize the first sprite (e.g., draw border or use effects)
            draw_sprite_ext(actor.turn_sprite, 0, pos_x, pos_y, 1.1, 1.1, 0, c_white, 1); // Slightly larger sprite
        } else {
            // Draw sprite normally for others
            draw_sprite(actor.turn_sprite, 0, pos_x, pos_y);
        }
    }
}
