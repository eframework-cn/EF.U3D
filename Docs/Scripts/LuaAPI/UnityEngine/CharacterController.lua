---@class UnityEngine.CharacterController : UnityEngine.Collider
---@field velocity UnityEngine.Vector3
---@field isGrounded bool
---@field collisionFlags UnityEngine.CollisionFlags
---@field radius float
---@field height float
---@field center UnityEngine.Vector3
---@field slopeLimit float
---@field stepOffset float
---@field skinWidth float
---@field minMoveDistance float
---@field detectCollisions bool
---@field enableOverlapRecovery bool
local CharacterController = {}

---@param speed UnityEngine.Vector3
---@return bool
function CharacterController:SimpleMove(speed) end

---@param motion UnityEngine.Vector3
---@return UnityEngine.CollisionFlags
function CharacterController:Move(motion) end

UnityEngine.CharacterController = CharacterController