// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ManaSkillNeed(mana, manaUsage)
{
		var kurangMana = manaUsage - mana;
		dmgColor = c_red
		var target = global.participants[0];
		instance_create_depth
		(
			target.x,
			target.y - 220,
			target.depth-10000,
			objBattleText,
			{font: FontDamage, col: dmgColor, text: "Mana Kurang " + string(kurangMana)}
		);
		return false;
}
function ManaSpecialNeed(max_mana, mana)
{
		var kurangMana = max_mana - mana;
		dmgColor = c_red
		var target = global.participants[0];
		instance_create_depth
		(
			target.x,
			target.y - 220,
			target.depth-10000,
			objBattleText,
			{font: FontDamage, col: dmgColor, text: "Mana Kurang " + string(kurangMana)}
		);
		return false;
}