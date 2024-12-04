draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(FontSilverLarge);
if (mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height)
{
	if(countWolf < 1 || countGhoul < 1)
	{
		draw_text(x + 250, y + 50, "UNLOCK THIS MAP");
		draw_text(x + 180, y + 250, "Wolf: " + string(countWolf) + "/1");
		draw_text(x + 320, y + 250, "Ghoul: " + string(countGhoul) + "/1");

	}
}