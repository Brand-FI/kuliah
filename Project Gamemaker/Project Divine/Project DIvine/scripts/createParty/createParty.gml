function createParty() {
    global.party = [];

    // Iterate through the ds_list in objPlayer.character
    var character_list = objPlayer.character; // Assuming this is a ds_list or array
    
    for (var i = 0; i < ds_list_size(character_list); i++) {
        var character = ds_list_find_value(character_list, i); // Get the object from the list
        
        // Manually add the character to the global party
        array_push(global.party, character);
    }

    var spacing = 90;
    var start_x = (room_width - (190 * array_length(global.party) + spacing * (array_length(global.party) - 1))) / 2;
    var start_y = room_height - 215;

    // Create instances based on the global.party list
    for (var i = 0; i < array_length(global.party); i++) {
        var char_x = start_x + (230 + spacing) * i; 
        var char_y = start_y + 100;               

        // Create an instance for each character in global.party
        var character = instance_create_layer(char_x, char_y, "Instances", global.party[i]);

        character.visible = false;
    }
}
