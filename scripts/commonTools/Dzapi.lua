local CJ = require "jass.common"
local DzapiLua = {}

--替换单位模型 单位  模型的字符串
DzapiLua.ModolChange = function (u,s)
	CJ.udg_mu = u
    CJ.udg_ms = s
	TriggerExecute(gg_trg_ChangeModol)
end

--读取字符串 玩家，存档名字，
--类型i
--1，获取玩家p，s中储存的字符串
--2，全局存档s里的字符串
--3，获取p的工会名称
function LDstr(p,s,i)
    CJ.udg_cdp = p
    CJ.udg_cds = s
    CJ.udg_BHnum = i
    TriggerExecute(gg_trg_loadCDstr)
    local s2 = CJ.udg_cds2
    CJ.udg_cds2 = ""
    return s2
end


--储存字符串 玩家，存档名字，储存的字符串
--类型i
--1，储存p，s，为s1
--2，设置p的s房间显示为s1
function SVstr(p,s,s1,i)
    CJ.udg_cdp = p
    CJ.udg_cds = s
    CJ.udg_cds2 = s1
    CJ.udg_BHnum = i
    TriggerExecute(gg_trg_SaveCDstr)
end

--储存储存整数
--类型i2
--1，储存p，s，为i
--2，设置p的s商城道具，使用i次
function SVint(p,s,i,i2)
    CJ.udg_cdp = p
    CJ.udg_cds = s
    CJ.udg_cdn = i
    CJ.udg_BHnum = i2
    TriggerExecute(gg_trg_SaveCDIngenter)
end


--读取整数
--类型i2
--1，获取p，s里储存的郑虎
--2，获取p的地图等级
--3，获取p的总签到天数
--4，获取p的最高连续签到天数
--5，获取p的当前连续签到天数
--6，获取p的cds商品剩余库存次数
--7，获取p的游戏局数
--8，获取p的地图等级排名
--10,获取地图总评论次数
function LDint(p,s,i,i2)
    CJ.udg_cdp = p
    CJ.udg_cds = s
    CJ.udg_cdn2 = i
    CJ.udg_BHnum = i2
    TriggerExecute(gg_trg_LoadCDIngenter)
    local ir = CJ.udg_cdn
    return ir
end


--获取布尔值
--1，获取p是否拥有s，对应的商城工具
--2，获取地图是否RPG大厅启动
--3，获取p是否为鉴赏家
--4，获取p是否战网账号
--5，p是否为本图作者
--6，p是否收藏过地图
--7，p是否为回归玩家
--8，p的消费在（1-199）
--9，p的消费在（200-499）
--10，p的消费在（500-999）
--11，p的消费大1000
--12，p是否购买了重置版
--13，p是否为平台VIP
function LDBuer(p,s,i,i2)
    CJ.udg_cdp = p
    CJ.udg_cds = s
    CJ.udg_BHnum = i2
    TriggerExecute(gg_trg_LoadBuer)
    local b = CJ.udg_CDBUer
    return b
end



return DzapiLua