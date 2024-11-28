draw_self();  


if (show_damage) {
    var text_x = x + 300;
    var text_y = y - 120;

    draw_set_font(FontDamage);
    
	//text stroke
    draw_set_color(c_black);
    draw_text(text_x - 2, text_y - 2, string(damageDiterima));
    draw_text(text_x + 2, text_y - 2, string(damageDiterima));
    draw_text(text_x - 2, text_y + 2, string(damageDiterima));
    draw_text(text_x + 2, text_y + 2, string(damageDiterima));

    draw_set_color(dmgColor); 
    draw_text(text_x, text_y, string(damageDiterima));

    draw_set_color(c_white);
}
