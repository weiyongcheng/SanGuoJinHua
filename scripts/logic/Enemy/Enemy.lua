local unit = require 'commonTools.ac.unit'
local num = ac.count

local Enemy = {}


local boshu = 0
local player = ac.player

local function emcreate (mt,C)
    local emys = mt.start
    local emys2 = emys[C]
    local emyt = mt.target
    local emyt2 = emyt[C]
    local p = player[num.RDI(mt.enemyplayer[1],mt.enemyplayer[2])]
    for i = -1,1 do
        local u = unit.create(p,mt.enemytype[boshu],emys2[1],emys2[2]+i*100,270)
        unit.amove(u,emyt2[1],emyt2[2])
        local table = EnemyType.data
        local table2 = table[boshu]
        unit.setattack(u,table2.attack)
        unit.setarmor(u,table2.armor)
        unit.setmovesp(u,table2.movesp)
        unit.setlife(u,table2.life)
        unit.setliferate(u,100)
    end

end






function Enemy:create(mt)
    local i1 = 0
    local i2 = 0
    local i3 = 0
    local i4 = 0
    local u
    local timer1
    local timerd
    if mt.timerdialog == true then
        timer1 = ac.CreateTimer()
        timerd = ac.CreateTimerDialog(timer1,'进攻即将开始')
        ac.TimerStart(timer1,mt.start_time,false,function () end)
    end
    ac.loop(1000,function ()
        if i1 < mt.start_time then
            i1 = i1 + 1
        elseif i1 == mt.start_time then
            i1 = i1 + 3
            if mt.timerdialog == true then
                ac.DialogTitle(timerd,'下一波敌人')
                ac.TimerStart(timer1,mt.rest,false,function () end)
            end
        elseif i1 > mt.start_time then
            if i2 < mt.rest then
                i2 = i2 + 1
            elseif i2 == mt.rest then
                i2 = i2 + 2
                i3 = 0
                boshu = boshu + 1
                if mt.timerdialog == true then
                    ac.timerdialoghide(timerd,false)
                end
            elseif i2 > mt.rest then
                if i3 < mt.timeeverybo then
                    i3 = i3 +1
                else
                    i3 = 0
                    i4 = i4 + 1
                    if i4 < mt.count_inboshu then
                        for i = 1,mt.once_count do
                            for C = 1,mt.line do
                                if player.is_player(player[C]) then
                                    emcreate(mt,C)
                                end
                            end
                        end
                    else
                        if boshu < mt.boshu then
                            i4 = 0
                            i2 = 0
                            if mt.timerdialog == true then
                                ac.timerdialoghide(timerd,true)
                                ac.TimerStart(timer1,mt.rest,false,function () end)
                            end
                        end
                    end
                end
            end
        end
    end)
end





return Enemy