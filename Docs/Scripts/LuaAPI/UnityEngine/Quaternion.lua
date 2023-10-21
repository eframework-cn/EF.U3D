---@class UnityEngine.Quaternion
---@field Item float
---@field identity UnityEngine.Quaternion
---@field eulerAngles UnityEngine.Vector3
---@field normalized UnityEngine.Quaternion
---@field x float
---@field y float
---@field z float
---@field w float
---@field kEpsilon float
local Quaternion = {}

---@param fromDirection UnityEngine.Vector3
---@param toDirection UnityEngine.Vector3
---@return UnityEngine.Quaternion
function Quaternion.FromToRotation(fromDirection, toDirection) end

---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function Quaternion.Inverse(rotation) end

---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t float
---@return UnityEngine.Quaternion
function Quaternion.Slerp(a, b, t) end

---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t float
---@return UnityEngine.Quaternion
function Quaternion.SlerpUnclamped(a, b, t) end

---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t float
---@return UnityEngine.Quaternion
function Quaternion.Lerp(a, b, t) end

---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t float
---@return UnityEngine.Quaternion
function Quaternion.LerpUnclamped(a, b, t) end

---@param angle float
---@param axis UnityEngine.Vector3
---@return UnityEngine.Quaternion
function Quaternion.AngleAxis(angle, axis) end

---@overload fun(forward:UnityEngine.Vector3):UnityEngine.Quaternion
---@param forward UnityEngine.Vector3
---@param upwards UnityEngine.Vector3
---@return UnityEngine.Quaternion
function Quaternion.LookRotation(forward, upwards) end

---@param newX float
---@param newY float
---@param newZ float
---@param newW float
function Quaternion:Set(newX, newY, newZ, newW) end

---@overload fun(rotation:UnityEngine.Quaternion, point:UnityEngine.Vector3):UnityEngine.Vector3
---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function Quaternion.op_Multiply(lhs, rhs) end

---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return bool
function Quaternion.op_Equality(lhs, rhs) end

---@param lhs UnityEngine.Quaternion
---@param rhs UnityEngine.Quaternion
---@return bool
function Quaternion.op_Inequality(lhs, rhs) end

---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@return float
function Quaternion.Dot(a, b) end

---@overload fun(view:UnityEngine.Vector3, up:UnityEngine.Vector3):void
---@param view UnityEngine.Vector3
function Quaternion:SetLookRotation(view) end

---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@return float
function Quaternion.Angle(a, b) end

---@overload fun(euler:UnityEngine.Vector3):UnityEngine.Quaternion
---@param x float
---@param y float
---@param z float
---@return UnityEngine.Quaternion
function Quaternion.Euler(x, y, z) end

---@param angle float
---@param axis UnityEngine.Vector3
function Quaternion:ToAngleAxis(angle, axis) end

---@param fromDirection UnityEngine.Vector3
---@param toDirection UnityEngine.Vector3
function Quaternion:SetFromToRotation(fromDirection, toDirection) end

---@param from UnityEngine.Quaternion
---@param to UnityEngine.Quaternion
---@param maxDegreesDelta float
---@return UnityEngine.Quaternion
function Quaternion.RotateTowards(from, to, maxDegreesDelta) end

---@overload fun():void
---@param q UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function Quaternion.Normalize(q) end

---@return int
function Quaternion:GetHashCode() end

---@overload fun(other:UnityEngine.Quaternion):bool
---@param other System.Object
---@return bool
function Quaternion:Equals(other) end

---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function Quaternion:ToString() end

UnityEngine.Quaternion = Quaternion