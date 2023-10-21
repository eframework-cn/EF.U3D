---@class LuaInterface.EventObject : System.Object
local EventObject = {}

---@param a LuaInterface.EventObject
---@param b System.Delegate
---@return LuaInterface.EventObject
function EventObject.op_Addition(a, b) end

---@param a LuaInterface.EventObject
---@param b System.Delegate
---@return LuaInterface.EventObject
function EventObject.op_Subtraction(a, b) end

LuaInterface.EventObject = EventObject