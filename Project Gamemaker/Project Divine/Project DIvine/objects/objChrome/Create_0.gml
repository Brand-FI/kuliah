name = "Chrome";
max_health = 1300;
hp = max_health;
mana = 0;
max_mana = 200;
spd = 100
attack = 10;
skills = [];
level = 1;
team = "character";

banner_sprite = spr_banner_chrome;
turn_sprite = spr_turn_chrome;

function ManaRegen()
{
	var manaMultipler;
	manaMultipler = 0.15;
	mana += max_mana * manaMultipler;
}


function NormalAttack()
{
	var damage;
		for (var i = 0; i < array_length(global.participants); i++) 
		{
		    if (global.participants[i].team == "enemy") 
			{
				damage = attack * 30
				var musuh = global.participants[i]
				musuh.hp -= damage;
				musuh.damageDiterima = damage;
				dmgColor = c_orange;
									instance_create_depth
					(
						musuh.x,
						musuh.y,
						musuh.depth-1,
						objBattleText,
						{font: FontDamage, col: dmgColor, text: string(damage)}
					);
			}
		}
}
function BasicSkill()
{
    if (global.participants[0].mana >= 45) 
    {
        for (var i = 0; i < array_length(global.participants); i++) 
        {
			if(global.participants[i].team == "character")
			{
				var heal = max_health * 0.15;
				var target = global.participants[i];
				target.hp += heal;
	            instance_create_depth(
	                target.x,
	                target.y - 170,
	                - 100,
	                objBattleText,
	                {font: FontDamage, col: c_lime, text: "+" + string(heal)} 
	            );	
			}
        }
		
        global.participants[0].mana -= 45;
        return true;
    }
    else
    {
        return false;  
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
					mana -= max_mana;
					var musuh = global.participants[i]
					musuh.hp -= damage;
					musuh.damageDiterima = damage;
					dmgColor = c_orange;
					instance_create_depth
					(
						musuh.x,
						musuh.y,
						musuh.depth-1,
						objBattleText,
						{font: FontDamage, col: dmgColor, text: string(damage)}
					);
					return true;
				}
				else
				{
					return false;		
				}
			}
		}
}