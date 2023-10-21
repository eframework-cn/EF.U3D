---@class UnityEngine.EventSystems.BaseRaycaster : UnityEngine.EventSystems.UIBehaviour
---@field eventCamera UnityEngine.Camera
---@field sortOrderPriority int
---@field renderOrderPriority int
---@field rootRaycaster UnityEngine.EventSystems.BaseRaycaster
local BaseRaycaster = {}

---@param eventData UnityEngine.EventSystems.PointerEventData
---@param resultAppendList table
function BaseRaycaster:Raycast(eventData, resultAppendList) end

---@return System.String
function BaseRaycaster:ToString() end

UnityEngine.EventSystems.BaseRaycaster = BaseRaycaster