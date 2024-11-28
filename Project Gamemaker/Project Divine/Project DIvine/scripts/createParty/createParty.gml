function createParty() 
{
    global.party = [];

    var character_list = [objLin, objAlba, objOrtem, objFarouk, objChrome, objNoah];


    var spacing = 90;
    var start_x = (room_width - (190 * array_length(character_list) + spacing * (array_length(character_list) - 1))) / 2;
    var start_y = room_height - 215;


    for (var i = 0; i < array_length(character_list); i++) {
        var char_x = start_x + (230 + spacing) * i; 
        var char_y = start_y + 100;               

        var character = instance_create_layer(char_x, char_y, "Instances", character_list[i]);

        // Set karakter agar tidak terlihat
        character.visible = false;

        array_push(global.party, character);
    }
}
