---@class UnityEngine.Bounds
---@field center UnityEngine.Vector3
---@field size UnityEngine.Vector3
---@field extents UnityEngine.Vector3
---@field min UnityEngine.Vector3
---@field max UnityEngine.Vector3
local Bounds = {}

---@return int
function Bounds:GetHashCode() end

---@overload fun(other:UnityEngine.Bounds):bool
---@param other System.Object
---@return bool
function Bounds:Equals(other) end

---@param lhs UnityEngine.Bounds
---@param rhs UnityEngine.Bounds
---@return bool
function Bounds.op_Equality(lhs, rhs) end

---@param lhs UnityEngine.Bounds
---@param rhs UnityEngine.Bounds
---@return bool
function Bounds.op_Inequality(lhs, rhs) end

---@param min UnityEngine.Vector3
---@param max UnityEngine.Vector3
function Bounds:SetMinMax(min, max) end

---@overload fun(bounds:UnityEngine.Bounds):void
---@param point UnityEngine.Vector3
function Bounds:Encapsulate(point) end

---@overload fun(amount:UnityEngine.Vector3):void
---@param amount float
function Bounds:Expand(amount) end

---@param bounds UnityEngine.Bounds
---@return bool
function Bounds:Intersects(bounds) end

---@overload fun(ray:UnityEngine.Ray, distance:float):bool
---@param ray UnityEngine.Ray
---@return bool
function Bounds:IntersectRay(ray) end

---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function Bounds:ToString() end

---@param point UnityEngine.Vector3
---@return bool
function Bounds:Contains(point) end

---@param point UnityEngine.Vector3
---@return float
function Bounds:SqrDistance(point) end

---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function Bounds:ClosestPoint(point) end

UnityEngine.Bounds = Bounds