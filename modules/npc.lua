local addon, bdNameplates = ...
local config = bdCore.config.profile['Nameplates']

-- v1 done
function bdNameplates:npcStyle(self, event, unit)
	self.Name:SetTextColor(bdNameplates:unitColor(unit))
	if (self.currentStyle and self.currentStyle == "npc") then return end

	-- castbar
	self:DisableElement("Castbar")

	-- healthbar
	self.Health:Hide()

	-- powerbar
	self.Power:Hide()

	-- name
	self.Name:Show()

	-- auras
	self.Auras:Hide()

	self.currentStyle = "npc"
end