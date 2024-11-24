
if (turnOrder = false)
{
		// Masukkin party ke participant
	global.participants = [];  
	    for (var i = 0; i < array_length(global.party); i++) {
	        global.participants[array_length(global.participants)] = global.party[i];
	    }

	// semua party + enemy
	array_push(global.participants, currentEnemy[0]);

	// atur speed
	for (var i = 0; i < array_length(global.participants); i++) {
	    global.participants[i].action_value = 10000 / global.participants[i].spd;
	}

	// remove participant yang mati
	global.participants = array_filter(global.participants, function(member) {
	    return member.hp > 0;
	});

	// atur kembali participant yang masih hidup dan musuh yang hidup
	var players_alive = [];
	var enemies_alive = [];

	for (var i = 0; i < array_length(global.participants); i++) {
	    if (global.participants[i].team == "character") {
	        array_push(players_alive, global.participants[i]);
	    } else {
	        array_push(enemies_alive, global.participants[i]);
	    }
	}


	// jika participant tidak ada maka selesai
	if (array_length(players_alive) == 0 || array_length(enemies_alive) == 0) {
	    combatState = false;
	    return;
	}

	// Sort participants action value dari terkecil
	array_sort(global.participants, function(a, b) {
	    return a.action_value - b.action_value;
	});
	
	turnOrder = true;
	instance_create_layer(960,360, "Instances", objTurnOrder);
	
	
}