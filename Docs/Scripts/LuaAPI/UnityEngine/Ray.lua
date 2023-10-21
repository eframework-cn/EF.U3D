---@class UnityEngine.Ray
---@field origin UnityEngine.Vector3
---@field direction UnityEngine.Vector3
local Ray = {}

---@param distance float
---@return UnityEngine.Vector3
function Ray:GetPoint(distance) end

---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function Ray:ToString() end

UnityEngine.Ray = Ray