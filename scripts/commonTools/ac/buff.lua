local unit  = require 'commonTools.ac.unit'
local JP = require 'jass.japi'
local CJ = require 'jass.common'

local buff = {}

ac.buff = buff
Sys.buff = {
    stun = {}
}

--眩晕
buff.stun = function (d,s1)
    local ct = Sys.buff
    local ct2 = ct.stun
    if type(ct2[d]) ~= 'table' then
        ct2[d] = {
            acting = false,
            time = 0
        }
    end
    local ct3 = ct2[d]
    if ct3.acting == true then
        if ct3.time < s1 then
            ct3.time = s1
        end
    else
        ct3.time = s1
        ct3.acting = true
        local ef = ac.ef
        local tx = ef.unit("Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl", d, "overhead")
        JP.EXPauseUnit(d,true)
        ac.loop(0.05*1000,function (t)
            ct3.time = ct3.time - 0.05
            if ct3.time <= 0 then
                ct3.time = 0
                ct3.acting = false
                ef.kill(tx)
                JP.EXPauseUnit(d,false)
                t:remove()
            end
        end)
    end
end


buff.Rgstun = function (u,x,y,r,ti)
    local sel = ac.sel
	local table = sel.rangenemy(u,x,y,r)
	local group = table.unit
	if table.count > 0 then
		for i = 1,table.count do
			buff.stun(u,group[i],ti)
		end
	end
	table.count = 0
	table.unit = {}
end






