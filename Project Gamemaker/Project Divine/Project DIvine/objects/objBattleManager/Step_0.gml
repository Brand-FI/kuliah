// Add all party members from global.party to participants
global.participants = [];  // Ensure the participants list starts empty
for (var i = 0; i < array_length(global.party); i++) {
    array_push(global.participants, global.party[i]);
}

// Add the current enemy to participants
array_push(global.participants, currentEnemy[1]);

// Initialize action values based on speed
for (var i = 0; i < array_length(global.participants); i++) {
    global.participants[i].action_value = 10000 / global.participants[i].spd;
}

// Remove defeated participants
global.participants = array_filter(global.participants, function(member) {
    return member.hp > 0;
});

// Initialize arrays for alive players and enemies
var players_alive = [];
var enemies_alive = [];

for (var i = 0; i < array_length(global.participants); i++) {
    if (global.participants[i].team == "character") {
        array_push(players_alive, global.participants[i]);
    } else {
        array_push(enemies_alive, global.participants[i]);
    }
}

// End combat if either side has no participants left
if (array_length(players_alive) == 0 || array_length(enemies_alive) == 0) {
    combatState = false;
    return;
}

// Sort participants by action_value (lowest goes first)
array_sort(global.participants, function(a, b) {
    return a.action_value - b.action_value;
});

// Process the turn for the participant with the lowest action_value
var current_actor = global.participants[0];
if (current_actor.action_value <= 0) {
    // Process action for the current_actor (e.g., attack or use skill)
    current_actor.take_action();

    // Update action value for the next turn
    current_actor.action_value += 10000 / current_actor.spd;

    // Re-sort participants to update turn order
    array_sort(global.participants, function(a, b) {
        return a.action_value - b.action_value;
    });
}
