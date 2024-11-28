draw_self();  

// damage diterima
if (show_damage) {
    var text_x = x + 300;
    var text_y = y - 120;

	draw_set_font(FontDamage);
    draw_set_color(c_white); 
    draw_text(text_x, text_y, string(damageDiterima)); 
}
