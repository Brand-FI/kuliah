name = "Ortem";
max_health = 3500;
hp = max_health;
mana = 0;
max_mana = 50;
spd = 100;
attack = 25;
skills = [];
level = 1;
team = "character";

voice = Jonas_go;
banner_sprite = spr_banner_ortem;
turn_sprite = spr_turn_ortem;
party_sprite = ortem_party;
party_sprite_transparent = ortem_party_transparent;
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
						var spriteChar = spr_ortem_normal;
						instance_create_depth
							(
								musuh.x,
								musuh.y,
								musuh.depth-1,
								objBattleSprite,
								{font: FontDamage, sprite: spriteChar }
							);
				dmgColor = c_maroon;
				instance_create_depth
					(
						musuh.x,
						musuh.y,
						musuh.depth-2,
						objBattleText,
						{font: FontDamage, col: dmgColor, text: string(damage)}
					);
				audio_play_sound(slash, 1, false);
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
					var spriteChar = spr_ortem_skill;
					instance_create_depth
						(
							musuh.x,
							musuh.y,
							musuh.depth-1,
							objBattleSprite,
							{font: FontDamage, sprite: spriteChar }
						);
					dmgColor = c_maroon;
					instance_create_depth
					(
						musuh.x,
						musuh.y,
						musuh.depth-2,
						objBattleText,
						{font: FontDamage, col: dmgColor, text: string(damage)}
					);
					audio_play_sound(hammer, 1, false);
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
						var spriteChar = spr_ortem_special;
						instance_create_depth
							(
								musuh.x,
								musuh.y,
								musuh.depth-1,
								objBattleSprite,
								{font: FontDamage, sprite: spriteChar }
							);
						dmgColor = c_maroon;
						instance_create_depth
						(
							musuh.x,
							musuh.y,
							musuh.depth-2,
							objBattleText,
							{font: FontDamage, col: dmgColor, text: string(damage)}
						);
						audio_play_sound(big_slash, 1, false);
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