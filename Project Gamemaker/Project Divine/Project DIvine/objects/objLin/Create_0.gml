name = "Lin";
hp = 1000;
max_health = 1000;
mana = 50;
max_mana = 50;
spd = 140;
attack = 12;
skills = ["Skill", "Ultimate"];
level = 1;
team = "character";

banner_sprite = spr_banner_lin;
turn_sprite = spr_turn_lin;



function NormalAttack()
{
	var damage;
		for (var i = 0; i < array_length(global.participants); i++) 
		{
		    if (global.participants[i].team == "enemy") 
			{
				damage = attack * 30
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