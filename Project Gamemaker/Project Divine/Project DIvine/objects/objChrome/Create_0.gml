name = "Chrome";
max_health = 1300;
hp = max_health;
mana = 0;
max_mana = 200;
spd = 115;
attack = 10;
skills = [];
level = 1;
team = "character";

banner_sprite = spr_banner_chrome;
turn_sprite = spr_turn_chrome;
party_sprite = chrome_party;
party_sprite_transparent = chrome_party_transparent;
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
				dmgColor = c_orange;
									instance_create_depth
					(
						musuh.x,
						musuh.y,
						musuh.depth-1,
						objBattleText,
						{font: FontDamage, col: dmgColor, text: string(damage)}
					);
				audio_play_sound(punch_2, 1, false);
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
				audio_play_sound(magical_chime, 1, false);
			}
			else
			{
					var spriteChar = spr_chrome_special;
					instance_create_depth
						(
							global.participants[i].x,
							global.participants[i].y,
							global.participants[i].depth-1,
							objBattleSprite,
							{font: FontDamage, sprite: spriteChar }
						);
			}
        }
		
        global.participants[0].mana -= 45;
        return true;
    }
    else
    {;
		ManaSkillNeed(mana, 20);
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
					mana -= max_mana;
					var musuh = global.participants[i]
					musuh.action_value += 50;
					var spriteChar = spr_chrome_special;
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
						{font: FontDamage, col: dmgColor, text: string("SPEED DOWN")}
					);
					return true;
				}
				else
				{
					
					ManaSpecialNeed(max_mana, mana);
					return false;		
				}
			}
		}
}