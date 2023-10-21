---@class UnityEngine.ScriptableObject : UnityEngine.Object
local ScriptableObject = {}

---@overload fun(type:System.Type):UnityEngine.ScriptableObject
---@param className System.String
---@return UnityEngine.ScriptableObject
function ScriptableObject.CreateInstance(className) end

UnityEngine.ScriptableObject = ScriptableObject