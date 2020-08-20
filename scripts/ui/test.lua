local cj = require 'jass.common'

local panels = require 'ui.panels'
local ui = ui



------技能------
local ability_item_ids = {}
local ability = panels.ability
for i = 1, 30   do
    local id = ability:new_item() {
        art = [[ReplaceableTextures\PassiveButtons\PASBTNFrost.blp]],
        name = '麻痹戒指',
        subscript = ('Lv%d'):format(i),
        tip = [[能够麻痹佩戴者的戒指，让佩戴者沉迷于麻痹世界]]
    }
    --print(i, '=', id)
    ability_item_ids[id] = true
end
--刷新显示
ability:fresh()

--延迟4秒显示技能选择器
ac.wait(4000, function ()
    --清空显示队列
    ability:clear()
    -- 随便拿出3个插入到显示队列
    ability:insert(nil, 3)
    ability:insert(nil, 4)
    ability:insert(nil, 5)
    -- 显示
    ability:show(nil, true)
end)

-- 玩家选择技能
ac.game:event '玩家-选择技能'(function (_, p, item_id)
    print(('玩家[%d] [%s] 选择了技能 [%d]'):format(cj.GetPlayerId(p), cj.GetPlayerName(p), item_id))

    -- 把这个玩家 这个技能等级说明改为66
    ability:set_item_str(p, item_id, ui.DATA_INDEX_SUBSCRIPT, '66')

    --隐藏该玩家技能选择器
    ability:show(p, false)
    

end)

-------天赋-----
local talent_item_ids = {}
local talent = panels.talent
for i = 1, 5   do
    local id = talent:new_item() {
        art = [[ReplaceableTextures\CommandButtons\BTNMarkOfFire.blp]],
        name = '火焰攻击',
        subscript = ('Lv%d'):format(i),
        tip = [[增加攻击力]]
    }
    talent_item_ids[id] = true
end
--刷新显示
talent:fresh()
