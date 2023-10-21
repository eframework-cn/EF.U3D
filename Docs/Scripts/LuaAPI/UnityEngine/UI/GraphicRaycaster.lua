---@class UnityEngine.UI.GraphicRaycaster : UnityEngine.EventSystems.BaseRaycaster
---@field sortOrderPriority int
---@field renderOrderPriority int
---@field ignoreReversedGraphics bool
---@field blockingObjects UnityEngine.UI.GraphicRaycaster.BlockingObjects
---@field blockingMask UnityEngine.LayerMask
---@field eventCamera UnityEngine.Camera
local GraphicRaycaster = {}

---@param eventData UnityEngine.EventSystems.PointerEventData
---@param resultAppendList table
function GraphicRaycaster:Raycast(eventData, resultAppendList) end

UnityEngine.UI.GraphicRaycaster = GraphicRaycaster

---@class UnityEngine.UI.GraphicRaycaster.BlockingObjects : System.Enum
---@field value__ int
---@field None UnityEngine.UI.GraphicRaycaster.BlockingObjects
---@field TwoD UnityEngine.UI.GraphicRaycaster.BlockingObjects
---@field ThreeD UnityEngine.UI.GraphicRaycaster.BlockingObjects
---@field All UnityEngine.UI.GraphicRaycaster.BlockingObjects
local BlockingObjects = {}

UnityEngine.UI.GraphicRaycaster.BlockingObjects = BlockingObjects