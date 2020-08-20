local cj = require 'jass.common'
local lcj = require 'jass.lcj'


local ui = ui
local tableview = require 'ui.tableview'

local mt = {}

mt.__index = mt
mt.type = 'panel'

-- tableview 句柄
mt.table = 0

-- 信息集
mt.infoset = nil

--刷新
-- force:boolean, 强势刷新
function mt:fresh(force)
    tableview.do_filter(self.table, force or true)
end

-- 新建数据项并添加值末尾
--  @数据项句柄
function mt:new_item()
    return tableview.new_item(self.table, -1)
end

-- 删除数据项
function mt:remove_item(item_id)
    return tableview.remove_item(self.table, item_id)
end

-- 修改字符串信息
--  item_id: 信息项句柄
--  data:index: 数据索引
--  value:string, 数据内容
function mt:set_item_str(p, item_id, data_index, value)
    tableview.set_str(p, self.table, item_id, data_index, value)
end

-- 修改整数信息
--  item_id: 信息项句柄
--  data:index: 数据索引
--  value:number, 数据内容
function mt:set_item_int(p, item_id, data_index, value)
    tableview.set_int(p, self.table, item_id, data_index, value)
end

local api = {}

--调用触发器
local trg = cj.Trg_Call_PanelsUI
local evaluate = cj.TriggerEvaluate
local function call()
    evaluate(trg)
end

local saveStr = cj.SaveStr

------ 技能 -----
local ability = setmetatable({}, mt)
api.ability = ability

-- 信息集
ability.infoset = cj.PanelAbility_InfoSet

local function get_ability_table()
    lcj.begin(nil, 5)
    call()
    return lcj.popInt() or 0
end
-- tableview 句柄
ability.table = get_ability_table()

-- 在技能选择器tableview 显示队列中插入数据项
-- p:玩家, 指定忘记
--  item_id: 数据项
function ability:insert(p, item_id)
    lcj.begin(p, 1)
    lcj.pushInt(item_id)
    call()
end

-- 清空技能选择器tableview 显示队列
function ability:clear(p)
    lcj.begin(p, 2)
    call()
end


-- 显示技能选择器tableview
function ability:show(p, flag)
    if flag == nil  then
        flag = true
    end
    lcj.begin(p, 3)
    lcj.pushB(flag)
    call()
end

--新建技能数据项
function ability:new_item()
    local item_id = tableview.new_item(self.table, -1)
    if not item_id or item_id < 1   then
        return function()
            return 0
        end
    end
    return function(data)
        saveStr(self.infoset, item_id, ui.DATA_INDEX_ART, data.art or "")
        saveStr(self.infoset, item_id, ui.DATA_INDEX_NAME, data.name or "")
        saveStr(self.infoset, item_id, ui.DATA_INDEX_TOOLTIP_A, data.tip or "")
        saveStr(self.infoset, item_id, ui.DATA_INDEX_SUBSCRIPT, data.subscript or "")
        return item_id
    end
end

--技能选择器 回调
cj.TriggerAddAction(cj.PanelAbilitySelector_Event_Trigger, function ()
    local p = cj.PanelAbilitySelector_Trigger_Player
    local item_id = cj.PanelAbilitySelector_Trigger_Item_ID
    if not p  or not item_id or item_id <=1 then
        --log.error('技能选择器 选择,无效的参数:', cj.GetPlayerId(p), item_id)
        return
    end
    ac.game:event_notify('玩家-选择技能', p, item_id)
end)



----- 天赋 -----
local talent = setmetatable({}, mt)
api.talent = talent

-- 信息集
talent.infoset = cj.PanelTalent_InfoSet

local function get_talent_table()
    lcj.begin(nil, 4)
    call()
    return lcj.popInt() or 0
end
-- tableview 句柄
talent.table =get_talent_table()

--新建天赋项目
function talent:new_item()
    local item_id = tableview.new_item(self.table, -1)
    if not item_id or item_id < 1   then
        return function()
            return 0
        end
    end
    return function(data)
        saveStr(self.infoset, item_id, ui.DATA_INDEX_ART, data.art or "")
        saveStr(self.infoset, item_id, ui.DATA_INDEX_NAME, data.name or "")
        saveStr(self.infoset, item_id, ui.DATA_INDEX_TOOLTIP_A, data.tip or "")
        saveStr(self.infoset, item_id, ui.DATA_INDEX_SUBSCRIPT, data.subscript or "")
        return item_id
    end
end


return api