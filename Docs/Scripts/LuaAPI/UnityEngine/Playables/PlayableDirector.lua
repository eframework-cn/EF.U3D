---@class UnityEngine.Playables.PlayableDirector : UnityEngine.Behaviour
---@field state UnityEngine.Playables.PlayState
---@field extrapolationMode UnityEngine.Playables.DirectorWrapMode
---@field playableAsset UnityEngine.Playables.PlayableAsset
---@field playableGraph UnityEngine.Playables.PlayableGraph
---@field playOnAwake bool
---@field timeUpdateMode UnityEngine.Playables.DirectorUpdateMode
---@field time double
---@field initialTime double
---@field duration double
---@field played System.Action
---@field paused System.Action
---@field stopped System.Action
local PlayableDirector = {}

function PlayableDirector:DeferredEvaluate() end

---@overload fun(asset:UnityEngine.Playables.PlayableAsset, mode:UnityEngine.Playables.DirectorWrapMode):void
---@overload fun():void
---@param asset UnityEngine.Playables.PlayableAsset
function PlayableDirector:Play(asset) end

---@param key UnityEngine.Object
---@param value UnityEngine.Object
function PlayableDirector:SetGenericBinding(key, value) end

function PlayableDirector:Evaluate() end

function PlayableDirector:Stop() end

function PlayableDirector:Pause() end

function PlayableDirector:Resume() end

function PlayableDirector:RebuildGraph() end

---@param id UnityEngine.PropertyName
function PlayableDirector:ClearReferenceValue(id) end

---@param id UnityEngine.PropertyName
---@param value UnityEngine.Object
function PlayableDirector:SetReferenceValue(id, value) end

---@param id UnityEngine.PropertyName
---@param idValid bool
---@return UnityEngine.Object
function PlayableDirector:GetReferenceValue(id, idValid) end

---@param key UnityEngine.Object
---@return UnityEngine.Object
function PlayableDirector:GetGenericBinding(key) end

---@param key UnityEngine.Object
function PlayableDirector:ClearGenericBinding(key) end

function PlayableDirector:RebindPlayableGraphOutputs() end

UnityEngine.Playables.PlayableDirector = PlayableDirector