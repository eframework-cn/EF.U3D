---@class UnityEngine.Transform : UnityEngine.Component
---@field position UnityEngine.Vector3
---@field localPosition UnityEngine.Vector3
---@field eulerAngles UnityEngine.Vector3
---@field localEulerAngles UnityEngine.Vector3
---@field right UnityEngine.Vector3
---@field up UnityEngine.Vector3
---@field forward UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field localRotation UnityEngine.Quaternion
---@field localScale UnityEngine.Vector3
---@field parent UnityEngine.Transform
---@field worldToLocalMatrix UnityEngine.Matrix4x4
---@field localToWorldMatrix UnityEngine.Matrix4x4
---@field root UnityEngine.Transform
---@field childCount int
---@field lossyScale UnityEngine.Vector3
---@field hasChanged bool
---@field hierarchyCapacity int
---@field hierarchyCount int
local Transform = {}

---@overload fun(parent:UnityEngine.Transform, worldPositionStays:bool):void
---@param p UnityEngine.Transform
function Transform:SetParent(p) end

---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
function Transform:SetPositionAndRotation(position, rotation) end

---@param localPosition UnityEngine.Vector3
---@param localRotation UnityEngine.Quaternion
function Transform:SetLocalPositionAndRotation(localPosition, localRotation) end

---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
function Transform:GetPositionAndRotation(position, rotation) end

---@param localPosition UnityEngine.Vector3
---@param localRotation UnityEngine.Quaternion
function Transform:GetLocalPositionAndRotation(localPosition, localRotation) end

---@overload fun(translation:UnityEngine.Vector3):void
---@overload fun(x:float, y:float, z:float, relativeTo:UnityEngine.Space):void
---@overload fun(x:float, y:float, z:float):void
---@overload fun(translation:UnityEngine.Vector3, relativeTo:UnityEngine.Transform):void
---@overload fun(x:float, y:float, z:float, relativeTo:UnityEngine.Transform):void
---@param translation UnityEngine.Vector3
---@param relativeTo UnityEngine.Space
function Transform:Translate(translation, relativeTo) end

---@overload fun(eulers:UnityEngine.Vector3):void
---@overload fun(xAngle:float, yAngle:float, zAngle:float, relativeTo:UnityEngine.Space):void
---@overload fun(xAngle:float, yAngle:float, zAngle:float):void
---@overload fun(axis:UnityEngine.Vector3, angle:float, relativeTo:UnityEngine.Space):void
---@overload fun(axis:UnityEngine.Vector3, angle:float):void
---@param eulers UnityEngine.Vector3
---@param relativeTo UnityEngine.Space
function Transform:Rotate(eulers, relativeTo) end

---@param point UnityEngine.Vector3
---@param axis UnityEngine.Vector3
---@param angle float
function Transform:RotateAround(point, axis, angle) end

---@overload fun(target:UnityEngine.Transform):void
---@overload fun(worldPosition:UnityEngine.Vector3, worldUp:UnityEngine.Vector3):void
---@overload fun(worldPosition:UnityEngine.Vector3):void
---@param target UnityEngine.Transform
---@param worldUp UnityEngine.Vector3
function Transform:LookAt(target, worldUp) end

---@overload fun(x:float, y:float, z:float):UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:TransformDirection(direction) end

---@overload fun(x:float, y:float, z:float):UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:InverseTransformDirection(direction) end

---@overload fun(x:float, y:float, z:float):UnityEngine.Vector3
---@param vector UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:TransformVector(vector) end

---@overload fun(x:float, y:float, z:float):UnityEngine.Vector3
---@param vector UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:InverseTransformVector(vector) end

---@overload fun(x:float, y:float, z:float):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:TransformPoint(position) end

---@overload fun(x:float, y:float, z:float):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function Transform:InverseTransformPoint(position) end

function Transform:DetachChildren() end

function Transform:SetAsFirstSibling() end

function Transform:SetAsLastSibling() end

---@param index int
function Transform:SetSiblingIndex(index) end

---@return int
function Transform:GetSiblingIndex() end

---@param n System.String
---@return UnityEngine.Transform
function Transform:Find(n) end

---@param parent UnityEngine.Transform
---@return bool
function Transform:IsChildOf(parent) end

---@return System.Collections.IEnumerator
function Transform:GetEnumerator() end

---@param index int
---@return UnityEngine.Transform
function Transform:GetChild(index) end

UnityEngine.Transform = Transform