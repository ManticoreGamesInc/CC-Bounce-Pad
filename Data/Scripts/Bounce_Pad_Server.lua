---@type Folder
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

---@type Trigger
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

local BOUNCE_STRENGTH = ROOT:GetCustomProperty("BounceStrength")

local ENABLE_RAGDOLL_AFTER = ROOT:GetCustomProperty("EnableRagdollAfter")

local DIRECTION = ROOT:GetCustomProperty("Direction")

local trigger_transform = TRIGGER:GetWorldTransform()
local direction = DIRECTION

if(direction == Vector3.ZERO) then
	direction = trigger_transform:GetUpVector()
end

local function on_trigger_enter(trigger, other)
	if(other:IsA("Player")) then
		
		other:SetVelocity(direction * BOUNCE_STRENGTH)

		if(ENABLE_RAGDOLL_AFTER > 0) then
			Task.Wait(ENABLE_RAGDOLL_AFTER)
			other:EnableRagdoll()
		end
	end
end

TRIGGER.beginOverlapEvent:Connect(on_trigger_enter)