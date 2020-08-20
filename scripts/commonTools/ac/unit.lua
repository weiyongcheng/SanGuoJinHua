local CJ = require 'jass.common'
local JP = require 'jass.japi'
local ef = require 'commonTools.ac.effect'
local dbg = require 'jass.debug'
local dz = require 'commonTools.Dzapi'
local BJ = require 'blizzard'

local u = {}


ac.u = u

--创建单位
u.create = function (p,id,x,y,r)
    local num = ac.count
    local unit = CJ.CreateUnit(p,num.ID2I(id),x,y,r)
    dbg.handle_ref(unit)
    return unit
end

--发布攻击移动命令
u.amove = function (unit,x,y)
    CJ.IssuePointOrder(unit,'attack',x,y)
end


--获取单位所有者
u.owner = function (unit)
    return CJ.GetOwningPlayer(unit)
end

--获取单位类型ID
u.id = function (unit)
    return CJ.GetUnitTypeId(unit)
end


--设置单位无敌
u.wudi = function (unit)
    CJ.SetUnitInvulnerable(unit,true)
end

--获取单位坐标
u.X = function (unit)
    return CJ.GetUnitX(unit)
end

u.Y = function (unit)
    return CJ.GetUnitY(unit)
end

--获取单位面向角度
u.facing = function (unit)
	return CJ.GetUnitFacing(unit)
end


--隐藏，显示
u.hide = function (unit)
    CJ.ShowUnit(unit,false)
end

u.show = function (unit)
    CJ.ShowUnit(unit,true)
end

--改变所属
u.changeowner = function (unit,p)
    CJ.SetUnitOwner(unit,p,true)
end







--移动单位（坐标）
u.location  = function (u,x,y)
    CJ.SetUnitX(u,x)
    CJ.SetUnitY(u,y)
end


--设置单位高度
u.height = function (u,r)
    CJ.SetUnitFlyHeight(u,r,0)
end





--删除单位
u.remove = function (unit)
    UnitRegisterDamagedFlag[unit] = 0
    dbg.handle_unref(unit)
    CJ.RemoveUnit(unit)
end


--杀死单位
u.kill = function (unit)
    CJ.KillUnit(unit)
end

--计时器删除单位
u.removeT = function (unit,ti)
    ac.wait(ti*1000,function ()
        u.remove(unit)
    end)
end


--获取单位属性
--攻击
u.attack = function (unit)
    return JP.GetUnitState(unit, CJ.ConvertUnitState(0x15))
end


--设置单位属性
--攻击
u.setattack = function (unit,r)
    local r3 = JP.GetUnitState(unit,ConvertUnitState(0x12))
	for i = 1,10 do
		if r ~= r3 then
			JP.SetUnitState(unit, ConvertUnitState(0x12),r)
			r3 = JP.GetUnitState(unit, ConvertUnitState(0x12))
		else
            break
		end
	end
end



--判断是否是英雄
u.Ishero = function (unit)
    return CJ.IsUnitType(unit,CJ.UNIT_TYPE_HERO)
end


--判断单位是否死亡
u.isdead = function (unit)
    return CJ.IsUnitType(unit, CJ.UNIT_TYPE_DEAD)
end



--生命值
u.setlife = function (unit,r)
    local r3 = JP.GetUnitState(unit,UNIT_STATE_MAX_LIFE)
	for i = 1,10 do
		if r ~= r3 then
			JP.SetUnitState(unit, UNIT_STATE_MAX_LIFE,r)
			r3 = JP.GetUnitState(unit,UNIT_STATE_MAX_LIFE)
		else
            break
		end
	end
end






--生命百分比
u.setliferate = function (unit,r)
    SetUnitLifePercentBJ(unit,r)
end




--设置护甲
u.setarmor = function (unit,r)
    local r3 = JP.GetUnitState(unit,ConvertUnitState(0x20))
	for i = 1,10 do
		if r ~= r3 then
			JP.SetUnitState(unit, ConvertUnitState(0x20),r)
			r3 = JP.GetUnitState(unit, ConvertUnitState(0x20))
		else
            break
		end
	end
end


--模型
u.Model = function (u,s)
    dz.ModolChange(u,s)
end


--移动速度
u.setmovesp = function (unit,r)
    CJ.SetUnitMoveSpeed(unit,r)
end


--魔法百分比
u.mana = function (unit,r)
    SetUnitManaPercentBJ(unit,r )
end




--创建马甲


u.majia = function (data)
    local p = CJ.Player(PLAYER_NEUTRAL_PASSIVE)
    local u1 = u.create(p,data.id,data.loc[1],data.loc[2],0)
    u.removeT(u1,data.effecttime+0.5)
    ef.killt(data.effecttime, CJ.AddSpecialEffectTarget(data.effect,u1,'origin'))
end


--暂停单位
u.pause = function (unit,b)
    CJ.PauseUnit(unit,b)
end



--设置生命周期
u.timelife = function (unit,r)
    local num = ac.count
    CJ.UnitApplyTimedLife(unit,num.ID2I'BTLF', r)
end



--重置CD
u.cdall = function (unit)
    CJ.UnitResetCooldown(unit)
end


--建筑物建造进度条
u.Progressbuild = function (unit,i)
    CJ.UnitSetConstructionProgress(unit,i)
end

--升级进度条
u.Progressupgrade = function (unit,i)
    CJ.UnitSetUpgradeProgress(unit,i)
end


--设置单位面向角度
u.setfacing = function (unit,r)
    CJ.SetUnitFacing(unit,r)
end

--设置单位碰撞开关
u.pathing = function (unit,b)
    CJ.SetUnitPathing(unit,b)
end


--单位添加技能
u.addability = function (unit,id)
    local num = ac.count
    CJ.UnitAddAbility(unit,num.ID2I(id))

end
--单位添加技能（走系统）
u.add_ability = function (unit,id)
    local table = AbilityList.clist
    local table2 = table[id]
    u.addability(unit,table2.id)
    table2:add(unit)
end

--单位提升技能等级（走系统）
u.set_abilitylv = function (unit,id,i)
    local table = AbilityList.clist
    local table2 = table[id]
    table2:lv(unit,i)
end


--单位提升技能等级（走系统）
u.up_abilitylv = function (unit,id,i)
    local table = UnitFunc[unit]
    local table2 = table[id]
    u.set_abilitylv(unit,id,table2.level + i)

end
--单位删除技能
u.removeability = function (unit,id)
    local num  = ac.count
    CJ.UnitRemoveAbility(unit,num.ID2I(id))
end


--设置技能等级
u.abilityLV = function (unit,id,i)
    local num = ac.count
    CJ.SetUnitAbilityLevel(unit,num.ID2I(id),i)
end

--单位替换技能
u.abilitychange = function (unit,id1,id2)
    u.removeability(unit,id1)
    u.addability(unit,id2)
end

--设置单位可以调整高度
u.allowheigh = function (unit)
    u.addability(unit,'Amrf')
    u.removeability(unit,'Amrf')
end


--命令单位建造，训练单位
u.train = function (unit,id)
    local num = ac.count
    CJ.IssueImmediateOrderById(unit,num.ID2I(id))
end


--命令单位研究科技
u.upgrade = function (unit,id)
    local num = ac.count
    CJ.IssueImmediateOrderById(unit,num.ID2I(id))
end


--设置单位无法移动
u.unmove = function (unit)
    JP.EXSetUnitMoveType(unit,0x01)
end


--设置单位可以移动
u.almove = function (unit)
    JP.EXSetUnitMoveType(unit,0x02)
end


----------------获取单位-----------------

--触发单位
u.trigunit = function ()
    return CJ.GetTriggerUnit()
end

--攻击单位
u.attacker = function ()
    return CJ.GetAttacker()
end

--购买者
u.buyer = function ()
    return CJ.GetBuyingUnit()
end

--伤害来源
u.damunit = function ()
    return CJ.GetEventDamageSource()
end

--凶手单位
u.murderer = function ()
    return GetKillingUnitBJ()
end

--被出售的单位
u.soldunit = function ()
    return CJ.GetSoldUnit()
end


--技能释放目标
u.spelltarger = function ()
    return CJ.GetSpellTargetUnit()
end

--训练单位
u.trained = function ()
    return CJ.GetTrainedUnit()
end


--单位组中第一个单位
u.firstunit = function (g)
    return CJ.FirstOfGroup(g)
end


--单位的等级
u.lv = function (unit)
    CJ.GetUnitLevel(unit)
end



--单位类型（id字符串）
u.type = function (unit)
    local num = ac.count
    return num.I2ID(CJ.GetUnitTypeId(unit))
end

--单位类型（id）
u.typeID = function (unit)
    return CJ.GetUnitTypeId(unit)
end



--获取生命值
u.lifeM = function (unit)
    return CJ.GetUnitState(unit,UNIT_STATE_MAX_LIFE)
end

u.lifeC = function (unit)
    return CJ.GetUnitState(unit,UNIT_STATE_LIFE)
end



return u



