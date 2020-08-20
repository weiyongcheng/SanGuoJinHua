local unit = require 'commonTools.ac.unit'
local JP = require 'jass.japi'


local p = ac.player
local h = ac.hero

local target ={
    [1] = {-2307,1280},
    [2] = {2307,1280},
    [3] = {-2307,-1800},
    [4] = {2307,-1800}
    }
for i = 1,4 do
    if p.is_player(p[i]) then
        h[i] = unit.create(p[i],'H000',target[i][1],target[i][2])
        unit.unmove(h[i])
        local table = {}
        UnitFunc[h[i]] = table
        local t2 = UnitFunc[h[i]]
        t2.Pasability = {
            {'分裂',1},
            {'连击',1},

        }
        t2.damability = {
            {'重击',1}
        }
        print(t2.damability)
        t2.Pasabilitycount = 2
        t2.damabilitycount = 1
        t2.more = 0
        h[i+10] = unit.create(p[i],'e000',target[i][1],target[i][2])
        unit.unmove(h[i+10])
        local table = {}
        UnitFunc[h[i+10]] = table
    end
end

ac.wait(0.2*100,function ()
    unit.add_ability(h[11],'加攻速')
    unit.set_abilitylv(h[11],'加攻速',8)
end)
