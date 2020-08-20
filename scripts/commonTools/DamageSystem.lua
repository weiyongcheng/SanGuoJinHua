local JP = require "jass.japi"
local CJ = require "jass.common"
local dam = require 'commonTools.ac.damage'
local unit = require 'commonTools.ac.unit'
local math = math

local tdmg = CJ.CreateTrigger()

Dmg2 = 0

local function actdamg()
    --判断是否为木头重击
    if JP.EXGetEventDamageData(5) ~= 23 then
        JP.EXSetEventDamage(0)
        local num = ac.count
        local dmg = num.damage()
        local u = unit.damunit()
        local p = unit.owner(u)
        local u1 = unit.trigunit()
        --判断是否为平A
        Dmg2 = dmg
        if dam.Isattack() == true then
            if UnitFunc[u] ~= nil then
                local table = ac.Pas
                local table2 = UnitFunc[u]
                if table2.damabilitycount > 0 then
                    local t1 = table2.damability
                    for i = 1,table2.damabilitycount do
                        local t2 = t1[i]
                        if t2[2] > 0 then
                            local table3 = table[t2[1]]
                            table3:func(u,u1,t2[2])
                        end
                    end
                end
            end
        end
        if unit.isdead(u1) == false then
            dam.Hurt(u,u1,Dmg2,6)
            local Player = ac.player
            Player.TextTagFull(math.ceil(Dmg2) .. "!", u1, 255, 0, 0, 255, p, 0.022)
        end
        Dmg2 = 0
    end
end

CJ.TriggerAddAction(tdmg, actdamg)
--任意单位进入地图范围内
local t1 = CJ.CreateTrigger()

UnitRegisterDamagedFlag = {} --记录单位是否注册了受伤事件


function Act1()
    local u = unit.trigunit()
    local id2 = UnitRegisterDamagedFlag[u]
    local p = unit.owner(u)
    if id2 ~= 1 then
        UnitRegisterDamagedFlag[u] = 1
        TriggerRegisterUnitEvent(tdmg, u, EVENT_UNIT_DAMAGED)
    else
    end

end


TriggerRegisterEnterRectSimple(t1, GetPlayableMapRect())
CJ.TriggerAddAction(t1, Act1)