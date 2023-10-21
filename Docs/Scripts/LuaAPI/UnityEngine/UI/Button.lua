---@class UnityEngine.UI.Button : UnityEngine.UI.Selectable
---@field onClick UnityEngine.UI.UnityEventEx
---@field onClickEx UnityEngine.Events.UnityAction
---@field onPress UnityEngine.UI.UnityEventEx
---@field onPressEx UnityEngine.Events.UnityAction
---@field onRelease UnityEngine.UI.UnityEventEx
---@field onReleaseEx UnityEngine.Events.UnityAction
local Button = {}

---@param eventData UnityEngine.EventSystems.PointerEventData
function Button:OnPointerClick(eventData) end

---@param eventData UnityEngine.EventSystems.BaseEventData
function Button:OnSubmit(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Button:OnPointerDown(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Button:OnPointerUp(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Button:OnPointerExit(eventData) end

UnityEngine.UI.Button = Button