local ab = ac.ability

local mt = {
    name = '加攻速',
    parent = '耐久光环',
    data1 = 0,
    data1add = 0,
    data2 = 0.1,
    data2add = 0.05,
    tip = '',
    Art = 'ReplaceableTextures\\CommandButtons\\BTNCyclone.blp',
    target = '自己',
    level = 1, --初始等级
    levelmax = 99 --最大等级
}




local id = ab:get(mt)

local num = ac.count
mt.id = id

local list = AbilityList.clist
list[mt.name] = mt


function mt:add(u)
    local table = UnitFunc[u]
    local level = {}
    table[self.name] = level
    level.level = self.level
    ab:dataA(u,num.ID2I(id),self.data1,1)
    ab:dataB(u,num.ID2I(id),0,1)
    if self.levelmax > 1 then
        ab:name(u,num.ID2I(id),self.name..'['..self.level..']',1)
    else
        ab:name(u,num.ID2I(id),self.name,1)
    end
    ab:tip(u,num.ID2I(id),self.tip,1)
    if self.Art ~= false then
        ab:art(u,num.ID2I(id),self.Art)
    end
end


function mt:lv(u,i)
    local table = UnitFunc[u]
    local table2 = table['加攻速']
    if self.levelmax >= i then
        table2.level = i
        ab:name(u,num.ID2I(id),self.name..'['..table2.level..']',1)
        ab:dataA(u,num.ID2I(id),self.data1+(self.data1add*(table2.level-1)),1)
        ab:refrash(u,num.ID2I(id))
    end
end