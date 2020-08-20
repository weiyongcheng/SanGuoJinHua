local mt = ac.Pas['分裂']
{
    unit = 0,
    eff = 'Tank Shell Silver.mdx',
    heigh = 60,
    angle = 0,
    dist = 1500,
    type = '自由单体',
    range = 64,
    speed = 2000
}

mt.__index = mt

function mt:func(u,u1,lv2)
    local unit = ac.u
    local a = unit.facing(u)
    local an = 15 / lv2
    local dum = ac.dummy
    setmetatable(dum,mt)
    dum.dmg = unit.attack(u)
    for i = 1,lv2 do
        local u2 = unit.create(unit.owner(u),'e000',unit.X(u),unit.Y(u),a+(an*i))
        dum.unit = u2
        dum.angle = unit.facing(u2)
        dum:create()
        local u3 = unit.create(unit.owner(u),'e000',unit.X(u),unit.Y(u),a-(an*i))
        dum.unit = u3
        dum.angle = unit.facing(u3)
        dum:create()
    end
end


