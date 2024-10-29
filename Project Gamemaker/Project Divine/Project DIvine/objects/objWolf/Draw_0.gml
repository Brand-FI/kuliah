// Draw the wolf's sprite
draw_self();

// Calculate health percentage
var pc = (hpWolf / max_hpWolf) * 100;

// Draw the health bar 120 pixels above the character sprite
draw_healthbar(x - 280, y - 120, x + 280, y - 100, pc, c_black, c_red, c_lime, 0, true, true);
