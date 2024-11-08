if (combatState) {
    var display_limit = 5;      // Jumlah karakter yang ditampilkan dalam turn order
    var start_x = 75;          // Posisi awal di sumbu X
    var start_y = 80;          // Posisi awal di sumbu Y (vertikal)
    var box_width = 120;         // Lebar kotak
    var box_height = 90;        // Tinggi kotak
    var spacing = 20;           // Jarak antar kotak

    // Looping untuk menggambar kotak dan sprite karakter dalam turn order
    for (var i = 0; i < min(display_limit, array_length(global.participants)); i++) {
        var actor = global.participants[i];
        var pos_x = start_x;
        var pos_y = start_y + i * (box_height + spacing); // Tampilkan secara vertikal

        // Tentukan apakah ini karakter saat ini
        if (i == 0) {
            // Gambar border hitam lebih besar untuk karakter saat ini
            draw_rectangle(pos_x - 2, pos_y - 2, pos_x + box_width + 2, pos_y + box_height + 2, false);
        }

        // Gambar kotak sebagai latar belakang (warna putih atau warna sesuai kebutuhan)
        draw_rectangle(pos_x, pos_y, pos_x + box_width, pos_y + box_height, false);

        // Gambar sprite karakter dengan skala sesuai ukuran kotak
        var sprite_scale_x = box_width / sprite_get_width(actor.sprite_index);
        var sprite_scale_y = box_height / sprite_get_height(actor.sprite_index);
        draw_sprite_ext(actor.sprite_index, 0, pos_x + box_width / 2, pos_y + box_height / 2, 
                        sprite_scale_x, sprite_scale_y, 0, c_white, 1);

        // Tampilkan informasi karakter (nama dan action value) di sebelah kanan gambar
        var text_offset_x = pos_x + box_width + 10; // Jarak dari kotak gambar ke teks
        draw_text(text_offset_x, pos_y, actor.name);                     // Nama di sebelah kanan
        draw_text(text_offset_x, pos_y + 20, "Action Value: " + string(actor.action_value)); // Action value di bawah nama
    }
}
