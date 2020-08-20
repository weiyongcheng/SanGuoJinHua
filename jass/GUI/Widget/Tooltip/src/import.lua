
--本次导入
local flag = true

if not flag then
    return
end

local prefix = [[jass\GUI\Widget\Tooltip\src\]]
local name=''

--导入
name = 'Tooltip.fdf'
import('ui\\'..name)  (prefix..name, true)
print('[import]', name)
