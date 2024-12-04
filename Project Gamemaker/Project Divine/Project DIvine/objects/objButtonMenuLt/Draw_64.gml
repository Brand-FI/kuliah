draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(FontSilverLarge);
if (mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height)
{
	if(countWSnake < 1 || countBSnake < 1)
	{
		draw_text(x + 250, y + 50, "UNLOCK THIS MAP");
		draw_text(x + 150, y + 250, "White Snake: " + string(countWSnake) + "/1");
		draw_text(x + 350, y + 250, "Black Snake: " + string(countBSnake) + "/1");
		
	}
}