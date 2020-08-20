
--本次导入
local flag = true

if not flag then
    return
end

local prefix = [[jass\GUI\WidgetItem\src\]]
local name=''

--导入
name = 'WidgetItem.fdf'
import('ui\\'..name)  (prefix..name, true)
print('[import]'..name)
