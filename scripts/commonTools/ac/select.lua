local CJ = require 'jass.common'

local sel = {}

local unit = ac.u
local num = ac.count
local cond = ac.cond

ac.sel = sel

local group = {
    unit =  {},
    count = 0
    }


local g0 = CJ.CreateGroup()



--选取圆范围内的所有敌人
sel.rangenemy = function (u,x,y,r)
    local unit = ac.u
    local p = unit.owner(u)
    local num = ac.count
    local cond = ac.cond
    local i = 0
    local table = group.unit
	CJ.GroupEnumUnitsInRange(g0,x,y,r,nil)
	while num.group(g0) > 0 do
		if cond.Rangedm(unit.firstunit(g0)) == true and cond.Enemy(unit.firstunit(g0),p) == true then
            i = i + 1
            table[i] = unit.firstunit(g0)
        end
        CJ.GroupRemoveUnit(g0,unit.firstunit(g0))
    end
    CJ.GroupClear(g0)
    group.count = i
    return group
end

sel.rangplayer = function (p,x,y,r)
    local i = 0
    local table = group.unit
	CJ.GroupEnumUnitsInRange(g0,x,y,r,nil)
	while num.group(g0) > 0 do
		if cond.player(unit.firstunit(g0),p) == true then
            i = i + 1
            table[i] = unit.firstunit(g0)
        end
        CJ.GroupRemoveUnit(g0,unit.firstunit(g0))
    end
    CJ.GroupClear(g0)
    group.count = i
    return group
end