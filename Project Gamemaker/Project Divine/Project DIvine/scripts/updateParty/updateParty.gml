function updateParty() 
{
    var spacing = 90;
    var start_x = (room_width - (192 * array_length(global.party) + spacing * (array_length(global.party) - 1))) / 2;
    var start_y = room_height - 270;

    for (var i = 0; i < array_length(global.party); i++) 
	{
        var character = global.party[i];
        var char_x = start_x + (230 + spacing) * i;
        var char_y = start_y + 150; 
        if (instance_exists(character)) 
		{
            character.x = char_x;
            character.y = char_y;
        }
    }
}
