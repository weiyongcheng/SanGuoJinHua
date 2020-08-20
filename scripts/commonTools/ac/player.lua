local CJ = require 'jass.common'

local dbg = require 'jass.debug'


local player = {}
ac.player = player

--获取玩家名




--漂浮文字系统
player.TextTagFull = function (l__s,u,r,g,b,l__v,p,size)
	local l__txt=CJ.CreateTextTag()
	CJ.SetTextTagVisibility(l__txt,false)
	if CJ.GetLocalPlayer()==p then
		CJ.SetTextTagVisibility(l__txt,true)
	end
	CJ.SetTextTagText(l__txt,l__s,size)
	CJ.SetTextTagPosUnit(l__txt,u,20)
	CJ.SetTextTagColor(l__txt,r,g,b,l__v)
	CJ.SetTextTagVelocity(l__txt,0.05*CJ.Cos(1.571),0.05*CJ.Sin(1.571))
	CJ.SetTextTagFadepoint(l__txt,.75)
	CJ.SetTextTagLifespan(l__txt,3)
	CJ.SetTextTagPermanent(l__txt,false)
	l__txt=nil
end





--是否是玩家
player.is_player = function (player)
	return CJ.GetPlayerController(player) == CJ.MAP_CONTROL_USER and CJ.GetPlayerSlotState(player) == CJ.PLAYER_SLOT_STATE_PLAYING
end









--获取玩家



--禁止框选




--允许框选



--获取镜头属性
--	镜头属性


--设置镜头目标


--旋转镜头





--允许UI


--禁止UI





--显示界面
--	[转换时间]


--隐藏界面
--	[转换时间]






local function init()
    player.count = 0

	for i = 1, 16 do
		player[i] = CJ.Player(i-1)
		dbg.handle_ref(player[i])

		--是否在线
		if player.is_player(player[i]) then
			player.count = player.count + 1
		end


	end
end


init()


return player