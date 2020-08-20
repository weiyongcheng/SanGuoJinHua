
local prefix='jass\\GUI\\src\\'
local name = ''

--toc
name='ui.toc'
import('ui\\'..name)  (prefix..name, true)
print('-ui.toc导入...')
--fdf
name='template.fdf'
import('ui\\'..name)  (prefix..name, true)
print('-template.fdf导入...')

name='ui.fdf'
import('ui\\'..name)  (prefix..name, true)
print('-ui.ffdf导入...')



--按钮背景
name='ButtonTooltip_Backdrop.blp'
import('ui\\'..name)  (prefix..name, true)
name='ButtonTooltip_Border.blp'
import('ui\\'..name)  (prefix..name, true)