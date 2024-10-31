drawParty();

// Step 2: Draw the room's normal content first
draw_self();

// Step 3: Draw the fade overlay at 1920 x 1080 above everything else
// Draw the fade overlay at 1920 x 1080 above everything else
if (fade_alpha > 0) {
    draw_set_color(c_black);
    draw_set_alpha(fade_alpha);
    draw_rectangle(0, 0, 1920, 1080, false); // Adjust size if needed

    // Reset draw settings to default
    draw_set_alpha(1);
    draw_set_color(c_white); // Or whatever default color you need for other elements
}
