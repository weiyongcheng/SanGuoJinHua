
local std_print = print

print '123'
require "jass.console".enable = true
local CJ = require "jass.common"
setmetatable(_ENV, {__index = getmetatable(CJ).__index})
local BJ = require 'blizzard'
local JP = require 'jass.japi'





local function ACT()
    require 'commonTools.global'
    require "commonTools.action"
    require 'commonTools.ac.timer'
    require 'commonTools.Dzapi'
    print '11111'
    -- ac.wait(0, function ()
    --     --延迟一下初始化UI
    --     require 'ui.init'
    -- end)
    
    --require "commonTools.Japi"
    --call Cheat("exec-lua:lua.base")
    FogEnable(false)
    FogMaskEnable(false)
    require 'Game.Abilityinit'
    require 'logic.Enemy.Init'
    require 'Game.PlayerUnit.init'
    require 'commonTools.DamageSystem'
    require 'AnyUnitEvent.init'
    --DzAPI_Map_StoreInteger(CJ.Player(0) ,'CUNDANG' , 999999)
    --SVint(CJ.Player(0),'CUNDANG',99999,1)
    local count = ac.count
    --local u5 = CJ.CreateUnit(CJ.Player(0),count.ID2I'h101',-700,0,270)
    --CJ.SetUnitInvulnerable(u5,true)

    --测试UI
    -- ac.wait(1000, function ()
    --     --延迟一下 测试UI
    --     require 'ui.test'
    -- end)
    
end




function myerrorhandler( err )
    print( "ERROR:", err )
 end

status = xpcall( ACT, myerrorhandler )
print(status)