local CJ = require 'jass.common'
local JP = require 'jass.japi'

local damage = {}

ac.dam = damage

damage.Hurt = function (u,u1,dmg,ty)
    if ty == 1 then
		CJ.UnitDamageTarget( u, u1, dmg, true, false, CJ.ATTACK_TYPE_HERO, CJ.DAMAGE_TYPE_NORMAL, nil ) --平A
	elseif ty == 2 then
		CJ.UnitDamageTarget( u, u1, dmg, false, false, CJ.ATTACK_TYPE_PIERCE, CJ.DAMAGE_TYPE_NORMAL, nil )--穿刺/魔法攻击
	elseif ty == 3 then
		CJ.UnitDamageTarget( u, u1, dmg, false, false, CJ.ATTACK_TYPE_CHAOS, CJ.DAMAGE_TYPE_NORMAL, nil )--混乱普通攻击
	elseif ty == 4 then
		CJ.UnitDamageTarget( u, u1, dmg, false, false, CJ.ATTACK_TYPE_HERO, CJ.DAMAGE_TYPE_NORMAL, nil )--英雄普通攻击
	elseif ty == 5 then
		CJ.UnitDamageTarget( u, u1, dmg, false, false, CJ.ATTACK_TYPE_CHAOS, CJ.DAMAGE_TYPE_UNIVERSAL, nil ) --真实伤害
	elseif ty == 6 then
		CJ.UnitDamageTarget(u,u1,dmg,false,false,CJ.ATTACK_TYPE_CHAOS,CJ.DAMAGE_TYPE_UNKNOWN,CJ.WEAPON_TYPE_ROCK_HEAVY_BASH)--不走伤害系统的真实伤害，慎用
	end
end


damage.Range = function (u,x,y,r,dmg,ty)
	local sel = ac.sel
	local table = sel.rangenemy(u,x,y,r)
	local group = table.unit
	if table.count > 0 then
		for i = 1,table.count do
			damage.Hurt(u,group[i],dmg,ty)
		end
	end
	table.count = 0
	table.unit = {}
end


--对范围第一个敌人造成伤害
damage.firstdam = function (u,x,y,r,dmg,ty)
	local sel = ac.sel
	local table = sel.rangenemy(u,x,y,r)
	local group = table.unit
	if table.count > 0 then
		damage.Hurt(u,group[1],dmg,ty)
	end
	table.count = 0
	table.unit = {}
end


--伤害类型
damage.Isattack = function ()
	if JP.EXGetEventDamageData(2) ~= 0 then
		return true
	else
		return false
	end
end






return damage