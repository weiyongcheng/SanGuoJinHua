local CJ = require 'jass.common'
local count = {}
local math = math
local math_random = math.random


ac.count = count



ac.Cos = CJ.Cos
ac.Sin = CJ.Sin
ac.Atan2 = CJ.Atan2

count.ID2I = function (s)
    local i=string.byte(s,1)
	i=i*256+string.byte(s,2)
	i=i*256+string.byte(s,3)
	i=i*256+string.byte(s,4)
	return i
end


count.I2ID = function (i)
    return string.char(i//0x1000000) 
	.. string.char(i//0x10000%0x100) 
	.. string.char(i//0x100%0x100) 
	.. string.char(i%0x100)
end


count.RDI = function (i,i2)
    return CJ.GetRandomInt(i,i2)
end

--单位之间的角度
count.Uangle = function (u,u1)
	local unit = ac.u
	return bj_RADTODEG * CJ.Atan2(unit.Y(u1) - unit.Y(u), unit.X(u1) - unit.X(u))
end


--随机数
count.random = function (i,i2)
	return math_random(i,i2)
end


--字符串的长度
count.stringlength = function (s)
	return CJ.stringlength(s)
end

--单位组的单位数量
count.group = function (g)
	return CountUnitsInGroup(g)
end



--伤害值
count.damage = function ()
	return CJ.GetEventDamage()
end