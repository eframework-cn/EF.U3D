---@class UnityEngine.Vector3
---@field Item float
---@field normalized UnityEngine.Vector3
---@field magnitude float
---@field sqrMagnitude float
---@field zero UnityEngine.Vector3
---@field one UnityEngine.Vector3
---@field forward UnityEngine.Vector3
---@field back UnityEngine.Vector3
---@field up UnityEngine.Vector3
---@field down UnityEngine.Vector3
---@field left UnityEngine.Vector3
---@field right UnityEngine.Vector3
---@field positiveInfinity UnityEngine.Vector3
---@field negativeInfinity UnityEngine.Vector3
---@field kEpsilon float
---@field kEpsilonNormalSqrt float
---@field x float
---@field y float
---@field z float
local Vector3 = {}

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t float
---@return UnityEngine.Vector3
function Vector3.Slerp(a, b, t) end

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t float
---@return UnityEngine.Vector3
function Vector3.SlerpUnclamped(a, b, t) end

---@overload fun(normal:UnityEngine.Vector3, tangent:UnityEngine.Vector3, binormal:UnityEngine.Vector3):void
---@param normal UnityEngine.Vector3
---@param tangent UnityEngine.Vector3
function Vector3.OrthoNormalize(normal, tangent) end

---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param maxRadiansDelta float
---@param maxMagnitudeDelta float
---@return UnityEngine.Vector3
function Vector3.RotateTowards(current, target, maxRadiansDelta, maxMagnitudeDelta) end

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t float
---@return UnityEngine.Vector3
function Vector3.Lerp(a, b, t) end

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t float
---@return UnityEngine.Vector3
function Vector3.LerpUnclamped(a, b, t) end

---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param maxDistanceDelta float
---@return UnityEngine.Vector3
function Vector3.MoveTowards(current, target, maxDistanceDelta) end

---@overload fun(current:UnityEngine.Vector3, target:UnityEngine.Vector3, currentVelocity:UnityEngine.Vector3, smoothTime:float):UnityEngine.Vector3
---@overload fun(current:UnityEngine.Vector3, target:UnityEngine.Vector3, currentVelocity:UnityEngine.Vector3, smoothTime:float, maxSpeed:float, deltaTime:float):UnityEngine.Vector3
---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param currentVelocity UnityEngine.Vector3
---@param smoothTime float
---@param maxSpeed float
---@return UnityEngine.Vector3
function Vector3.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed) end

---@param newX float
---@param newY float
---@param newZ float
function Vector3:Set(newX, newY, newZ) end

---@overload fun(scale:UnityEngine.Vector3):void
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Scale(a, b) end

---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Cross(lhs, rhs) end

---@return int
function Vector3:GetHashCode() end

---@overload fun(other:UnityEngine.Vector3):bool
---@param other System.Object
---@return bool
function Vector3:Equals(other) end

---@param inDirection UnityEngine.Vector3
---@param inNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Reflect(inDirection, inNormal) end

---@overload fun():void
---@param value UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Normalize(value) end

---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return float
function Vector3.Dot(lhs, rhs) end

---@param vector UnityEngine.Vector3
---@param onNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Project(vector, onNormal) end

---@param vector UnityEngine.Vector3
---@param planeNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.ProjectOnPlane(vector, planeNormal) end

---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@return float
function Vector3.Angle(from, to) end

---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@param axis UnityEngine.Vector3
---@return float
function Vector3.SignedAngle(from, to, axis) end

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return float
function Vector3.Distance(a, b) end

---@param vector UnityEngine.Vector3
---@param maxLength float
---@return UnityEngine.Vector3
function Vector3.ClampMagnitude(vector, maxLength) end

---@param vector UnityEngine.Vector3
---@return float
function Vector3.Magnitude(vector) end

---@param vector UnityEngine.Vector3
---@return float
function Vector3.SqrMagnitude(vector) end

---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Min(lhs, rhs) end

---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.Max(lhs, rhs) end

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.op_Addition(a, b) end

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.op_Subtraction(a, b) end

---@param a UnityEngine.Vector3
---@return UnityEngine.Vector3
function Vector3.op_UnaryNegation(a) end

---@overload fun(d:float, a:UnityEngine.Vector3):UnityEngine.Vector3
---@param a UnityEngine.Vector3
---@param d float
---@return UnityEngine.Vector3
function Vector3.op_Multiply(a, d) end

---@param a UnityEngine.Vector3
---@param d float
---@return UnityEngine.Vector3
function Vector3.op_Division(a, d) end

---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return bool
function Vector3.op_Equality(lhs, rhs) end

---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return bool
function Vector3.op_Inequality(lhs, rhs) end

---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function Vector3:ToString() end

UnityEngine.Vector3 = Vector3