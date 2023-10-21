---@class UnityEngine.GUILayoutUtility : System.Object
local GUILayoutUtility = {}

---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(width:float, height:float):UnityEngine.Rect
---@overload fun(width:float, height:float, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(width:float, height:float, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(width:float, height:float, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(minWidth:float, maxWidth:float, minHeight:float, maxHeight:float):UnityEngine.Rect
---@overload fun(minWidth:float, maxWidth:float, minHeight:float, maxHeight:float, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(minWidth:float, maxWidth:float, minHeight:float, maxHeight:float, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(minWidth:float, maxWidth:float, minHeight:float, maxHeight:float, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@return UnityEngine.Rect
function GUILayoutUtility.GetRect(content, style) end

---@return UnityEngine.Rect
function GUILayoutUtility.GetLastRect() end

---@overload fun(aspect:float, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(aspect:float, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(aspect:float, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@param aspect float
---@return UnityEngine.Rect
function GUILayoutUtility.GetAspectRect(aspect) end

UnityEngine.GUILayoutUtility = GUILayoutUtility