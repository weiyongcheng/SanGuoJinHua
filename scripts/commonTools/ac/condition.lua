local CJ = require 'jass.common'


local condition = {}


ac.cond = condition

--是敌人
condition.Enemy = function (u,p)
    return CJ.IsUnitEnemy(u, p)
end

--选取范围非无敌单位
condition.Rangedm = function (u1)
    if CJ.GetUnitAbilityLevel(u1,'Aloc')==0 and CJ.GetUnitAbilityLevel(u1,'Avul')==0 and CJ.IsUnitType(u1,CJ.UNIT_TYPE_DEAD)==false then
        return true
    else
        return false
    end
end


--属于玩家的单位
condition.player = function (u,p)
    local unit = ac.u
    if unit.owner(u) == p then
        return true
    else
        return false
    end
end



--范围内有敌人
condition.RangeEM = function (u,x,y,r)
    local sel = ac.sel
	local table = sel.rangenemy(u,x,y,r)
	if table.count > 0 then
        return true
    else
        return false
	end
	table.count = 0
	table.unit = {}
end

