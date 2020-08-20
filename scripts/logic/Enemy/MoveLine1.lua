
local Emy = require 'Game.Enemy.Enemy'

local mt = {
    line = 4,

    start = {
                [1] = {-727,1253},--起始点
                [2] = {727,1253},
                [3] = {-727,-1800},
                [4] = {727,-1800}
            },
    target ={
                [1] = {-2307,1253},--进攻目标点
                [2] = {2307,1253},
                [3] = {-2307,-1800},
                [4] = {2307,-1800}
            },
    once_count = 1, --一次产生几个兵

    count_inboshu = 50, -- 一波出多少轮

    timeeverybo = 0.2, --每隔多少秒出一个

    boshu = 24, --波数

    rest = 3, --每波间隔多少秒

    enemytype = EnemyType.normal, --进攻怪物表

    start_time = 3,--出兵开始时间

    enemyplayer = {6,9}, --敌对玩家

    timerdialog = true, --是否显示计时器窗口
}

ac.wait(1*1000,function ()
    Emy:create(mt)
end)
