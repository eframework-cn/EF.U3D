---@class LuaInterface.LuaMethod : System.Object
local LuaMethod = {}

---@param L System.IntPtr
---@return int
function LuaMethod:Call(L) end

function LuaMethod:Destroy() end

LuaInterface.LuaMethod = LuaMethod