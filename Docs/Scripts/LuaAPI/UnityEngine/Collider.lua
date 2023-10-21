---@class UnityEngine.Collider : UnityEngine.Component
---@field enabled bool
---@field attachedRigidbody UnityEngine.Rigidbody
---@field attachedArticulationBody UnityEngine.ArticulationBody
---@field isTrigger bool
---@field contactOffset float
---@field bounds UnityEngine.Bounds
---@field hasModifiableContacts bool
---@field sharedMaterial UnityEngine.PhysicMaterial
---@field material UnityEngine.PhysicMaterial
local Collider = {}

---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function Collider:ClosestPoint(position) end

---@param ray UnityEngine.Ray
---@param hitInfo UnityEngine.RaycastHit
---@param maxDistance float
---@return bool
function Collider:Raycast(ray, hitInfo, maxDistance) end

---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function Collider:ClosestPointOnBounds(position) end

UnityEngine.Collider = Collider