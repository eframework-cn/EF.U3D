---@class UnityEngine.Events.UnityEvent<bool> : UnityEngine.Events.UnityEventBase
local UnityEvent_bool = {}

---@param call UnityEngine.Events.UnityAction
function UnityEvent_bool:AddListener(call) end

---@param call UnityEngine.Events.UnityAction
function UnityEvent_bool:RemoveListener(call) end

---@param arg0 bool
function UnityEvent_bool:Invoke(arg0) end

UnityEngine.Events.UnityEvent_bool = UnityEvent_bool

---@class UnityEngine.Events.UnityEvent<string> : UnityEngine.Events.UnityEventBase
local UnityEvent_string = {}

---@param call UnityEngine.Events.UnityAction
function UnityEvent_string:AddListener(call) end

---@param call UnityEngine.Events.UnityAction
function UnityEvent_string:RemoveListener(call) end

---@param arg0 System.String
function UnityEvent_string:Invoke(arg0) end

UnityEngine.Events.UnityEvent_string = UnityEvent_string