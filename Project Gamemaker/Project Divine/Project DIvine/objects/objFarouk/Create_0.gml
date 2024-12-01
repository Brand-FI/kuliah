name = "Farouk";
max_health = 1000;
hp = max_health
mana = 0;
max_mana = 50;
spd = 100
attack = 10;
skills = [];
level = 1;
team = "character";

banner_sprite = spr_banner_farouk;
turn_sprite = spr_turn_farouk;

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
						musuh.depth-1,
						objBattleText,
						{font: FontDamage, col: dmgColor, text: string(damage)}
					);
				
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
					mana -= 25
					var musuh = global.participants[i]
					musuh.hp -= damage;
					musuh.damageDiterima = damage;
					dmgColor = c_navy;
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
					dmgColor = c_navy;
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