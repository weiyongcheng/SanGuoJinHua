local mt = ac.Pas['连击']
{
    unit = 0, --单位预设0
    eff = 'Tank Shell Silver.mdx', --特效
    heigh = 60, --弹幕高度
    angle = 0, --角度预设
    dist = 1500,  --最远距离
    type = '自由单体', --弹幕类型
    range = 64, --捕捉范围
    speed = 2000  --每秒距离
}



mt.__index = mt


function mt:func(u,u1,lv2)
    local unit = ac.u
    local a = unit.facing(u)
    local lv = UnitFunc[u]
    local lv3 = lv.more
    if lv2 > 0 then
        local i = 0
        ac.loop(0.1*1000,function (t)
            i = i + 1
            local dum = ac.dummy
            setmetatable(dum,mt)
            dum.dmg = unit.attack(u)
            local u3 = unit.create(unit.owner(u),'e000',unit.X(u),unit.Y(u),a)
            dum.unit = u3
            dum.angle = unit.facing(u3)
            dum:create()
            if lv3 > 0  then
                local table3 = ac.Pas['分裂']
                table3:func(u,u1,lv3)
            end
            if i == lv2 then
                t:remove()
            end
        end)
    end
end