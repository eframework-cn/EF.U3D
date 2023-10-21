---@class UnityEngine.GUIStyle : System.Object
---@field font UnityEngine.Font
---@field imagePosition UnityEngine.ImagePosition
---@field alignment UnityEngine.TextAnchor
---@field wordWrap bool
---@field clipping UnityEngine.TextClipping
---@field contentOffset UnityEngine.Vector2
---@field fixedWidth float
---@field fixedHeight float
---@field stretchWidth bool
---@field stretchHeight bool
---@field fontSize int
---@field fontStyle UnityEngine.FontStyle
---@field richText bool
---@field name System.String
---@field normal UnityEngine.GUIStyleState
---@field hover UnityEngine.GUIStyleState
---@field active UnityEngine.GUIStyleState
---@field onNormal UnityEngine.GUIStyleState
---@field onHover UnityEngine.GUIStyleState
---@field onActive UnityEngine.GUIStyleState
---@field focused UnityEngine.GUIStyleState
---@field onFocused UnityEngine.GUIStyleState
---@field border UnityEngine.RectOffset
---@field margin UnityEngine.RectOffset
---@field padding UnityEngine.RectOffset
---@field overflow UnityEngine.RectOffset
---@field lineHeight float
---@field none UnityEngine.GUIStyle
---@field isHeightDependantOnWidth bool
local GUIStyle = {}

---@overload fun(position:UnityEngine.Rect, text:System.String, isHover:bool, isActive:bool, on:bool, hasKeyboardFocus:bool):void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, isHover:bool, isActive:bool, on:bool, hasKeyboardFocus:bool):void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, isHover:bool, isActive:bool, on:bool, hasKeyboardFocus:bool):void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, controlID:int):void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, controlID:int, on:bool):void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, controlID:int, on:bool, hover:bool):void
---@param position UnityEngine.Rect
---@param isHover bool
---@param isActive bool
---@param on bool
---@param hasKeyboardFocus bool
function GUIStyle:Draw(position, isHover, isActive, on, hasKeyboardFocus) end

---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param controlID int
---@param character int
function GUIStyle:DrawCursor(position, content, controlID, character) end

---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param controlID int
---@param firstSelectedCharacter int
---@param lastSelectedCharacter int
function GUIStyle:DrawWithTextSelection(position, content, controlID, firstSelectedCharacter, lastSelectedCharacter) end

---@param str System.String
---@return UnityEngine.GUIStyle
function GUIStyle.op_Implicit(str) end

---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param cursorStringIndex int
---@return UnityEngine.Vector2
function GUIStyle:GetCursorPixelPosition(position, content, cursorStringIndex) end

---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param cursorPixelPosition UnityEngine.Vector2
---@return int
function GUIStyle:GetCursorStringIndex(position, content, cursorPixelPosition) end

---@param content UnityEngine.GUIContent
---@return UnityEngine.Vector2
function GUIStyle:CalcSize(content) end

---@param contentSize UnityEngine.Vector2
---@return UnityEngine.Vector2
function GUIStyle:CalcScreenSize(contentSize) end

---@param content UnityEngine.GUIContent
---@param width float
---@return float
function GUIStyle:CalcHeight(content, width) end

---@param content UnityEngine.GUIContent
---@param minWidth float
---@param maxWidth float
function GUIStyle:CalcMinMaxWidth(content, minWidth, maxWidth) end

---@return System.String
function GUIStyle:ToString() end

UnityEngine.GUIStyle = GUIStyle