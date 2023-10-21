---@class UnityEngine.UI.Slider : UnityEngine.UI.Selectable
---@field fillRect UnityEngine.RectTransform
---@field handleRect UnityEngine.RectTransform
---@field direction UnityEngine.UI.Slider.Direction
---@field minValue float
---@field maxValue float
---@field wholeNumbers bool
---@field value float
---@field normalizedValue float
---@field onValueChanged UnityEngine.UI.Slider.SliderEvent
local Slider = {}

---@param input float
function Slider:SetValueWithoutNotify(input) end

---@param executing UnityEngine.UI.CanvasUpdate
function Slider:Rebuild(executing) end

function Slider:LayoutComplete() end

function Slider:GraphicUpdateComplete() end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Slider:OnPointerDown(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Slider:OnDrag(eventData) end

---@param eventData UnityEngine.EventSystems.AxisEventData
function Slider:OnMove(eventData) end

---@return UnityEngine.UI.Selectable
function Slider:FindSelectableOnLeft() end

---@return UnityEngine.UI.Selectable
function Slider:FindSelectableOnRight() end

---@return UnityEngine.UI.Selectable
function Slider:FindSelectableOnUp() end

---@return UnityEngine.UI.Selectable
function Slider:FindSelectableOnDown() end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Slider:OnInitializePotentialDrag(eventData) end

---@param direction UnityEngine.UI.Slider.Direction
---@param includeRectLayouts bool
function Slider:SetDirection(direction, includeRectLayouts) end

UnityEngine.UI.Slider = Slider