---@class UnityEngine.Vector2
---@field Item float
---@field normalized UnityEngine.Vector2
---@field magnitude float
---@field sqrMagnitude float
---@field zero UnityEngine.Vector2
---@field one UnityEngine.Vector2
---@field up UnityEngine.Vector2
---@field down UnityEngine.Vector2
---@field left UnityEngine.Vector2
---@field right UnityEngine.Vector2
---@field positiveInfinity UnityEngine.Vector2
---@field negativeInfinity UnityEngine.Vector2
---@field x float
---@field y float
---@field kEpsilon float
---@field kEpsilonNormalSqrt float
local Vector2 = {}

---@param newX float
---@param newY float
function Vector2:Set(newX, newY) end

---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@param t float
---@return UnityEngine.Vector2
function Vector2.Lerp(a, b, t) end

---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@param t float
---@return UnityEngine.Vector2
function Vector2.LerpUnclamped(a, b, t) end

---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param maxDistanceDelta float
---@return UnityEngine.Vector2
function Vector2.MoveTowards(current, target, maxDistanceDelta) end

---@overload fun(scale:UnityEngine.Vector2):void
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.Scale(a, b) end

function Vector2:Normalize() end

---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function Vector2:ToString() end

---@return int
function Vector2:GetHashCode() end

---@overload fun(other:UnityEngine.Vector2):bool
---@param other System.Object
---@return bool
function Vector2:Equals(other) end

---@param inDirection UnityEngine.Vector2
---@param inNormal UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.Reflect(inDirection, inNormal) end

---@param inDirection UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.Perpendicular(inDirection) end

---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return float
function Vector2.Dot(lhs, rhs) end

---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@return float
function Vector2.Angle(from, to) end

---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@return float
function Vector2.SignedAngle(from, to) end

---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return float
function Vector2.Distance(a, b) end

---@param vector UnityEngine.Vector2
---@param maxLength float
---@return UnityEngine.Vector2
function Vector2.ClampMagnitude(vector, maxLength) end

---@overload fun():float
---@param a UnityEngine.Vector2
---@return float
function Vector2.SqrMagnitude(a) end

---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.Min(lhs, rhs) end

---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.Max(lhs, rhs) end

---@overload fun(current:UnityEngine.Vector2, target:UnityEngine.Vector2, currentVelocity:UnityEngine.Vector2, smoothTime:float):UnityEngine.Vector2
---@overload fun(current:UnityEngine.Vector2, target:UnityEngine.Vector2, currentVelocity:UnityEngine.Vector2, smoothTime:float, maxSpeed:float, deltaTime:float):UnityEngine.Vector2
---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param currentVelocity UnityEngine.Vector2
---@param smoothTime float
---@param maxSpeed float
---@return UnityEngine.Vector2
function Vector2.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed) end

---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_Addition(a, b) end

---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_Subtraction(a, b) end

---@overload fun(a:UnityEngine.Vector2, d:float):UnityEngine.Vector2
---@overload fun(d:float, a:UnityEngine.Vector2):UnityEngine.Vector2
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_Multiply(a, b) end

---@overload fun(a:UnityEngine.Vector2, d:float):UnityEngine.Vector2
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_Division(a, b) end

---@param a UnityEngine.Vector2
---@return UnityEngine.Vector2
function Vector2.op_UnaryNegation(a) end

---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return bool
function Vector2.op_Equality(lhs, rhs) end

---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return bool
function Vector2.op_Inequality(lhs, rhs) end

---@overload fun(v:UnityEngine.Vector2):UnityEngine.Vector3
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector2
function Vector2.op_Implicit(v) end

UnityEngine.Vector2 = Vector2