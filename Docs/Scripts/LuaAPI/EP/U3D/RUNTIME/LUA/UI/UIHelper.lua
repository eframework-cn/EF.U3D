---@class EP.U3D.RUNTIME.LUA.UI.UIHelper : EP.U3D.LIBRARY.UI.UIHelper
local UIHelper = {}

---@overload fun(parentObj:UnityEngine.Object, path:System.String, func:LuaInterface.LuaFunction, self:LuaInterface.LuaTable):void
---@param rootObj UnityEngine.Object
---@param func LuaInterface.LuaFunction
---@param self LuaInterface.LuaTable
function UIHelper.SetButtonEvent(rootObj, func, self) end

---@overload fun(rootObj:UnityEngine.Object, type:LuaInterface.LuaTable, includeInactive:bool):LuaInterface.LuaTable
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable):LuaInterface.LuaTable
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable, includeInactive:bool):LuaInterface.LuaTable
---@overload fun(rootObj:UnityEngine.Object, type:System.Type):System.Object
---@overload fun(rootObj:UnityEngine.Object, type:System.Type, includeInactive:bool):System.Object
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type):System.Object
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, includeInactive:bool):System.Object
---@param rootObj UnityEngine.Object
---@param type LuaInterface.LuaTable
---@return LuaInterface.LuaTable
function UIHelper.GetComponentInParent(rootObj, type) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable, attachIfMissing:bool):LuaInterface.LuaTable
---@overload fun(rootObj:UnityEngine.Object, type:System.Type, attachIfMissing:bool):System.Object
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, attachIfMissing:bool):System.Object
---@param rootObj UnityEngine.Object
---@param type LuaInterface.LuaTable
---@param attachIfMissing bool
---@return LuaInterface.LuaTable
function UIHelper.GetComponent(rootObj, type, attachIfMissing) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable, includeInactive:bool):LuaInterface.LuaTable
---@overload fun(rootObj:UnityEngine.Object, type:System.Type, includeInactive:bool):System.Object
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, includeInactive:bool):System.Object
---@param rootObj UnityEngine.Object
---@param type LuaInterface.LuaTable
---@param includeInactive bool
---@return LuaInterface.LuaTable
function UIHelper.GetComponentInChildren(rootObj, type, includeInactive) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable, includeInactive:bool):LuaInterface.LuaTable[]
---@overload fun(rootObj:UnityEngine.Object, type:System.Type, includeInactive:bool):object[]
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, includeInactive:bool):object[]
---@param rootObj UnityEngine.Object
---@param type LuaInterface.LuaTable
---@param includeInactive bool
---@return LuaInterface.LuaTable[]
function UIHelper.GetComponentsInParent(rootObj, type, includeInactive) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable):LuaInterface.LuaTable[]
---@overload fun(rootObj:UnityEngine.Object, type:System.Type):object[]
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type):object[]
---@param rootObj UnityEngine.Object
---@param type LuaInterface.LuaTable
---@return LuaInterface.LuaTable[]
function UIHelper.GetComponents(rootObj, type) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable, includeInactive:bool):LuaInterface.LuaTable[]
---@overload fun(rootObj:UnityEngine.Object, type:System.Type, includeInactive:bool):object[]
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, includeInactive:bool):object[]
---@param rootObj UnityEngine.Object
---@param type LuaInterface.LuaTable
---@param includeInactive bool
---@return LuaInterface.LuaTable[]
function UIHelper.GetComponentsInChildren(rootObj, type, includeInactive) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable):LuaInterface.LuaTable
---@overload fun(rootObj:UnityEngine.Object, type:System.Type):System.Object
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type):System.Object
---@param rootObj UnityEngine.Object
---@param type LuaInterface.LuaTable
---@return LuaInterface.LuaTable
function UIHelper.AddComponent(rootObj, type) end

---@overload fun(rootObj:UnityEngine.Object, type:LuaInterface.LuaTable, immediate:bool):void
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable):void
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable, immediate:bool):void
---@overload fun(rootObj:UnityEngine.Object, type:System.Type):void
---@overload fun(rootObj:UnityEngine.Object, type:System.Type, immediate:bool):void
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type):void
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, immediate:bool):void
---@param rootObj UnityEngine.Object
---@param type LuaInterface.LuaTable
function UIHelper.RemoveComponent(rootObj, type) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:LuaInterface.LuaTable, enabled:bool):LuaInterface.LuaTable
---@overload fun(rootObj:UnityEngine.Object, type:System.Type, enabled:bool):System.Object
---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, enabled:bool):System.Object
---@param rootObj UnityEngine.Object
---@param type LuaInterface.LuaTable
---@param enabled bool
---@return LuaInterface.LuaTable
function UIHelper.SetComponentEnabled(rootObj, type, enabled) end

EP.U3D.RUNTIME.LUA.UI.UIHelper = UIHelper