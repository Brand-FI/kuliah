name = "Alba";
max_health = 1300;
hp  = max_health;
mana = 0;
max_mana = 90;
spd = 105;
attack = 15;
skills = [];
level = 1;
team = "character";

banner_sprite = spr_banner_alba;
turn_sprite = spr_turn_alba;

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
				var spriteChar = spr_alba_attack;
				instance_create_depth
					(
						musuh.x,
						musuh.y,
						musuh.depth-1,
						objBattleSprite,
						{font: FontDamage, sprite: spriteChar }
					);
				dmgColor = c_aqua;
				
					instance_create_depth
					(
						musuh.x,
						musuh.y,
						musuh.depth-2,
						objBattleText,
						{font: FontDamage, col: dmgColor, text: string(damage)}
					);
				
			}
		}
}
function BasicSkill()
{
	if(mana >= 20)
	{
		var damage;
		for (var i = 0; i < array_length(global.participants); i++) 
		{
		    if (global.participants[i].team == "enemy") 
			{
					damage = attack * 70;	
					mana -= 20;
					var musuh = global.participants[i]
					musuh.hp -= damage;
					musuh.damageDiterima = damage;
					var spriteChar = spr_alba_skill;
					instance_create_depth
						(
							musuh.x,
							musuh.y,
							musuh.depth-1,
							objBattleSprite,
							{font: FontDamage, sprite: spriteChar }
						);
					dmgColor = c_aqua;
					instance_create_depth
					(
						musuh.x,
						musuh.y,
						musuh.depth-2,
						objBattleText,
						{font: FontDamage, col: dmgColor, text: string(damage)}
					);
					
			}
		}
		return true;
	}
	else
	{
		return false;
	}
}
function SpecialSkill()
{
		if(mana >= max_mana)
		{
			var damage;
			for (var i = 0; i < array_length(global.participants); i++) 
			{
			    if (global.participants[i].team == "enemy") 
				{
						damage = attack * 300	
						mana -= max_mana;
						var musuh = global.participants[i]
						musuh.hp -= damage;
						musuh.damageDiterima = damage;
						var spriteChar = spr_alba_special;
						instance_create_depth
							(
								musuh.x,
								musuh.y,
								musuh.depth-1,
								objBattleSprite,
								{font: FontDamage, sprite: spriteChar }
							);
						dmgColor = c_aqua;
						instance_create_depth
						(
							musuh.x,
							musuh.y,
							musuh.depth-2,
							objBattleText,
							{font: FontDamage, col: dmgColor, text: string(damage)}
						);
						
				}
			}
			return true;
		}
		else
		{
			return false;
		}
}