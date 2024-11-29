y = 550;

globalvar dmgColor;

name = "Levina";
max_health = 12000;
hp = max_health;
spd = 100
attack = 500;
skills = [];
level = 1;
team = "enemy";
turn_sprite = spr_turn_levina;

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
		dmgColor = c_gray;
		instance_create_depth
		(
			target.x,
			target.y - 170,
			-100,
			objBattleText,
			{font: FontDamage, col: dmgColor, text: string(damage)}
		);
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
		dmgColor = c_gray;
		instance_create_depth
		(
			target.x,
			target.y - 170,
			-100,
			objBattleText,
			{font: FontDamage, col: dmgColor, text: string(damage)}
		);
    }	
}
