if (objButton10Pull.state == true)
{
    var hasilGacha = gachaPull(10);
    for (var i = 0; i < array_length(hasilGacha); i++)
    {
        var result = hasilGacha[i];

        if (is_undefined(result)) continue; 
        if (variable_instance_exists(result, "team") && result.team == "character")
        {
            ds_list_add(objPlayer.character, result);  
        }
    }
    alarm[0] = room_speed * 1;
	objButton10Pull.state = false;
}
else if(objButton1Pull.state == true)
{
    var hasilGacha = gachaPull(1);
    for (var i = 0; i < array_length(hasilGacha); i++)
    {
        var result = hasilGacha[i];

        if (is_undefined(result)) continue; 
        if (variable_instance_exists(result, "team") && result.team == "character")
        {
            ds_list_add(objPlayer.character, result);  
        }
    }
    alarm[0] = room_speed * 1;	
	objButton1Pull.state = false;
}
