
draw_self();


var hp_percentage = (hp / max_health) * 100; 
var bar_x1 = x - 115; 
var bar_y1 = y + sprite_height + 10; 
var bar_x2 = x + 115; 
var bar_y2 = y + sprite_height + 20; 

draw_healthbar(bar_x1, bar_y1, bar_x2, bar_y2, hp_percentage, c_black, c_red, c_lime, 0, true, true);

