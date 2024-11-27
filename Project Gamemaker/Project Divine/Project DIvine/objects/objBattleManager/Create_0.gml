globalvar turnOrder;
turnOrder = false;


global.participants = [];



// Masukkan party dan musuh ke array participants
for (var i = 0; i < array_length(global.party); i++) {
    array_push(global.participants, global.party[i]);
}

for (var j = 0; j < array_length(currentEnemy); j++) {
    array_push(global.participants, currentEnemy[j]);
}

//pengecekan apakah di party ada yang mati
for (var i = array_length(global.participants) - 1; i >= 0; i--) 
{
	if (global.participants[i].hp <= 0) 
	{
	 array_delete(global.participants, i, 1);
	}
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
   turnOrder = true;
}
