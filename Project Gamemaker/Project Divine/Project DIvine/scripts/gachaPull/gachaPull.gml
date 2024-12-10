function gachaPull(numberPull)
{
	audio_play_sound(flap, 1, false);
    var results = [];
    for (var i = 0; i < numberPull; i++)
    {
        results[i] = gacha_pull();
    }
    return results;
}

function gacha_pull()
{
    var gacha = objPlayer;
    gacha.pity_counter++;

    if (gacha.pity_counter == gacha.max_pity)
    {
        if (gacha.rate_gacha == false)
        {
            randomize();
            var rdm = random(1);
            if (rdm == 0)
            {
                if (ds_list_find_index(gacha.character, objLin) == -1)
                {
                    ds_list_add(gacha.character, objLin);
                    gacha.pity_counter = 0;
                    gacha.rate_gacha = false;
                    return objLin;
                }
                else
                {
				    var rdm = irandom_range(5, 10);
				    gacha.remnant += rdm;
                    gacha.pity_counter = 0;
                    gacha.rate_gacha = true;
                    return objRemnant;
                }
            }
            else
            {
                var newChar = randomChar();
                if (ds_list_find_index(gacha.character, newChar) == -1)
                {
                    ds_list_add(gacha.character, newChar);
                    gacha.pity_counter = 0;
                    gacha.rate_gacha = true;
                    return newChar;
                }
                else
                {
				    var rdm = irandom_range(5, 10);
				    gacha.remnant += rdm;
                    gacha.pity_counter = 0;
                    gacha.rate_gacha = true;
                    return objRemnant;
                }
            }
        }
        else
        {
            if (ds_list_find_index(gacha.character, objLin) == -1)
            {
                ds_list_add(gacha.character, objLin);
                gacha.pity_counter = 0;
                gacha.rate_gacha = false;
                return objLin;
            }
            else
            {
			    var rdm = irandom_range(5, 10);
			    gacha.remnant += rdm;
                gacha.pity_counter = 0;
                gacha.rate_gacha = false;
                return objRemnant;
            }
        }
    }

    var roll = irandom(99);
    if (roll <= 4)
    {
        if (gacha.rate_gacha == false)
        {
            randomize();
            var rdm = irandom(1);
            if (rdm == 0)
            {
                if (ds_list_find_index(gacha.character, objLin) == -1)
                {
                    ds_list_add(gacha.character, objLin);
                    gacha.pity_counter = 0;
                    gacha.rate_gacha = false;
                    return objLin;
                }
                else
                {
			        var rdm = irandom_range(5, 10);
			        gacha.remnant += rdm;
                    return objRemnant;
                }
            }
            else
            {
                var newChar = randomChar();
                if (ds_list_find_index(gacha.character, newChar) == -1)
                {
                    ds_list_add(gacha.character, newChar);
                    gacha.pity_counter = 0;
                    gacha.rate_gacha = true;
                    return newChar;
                }
                else
                {
			        var rdm = irandom_range(5, 10);
			        gacha.remnant += rdm;
                    return objRemnant;
                }
            }
        }
        else
        {
            if (ds_list_find_index(gacha.character, objLin) == -1)
            {
                ds_list_add(gacha.character, objLin);
                gacha.pity_counter = 0;
                gacha.rate_gacha = false;
                return objLin;
            }
            else
            {
                gacha.remnant += 5;
                return objRemnant;
            }
        }
    }
    else
    {
        var rdm = irandom_range(5, 10);
        gacha.remnant += rdm;
        return objRemnant;
    }
}

function randomChar()
{
    randomize();
    var rdm = irandom(3);
    if (rdm == 0)
    {
        return objFarouk;
    }
    else if (rdm == 1)
    {
        return objAlba;
    }
    else if (rdm == 2)
    {
        return objOrtem;
    }
    else
    {
        return objChrome;
    }
}
