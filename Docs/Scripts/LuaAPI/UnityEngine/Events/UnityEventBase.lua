---@class UnityEngine.Events.UnityEventBase : System.Object
local UnityEventBase = {}

---@return int
function UnityEventBase:GetPersistentEventCount() end

---@param index int
---@return UnityEngine.Object
function UnityEventBase:GetPersistentTarget(index) end

---@param index int
---@return System.String
function UnityEventBase:GetPersistentMethodName(index) end

---@param index int
---@param state UnityEngine.Events.UnityEventCallState
function UnityEventBase:SetPersistentListenerState(index, state) end

---@param index int
---@return UnityEngine.Events.UnityEventCallState
function UnityEventBase:GetPersistentListenerState(index) end

function UnityEventBase:RemoveAllListeners() end

---@return System.String
function UnityEventBase:ToString() end

---@overload fun(objectType:System.Type, functionName:System.String, argumentTypes:System.Type[]):System.Reflection.MethodInfo
---@param obj System.Object
---@param functionName System.String
---@param argumentTypes System.Type[]
---@return System.Reflection.MethodInfo
function UnityEventBase.GetValidMethodInfo(obj, functionName, argumentTypes) end

UnityEngine.Events.UnityEventBase = UnityEventBase