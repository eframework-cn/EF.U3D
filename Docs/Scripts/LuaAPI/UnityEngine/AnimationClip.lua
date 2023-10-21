---@class UnityEngine.AnimationClip : UnityEngine.Object
---@field length float
---@field frameRate float
---@field wrapMode UnityEngine.WrapMode
---@field localBounds UnityEngine.Bounds
---@field legacy bool
---@field humanMotion bool
---@field empty bool
---@field hasGenericRootTransform bool
---@field hasMotionFloatCurves bool
---@field hasMotionCurves bool
---@field hasRootCurves bool
---@field events UnityEngine.AnimationEvent[]
local AnimationClip = {}

---@param go UnityEngine.GameObject
---@param time float
function AnimationClip:SampleAnimation(go, time) end

---@param relativePath System.String
---@param type System.Type
---@param propertyName System.String
---@param curve UnityEngine.AnimationCurve
function AnimationClip:SetCurve(relativePath, type, propertyName, curve) end

function AnimationClip:EnsureQuaternionContinuity() end

function AnimationClip:ClearCurves() end

---@param evt UnityEngine.AnimationEvent
function AnimationClip:AddEvent(evt) end

UnityEngine.AnimationClip = AnimationClip