local CJ =require 'jass.common'
local dbg = require 'jass.debug'
local ef = {}

ac.ef = ef

--对单位创建特效
ef.unit = function (part, unit, effect)
    local efu = CJ.AddSpecialEffectTarget(effect,unit,part)
    dbg.handle_ref(efu)
    return efu
end


--删除特效
ef.kill = function (effect)
    dbg.handle_unref(effect)
    CJ.DestroyEffect(effect)
end


--计时器删除特效
ef.killt = function (effect,ti)
    ac.wait(ti * 1000,function ()
        ef.kill(effect)
    end)

end



return ef