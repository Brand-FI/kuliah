name = "Noah";
max_health = 1500;
hp = max_health
mana = 0;
max_mana = 50;
spd = 120
attack = 13.5;
skills = [];
level = 1;
team = "character";

banner_sprite = spr_banner_noah;
turn_sprite = spr_turn_noah;
party_sprite = noah_party;
selected = false;
party_sprite_transparent = noah_party_transparent;

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
				dmgColor = c_navy;
				instance_create_depth
					(
						musuh.x,
						musuh.y,
						musuh.depth-2,
						objBattleText,
						{font: FontDamage, col: dmgColor, text: string(damage)}
					);
				var spriteChar = spr_noah_attack;
				instance_create_depth
					(
						musuh.x,
						musuh.y,
						musuh.depth-1,
						objBattleSprite,
						{font: FontDamage, sprite: spriteChar }
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
					var spriteChar = spr_noah_skill;
					instance_create_depth
						(
							musuh.x,
							musuh.y,
							musuh.depth-1,
							objBattleSprite,
							{font: FontDamage, sprite: spriteChar }
						);
					dmgColor = c_navy;
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
						var spriteChar = spr_noah_special;
						instance_create_depth
							(
								musuh.x,
								musuh.y,
								musuh.depth-1,
								objBattleSprite,
								{font: FontDamage, sprite: spriteChar }
							);
						dmgColor = c_navy;
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
			return true;
		}
		else
		{
			ManaSpecialNeed(max_mana, mana);
			return false;
		}
}