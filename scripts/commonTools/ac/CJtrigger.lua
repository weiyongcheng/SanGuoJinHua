local jass = require 'jass.common'
local debug = require 'jass.debug'

war3 = {}

Event = {
    ['被攻击'] = EVENT_PLAYER_UNIT_ATTACKED
}

function war3.CreateTrigger(call_back)
	local trg = jass.CreateTrigger()
	debug.handle_ref(trg)
	jass.TriggerAddAction(trg, call_back)
	return trg
end

function war3.DestroyTrigger(trg)
	jass.DestroyTrigger(trg)
	debug.handle_unref(trg)
end



