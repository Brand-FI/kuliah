countMove = 0;
changeBGKiluDay();


// Inisialisasi global struct untuk party
global.party = [];

// Mendefinisikan karakter dalam party dengan HP dan Mana
// Mendefinisikan karakter dalam party dengan HP dan Mana
global.party[0] = { name: "Ayaka", sprite: spr_ayaka, health: 100, max_health: 100, mana: 50, max_mana: 50, attack: 12, skills: ["Skill1", "Skill2"], level: 1, inventory: [] };
global.party[1] = { name: "Charlotte", sprite: spr_charlotte, health: 90, max_health: 90, mana: 60, max_mana: 60, attack: 11, skills: ["Skill3", "Skill4"], level: 1, inventory: [] };
global.party[2] = { name: "Furina", sprite: spr_furina, health: 85, max_health: 85, mana: 70, max_mana: 70, attack: 14, skills: ["Skill5", "Skill6"], level: 1, inventory: [] };
global.party[3] = { name: "Raiden", sprite: spr_raiden, health: 95, max_health: 95, mana: 80, max_mana: 80, attack: 13, skills: ["Skill7", "Skill8"], level: 1, inventory: [] };
global.party[4] = { name: "Kazuha", sprite: spr_kazuha, health: 80, max_health: 80, mana: 90, max_mana: 90, attack: 15, skills: ["Skill9", "Skill10"], level: 1, inventory: [] };
global.party[5] = { name: "Itto", sprite: spr_itto, health: 110, max_health: 110, mana: 40, max_mana: 40, attack: 16, skills: ["Skill11", "Skill12"], level: 1, inventory: [] };

// Indeks karakter aktif
global.active_character_index = 0; // Karakter pertama aktif secara default



