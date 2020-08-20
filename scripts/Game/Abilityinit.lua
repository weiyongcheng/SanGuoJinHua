local abfunc = {
    ['通魔'] = {
        ability = {},
        count = 0
    },
    ['月刃'] = {
        ability = {},
        count = 0
    },
    ['心灵之火'] = {
        ability = {},
        count = 0
    },
    ['嗜血术'] = {
        ability = {},
        count = 0
    },
    ['致命一击'] = {
        ability = {},
        count = 0
    },
    ['重击'] = {
        ability = {},
        count = 0
    },
    ['分裂攻击'] = {
        ability = {},
        count = 0
    },
    ['闪避'] = {
        ability = {},
        count = 0
    },
    ['醉拳'] = {
        ability = {},
        count = 0
    },
    ['弹幕攻击'] = {
        ability = {},
        count = 0
    },
    ['浸毒武器'] = {
        ability = {},
        count = 0
    },
    ['尖刺外壳'] = {
        ability = {},
        count = 0
    },
    ['专注光环'] = {
        ability = {},
        count = 0
    },
    ['耐久光环'] = {
        ability = {},
        count = 0
    },
    ['邪恶光环'] = {
        ability = {},
        count = 0
    },
    ['吸血光环'] = {
        ability = {},
        count = 0
    },
    ['强击光环'] = {
        ability = {},
        count = 0
    },
    ['命令光环'] = {
        ability = {},
        count = 0
    },
    ['荆棘光环'] = {
        ability = {},
        count = 0
    },
}

ac.abfunc = abfunc


for i = 0,999 do
    if i < 100 then
        local table  = abfunc['通魔']
        local table2 = table.ability
        if i < 10 then
            table2[i] = 'A00'..i
        else
            table2[i] = 'A0'..i
        end
    else
        if i < 200 then
            local table  = abfunc['月刃']
            local table2 = table.ability
            table2[i-100] = 'A'..i
        elseif i < 250 then
            local table  = abfunc['心灵之火']
            local table2 = table.ability
            table2[i-200] = 'A'..i
        elseif i < 300 then
            local table  = abfunc['嗜血术']
            local table2 = table.ability
            table2[i-250] = 'A'..i
        elseif i < 350 then
            local table  = abfunc['致命一击']
            local table2 = table.ability
            table2[i-300] = 'A'..i
        elseif i < 400 then
            local table  = abfunc['重击']
            local table2 = table.ability
            table2[i-350] = 'A'..i
        elseif i < 450 then
            local table  = abfunc['分裂攻击']
            local table2 = table.ability
            table2[i-400] = 'A'..i
        elseif i < 500 then
            local table  = abfunc['闪避']
            local table2 = table.ability
            table2[i-450] = 'A'..i
        elseif i < 550 then
            local table  = abfunc['醉拳']
            local table2 = table.ability
            table2[i-500] = 'A'..i
        elseif i < 600 then
            local table  = abfunc['弹幕攻击']
            local table2 = table.ability
            table2[i-550] = 'A'..i
        elseif i < 650 then
            local table  = abfunc['浸毒武器']
            local table2 = table.ability
            table2[i-600] = 'A'..i
        elseif i < 700 then
            local table  = abfunc['尖刺外壳']
            local table2 = table.ability
            table2[i-650] = 'A'..i
        elseif i < 750 then
            local table  = abfunc['专注光环']
            local table2 = table.ability
            table2[i-700] = 'A'..i
        elseif i < 800 then
            local table  = abfunc['耐久光环']
            local table2 = table.ability
            table2[i-750] = 'A'..i
        elseif i < 850 then
            local table  = abfunc['邪恶光环']
            local table2 = table.ability
            table2[i-800] = 'A'..i
        elseif i < 900 then
            local table  = abfunc['吸血光环']
            local table2 = table.ability
            table2[i-850] = 'A'..i
        elseif i < 950 then
            local table  = abfunc['强击光环']
            local table2 = table.ability
            table2[i-900] = 'A'..i
        elseif i < 1000 then
            local table  = abfunc['命令光环']
            local table2 = table.ability
            table2[i-950] = 'A'..i
        end
    end
end



for i = 0,49 do
    local table  = abfunc['荆棘光环']
    local table2 = table.ability
    if i < 10 then
        table2[i] = 'S00'..i
    else
        table2[i] = 'S0'..i
    end
end


AbilityList.typelist = abfunc
AbilityList.clist = {}