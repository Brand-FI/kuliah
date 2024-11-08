// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function combatSystem(){
	
 var participants = [];

    // Add all party members from global.party to participants
    for (var i = 0; i < array_length(global.party); i++) {
        participants[array_length(participants)] = global.party[i];
    }
	
	participants[array_length(participants)] = currentEnemy[1];

	var action_value = 0;
	var action_values_initialized = false;
    // Initialize action values if not done already
    if (!action_values_initialized) {
        for (var i = 0; i < array_length(participants); i++) {
            participants[i].action_value = 10000 / participants[i].spd;
        }
        action_values_initialized = true;
    }

    // Remove defeated participants
    participants = array_filter(participants, function(member) 
	{
        return member.hp > 0;
    });
	
	var players_alive = []; // Initialize an empty array
	var enemies_alive = [];

	for (var i = 0; i < array_length(participants); i++) 
	{
		if(participants[i].team == "character")
		{
			players_alive[i] = participants[i];
		}
		else
		{
			enemies_alive[i] = participants[i];
		}
    }
	   if (array_length(players_alive) == 0 || array_length(enemies_alive) == 0) {
        combatState = false; // End the battle if either side has no members left
        return; // Exit early to avoid further processing
    }

    // Sort participants by action_value (lowest goes first)
    array_sort(participants, function(a, b) {
        return a.action_value - b.action_value;
    });

    // Process the turn for the participant with the lowest action_value
    var current_actor = participants[0];
    if (current_actor.action_value <= 0) {
        // Process action for the current_actor (e.g., attack or use skill)
        current_actor.take_action();

        // Update action value for the next turn
        current_actor.action_value += 10000 / current_actor.spd;

        // Re-sort participants to update turn order
        array_sort(participants, function(a, b) {
            return a.action_value - b.action_value;
        });
		
	
	}
}