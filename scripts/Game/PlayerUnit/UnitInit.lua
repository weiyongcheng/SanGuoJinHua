local unit = require 'commonTools.ac.unit'
local CJ = require 'jass.common'
local num = ac.count
local JP = require 'jass.japi'
local CFT = {}
local unitc = {}




--[[CFT.choicefunc = function (u,p)
    SelectUnitRemoveForPlayer(u, p)
    if unitc[unit.handle(u)] == CJ.GetPlayerId(p)+1 then
        local choice = CFT[id]
        if choice == nil then
            choice = {}
            CFT[id] = choice
            choice[p] = 0
        end
        if choice[p] == 1 then
            local u6 = unit.create( p, Robot[num.RDI(1,5)], unit.X(u), unit.Y(u), 270.000 )
            JP.EXSetUnitMoveType(u6, 0x01)
            unit.wudi(u6)
        else
            choice[p] = 1
            ac.wait(200,function ()
                choice[p] = 0
            end)
        end
    end
end]]

--UnitFunc[id] = CFT