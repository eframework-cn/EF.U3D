---@class UnityEngine.GameObject : UnityEngine.Object
---@field transform UnityEngine.Transform
---@field layer int
---@field activeSelf bool
---@field activeInHierarchy bool
---@field isStatic bool
---@field tag System.String
---@field scene UnityEngine.SceneManagement.Scene
---@field sceneCullingMask ulong
---@field gameObject UnityEngine.GameObject
local GameObject = {}

---@param type UnityEngine.PrimitiveType
---@return UnityEngine.GameObject
function GameObject.CreatePrimitive(type) end

---@overload fun(type:System.String):UnityEngine.Component
---@param type System.Type
---@return UnityEngine.Component
function GameObject:GetComponent(type) end

---@overload fun(type:System.Type):UnityEngine.Component
---@param type System.Type
---@param includeInactive bool
---@return UnityEngine.Component
function GameObject:GetComponentInChildren(type, includeInactive) end

---@overload fun(type:System.Type):UnityEngine.Component
---@param type System.Type
---@param includeInactive bool
---@return UnityEngine.Component
function GameObject:GetComponentInParent(type, includeInactive) end

---@overload fun(type:System.Type, results:table):void
---@param type System.Type
---@return UnityEngine.Component[]
function GameObject:GetComponents(type) end

---@overload fun(type:System.Type, includeInactive:bool):UnityEngine.Component[]
---@param type System.Type
---@return UnityEngine.Component[]
function GameObject:GetComponentsInChildren(type) end

---@overload fun(type:System.Type, includeInactive:bool):UnityEngine.Component[]
---@param type System.Type
---@return UnityEngine.Component[]
function GameObject:GetComponentsInParent(type) end

---@param type System.Type
---@param component UnityEngine.Component
---@return bool
function GameObject:TryGetComponent(type, component) end

---@param tag System.String
---@return UnityEngine.GameObject
function GameObject.FindWithTag(tag) end

---@overload fun(methodName:System.String, value:System.Object, options:UnityEngine.SendMessageOptions):void
---@overload fun(methodName:System.String, value:System.Object):void
---@overload fun(methodName:System.String):void
---@param methodName System.String
---@param options UnityEngine.SendMessageOptions
function GameObject:SendMessageUpwards(methodName, options) end

---@overload fun(methodName:System.String, value:System.Object, options:UnityEngine.SendMessageOptions):void
---@overload fun(methodName:System.String, value:System.Object):void
---@overload fun(methodName:System.String):void
---@param methodName System.String
---@param options UnityEngine.SendMessageOptions
function GameObject:SendMessage(methodName, options) end

---@overload fun(methodName:System.String, parameter:System.Object, options:UnityEngine.SendMessageOptions):void
---@overload fun(methodName:System.String, parameter:System.Object):void
---@overload fun(methodName:System.String):void
---@param methodName System.String
---@param options UnityEngine.SendMessageOptions
function GameObject:BroadcastMessage(methodName, options) end

---@param componentType System.Type
---@return UnityEngine.Component
function GameObject:AddComponent(componentType) end

---@param value bool
function GameObject:SetActive(value) end

---@param tag System.String
---@return bool
function GameObject:CompareTag(tag) end

---@param tag System.String
---@return UnityEngine.GameObject
function GameObject.FindGameObjectWithTag(tag) end

---@param tag System.String
---@return UnityEngine.GameObject[]
function GameObject.FindGameObjectsWithTag(tag) end

---@param name System.String
---@return UnityEngine.GameObject
function GameObject.Find(name) end

UnityEngine.GameObject = GameObject