---@class LuaInterface.LuaConstructor : System.Object
local LuaConstructor = {}

---@param L System.IntPtr
---@return int
function LuaConstructor:Call(L) end

function LuaConstructor:Destroy() end

LuaInterface.LuaConstructor = LuaConstructor