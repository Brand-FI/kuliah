name = "Ortem";
hp  = 5000;
max_health = 5000;
mana = 0;
max_mana = 50;
spd = 108
attack = 10;
skills = [];
level = 1;
team = "character";

banner_sprite = spr_banner_ortem;
turn_sprite = spr_turn_ortem;

function ManaRegen()
{
	var manaMultipler;
	manaMultipler = 0.15;
	mana += max_mana * manaMultipler;
}

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
function BasicSkill()
{
	var damage;
		for (var i = 0; i < array_length(global.participants); i++) 
		{
		    if (global.participants[i].team == "enemy") 
			{
				if(mana >= 20)
				{
					damage = attack * 70;
					global.participants[i].hp -= damage;	
					mana -= 25
					return true;
				}
				else
				{
					return false;	
				}
			}
		}
}
function SpecialSkill()
{
	var damage;
		for (var i = 0; i < array_length(global.participants); i++) 
		{
		    if (global.participants[i].team == "enemy") 
			{
				if(mana == max_mana)
				{
					damage = attack * 300
					global.participants[i].hp -= damage;	
					mana -= max_mana;
					return true;
				}
				else
				{
					return false;		
				}
			}
		}
}