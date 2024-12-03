function createParty() {
    global.party = [];

    var character_list = objPlayer.character; 
    
    for (var i = 0; i < ds_list_size(character_list); i++) 
	{
        var character = ds_list_find_value(character_list, i); 
        
        array_push(global.party, character);
    }

    var spacing = 90;
    var start_x = (room_width - (190 * array_length(global.party) + spacing * (array_length(global.party) - 1))) / 2;
    var start_y = room_height - 215;

    for (var i = 0; i < array_length(global.party); i++) 
	{
        var char_x = start_x + (230 + spacing) * i; 
        var char_y = start_y + 100;               

        var character = instance_create_layer(char_x, char_y, "Instances", global.party[i]);

        character.visible = false;
    }
}
