---@class UnityEngine.LayerMask
---@field value int
local LayerMask = {}

---@overload fun(intVal:int):UnityEngine.LayerMask
---@param mask UnityEngine.LayerMask
---@return int
function LayerMask.op_Implicit(mask) end

---@param layer int
---@return System.String
function LayerMask.LayerToName(layer) end

---@param layerName System.String
---@return int
function LayerMask.NameToLayer(layerName) end

---@param layerNames string[]
---@return int
function LayerMask.GetMask(layerNames) end

UnityEngine.LayerMask = LayerMask