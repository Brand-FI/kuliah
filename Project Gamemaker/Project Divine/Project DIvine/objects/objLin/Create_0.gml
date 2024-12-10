name = "Lin";
max_health = 1750;
hp = max_health;
mana = 0;
max_mana = 50;
spd = 125;
attack = 17.5;
skills = ["Skill", "Ultimate"];
level = 1;
team = "character";

banner_sprite = spr_banner_lin;
turn_sprite = spr_turn_lin;
party_sprite = lin_party;
party_sprite_transparent = lin_party_transparent;
selected = false;

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
						var spriteChar = spr_lin_normal;
						instance_create_depth
							(
								musuh.x,
								musuh.y,
								musuh.depth-1,
								objBattleSprite,
								{font: FontDamage, sprite: spriteChar }
							);
				dmgColor = c_orange;
				instance_create_depth
				(
					musuh.x,
					musuh.y,
					musuh.depth-1,
					objBattleText,
					{font: FontDamage, col: dmgColor, text: string(damage)}
				);
				audio_play_sound(stab, 1, false);
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
					var spriteChar = spr_lin_skill;
					instance_create_depth
						(
							musuh.x,
							musuh.y,
							musuh.depth-1,
							objBattleSprite,
							{font: FontDamage, sprite: spriteChar }
						);
					dmgColor = c_orange;
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
		ManaSkillNeed(mana, 20);
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
						var spriteChar = spr_lin_special;
						instance_create_depth
							(
								musuh.x,
								musuh.y,
								musuh.depth-1,
								objBattleSprite,
								{font: FontDamage, sprite: spriteChar }
							);
						dmgColor = c_orange;
						instance_create_depth
						(
							musuh.x,
							musuh.y,
							musuh.depth-2,
							objBattleText,
							{font: FontDamage, col: dmgColor, text: string(damage)}
						);
						audio_play_sound(stab_bleed, 1, false);
				}
			}
			return true;
		}
		else
		{
			
		ManaSpecialNeed(max_mana, mana);
			return false;
		}
}