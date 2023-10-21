---@class UnityEngine.Plane
---@field normal UnityEngine.Vector3
---@field distance float
---@field flipped UnityEngine.Plane
local Plane = {}

---@param inNormal UnityEngine.Vector3
---@param inPoint UnityEngine.Vector3
function Plane:SetNormalAndPosition(inNormal, inPoint) end

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param c UnityEngine.Vector3
function Plane:Set3Points(a, b, c) end

function Plane:Flip() end

---@overload fun(plane:UnityEngine.Plane, translation:UnityEngine.Vector3):UnityEngine.Plane
---@param translation UnityEngine.Vector3
function Plane:Translate(translation) end

---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function Plane:ClosestPointOnPlane(point) end

---@param point UnityEngine.Vector3
---@return float
function Plane:GetDistanceToPoint(point) end

---@param point UnityEngine.Vector3
---@return bool
function Plane:GetSide(point) end

---@param inPt0 UnityEngine.Vector3
---@param inPt1 UnityEngine.Vector3
---@return bool
function Plane:SameSide(inPt0, inPt1) end

---@param ray UnityEngine.Ray
---@param enter float
---@return bool
function Plane:Raycast(ray, enter) end

---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function Plane:ToString() end

UnityEngine.Plane = Plane