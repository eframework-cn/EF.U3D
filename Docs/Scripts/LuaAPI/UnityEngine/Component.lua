---@class UnityEngine.Component : UnityEngine.Object
---@field transform UnityEngine.Transform
---@field gameObject UnityEngine.GameObject
---@field tag System.String
local Component = {}

---@overload fun(type:System.String):UnityEngine.Component
---@param type System.Type
---@return UnityEngine.Component
function Component:GetComponent(type) end

---@param type System.Type
---@param component UnityEngine.Component
---@return bool
function Component:TryGetComponent(type, component) end

---@overload fun(t:System.Type):UnityEngine.Component
---@param t System.Type
---@param includeInactive bool
---@return UnityEngine.Component
function Component:GetComponentInChildren(t, includeInactive) end

---@overload fun(t:System.Type):UnityEngine.Component[]
---@param t System.Type
---@param includeInactive bool
---@return UnityEngine.Component[]
function Component:GetComponentsInChildren(t, includeInactive) end

---@overload fun(t:System.Type):UnityEngine.Component
---@param t System.Type
---@param includeInactive bool
---@return UnityEngine.Component
function Component:GetComponentInParent(t, includeInactive) end

---@overload fun(t:System.Type):UnityEngine.Component[]
---@param t System.Type
---@param includeInactive bool
---@return UnityEngine.Component[]
function Component:GetComponentsInParent(t, includeInactive) end

---@overload fun(type:System.Type, results:table):void
---@param type System.Type
---@return UnityEngine.Component[]
function Component:GetComponents(type) end

---@param tag System.String
---@return bool
function Component:CompareTag(tag) end

---@overload fun(methodName:System.String, value:System.Object):void
---@overload fun(methodName:System.String):void
---@overload fun(methodName:System.String, options:UnityEngine.SendMessageOptions):void
---@param methodName System.String
---@param value System.Object
---@param options UnityEngine.SendMessageOptions
function Component:SendMessageUpwards(methodName, value, options) end

---@overload fun(methodName:System.String):void
---@overload fun(methodName:System.String, value:System.Object, options:UnityEngine.SendMessageOptions):void
---@overload fun(methodName:System.String, options:UnityEngine.SendMessageOptions):void
---@param methodName System.String
---@param value System.Object
function Component:SendMessage(methodName, value) end

---@overload fun(methodName:System.String, parameter:System.Object):void
---@overload fun(methodName:System.String):void
---@overload fun(methodName:System.String, options:UnityEngine.SendMessageOptions):void
---@param methodName System.String
---@param parameter System.Object
---@param options UnityEngine.SendMessageOptions
function Component:BroadcastMessage(methodName, parameter, options) end

UnityEngine.Component = Component