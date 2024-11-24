if (combatState = true) {
    var display_limit = 6;      // Jumlah karakter
    var start_x = 55;          // Posisi awal di X
    var start_y = 40;          // Posisi awal di Y
    var box_width = 120;         // Lebar kotak
    var box_height = 90;        // Tinggi kotak
    var spacing = 20;           // Jarak

    // Looping untuk menggambar kotak dan semua prite karakter dalam turn order
    for (var i = 0; i < min(display_limit, array_length(global.participants)); i++) {
        var actor = global.participants[i];
        var pos_x = start_x;
        var pos_y = start_y + i * (box_height + spacing); // Tampilkan secara vertikal

        // jika karakter turn awal 
        if (i == 0) {
            // Gambar border hitam lebih besar untuk karakter saat ini
            draw_rectangle(pos_x - 2, pos_y - 2, pos_x + box_width + 2, pos_y + box_height + 2, false);
        }

        // Gambar kotak sebagai latar belakang
        draw_rectangle(pos_x, pos_y, pos_x + box_width, pos_y + box_height, false);

        // Gambar sprite karakter dengan skala sesuai kotak
        var sprite_scale_x = box_width / sprite_get_width(actor.sprite_index);
        var sprite_scale_y = box_height / sprite_get_height(actor.sprite_index);
        draw_sprite_ext(actor.sprite_index, 0, pos_x + box_width / 2, pos_y + box_height / 2, 
                        sprite_scale_x, sprite_scale_y, 0, c_white, 1);

        // Tampilkan informasi karakter (nama dan action value) di sebelah kanan gambar
        var text_offset_x = pos_x + box_width + 10; 
        draw_text(text_offset_x, pos_y, actor.name);          
        draw_text(text_offset_x, pos_y + 20, "Action Value: " + string(actor.action_value)); // Action value di bawah nama
    }
}
