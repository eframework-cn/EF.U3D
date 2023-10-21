---@class UnityEngine.Collision : System.Object
---@field relativeVelocity UnityEngine.Vector3
---@field rigidbody UnityEngine.Rigidbody
---@field articulationBody UnityEngine.ArticulationBody
---@field body UnityEngine.Component
---@field collider UnityEngine.Collider
---@field transform UnityEngine.Transform
---@field gameObject UnityEngine.GameObject
---@field contactCount int
---@field contacts UnityEngine.ContactPoint[]
---@field impulse UnityEngine.Vector3
local Collision = {}

---@param index int
---@return UnityEngine.ContactPoint
function Collision:GetContact(index) end

---@overload fun(contacts:table):int
---@param contacts UnityEngine.ContactPoint[]
---@return int
function Collision:GetContacts(contacts) end

UnityEngine.Collision = Collision