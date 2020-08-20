
--本次导入
local flag = true

if not flag then
    return
end

local prefix = [[jass\GUI\Widget\TableView\src\]]
local name=''

--导入
name = 'TableView.fdf'
import('ui\\'..name)  (prefix..name, true)
print('[import]'..name)
