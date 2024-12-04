listChar = objPlayer.character;

var canvas_width = 1920;
var canvas_height = 1080;
var character_width = 270;
var character_height = 455;
var y_position = canvas_height - character_height - 50 + 10; //geser posisi y

var total_characters = ds_list_size(listChar);

var spacing = 20;
var total_content_width = (total_characters * character_width) + ((total_characters - 1) * spacing);
var x_start = (canvas_width - total_content_width) / 2 + 10; //geser kiri kanan

for (var i = 0; i < total_characters; i++) {
    var obj_index = ds_list_find_value(listChar, i);
    var x_position = x_start + (i * (character_width + spacing));
    
    var instance = instance_create_layer(x_position, y_position, "Instances", obj_index);
    
    if (instance != noone) 
	{
        instance.sprite_index = obj_index.party_sprite;
    }
}
