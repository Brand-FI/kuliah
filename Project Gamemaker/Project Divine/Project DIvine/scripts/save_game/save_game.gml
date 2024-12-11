function save_game() {
    var file = file_text_open_write("project_divine.txt");
    
    //simpan semua value angka
    file_text_write_real(file, objPlayer.remnant);
    file_text_write_real(file, objPlayer.max_pity);
    file_text_write_real(file, objPlayer.pity_counter);
    file_text_write_real(file, objPlayer.rate_gacha);
    file_text_write_real(file, countWolf);
    file_text_write_real(file, countGhoul);
    file_text_write_real(file, countWSnake);
    file_text_write_real(file, countBSnake);

    // simpan ukuran list untuk looping
    var character_list_size = ds_list_size(objPlayer.character);
    file_text_write_real(file, character_list_size); 

    // impan semua nama objek ke dalam buffer
    for (var i = 0; i < character_list_size; i++) {
        var character_obj = objPlayer.character[| i];  
        file_text_write_real(file, character_obj);     
    }

    file_text_close(file);
}


function load_game() {
    if (file_exists("project_divine.txt")) {
        var file = file_text_open_read("project_divine.txt");

        // Load semua savean angka
        objPlayer.remnant = file_text_read_real(file);
        objPlayer.max_pity = file_text_read_real(file);
        objPlayer.pity_counter = file_text_read_real(file);
        objPlayer.rate_gacha = file_text_read_real(file);
        countWolf = file_text_read_real(file);
        countGhoul = file_text_read_real(file);
        countWSnake = file_text_read_real(file);
        countBSnake = file_text_read_real(file);

        // load ukuran list
        var character_list_size = file_text_read_real(file);

        // hapus array yang dicreate
        if (ds_exists(objPlayer.character, ds_type_list)) {
            ds_list_destroy(objPlayer.character);
        }
        objPlayer.character = ds_list_create();

        // masukin semua ke array baru
        for (var i = 0; i < character_list_size; i++) {
            var character_obj_index = file_text_read_real(file); 
            ds_list_add(objPlayer.character, character_obj_index); 
        }

        file_text_close(file);
    }
}
