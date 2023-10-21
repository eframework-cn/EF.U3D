---@class UnityEngine.UI.Toggle : UnityEngine.UI.Selectable
---@field group UnityEngine.UI.ToggleGroup
---@field onValueChangedEx UnityEngine.Events.UnityAction
---@field isOn bool
---@field toggleTransition UnityEngine.UI.Toggle.ToggleTransition
---@field graphic UnityEngine.UI.Graphic
---@field onValueChanged UnityEngine.UI.UnityEventEx
local Toggle = {}

---@param executing UnityEngine.UI.CanvasUpdate
function Toggle:Rebuild(executing) end

function Toggle:LayoutComplete() end

function Toggle:GraphicUpdateComplete() end

---@param value bool
function Toggle:SetIsOnWithoutNotify(value) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Toggle:OnPointerClick(eventData) end

---@param eventData UnityEngine.EventSystems.BaseEventData
function Toggle:OnSubmit(eventData) end

UnityEngine.UI.Toggle = Toggle