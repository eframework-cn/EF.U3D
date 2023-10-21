---@class UnityEngine.EventSystems.PointerEventData : UnityEngine.EventSystems.BaseEventData
---@field pointerEnter UnityEngine.GameObject
---@field lastPress UnityEngine.GameObject
---@field rawPointerPress UnityEngine.GameObject
---@field pointerDrag UnityEngine.GameObject
---@field pointerClick UnityEngine.GameObject
---@field pointerCurrentRaycast UnityEngine.EventSystems.RaycastResult
---@field pointerPressRaycast UnityEngine.EventSystems.RaycastResult
---@field eligibleForClick bool
---@field pointerId int
---@field position UnityEngine.Vector2
---@field delta UnityEngine.Vector2
---@field pressPosition UnityEngine.Vector2
---@field clickTime float
---@field clickCount int
---@field scrollDelta UnityEngine.Vector2
---@field useDragThreshold bool
---@field dragging bool
---@field button UnityEngine.EventSystems.PointerEventData.InputButton
---@field pressure float
---@field tangentialPressure float
---@field altitudeAngle float
---@field azimuthAngle float
---@field twist float
---@field radius UnityEngine.Vector2
---@field radiusVariance UnityEngine.Vector2
---@field fullyExited bool
---@field reentered bool
---@field enterEventCamera UnityEngine.Camera
---@field pressEventCamera UnityEngine.Camera
---@field pointerPress UnityEngine.GameObject
---@field hovered table
local PointerEventData = {}

---@return bool
function PointerEventData:IsPointerMoving() end

---@return bool
function PointerEventData:IsScrolling() end

---@return System.String
function PointerEventData:ToString() end

UnityEngine.EventSystems.PointerEventData = PointerEventData