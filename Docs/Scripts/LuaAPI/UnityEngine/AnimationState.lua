---@class UnityEngine.AnimationState : UnityEngine.TrackedReference
---@field enabled bool
---@field weight float
---@field wrapMode UnityEngine.WrapMode
---@field time float
---@field normalizedTime float
---@field speed float
---@field normalizedSpeed float
---@field length float
---@field layer int
---@field clip UnityEngine.AnimationClip
---@field name System.String
---@field blendMode UnityEngine.AnimationBlendMode
local AnimationState = {}

---@overload fun(mix:UnityEngine.Transform, recursive:bool):void
---@param mix UnityEngine.Transform
function AnimationState:AddMixingTransform(mix) end

---@param mix UnityEngine.Transform
function AnimationState:RemoveMixingTransform(mix) end

UnityEngine.AnimationState = AnimationState