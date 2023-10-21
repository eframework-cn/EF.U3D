---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
local UnityEvent = {}

---@param call UnityEngine.Events.UnityAction
function UnityEvent:AddListener(call) end

---@param call UnityEngine.Events.UnityAction
function UnityEvent:RemoveListener(call) end

function UnityEvent:Invoke() end

UnityEngine.Events.UnityEvent = UnityEvent