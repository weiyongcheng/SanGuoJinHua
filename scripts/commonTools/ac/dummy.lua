local math = math


local u = ac.u
local con = ac.cond


local dummy = {}

ac.dummy = dummy


function dummy:create()
    local u1 = self.unit
    local eff = self.eff
    local sp = self.speed
    local dmg = self.dmg
    local range = self.range
    local type = self.type
    local hight = self.heigh
    local dist = self.dist
    local a = self.angle
    local dist2 = 0
    u.Model(u1,eff)
    local spd = sp / 50
    u.height(u1,hight)
    local result = math.rad(a)
    ac.loop(20,function (t)
        local x = u.X(u1)
        local y = u.Y(u1)
        local x2 = x + (spd * ac.Cos(result))
        local y2 = y + (spd * ac.Sin(result))
        dist2 = dist2 + spd
        u.location(u1,x2,y2)
        if type == '自由单体' then
            if dist2 >= dist then
                u.remove(u1)
                t:remove()
            elseif con.RangeEM(u1,x,y,range) == true then
                local dam = ac.dam
                dam.firstdam(u1,x,y,range,dmg,1)
                u.kill(u1)
                t:remove()
            end
        end
    end)
end