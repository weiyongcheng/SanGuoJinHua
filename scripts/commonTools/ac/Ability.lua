local JP = require 'jass.japi'
local CJ = require 'jass.common'
local ab = {}

ac.ability = ab

ac.FLAG = {
    ["地面"]        = 1 << 1,
    ["空中"]        = 1 << 2,
    ["建筑"]        = 1 << 3,
    ["守卫"]        = 1 << 4,
    ["物品"]        = 1 << 5,
    ["树木"]        = 1 << 6,
    ["墙"]          = 1 << 7,
    ["残骸"]        = 1 << 8,
    ["装饰物"]      = 1 << 9,
    ["桥"]          = 1 << 10,
    ["位置"]        = 1 << 11,
    ["自己"]        = 1 << 12,
    ["玩家单位"]    = 1 << 13,
    ["联盟"]        = 1 << 14,
    ["中立"]        = 1 << 15,
    ["敌人"]        = 1 << 16,
    ["未知1"]        = 1 << 17,
    ["未知2"]        = 1 << 18,
    ["未知3"]        = 1 << 19,
    ["可攻击的"]    = 1 << 20,
    ["无敌"]        = 1 << 21,
    ["英雄"]        = 1 << 22,
    ["非-英雄"]     = 1 << 23,
    ["存活"]        = 1 << 24,
    ["死亡"]        = 1 << 25,
    ["有机生物"]    = 1 << 26,
    ["机械类"]      = 1 << 27,
    ["非-自爆工兵"] = 1 << 28,
    ["自爆工兵"]    = 1 << 29,
    ["非-古树"]     = 1 << 30,
    ["古树"]        = 1 << 31,
}



function ab:get(mt)
    local table = AbilityList.typelist
    local table2 = table[mt.parent]
    print(mt.parent)
    table2.count = table2.count + 1
    local table3 = table2.ability
    return table3[table2.count]
end

function ab:refrash(u,id)
    CJ.IncUnitAbilityLevel(u, id)
    CJ.DecUnitAbilityLevel(u,id)
end





function ab:dataA(u,id,r,i)
    JP.EXSetAbilityDataReal(JP.EXGetUnitAbility(u,id),i,108,r)
end

function ab:dataB(u,id,r,i)
    JP.EXSetAbilityDataReal(JP.EXGetUnitAbility(u,id),i,109,r)
end


function ab:dataC(u,id,r,i)
    JP.EXSetAbilityDataReal(JP.EXGetUnitAbility(u,id),i,110,r)
end


function ab:dataD(u,id,r,i)
    JP.EXSetAbilityDataReal(JP.EXGetUnitAbility(u,id),i,111,r)
end


function ab:dataE(u,id,r,i)
    JP.EXSetAbilityDataReal(JP.EXGetUnitAbility(u,id),i,112,r)
end


function ab:name(u,id,s,i)
    JP.EXSetAbilityDataString(JP.EXGetUnitAbility(u,id),i,215,s)
end

function ab:tip(u,id,s,i)
    JP.EXSetAbilityDataString(JP.EXGetUnitAbility(u,id),i,218,s)
end


function ab:art(u,id,s,i)
    JP.EXSetAbilityDataString(JP.EXGetUnitAbility(u,id),i,201,s)
end


--设置技能等级
function ab:lv(u,id,i)
    local num = ac.count
    
end