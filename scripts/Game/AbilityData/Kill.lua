local math_radom = math.random

local mt = ac.Pas['秒杀']

{
    rate = 1,
    rateadd = 1,
}

mt.__index = mt

function mt:func(u,u1,lv2)
    local dam = ac.dam
    local unit = ac.u
    if unit.Ishero(u) == true then
        local rate = self.rate + (self.rateadd * lv2)
        if math_radom(100) <= rate then
            dam.Hurt(u,u1,unit.lifeM*2,5)
        end
    end
end