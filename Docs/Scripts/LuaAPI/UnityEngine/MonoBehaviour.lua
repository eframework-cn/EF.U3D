---@class UnityEngine.MonoBehaviour : UnityEngine.Behaviour
---@field useGUILayout bool
local MonoBehaviour = {}

---@overload fun(methodName:System.String):bool
---@return bool
function MonoBehaviour:IsInvoking() end

---@overload fun(methodName:System.String):void
function MonoBehaviour:CancelInvoke() end

---@param methodName System.String
---@param time float
function MonoBehaviour:Invoke(methodName, time) end

---@param methodName System.String
---@param time float
---@param repeatRate float
function MonoBehaviour:InvokeRepeating(methodName, time, repeatRate) end

---@overload fun(methodName:System.String, value:System.Object):UnityEngine.Coroutine
---@overload fun(routine:System.Collections.IEnumerator):UnityEngine.Coroutine
---@param methodName System.String
---@return UnityEngine.Coroutine
function MonoBehaviour:StartCoroutine(methodName) end

---@overload fun(routine:UnityEngine.Coroutine):void
---@overload fun(methodName:System.String):void
---@param routine System.Collections.IEnumerator
function MonoBehaviour:StopCoroutine(routine) end

function MonoBehaviour:StopAllCoroutines() end

---@param message System.Object
function MonoBehaviour.print(message) end

UnityEngine.MonoBehaviour = MonoBehaviour