---@class UnityEngine.UI.InputField : UnityEngine.UI.Selectable
---@field shouldHideMobileInput bool
---@field shouldActivateOnSelect bool
---@field text System.String
---@field isFocused bool
---@field caretBlinkRate float
---@field caretWidth int
---@field textComponent UnityEngine.UI.Text
---@field placeholder UnityEngine.UI.Graphic
---@field caretColor UnityEngine.Color
---@field customCaretColor bool
---@field selectionColor UnityEngine.Color
---@field onEndEdit UnityEngine.UI.InputField.EndEditEvent
---@field onSubmit UnityEngine.UI.InputField.SubmitEvent
---@field onValueChanged UnityEngine.UI.InputField.OnChangeEvent
---@field onValidateInput UnityEngine.UI.InputField.OnValidateInput
---@field characterLimit int
---@field contentType UnityEngine.UI.InputField.ContentType
---@field lineType UnityEngine.UI.InputField.LineType
---@field inputType UnityEngine.UI.InputField.InputType
---@field touchScreenKeyboard UnityEngine.TouchScreenKeyboard
---@field keyboardType UnityEngine.TouchScreenKeyboardType
---@field characterValidation UnityEngine.UI.InputField.CharacterValidation
---@field readOnly bool
---@field multiLine bool
---@field asteriskChar char
---@field wasCanceled bool
---@field caretPosition int
---@field selectionAnchorPosition int
---@field selectionFocusPosition int
---@field minWidth float
---@field preferredWidth float
---@field flexibleWidth float
---@field minHeight float
---@field preferredHeight float
---@field flexibleHeight float
---@field layoutPriority int
local InputField = {}

---@param input System.String
function InputField:SetTextWithoutNotify(input) end

---@param shift bool
function InputField:MoveTextEnd(shift) end

---@param shift bool
function InputField:MoveTextStart(shift) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function InputField:OnBeginDrag(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function InputField:OnDrag(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function InputField:OnEndDrag(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function InputField:OnPointerDown(eventData) end

---@param e UnityEngine.Event
function InputField:ProcessEvent(e) end

---@param eventData UnityEngine.EventSystems.BaseEventData
function InputField:OnUpdateSelected(eventData) end

function InputField:ForceLabelUpdate() end

---@param update UnityEngine.UI.CanvasUpdate
function InputField:Rebuild(update) end

function InputField:LayoutComplete() end

function InputField:GraphicUpdateComplete() end

function InputField:ActivateInputField() end

---@param eventData UnityEngine.EventSystems.BaseEventData
function InputField:OnSelect(eventData) end

---@param eventData UnityEngine.EventSystems.PointerEventData
function InputField:OnPointerClick(eventData) end

function InputField:DeactivateInputField() end

---@param eventData UnityEngine.EventSystems.BaseEventData
function InputField:OnDeselect(eventData) end

---@param eventData UnityEngine.EventSystems.BaseEventData
function InputField:OnSubmit(eventData) end

function InputField:CalculateLayoutInputHorizontal() end

function InputField:CalculateLayoutInputVertical() end

UnityEngine.UI.InputField = InputField

---@class UnityEngine.UI.InputField.CharacterValidation : System.Enum
---@field value__ int
---@field None UnityEngine.UI.InputField.CharacterValidation
---@field Integer UnityEngine.UI.InputField.CharacterValidation
---@field Decimal UnityEngine.UI.InputField.CharacterValidation
---@field Alphanumeric UnityEngine.UI.InputField.CharacterValidation
---@field Name UnityEngine.UI.InputField.CharacterValidation
---@field EmailAddress UnityEngine.UI.InputField.CharacterValidation
local CharacterValidation = {}

UnityEngine.UI.InputField.CharacterValidation = CharacterValidation

---@class UnityEngine.UI.InputField.ContentType : System.Enum
---@field value__ int
---@field Standard UnityEngine.UI.InputField.ContentType
---@field Autocorrected UnityEngine.UI.InputField.ContentType
---@field IntegerNumber UnityEngine.UI.InputField.ContentType
---@field DecimalNumber UnityEngine.UI.InputField.ContentType
---@field Alphanumeric UnityEngine.UI.InputField.ContentType
---@field Name UnityEngine.UI.InputField.ContentType
---@field EmailAddress UnityEngine.UI.InputField.ContentType
---@field Password UnityEngine.UI.InputField.ContentType
---@field Pin UnityEngine.UI.InputField.ContentType
---@field Custom UnityEngine.UI.InputField.ContentType
local ContentType = {}

UnityEngine.UI.InputField.ContentType = ContentType

---@class UnityEngine.UI.InputField.InputType : System.Enum
---@field value__ int
---@field Standard UnityEngine.UI.InputField.InputType
---@field AutoCorrect UnityEngine.UI.InputField.InputType
---@field Password UnityEngine.UI.InputField.InputType
local InputType = {}

UnityEngine.UI.InputField.InputType = InputType

---@class UnityEngine.UI.InputField.LineType : System.Enum
---@field value__ int
---@field SingleLine UnityEngine.UI.InputField.LineType
---@field MultiLineSubmit UnityEngine.UI.InputField.LineType
---@field MultiLineNewline UnityEngine.UI.InputField.LineType
local LineType = {}

UnityEngine.UI.InputField.LineType = LineType

---@class UnityEngine.UI.InputField.OnChangeEvent : UnityEngine.Events.UnityEvent
local OnChangeEvent = {}

UnityEngine.UI.InputField.OnChangeEvent = OnChangeEvent

---@class UnityEngine.UI.InputField.SubmitEvent : UnityEngine.Events.UnityEvent
local SubmitEvent = {}

UnityEngine.UI.InputField.SubmitEvent = SubmitEvent