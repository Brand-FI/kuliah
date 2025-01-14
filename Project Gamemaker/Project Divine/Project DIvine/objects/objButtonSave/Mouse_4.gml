audio_play_sound(button_2, 1, false);

var character_list = objPlayer.character;

for (var i = 0; i < ds_list_size(character_list); i++) 
{
    var character = ds_list_find_value(character_list, i);
    if (character.selected == true) 
    {
   
        var alreadyInParty = false;
        for (var j = 0; j < array_length(global.selectedParty); j++) 
        {
            if (global.selectedParty[j] == character) 
            {
                alreadyInParty = true;
                break;
            }
        }
        
        if (!alreadyInParty && array_length(global.selectedParty) < 6) 
        {
            array_push(global.selectedParty, character);
        }
    } 
    else 
    {
        for (var j = 0; j < array_length(global.selectedParty); j++) 
        {
            if (global.selectedParty[j] == character) 
            {
                array_delete(global.selectedParty, j, 1);  
                break;
            }
        }
    }
}

room_goto(Lobby);