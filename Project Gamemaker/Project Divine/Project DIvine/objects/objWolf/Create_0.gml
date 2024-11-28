y = 640;

damageDiterima = 0;         
globalvar show_damage;
globalvar dmgColor;
show_damage = false;
	
name = "Wolf";
max_health = 4500;
hp = max_health;
spd = 120
attack = 250;
skills = [];
level = 1;
team = "enemy";
turn_sprite = spr_turn_wolf;

function NormalAttack()
{
    randomize();  
    var arrPlayer = [];

    for (var i = 1; i < array_length(global.participants); i++) {
        if (global.participants[i].team == "character") {
            array_push(arrPlayer, i);  
        }
    }
    if (array_length(arrPlayer) > 0) {

        var rdm = irandom(array_length(arrPlayer) - 1); 
        var target = global.participants[arrPlayer[rdm]];
        var damage = attack * 0.5;
        target.hp -= damage;  
    }	
}
function SpecialAttack()
{
	    randomize();  
    var arrPlayer = [];

    for (var i = 1; i < array_length(global.participants); i++) {
        if (global.participants[i].team == "character") {
            array_push(arrPlayer, i);  
        }
    }
    if (array_length(arrPlayer) > 0) {

        var rdm = irandom(array_length(arrPlayer) - 1); 
        var target = global.participants[arrPlayer[rdm]];
        var damage = attack * 1;
        target.hp -= damage;  
    }	
}
