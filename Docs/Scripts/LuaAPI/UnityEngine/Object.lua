---@class UnityEngine.Object : System.Object
---@field name System.String
---@field hideFlags UnityEngine.HideFlags
local Object = {}

---@return int
function Object:GetInstanceID() end

---@return int
function Object:GetHashCode() end

---@param other System.Object
---@return bool
function Object:Equals(other) end

---@param exists UnityEngine.Object
---@return bool
function Object.op_Implicit(exists) end

---@overload fun(original:UnityEngine.Object, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, parent:UnityEngine.Transform):UnityEngine.Object
---@overload fun(original:UnityEngine.Object):UnityEngine.Object
---@overload fun(original:UnityEngine.Object, parent:UnityEngine.Transform):UnityEngine.Object
---@overload fun(original:UnityEngine.Object, parent:UnityEngine.Transform, instantiateInWorldSpace:bool):UnityEngine.Object
---@param original UnityEngine.Object
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Object
function Object.Instantiate(original, position, rotation) end

---@overload fun(obj:UnityEngine.Object):void
---@param obj UnityEngine.Object
---@param t float
function Object.Destroy(obj, t) end

---@overload fun(obj:UnityEngine.Object):void
---@param obj UnityEngine.Object
---@param allowDestroyingAssets bool
function Object.DestroyImmediate(obj, allowDestroyingAssets) end

---@overload fun(type:System.Type, includeInactive:bool):UnityEngine.Object[]
---@param type System.Type
---@return UnityEngine.Object[]
function Object.FindObjectsOfType(type) end

---@overload fun(type:System.Type, findObjectsInactive:UnityEngine.FindObjectsInactive, sortMode:UnityEngine.FindObjectsSortMode):UnityEngine.Object[]
---@param type System.Type
---@param sortMode UnityEngine.FindObjectsSortMode
---@return UnityEngine.Object[]
function Object.FindObjectsByType(type, sortMode) end

---@param target UnityEngine.Object
function Object.DontDestroyOnLoad(target) end

---@overload fun(type:System.Type, includeInactive:bool):UnityEngine.Object
---@param type System.Type
---@return UnityEngine.Object
function Object.FindObjectOfType(type) end

---@overload fun(type:System.Type, findObjectsInactive:UnityEngine.FindObjectsInactive):UnityEngine.Object
---@param type System.Type
---@return UnityEngine.Object
function Object.FindFirstObjectByType(type) end

---@overload fun(type:System.Type, findObjectsInactive:UnityEngine.FindObjectsInactive):UnityEngine.Object
---@param type System.Type
---@return UnityEngine.Object
function Object.FindAnyObjectByType(type) end

---@return System.String
function Object:ToString() end

---@param x UnityEngine.Object
---@param y UnityEngine.Object
---@return bool
function Object.op_Equality(x, y) end

---@param x UnityEngine.Object
---@param y UnityEngine.Object
---@return bool
function Object.op_Inequality(x, y) end

UnityEngine.Object = Object