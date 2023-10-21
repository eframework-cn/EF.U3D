---@class LuaInterface.Debugger
---@field useLog bool
---@field threadStack System.String
---@field logger LuaInterface.ILogger
local Debugger = {}

---@overload fun(message:System.Object):void
---@overload fun(str:System.String, arg0:System.Object):void
---@overload fun(str:System.String, arg0:System.Object, arg1:System.Object):void
---@overload fun(str:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):void
---@overload fun(str:System.String, param:object[]):void
---@param str System.String
function Debugger.Log(str) end

---@overload fun(message:System.Object):void
---@overload fun(str:System.String, arg0:System.Object):void
---@overload fun(str:System.String, arg0:System.Object, arg1:System.Object):void
---@overload fun(str:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):void
---@overload fun(str:System.String, param:object[]):void
---@param str System.String
function Debugger.LogWarning(str) end

---@overload fun(message:System.Object):void
---@overload fun(str:System.String, arg0:System.Object):void
---@overload fun(str:System.String, arg0:System.Object, arg1:System.Object):void
---@overload fun(str:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):void
---@overload fun(str:System.String, param:object[]):void
---@param str System.String
function Debugger.LogError(str) end

---@overload fun(str:System.String, e:System.Exception):void
---@param e System.Exception
function Debugger.LogException(e) end

Debugger = Debugger