local cj = require 'jass.common'

local LcJ = cj.LcJ   --参数表

local mt = {}
local p = 0 --栈序号

local id = cj.GetPlayerId

--开始对指定玩家调用
--  toPlayer:player,对指定玩家如果未nil,则对所有玩家操作
--  whichCall:number,被调用函数索引
function mt.begin(toPlayer, whichCall)
    local pid
    if not toPlayer then
        pid = id(cj.GetLocalPlayer())
    else
        pid = id(toPlayer)
    end
    p = 0
    cj.SaveInteger(LcJ, 0, 0, pid)
    cj.SaveInteger(LcJ, 0, 1, whichCall or 0)
    cj.FlushChildHashtable(LcJ, 1)
end

--判断是否为本地玩家
function mt.is_local_player(p)
    if not p then
        return true
    else
        return p == cj.GetLocalPlayer()
    end
end

--保存字符串参数
function mt.pushStr(str)
    p = p + 1
    cj.SaveStr(LcJ, 1, p, str)
end
--保存整数参数
function mt.pushInt(int)
    p = p + 1
    cj.SaveInteger(LcJ, 1, p, int)
end
--保存实数参数
function mt.pushReal(real)
    p = p + 1
    cj.SaveReal(LcJ, 1, p, real)
end
--保存布尔值参数
function mt.pushB(flag)
    p = p + 1
    cj.SaveBoolean(LcJ, 1, p, flag)
end
--保存单位参数
function mt.pushUnit(u)
    p = p + 1
    cj.SaveUnitHandle(LcJ, 1, p, u)
end

--读取
function mt.popInt()
    return cj.LoadInteger(LcJ, 2, 0)
end
function mt.popStr()
    return cj.LoadStr(LcJ, 2, 0)
end
function mt.popReal()
    return cj.LoadReal(LcJ, 2, 0)
end
function mt.popB()
    return cj.LoadBoolean(LcJ, 2, 0)
end

return mt