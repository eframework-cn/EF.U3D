---@class UnityEngine.Resources : System.Object
local Resources = {}

---@param type System.Type
---@return UnityEngine.Object[]
function Resources.FindObjectsOfTypeAll(type) end

---@overload fun(path:System.String, systemTypeInstance:System.Type):UnityEngine.Object
---@param path System.String
---@return UnityEngine.Object
function Resources.Load(path) end

---@overload fun(path:System.String, type:System.Type):UnityEngine.ResourceRequest
---@param path System.String
---@return UnityEngine.ResourceRequest
function Resources.LoadAsync(path) end

---@overload fun(path:System.String):UnityEngine.Object[]
---@param path System.String
---@param systemTypeInstance System.Type
---@return UnityEngine.Object[]
function Resources.LoadAll(path, systemTypeInstance) end

---@param type System.Type
---@param path System.String
---@return UnityEngine.Object
function Resources.GetBuiltinResource(type, path) end

---@param assetToUnload UnityEngine.Object
function Resources.UnloadAsset(assetToUnload) end

---@return UnityEngine.AsyncOperation
function Resources.UnloadUnusedAssets() end

---@param instanceID int
---@return UnityEngine.Object
function Resources.InstanceIDToObject(instanceID) end

---@param instanceIDs Unity.Collections.NativeArray
---@param objects table
function Resources.InstanceIDToObjectList(instanceIDs, objects) end

UnityEngine.Resources = Resources