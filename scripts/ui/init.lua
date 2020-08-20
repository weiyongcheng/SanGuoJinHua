local cj = require 'jass.common'

ui = {}

--宏
ui.DEFAULT_ICON = [[ui\alphatexture.blp]]
ui.DATA_INDEX_ART = 0x2
ui.DATA_INDEX_NAME = 0x3
ui.DATA_INDEX_TOOLTIP_A = 0x4
ui.DATA_INDEX_TOOLTIP_B = 0x5
ui.DATA_INDEX_TOOLTIP_C = 0x6
ui.DATA_INDEX_SUBSCRIPT = 0X7
ui.DATA_INDEX_ABILITY_SELECTOR_SUBSCRIPT = 0x21

--tableview
require 'ui.tableview'

-- tableview 面板
require 'ui.panels'

