---@class UnityEngine.Rect
---@field zero UnityEngine.Rect
---@field x float
---@field y float
---@field position UnityEngine.Vector2
---@field center UnityEngine.Vector2
---@field min UnityEngine.Vector2
---@field max UnityEngine.Vector2
---@field width float
---@field height float
---@field size UnityEngine.Vector2
---@field xMin float
---@field yMin float
---@field xMax float
---@field yMax float
local Rect = {}

---@param xmin float
---@param ymin float
---@param xmax float
---@param ymax float
---@return UnityEngine.Rect
function Rect.MinMaxRect(xmin, ymin, xmax, ymax) end

---@param x float
---@param y float
---@param width float
---@param height float
function Rect:Set(x, y, width, height) end

---@overload fun(point:UnityEngine.Vector3):bool
---@overload fun(point:UnityEngine.Vector3, allowInverse:bool):bool
---@param point UnityEngine.Vector2
---@return bool
function Rect:Contains(point) end

---@overload fun(other:UnityEngine.Rect, allowInverse:bool):bool
---@param other UnityEngine.Rect
---@return bool
function Rect:Overlaps(other) end

---@param rectangle UnityEngine.Rect
---@param normalizedRectCoordinates UnityEngine.Vector2
---@return UnityEngine.Vector2
function Rect.NormalizedToPoint(rectangle, normalizedRectCoordinates) end

---@param rectangle UnityEngine.Rect
---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function Rect.PointToNormalized(rectangle, point) end

---@param lhs UnityEngine.Rect
---@param rhs UnityEngine.Rect
---@return bool
function Rect.op_Inequality(lhs, rhs) end

---@param lhs UnityEngine.Rect
---@param rhs UnityEngine.Rect
---@return bool
function Rect.op_Equality(lhs, rhs) end

---@return int
function Rect:GetHashCode() end

---@overload fun(other:UnityEngine.Rect):bool
---@param other System.Object
---@return bool
function Rect:Equals(other) end

---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function Rect:ToString() end

UnityEngine.Rect = Rect