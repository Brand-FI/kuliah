// Draw Event di obj_control
var spacing = 20; // Jarak antar karakter
var start_x = (room_width - (216 * array_length(global.party) + spacing * (array_length(global.party) - 1))) / 2; // Posisi awal X agar karakter terpusat
var start_y = room_height - 250; // Posisi Y hampir di bawah layar

// Menggambar setiap karakter dalam party secara horizontal
for (var i = 0; i < array_length(global.party); i++) {
    var character = global.party[i];
    
    // Menggambar sprite karakter
    draw_sprite(character.sprite, 0, start_x + (216 + spacing) * i, start_y); // Gambar sprite karakter

    // Menghitung presentase HP dan MP
    var hp_percentage = (character.health / character.max_health) * 100;
    var mp_percentage = (character.mana / character.max_mana) * 100;

    // Menggambar HP bar
    var hp_x = start_x + (216 + spacing) * i - 100; // Posisi HP bar
    var hp_y = start_y + 220; // Posisi Y HP bar
    draw_healthbar(hp_x, hp_y, 200, 20, hp_percentage, c_black, c_red, c_lime, 0, true, true);

    // Menggambar MP bar
    var mp_x = start_x + (216 + spacing) * i - 100; // Posisi MP bar
    var mp_y = start_y + 240; // Posisi Y MP bar
    draw_healthbar(mp_x, mp_y, 200, 20, mp_percentage, c_black, c_blue, c_lime, 0, true, true);
}
