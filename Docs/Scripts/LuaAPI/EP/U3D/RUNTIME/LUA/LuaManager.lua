---@class EP.U3D.RUNTIME.LUA.LuaManager : UnityEngine.MonoBehaviour
---@field LuaNEWFunc LuaInterface.LuaFunction
---@field Instance EP.U3D.RUNTIME.LUA.LuaManager
---@field Root UnityEngine.GameObject
---@field LuaState LuaInterface.LuaState
---@field LuaLooper LuaLooper
---@field LuaLoader EP.U3D.RUNTIME.LUA.LuaLoader
local LuaManager = {}

---@param root UnityEngine.Transform
function LuaManager.PreInit(root) end

---@param differ EP.U3D.LIBRARY.ASSET.FileManifest.DifferInfo
function LuaManager.PostInit(differ) end

---@param filename System.String
function LuaManager.DoFile(filename) end

---@param str System.String
function LuaManager.DoString(str) end

---@param fullFuncName System.String
---@param args object[]
function LuaManager.CallFunction(fullFuncName, args) end

---@param table LuaInterface.LuaTable
---@param module System.String
---@param name System.String
---@return LuaInterface.LuaFunction
function LuaManager.GetFunction(table, module, name) end

function LuaManager.GC() end

EP.U3D.RUNTIME.LUA.LuaManager = LuaManager