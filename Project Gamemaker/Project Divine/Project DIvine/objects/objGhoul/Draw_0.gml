draw_self();
start_x = 50
start_y = 50
spacing = 20
i = 5
var hp_percentage = (hp / max_health) * 100;
                draw_healthbar(
                    (start_x - 132) + (230 + spacing) * i, 
                    start_y + 158, 
                    (start_x - 100) + (230 + spacing) * i + 233, 
                    start_y + 188, 
                    hp_percentage,
                    c_black, c_red, c_lime, 0, true, true
                );

