---@type Folder
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type Trigger
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

---@type Audio
local AUDIO = script:GetCustomProperty("Audio"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local function on_trigger_enter(trigger, other)
	if(other == LOCAL_PLAYER) then
		AUDIO:Play()
	end
end

TRIGGER.beginOverlapEvent:Connect(on_trigger_enter)