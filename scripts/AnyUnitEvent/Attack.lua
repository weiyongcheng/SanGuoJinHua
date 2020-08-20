

local CJ = require "jass.common"

local t = war3.CreateTrigger(function ()
    local unit  = ac.u
    local u = unit.attacker()
    local u1 = unit.trigunit()
        if unit.Ishero(u) == true then
        local table = ac.Pas
        local table2 = UnitFunc[u]
        if table2.Pasabilitycount > 0 then
            local t1 = table2.Pasability
            for i = 1,table2.Pasabilitycount do
                local t2 = t1[i]
                if t2[2] > 0 then
                    local table3 = table[t2[1]]
                    table3:func(u,u1,t2[2])
                end
            end
        end
    end
end)

TriggerRegisterAnyUnitEventBJ(t, Event['被攻击'])