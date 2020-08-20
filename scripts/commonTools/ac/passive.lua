
local dam = require 'commonTools.ac.damage'
local unit = require 'commonTools.ac.unit'

local Passive = {}


ac.Pas = setmetatable({}, {__index = function(self, name)
    self[name] = {}
    setmetatable(self[name], Passive)
    self[name].name = name
    --init_skill(self[name])
    return self[name]
end})



function Passive:__call(data)
	self.data = data
	for k, v in pairs(data) do
		self[k] = v
	end
	--self.has_inited = false
	--init_skill(self)
	return self
end



return Passive