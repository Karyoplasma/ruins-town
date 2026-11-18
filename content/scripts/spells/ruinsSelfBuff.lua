local Base = require("spells/timed")
local Script = setmetatable({}, { __index = Base })
Script.__index = Script

function Script:transformTarget(mechanics, aimPoint, spellTarget)
	local caster = mechanics:getUnitCaster()
	if not caster or not self:isReceptive(mechanics, caster) then return {} end

	return {
		{
			unit = caster,
			hex = caster:getPosition()
		}
	}
end

return Script