---@class LuaInterface.LuaProperty : System.Object
local LuaProperty = {}

---@param L System.IntPtr
---@return int
function LuaProperty:Get(L) end

---@param L System.IntPtr
---@return int
function LuaProperty:Set(L) end

LuaInterface.LuaProperty = LuaProperty