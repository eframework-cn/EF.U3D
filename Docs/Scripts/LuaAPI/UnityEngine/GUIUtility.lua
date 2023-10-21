---@class UnityEngine.GUIUtility : System.Object
---@field hasModalWindow bool
---@field systemCopyBuffer System.String
---@field hotControl int
---@field keyboardControl int
local GUIUtility = {}

---@overload fun(focus:UnityEngine.FocusType):int
---@overload fun(contents:UnityEngine.GUIContent, focus:UnityEngine.FocusType):int
---@overload fun(focus:UnityEngine.FocusType, position:UnityEngine.Rect):int
---@overload fun(contents:UnityEngine.GUIContent, focus:UnityEngine.FocusType, position:UnityEngine.Rect):int
---@overload fun(hint:int, focus:UnityEngine.FocusType):int
---@param hint int
---@param focusType UnityEngine.FocusType
---@param rect UnityEngine.Rect
---@return int
function GUIUtility.GetControlID(hint, focusType, rect) end

---@overload fun(rect:UnityEngine.Rect):UnityEngine.Rect
---@param rect UnityEngine.Rect
---@param widthInPixels int
---@param heightInPixels int
---@return UnityEngine.Rect
function GUIUtility.AlignRectToDevice(rect, widthInPixels, heightInPixels) end

---@param t System.Type
---@param controlID int
---@return System.Object
function GUIUtility.GetStateObject(t, controlID) end

---@param t System.Type
---@param controlID int
---@return System.Object
function GUIUtility.QueryStateObject(t, controlID) end

function GUIUtility.ExitGUI() end

---@param guiPoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function GUIUtility.GUIToScreenPoint(guiPoint) end

---@param guiRect UnityEngine.Rect
---@return UnityEngine.Rect
function GUIUtility.GUIToScreenRect(guiRect) end

---@param screenPoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function GUIUtility.ScreenToGUIPoint(screenPoint) end

---@param screenRect UnityEngine.Rect
---@return UnityEngine.Rect
function GUIUtility.ScreenToGUIRect(screenRect) end

---@param angle float
---@param pivotPoint UnityEngine.Vector2
function GUIUtility.RotateAroundPivot(angle, pivotPoint) end

---@param scale UnityEngine.Vector2
---@param pivotPoint UnityEngine.Vector2
function GUIUtility.ScaleAroundPivot(scale, pivotPoint) end

UnityEngine.GUIUtility = GUIUtility