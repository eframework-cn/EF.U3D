---@class UnityEngine.Vector4
---@field Item float
---@field normalized UnityEngine.Vector4
---@field magnitude float
---@field sqrMagnitude float
---@field zero UnityEngine.Vector4
---@field one UnityEngine.Vector4
---@field positiveInfinity UnityEngine.Vector4
---@field negativeInfinity UnityEngine.Vector4
---@field kEpsilon float
---@field x float
---@field y float
---@field z float
---@field w float
local Vector4 = {}

---@param newX float
---@param newY float
---@param newZ float
---@param newW float
function Vector4:Set(newX, newY, newZ, newW) end

---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@param t float
---@return UnityEngine.Vector4
function Vector4.Lerp(a, b, t) end

---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@param t float
---@return UnityEngine.Vector4
function Vector4.LerpUnclamped(a, b, t) end

---@param current UnityEngine.Vector4
---@param target UnityEngine.Vector4
---@param maxDistanceDelta float
---@return UnityEngine.Vector4
function Vector4.MoveTowards(current, target, maxDistanceDelta) end

---@overload fun(scale:UnityEngine.Vector4):void
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.Scale(a, b) end

---@return int
function Vector4:GetHashCode() end

---@overload fun(other:UnityEngine.Vector4):bool
---@param other System.Object
---@return bool
function Vector4:Equals(other) end

---@overload fun():void
---@param a UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.Normalize(a) end

---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return float
function Vector4.Dot(a, b) end

---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.Project(a, b) end

---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return float
function Vector4.Distance(a, b) end

---@param a UnityEngine.Vector4
---@return float
function Vector4.Magnitude(a) end

---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.Min(lhs, rhs) end

---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.Max(lhs, rhs) end

---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.op_Addition(a, b) end

---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.op_Subtraction(a, b) end

---@param a UnityEngine.Vector4
---@return UnityEngine.Vector4
function Vector4.op_UnaryNegation(a) end

---@overload fun(d:float, a:UnityEngine.Vector4):UnityEngine.Vector4
---@param a UnityEngine.Vector4
---@param d float
---@return UnityEngine.Vector4
function Vector4.op_Multiply(a, d) end

---@param a UnityEngine.Vector4
---@param d float
---@return UnityEngine.Vector4
function Vector4.op_Division(a, d) end

---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return bool
function Vector4.op_Equality(lhs, rhs) end

---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return bool
function Vector4.op_Inequality(lhs, rhs) end

---@overload fun(v:UnityEngine.Vector4):UnityEngine.Vector3
---@overload fun(v:UnityEngine.Vector2):UnityEngine.Vector4
---@overload fun(v:UnityEngine.Vector4):UnityEngine.Vector2
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector4
function Vector4.op_Implicit(v) end

---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function Vector4:ToString() end

---@overload fun():float
---@param a UnityEngine.Vector4
---@return float
function Vector4.SqrMagnitude(a) end

UnityEngine.Vector4 = Vector4