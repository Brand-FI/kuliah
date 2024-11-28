if (combatState == true) 
{
    var display_limit = 7;     
    var start_x = 145;         
    var start_y = 60;       
    var spacing = 20;        

    for (var i = 0; i < min(display_limit, array_length(global.participants)); i++) {
        var actor = global.participants[i];
        var pos_x = start_x;
        var pos_y = start_y + i * (sprite_get_height(actor.turn_sprite) + spacing); 
        if (i == 0) {
            draw_sprite_ext(actor.turn_sprite, 0, pos_x, pos_y, 1.2, 1.2, 0, c_white, 1);
        } else 
		{
            draw_sprite(actor.turn_sprite, 0, pos_x, pos_y);
        }
    }
}
