
	if (fade_alpha > 0) {
	draw_self();
    draw_set_color(c_black);
    draw_set_alpha(fade_alpha);
    draw_rectangle(0, 0, 1920, 1080, false); // bikin efek fade

    // reset 
    draw_set_alpha(1);
    draw_set_color(c_white);
}