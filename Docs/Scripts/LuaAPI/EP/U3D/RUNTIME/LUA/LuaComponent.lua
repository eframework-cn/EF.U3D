---@class EP.U3D.RUNTIME.LUA.LuaComponent : UnityEngine.MonoBehaviour
---@field Module System.String
---@field Script System.String
local LuaComponent = {}

---@param go UnityEngine.GameObject
---@param type LuaInterface.LuaTable
---@param includeInactive bool
---@return EP.U3D.RUNTIME.LUA.LuaComponent
function LuaComponent.GetInParent(go, type, includeInactive) end

---@param go UnityEngine.GameObject
---@param type LuaInterface.LuaTable
---@return EP.U3D.RUNTIME.LUA.LuaComponent
function LuaComponent.Get(go, type) end

---@param go UnityEngine.GameObject
---@param type LuaInterface.LuaTable
---@param includeInactive bool
---@return EP.U3D.RUNTIME.LUA.LuaComponent
function LuaComponent.GetInChildren(go, type, includeInactive) end

---@param go UnityEngine.GameObject
---@param type LuaInterface.LuaTable
---@param includeInactive bool
---@return EP.U3D.RUNTIME.LUA.LuaComponent[]
function LuaComponent.GetsInParent(go, type, includeInactive) end

---@param go UnityEngine.GameObject
---@param type LuaInterface.LuaTable
---@return EP.U3D.RUNTIME.LUA.LuaComponent[]
function LuaComponent.Gets(go, type) end

---@param go UnityEngine.GameObject
---@param type LuaInterface.LuaTable
---@param includeInactive bool
---@return EP.U3D.RUNTIME.LUA.LuaComponent[]
function LuaComponent.GetsInChildren(go, type, includeInactive) end

EP.U3D.RUNTIME.LUA.LuaComponent = LuaComponent