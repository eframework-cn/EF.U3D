---@class UnityEngine.TrackedReference : System.Object
local TrackedReference = {}

---@param x UnityEngine.TrackedReference
---@param y UnityEngine.TrackedReference
---@return bool
function TrackedReference.op_Equality(x, y) end

---@param x UnityEngine.TrackedReference
---@param y UnityEngine.TrackedReference
---@return bool
function TrackedReference.op_Inequality(x, y) end

---@param o System.Object
---@return bool
function TrackedReference:Equals(o) end

---@return int
function TrackedReference:GetHashCode() end

---@param exists UnityEngine.TrackedReference
---@return bool
function TrackedReference.op_Implicit(exists) end

UnityEngine.TrackedReference = TrackedReference