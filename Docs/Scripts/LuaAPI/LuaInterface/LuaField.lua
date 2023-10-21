---@class LuaInterface.LuaField : System.Object
local LuaField = {}

---@param L System.IntPtr
---@return int
function LuaField:Get(L) end

---@param L System.IntPtr
---@return int
function LuaField:Set(L) end

LuaInterface.LuaField = LuaField