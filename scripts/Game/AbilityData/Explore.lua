local math_radom = math.random

local mt = ac.Pas['爆炸']

{
    rate = 15,
    rateadd = 5,
}

mt.__index = mt

function mt:func(u,u1,lv2)
    local unit = ac.u
    if Dmg2 > unit.lifeC then
        local rate = self.rate + (self.rateadd * lv2)
        if math_radom(100) <= rate then
            local dam = ac.dam
            dam.Range(u,unit.X(u1),unit.Y(u1),200,unit.attack(u),6)
            unit.majia {
                id = 'e000',
                size = 1,
                life = 1,
                effect = 'Abilities\\Spells\\Other\\Doom\\DoomTarget.mdl',
                effecttime = 0,
                loc = {unit.X(u1),unit.Y(u1)}
            }
        end
    end
end