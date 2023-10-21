---@class UnityEngine.SceneManagement.Scene
---@field handle int
---@field path System.String
---@field name System.String
---@field isLoaded bool
---@field buildIndex int
---@field isDirty bool
---@field rootCount int
---@field isSubScene bool
local Scene = {}

---@return bool
function Scene:IsValid() end

---@overload fun(rootGameObjects:table):void
---@return UnityEngine.GameObject[]
function Scene:GetRootGameObjects() end

---@param lhs UnityEngine.SceneManagement.Scene
---@param rhs UnityEngine.SceneManagement.Scene
---@return bool
function Scene.op_Equality(lhs, rhs) end

---@param lhs UnityEngine.SceneManagement.Scene
---@param rhs UnityEngine.SceneManagement.Scene
---@return bool
function Scene.op_Inequality(lhs, rhs) end

---@return int
function Scene:GetHashCode() end

---@param other System.Object
---@return bool
function Scene:Equals(other) end

UnityEngine.SceneManagement.Scene = Scene