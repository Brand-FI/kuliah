
listChar = objPlayer.character;

var canvas_width = 1920;
var canvas_height = 1080;
var character_width = 270;
var character_height = 455;
var y_position = canvas_height - character_height - 50 + 40;


var total_characters = ds_list_size(listChar);


var total_content_width = (total_characters * character_width) + ((total_characters - 1) * 20); 
var x_start = (canvas_width - total_content_width) / 2 + 10; // atur kiri atau kanan
var spacing = 20; 


for (var i = 0; i < total_characters; i++) {
    var obj_index = ds_list_find_value(listChar, i);
    var x_position = x_start + (i * (character_width + spacing)); 
    
    instance_create_layer(x_position, y_position, "Instances", obj_index);
}
