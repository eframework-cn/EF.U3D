---@class UnityEngine.GUISkin : UnityEngine.ScriptableObject
---@field font UnityEngine.Font
---@field box UnityEngine.GUIStyle
---@field label UnityEngine.GUIStyle
---@field textField UnityEngine.GUIStyle
---@field textArea UnityEngine.GUIStyle
---@field button UnityEngine.GUIStyle
---@field toggle UnityEngine.GUIStyle
---@field window UnityEngine.GUIStyle
---@field horizontalSlider UnityEngine.GUIStyle
---@field horizontalSliderThumb UnityEngine.GUIStyle
---@field verticalSlider UnityEngine.GUIStyle
---@field verticalSliderThumb UnityEngine.GUIStyle
---@field horizontalScrollbar UnityEngine.GUIStyle
---@field horizontalScrollbarThumb UnityEngine.GUIStyle
---@field horizontalScrollbarLeftButton UnityEngine.GUIStyle
---@field horizontalScrollbarRightButton UnityEngine.GUIStyle
---@field verticalScrollbar UnityEngine.GUIStyle
---@field verticalScrollbarThumb UnityEngine.GUIStyle
---@field verticalScrollbarUpButton UnityEngine.GUIStyle
---@field verticalScrollbarDownButton UnityEngine.GUIStyle
---@field scrollView UnityEngine.GUIStyle
---@field customStyles UnityEngine.GUIStyle[]
---@field settings UnityEngine.GUISettings
local GUISkin = {}

---@param styleName System.String
---@return UnityEngine.GUIStyle
function GUISkin:GetStyle(styleName) end

---@param styleName System.String
---@return UnityEngine.GUIStyle
function GUISkin:FindStyle(styleName) end

---@return System.Collections.IEnumerator
function GUISkin:GetEnumerator() end

UnityEngine.GUISkin = GUISkin