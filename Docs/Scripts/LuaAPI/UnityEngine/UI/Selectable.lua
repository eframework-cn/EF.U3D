---@class UnityEngine.UI.Selectable : UnityEngine.EventSystems.UIBehaviour
---@field allSelectablesArray UnityEngine.UI.Selectable[]
---@field allSelectableCount int
---@field navigation UnityEngine.UI.Navigation
---@field transition UnityEngine.UI.Selectable.Transition
---@field colors UnityEngine.UI.ColorBlock
---@field spriteState UnityEngine.UI.SpriteState
---@field animationTriggers UnityEngine.UI.AnimationTriggers
---@field targetGraphic UnityEngine.UI.Graphic
---@field interactable bool
---@field image UnityEngine.UI.Image
---@field animator UnityEngine.Animator
local Selectable = {}

---@param selectables UnityEngine.UI.Selectable[]
---@return int
function Selectable.AllSelectablesNoAlloc(selectables) end

---@return bool
function Selectable:IsInteractable() end

---@param dir UnityEngine.Vector3
---@return UnityEngine.UI.Selectable
function Selectable:FindSelectable(dir) end

---@return UnityEngine.UI.Selectable
function Selectable:FindSelectableOnLeft() end

---@return UnityEngine.UI.Selectable
function Selectable:FindSelectableOnRight() end

---@return UnityEngine.UI.Selectable
function Selectable:FindSelectableOnUp() end

---@return UnityEngine.UI.Selectable
function Selectable:FindSelectableOnDown() end

---@param eventData UnityEngine.EventSystems.AxisEventData
function Selectable:OnMove(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Selectable:OnPointerDown(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Selectable:OnPointerUp(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Selectable:OnPointerEnter(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function Selectable:OnPointerExit(eventData) end

---@param eventData UnityEngine.EventSystems.BaseEventData
function Selectable:OnSelect(eventData) end

---@param eventData UnityEngine.EventSystems.BaseEventData
function Selectable:OnDeselect(eventData) end

function Selectable:Select() end

UnityEngine.UI.Selectable = Selectable