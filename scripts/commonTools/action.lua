local JP = require 'jass.japi'
local CJ = require "jass.common"
local dz = require 'commonTools.Dzapi'
local ActionTotalTools = {}













--加钱/减钱
ActionTotalTools.PlayerMoneyContral = function (p,i)
	if i > 0 then
		AdjustPlayerStateBJ(i,p,PLAYER_STATE_RESOURCE_GOLD)
	else
		if i < 0 then
			if i > -10000 then
				if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= i * -1 then
					AdjustPlayerStateBJ(i,p,PLAYER_STATE_RESOURCE_GOLD)
				else
					AdjustPlayerStateBJ(-1,p, PLAYER_STATE_RESOURCE_LUMBER )
					AdjustPlayerStateBJ(10000+i,p,PLAYER_STATE_RESOURCE_GOLD)
				end
			else
				if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= i * -1 then
					AdjustPlayerStateBJ(i,p,PLAYER_STATE_RESOURCE_GOLD)
				else
					AdjustPlayerStateBJ(i/10000,p, PLAYER_STATE_RESOURCE_LUMBER )
				end
			end
		end
	end
			
end


--加木
ActionTotalTools.PlayerLumberContral = function (p,i)
	AdjustPlayerStateBJ(i,p, PLAYER_STATE_RESOURCE_LUMBER )
end


--判断玩家的金币
ActionTotalTools.GetPlayerMoney = function (p)
	local i = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
	local i2 = GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) * 10000
	return i + i2
end

--加攻击
ActionTotalTools.AddAttack = function(u,r)
	local r3 = JP.GetUnitState(u,ConvertUnitState(0x12))
	local r2 = r3 + r
	local i = 0
	while i < 10 do
		if r2 > r3 then
			JP.SetUnitState(u, ConvertUnitState(0x12),r2)
			r3 = JP.GetUnitState(u, ConvertUnitState(0x12))
		else
			i = 15
		end
		i = i + 1
	end
end


--加护甲
ActionTotalTools.AddArmor = function (u,r)
	local r3 = JP.GetUnitState(u,ConvertUnitState(0x20))
	local r2 = r3 + r
	local i = 0
	while i < 10 do
		if r2 > r3 then
			JP.SetUnitState(u, ConvertUnitState(0x20),r2)
			r3 = JP.GetUnitState(u, ConvertUnitState(0x20))
		else
			i = 15
		end
		i = i + 1
	end
end


--加生命
ActionTotalTools.AddLife = function (u,r)
	local r3 = JP.GetUnitState(u, UNIT_STATE_MAX_LIFE)
	local r2 = r3 + r
	while r2 > r3 do
		JP.SetUnitState(u,UNIT_STATE_MAX_LIFE,r2)
		r3 = JP.GetUnitState(u,UNIT_STATE_MAX_LIFE)
	end
	SetUnitState(u, UNIT_STATE_LIFE, (GetUnitState(u, UNIT_STATE_LIFE) + r ))
end

--加攻速
ActionTotalTools.AddAttackSpeed = function (u,r)
	local r3 = JP.GetUnitState(u,ConvertUnitState(0x51))
	local r2 = r3 + r
	JP.SetUnitState(u, ConvertUnitState(0x51),r2)
end

--获取技能等级
ActionTotalTools.GetAbilityLv = function (u,ab)
	return GetUnitAbilityLevel(u,ActionTotalTools.ID2I(ab))
end

ActionTotalTools.GetAbilityLv2 = function (u,i)
	return GetUnitAbilityLevel(u,i)
end






--获取单位持有的物品
ActionTotalTools.ItemOfUnit = function (whichUnit,itemId)
    local index= 0
    while index < bj_MAX_INVENTORY do
        yd_NullTempItem=UnitItemInSlot(whichUnit, index)
        if GetItemTypeId(yd_NullTempItem) == itemId then
            return yd_NullTempItem
        end
        index=index + 1
    end
    return nil
end


--眩晕系统 单位，时间
ActionTotalTools.StunUnit = function (d,s1)
	local j = CreateTimer()
	local t
	t = AddSpecialEffectTarget("Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl", d, "overhead")
	if LoadReal(YH, GetHandleId(d), 2) == 0 then
		JP.EXPauseUnit((d), true)
		TimerStart(j, 0.05, true, function()
			SaveReal(YH, GetHandleId(d), 2, ( LoadReal(YH, GetHandleId(d), 2) - 0.05 ))
			if LoadReal(YH, GetHandleId(d), 2) <= 0 or IsUnitDeadBJ(d) == true then
				JP.EXPauseUnit((d), false)
				DestroyEffect(t)
				PauseTimer(j)
				SaveReal(YH, GetHandleId(d),2,0)
				DestroyTimer(j)
			end
		end)
	else
		DestroyEffect(t)
	end
	SaveReal(YH, GetHandleId(d),2,s1)
end

--范围眩晕 单位 xy轴，范围，时间
ActionTotalTools.RangeStunUnit = function (u,x,y,r,ti)
	local p = GetOwningPlayer(u)
	local u2
	local g0 = CreateGroup()
	GroupEnumUnitsInRange(g0,x,y,r,nil)
	while CountUnitsInGroup(g0) > 0 do
		if ActionTotalTools.Condition_Base(p,FirstOfGroup(g0))then
			ActionTotalTools.StunUnit(FirstOfGroup(g0),ti)
		end
		GroupRemoveUnit(g0,FirstOfGroup(g0))
	end
	DestroyGroup(g0)
end


--回血
ActionTotalTools.AddLife = function (u,r)
	local r2 = smc(u)
	SetUnitState(u,UNIT_STATE_LIFE,r2+r)
end

--减速系统 增加1/减少2，目标，减少/增加的百分比， 攻速1/移速2，时间
ActionTotalTools.SlowDown = function (z0,d,s2,z1,s1)
	local j = CreateTimer()
	s2 = s2 /100
	if z1 == 1 then
		if z0 == 1 then
			JP.SetUnitState(d, ConvertUnitState(0x51), ( GetUnitState(d, ConvertUnitState(0x51)) + s2 ))
		elseif z0 ==2 then
			JP.SetUnitState(d, ConvertUnitState(0x51), ( GetUnitState(d, ConvertUnitState(0x51)) - s2 ))
		end
	end
	if z1 == 2 then
		if z0 == 1 then
			SaveReal(JH, GetHandleId(d), 3, LoadReal(JH, GetHandleId(d), 3) - s2)
		elseif z0 == 2 then
			SaveReal(JH, GetHandleId(d), 3, LoadReal(JH, GetHandleId(d), 3) + s2)
		end
		SetUnitMoveSpeed(d, ( GetUnitDefaultMoveSpeed(d) * ( 1.00 - LoadReal(JH, GetHandleId(d), 3) ) ))
	end
	SaveUnitHandle(JH, GetHandleId(j), 2, d)
    SaveInteger(JH, GetHandleId(j), 2, z1)
    SaveInteger(JH, GetHandleId(j), 3, z0)
    SaveReal(JH, GetHandleId(j), 2, s2)
	TimerStart(j, s1, false, function()
		if z1 == 1 then
			if z0 == 1 then
				JP.SetUnitState(d, ConvertUnitState(0x51), ( GetUnitState(d, ConvertUnitState(0x51)) - s2 ))
			elseif z0 == 2 then
				JP.SetUnitState(d, ConvertUnitState(0x51), ( GetUnitState(d, ConvertUnitState(0x51)) + s2 ))
			end
		end
		if z1 == 2 then
			if z0 == 1 then
				SaveReal(JH, GetHandleId(d), 3, LoadReal(JH, GetHandleId(d), 3) + s2)
			elseif z0 ==2 then
				SaveReal(JH, GetHandleId(d), 3, LoadReal(JH, GetHandleId(d), 3) - s2)
			end
			SetUnitMoveSpeed(d, ( GetUnitDefaultMoveSpeed(d) * ( 1.00 - LoadReal(JH, GetHandleId(d), 3) ) ))
		end
			PauseTimer(j)
			DestroyTimer(j)
	end)
end


--范围减速，来源，xy轴，范围，时间  （减30%移速，50%攻速）
ActionTotalTools.RangeSlowDown = function (u,x,y,r,ti)
	local p = GetOwningPlayer(u)
	local u2
	local g0 = CreateGroup()
	GroupEnumUnitsInRange(g0,x,y,r,nil)
	while CountUnitsInGroup(g0) > 0 do
		if ActionTotalTools.Condition_Base(p,FirstOfGroup(g0))then
			ActionTotalTools.SlowDown(2,FirstOfGroup(g0),30,2,ti)
			ActionTotalTools.SlowDown(2,FirstOfGroup(g0),50,1,ti)
		end
		GroupRemoveUnit(g0,FirstOfGroup(g0))
	end
	DestroyGroup(g0)
end


--刷新指定技能的CD
ActionTotalTools.RefreshAbility = function (u,abid)
	UnitRemoveAbility(u,ActionTotalTools.ID2I(abid))
	UnitAddAbility(u,ActionTotalTools.ID2I(abid))
end

--计时器删除单位
ActionTotalTools.RemoveUnitOnTime = function (u,ti)
	TimerStart(CreateTimer(),ti,false,function()
		RemoveUnit(u)
		DestroyTimer(GetExpiredTimer())
	end)
end

--单位间距
ActionTotalTools.UnitDistance =  function (a,b)
    return SquareRoot(( GetUnitX(a) - GetUnitX(b) ) * ( GetUnitX(a) - GetUnitX(b) ) + ( GetUnitY(a) - GetUnitY(b) ) * ( GetUnitY(a) - GetUnitY(b) ))
end

--坐标距离
ActionTotalTools.XYDistance = function (x,y,x1,y1)
    return SquareRoot((x - x1 ) * ( x - x1 ) + ( y - y1) * ( y - y1 ))
end


--颜色
ActionTotalTools.BLUE = function (s)
    return '|cff00ffff'..s.."|r"
end


ActionTotalTools.RED = function (s)
    return '|cffff0000'..s..'|r'
end


ActionTotalTools.GREEN = function (s)
    return '|cff00ff00'..s..'|r'
end

ActionTotalTools.ORANGE = function (s)
    return '|cfff8a306'..s..'|r'
end


ActionTotalTools.PINK = function (s)
    return '|cfff078cc'..s..'|r'
end

--换行
ActionTotalTools.ENTER = function ()
    return '|n'
end




--技能系统

--改名
ActionTotalTools.CN = function (u,ida,s)
	JP.EXSetAbilityDataString(JP.EXGetUnitAbility(u,ida),1,215,s)
end
--改介绍
ActionTotalTools.CDis = function (u,ida,s)
	JP.EXSetAbilityDataString(JP.EXGetUnitAbility(u,ida),1,218,s)
end
--冷却时间
ActionTotalTools.CCD = function (u,ida,r)
	JP.EXSetAbilityDataReal(JP.EXGetUnitAbility(u,ida),1,105,r)
end
--施法距离
ActionTotalTools.CRng = function (u,ida,r)
	JP.EXSetAbilityDataReal(ida,1,107,r)
end
--图标
ActionTotalTools.CArt = function (u,ida,s)
	JP.EXSetAbilityDataString(ida,1,201,s)
end



ActionTotalTools.SetAttack = function(u,r)
	local r3 = JP.GetUnitState(u,ConvertUnitState(0x12))
	local i = 0
	while i < 10 do
		if r ~= r3 then
			JP.SetUnitState(u, ConvertUnitState(0x12),r)
			r3 = JP.GetUnitState(u, ConvertUnitState(0x12))
		else
			i = 15
		end
		i = i + 1
	end
end


ActionTotalTools.SetAttackSpeed = function (u,r)
	JP.SetUnitState(u, ConvertUnitState(0x25),r)
end

ActionTotalTools.SetAttackRange = function (u,r)
	JP.SetUnitState(u, ConvertUnitState(0x16),r)
end


--设置单位属性(攻击，攻速，攻击距离)
ActionTotalTools.SetUnitState = function (u,Data1,Data2,Data3)
	if Data1 > 0 then
		ActionTotalTools.SetAttack(u,Data1)
	end
	if Data2 > 0 then
		ActionTotalTools.SetAttackSpeed(u,Data2)
	end
	if Data3 > 0 then
		ActionTotalTools.SetAttackRange(u,Data3)
	end
end

ActionTotalTools.PlayerIsOnline = function (p)
	if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
		return true
	else
		return false
	end
end

ActionTotalTools.Modol = function (u,Aid,AbilityFunc)
	
end

ActionTotalTools.UnitTypeId = function (u)
	return GetUnitTypeId(u)
end



--是否为攻击伤害

--创建计时器
ac.CreateTimer = function ()
	return CJ.CreateTimer()
end




--创建计时器窗口
ac.CreateTimerDialog = function (t, s)
	return CreateTimerDialogBJ(t, s)
end

--计时器运行
ac.TimerStart = function (timer,ti,b,func)
	CJ.TimerStart(timer,ti,b,func)
end

--删除计时器窗口
ActionTotalTools.RemoveTimerDialog = function (td)
	DestroyTimerDialog(td)
end

--显示计时器窗口
ac.timerdialoghide = function (timderd,b)
	CJ.TimerDialogDisplay(timderd, b)
end

--对指定玩家隐藏false/显示true2计时器窗口
ActionTotalTools.ShowTimerDialog = function (td,b,p)
	TimerDialogDisplayForPlayerBJ( b,td, p)
end

--改变计时器窗口标题
ac.DialogTitle = function (td, s)
	CJ.TimerDialogSetTitle(td, s)
end

--改变计时器窗口文字颜色(红绿蓝，透明值)
ActionTotalTools.SetTimerDialogColor = function (td,i,i2,i3,i4)
	TimerDialogSetTitleColor(td,i, i2, i3,i4 )
end

--改版计时器窗口时间颜色(红绿蓝，透明值)
ActionTotalTools.SetTimerDialogTimeColor = function (td,i,i2,i3,i4)
	TimerDialogSetTimeColor(td,i, i2, i3,i4 )
end

--添加技能
ActionTotalTools.AddAbility = function (u,s,b)
	UnitAddAbility(u,ActionTotalTools.ID2I(s))
	SetPlayerAbilityAvailable(GetOwningPlayer(u),ActionTotalTools.ID2I(s),b)
end


--播放音效
ac.PlaySound = function (Mu)
	CJ.StartSound(Mu)
end