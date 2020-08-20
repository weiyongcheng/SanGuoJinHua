local math_radom = math.random

local mt = ac.Pas['重击']

{
    rate = 5,
    rateadd = 1,
    time = 0.2
}

mt.__index = mt

function mt:func(u,u1,lv2)
    local buff = ac.buff
    local rate = self.rate + (self.rateadd * lv2)
    if math_radom(100) <= rate then
        buff.stun(u1,self.time)
    end
end