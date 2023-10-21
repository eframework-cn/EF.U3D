---@class EP.U3D.RUNTIME.LUA.LuaLoader : LuaInterface.LuaFileUtils
---@field beZip bool
---@field zipMap table
local LuaLoader = {}

---@param bundleName System.String
function LuaLoader:AddBundle(bundleName) end

---@param bundleName System.String
function LuaLoader:RemoveBundle(bundleName) end

---@param fileName System.String
---@return byte[]
function LuaLoader:ReadFile(fileName) end

EP.U3D.RUNTIME.LUA.LuaLoader = LuaLoader