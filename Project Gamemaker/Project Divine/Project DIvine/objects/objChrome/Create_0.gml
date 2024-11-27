name = "Chrome";
hp  = 1000;
max_health = 1000;
mana = 50;
max_mana = 50;
spd = 120
attack = 10;
skills = [];
level = 1;
team = "character";

banner_sprite = spr_banner_chrome;
turn_sprite = spr_turn_chrome;

function NormalAttack()
{
		for (var i = 0; i < array_length(global.participants); i++) 
		{
		    if (global.participants[i].team == "enemy") 
			{
				var damage = attack * 30
				global.participants[i].hp -= damage;
			}
		}
}