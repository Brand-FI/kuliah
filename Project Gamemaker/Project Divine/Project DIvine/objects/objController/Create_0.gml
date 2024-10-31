
wKeyCooldown = 0; 
wKeyCooldownTime = 60; // Cooldown duration (in steps)



countStep = 0;
fade_out = false;
fade_in = false;
fade_alpha = 0;
new_bg_sprite = noone; 


// Initialize the global party array
global.party = [];

// Define each character's stats in the global party array
global.party[0] = { name: "Ayaka", health: 1000, max_health: 1000, mana: 50, max_mana: 50, attack: 12, skills: ["Skill1", "Skill2"], level: 1, inventory: [] };
global.party[1] = { name: "Charlotte", health: 900, max_health: 900, mana: 60, max_mana: 60, attack: 11, skills: ["Skill3", "Skill4"], level: 1, inventory: [] };
global.party[2] = { name: "Furina", health: 850, max_health: 850, mana: 70, max_mana: 70, attack: 14, skills: ["Skill5", "Skill6"], level: 1, inventory: [] };
global.party[3] = { name: "Raiden", health: 950, max_health: 950, mana: 80, max_mana: 80, attack: 13, skills: ["Skill7", "Skill8"], level: 1, inventory: [] };
global.party[4] = { name: "Kazuha", health: 800, max_health: 800, mana: 90, max_mana: 90, attack: 15, skills: ["Skill9", "Skill10"], level: 1, inventory: [] };
global.party[5] = { name: "Itto", health: 1100, max_health: 1100, mana: 40, max_mana: 40, attack: 16, skills: ["Skill11", "Skill12"], level: 1, inventory: [] };

// Set the index of the active character
global.active_character_index = 0;
