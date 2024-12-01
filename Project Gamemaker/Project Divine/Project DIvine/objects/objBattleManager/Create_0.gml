globalvar turnOrder;
turnOrder = false;
updateParty();

global.participants = [];

for (var i = array_length(global.party) - 1; i >= 0; i--) 
{
    if (global.party[i].hp > 0) 
    {
        array_push(global.participants, global.party[i]);
    } 
    else 
    {
        array_delete(global.party, i, 1);
    }
}


for (var j = 0; j < array_length(currentEnemy); j++) {
    array_push(global.participants, currentEnemy[j]);
}



// Hitung action value awal
for (var k = 0; k < array_length(global.participants); k++) {
    global.participants[k].action_value = 10000 / global.participants[k].spd;
}

// Urutkan berdasarkan action value
array_sort(global.participants, function(a, b) {
    return a.action_value - b.action_value;
});

// Tentukan turn pertama
if (global.participants[0].team == "character") 
{
	global.participants[0].ManaRegen(); // Mana regen setiap turn dimulai
    instance_create_layer(global.participants[0].x, global.participants[0].y, "Instances", objTurnOrder);
} 
else 
{
   attack_random()
}
