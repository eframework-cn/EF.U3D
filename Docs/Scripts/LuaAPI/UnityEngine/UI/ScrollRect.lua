---@class UnityEngine.UI.ScrollRect : UnityEngine.EventSystems.UIBehaviour
---@field content UnityEngine.RectTransform
---@field horizontal bool
---@field vertical bool
---@field movementType UnityEngine.UI.ScrollRect.MovementType
---@field elasticity float
---@field inertia bool
---@field decelerationRate float
---@field scrollSensitivity float
---@field viewport UnityEngine.RectTransform
---@field horizontalScrollbar UnityEngine.UI.Scrollbar
---@field verticalScrollbar UnityEngine.UI.Scrollbar
---@field horizontalScrollbarVisibility UnityEngine.UI.ScrollRect.ScrollbarVisibility
---@field verticalScrollbarVisibility UnityEngine.UI.ScrollRect.ScrollbarVisibility
---@field horizontalScrollbarSpacing float
---@field verticalScrollbarSpacing float
---@field onValueChanged UnityEngine.UI.ScrollRect.ScrollRectEvent
---@field velocity UnityEngine.Vector2
---@field normalizedPosition UnityEngine.Vector2
---@field horizontalNormalizedPosition float
---@field verticalNormalizedPosition float
---@field minWidth float
---@field preferredWidth float
---@field flexibleWidth float
---@field minHeight float
---@field preferredHeight float
---@field flexibleHeight float
---@field layoutPriority int
local ScrollRect = {}

---@param executing UnityEngine.UI.CanvasUpdate
function ScrollRect:Rebuild(executing) end

function ScrollRect:LayoutComplete() end

function ScrollRect:GraphicUpdateComplete() end

---@return bool
function ScrollRect:IsActive() end

function ScrollRect:StopMovement() end

---@param data UnityEngine.EventSystems.PointerEventData
function ScrollRect:OnScroll(data) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function ScrollRect:OnInitializePotentialDrag(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function ScrollRect:OnBeginDrag(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function ScrollRect:OnEndDrag(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function ScrollRect:OnDrag(eventData) end

function ScrollRect:CalculateLayoutInputHorizontal() end

function ScrollRect:CalculateLayoutInputVertical() end

function ScrollRect:SetLayoutHorizontal() end

function ScrollRect:SetLayoutVertical() end

UnityEngine.UI.ScrollRect = ScrollRect