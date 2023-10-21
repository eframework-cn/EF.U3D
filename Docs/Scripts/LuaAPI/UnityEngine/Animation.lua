---@class UnityEngine.Animation : UnityEngine.Behaviour
---@field clip UnityEngine.AnimationClip
---@field playAutomatically bool
---@field wrapMode UnityEngine.WrapMode
---@field isPlaying bool
---@field Item UnityEngine.AnimationState
---@field animatePhysics bool
---@field cullingType UnityEngine.AnimationCullingType
---@field localBounds UnityEngine.Bounds
local Animation = {}

---@overload fun(name:System.String):void
function Animation:Stop() end

---@overload fun(name:System.String):void
function Animation:Rewind() end

function Animation:Sample() end

---@param name System.String
---@return bool
function Animation:IsPlaying(name) end

---@overload fun(mode:UnityEngine.PlayMode):bool
---@overload fun(animation:System.String):bool
---@overload fun(animation:System.String, mode:UnityEngine.PlayMode):bool
---@return bool
function Animation:Play() end

---@overload fun(animation:System.String, fadeLength:float):void
---@overload fun(animation:System.String, fadeLength:float, mode:UnityEngine.PlayMode):void
---@param animation System.String
function Animation:CrossFade(animation) end

---@overload fun(animation:System.String, targetWeight:float):void
---@overload fun(animation:System.String, targetWeight:float, fadeLength:float):void
---@param animation System.String
function Animation:Blend(animation) end

---@overload fun(animation:System.String, fadeLength:float):UnityEngine.AnimationState
---@overload fun(animation:System.String, fadeLength:float, queue:UnityEngine.QueueMode):UnityEngine.AnimationState
---@overload fun(animation:System.String, fadeLength:float, queue:UnityEngine.QueueMode, mode:UnityEngine.PlayMode):UnityEngine.AnimationState
---@param animation System.String
---@return UnityEngine.AnimationState
function Animation:CrossFadeQueued(animation) end

---@overload fun(animation:System.String, queue:UnityEngine.QueueMode):UnityEngine.AnimationState
---@overload fun(animation:System.String, queue:UnityEngine.QueueMode, mode:UnityEngine.PlayMode):UnityEngine.AnimationState
---@param animation System.String
---@return UnityEngine.AnimationState
function Animation:PlayQueued(animation) end

---@overload fun(clip:UnityEngine.AnimationClip, newName:System.String, firstFrame:int, lastFrame:int):void
---@overload fun(clip:UnityEngine.AnimationClip, newName:System.String, firstFrame:int, lastFrame:int, addLoopFrame:bool):void
---@param clip UnityEngine.AnimationClip
---@param newName System.String
function Animation:AddClip(clip, newName) end

---@overload fun(clipName:System.String):void
---@param clip UnityEngine.AnimationClip
function Animation:RemoveClip(clip) end

---@return int
function Animation:GetClipCount() end

---@param layer int
function Animation:SyncLayer(layer) end

---@return System.Collections.IEnumerator
function Animation:GetEnumerator() end

---@param name System.String
---@return UnityEngine.AnimationClip
function Animation:GetClip(name) end

UnityEngine.Animation = Animation