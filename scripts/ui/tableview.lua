local cj = require 'jass.common'
local lcj = require 'jass.lcj'


local ui = ui

local mt = {}
ui.tableview = mt


--调用触发器
local trg = cj.Trg_Call_TableViewAPI
local evaluate = cj.TriggerEvaluate
local function call()
    evaluate(trg)
end


--新建信息项
---@param table integer
---@param pos integer | "插入位置，可选"
---@return integer
function mt.new_item(table, pos)
    lcj.begin(nil, 1)
    lcj.pushInt(table)
    lcj.pushInt(pos or -1)
    call()
    return lcj.popInt() or 0
end

--移除信息项
--  table: tableview 控件句柄
--  item_id:信息句柄
function mt.remove_item(table, item_id)
    lcj.begin(nil, 2)
    lcj.pushInt(table)
    lcj.pushInt(item_id)
    call()
end


--执行过滤器
--  table: tableview 控件句柄
--  force:boolean, 是否重新刷新
function mt.do_filter(table, force)
    lcj.begin(nil, 6)
    lcj.pushInt(table)
    lcj.pushB(force)
    call()
end

--设置字符信息
-- p:玩家,指定玩家显示
--  table: tableview 控件句柄
--  item_id: 信息项句柄
--  data:index: 数据索引
--  str:string, 数据内容
function mt.set_str(p, table, item_id, data_index, str)
    lcj.begin(p, 7)
    lcj.pushInt(table)
    lcj.pushInt(item_id)
    lcj.pushInt(data_index)
    lcj.pushStr(str)
    call()
end

--设置整数信息
-- p:玩家,指定玩家显示
--  table: tableview 控件句柄
--  item_id: 信息项句柄
--  data:index: 数据索引
--  value:number, 数据内容
function mt.set_int(p, table, item_id, data_index, value)
    lcj.begin(p, 8)
    lcj.pushInt(table)
    lcj.pushInt(item_id)
    lcj.pushInt(data_index)
    lcj.pushInt(value)
    call()
end

return mt