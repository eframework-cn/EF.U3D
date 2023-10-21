---@class System.Object
local Object = {}

---@overload fun(objA:System.Object, objB:System.Object):bool
---@param obj System.Object
---@return bool
function Object:Equals(obj) end

---@return int
function Object:GetHashCode() end

---@return System.Type
function Object:GetType() end

---@return System.String
function Object:ToString() end

---@param objA System.Object
---@param objB System.Object
---@return bool
function Object.ReferenceEquals(objA, objB) end

System.Object = Object