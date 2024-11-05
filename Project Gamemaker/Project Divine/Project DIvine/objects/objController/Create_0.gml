
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
global.party[0] = instance_create_layer(x, y, "Instances", objAyaka);
global.party[1] = instance_create_layer(x, y, "Instances", objCharlotte);
global.party[2] = instance_create_layer(x, y, "Instances", objFurina);
global.party[3] = instance_create_layer(x, y, "Instances", objRaiden);
global.party[4] = instance_create_layer(x, y, "Instances", objKazuha);
global.party[5] = instance_create_layer(x, y, "Instances", objNoah);

// Set the index of the active character
global.active_character_index = 0;
