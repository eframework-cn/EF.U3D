---@class LuaInterface.LuaFileUtils : System.Object
---@field Instance LuaInterface.LuaFileUtils
---@field beZip bool
---@field zipMap table
local LuaFileUtils = {}

function LuaFileUtils:Dispose() end

---@param path System.String
---@param front bool
---@return bool
function LuaFileUtils:AddSearchPath(path, front) end

---@param path System.String
---@return bool
function LuaFileUtils:RemoveSearchPath(path) end

---@param name System.String
---@param bundle UnityEngine.AssetBundle
function LuaFileUtils:AddSearchBundle(name, bundle) end

---@param fileName System.String
---@return System.String
function LuaFileUtils:FindFile(fileName) end

---@param fileName System.String
---@return byte[]
function LuaFileUtils:ReadFile(fileName) end

---@param fileName System.String
---@return System.String
function LuaFileUtils:FindFileError(fileName) end

LuaInterface.LuaFileUtils = LuaFileUtils