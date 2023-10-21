---@class UnityEngine.GUILayout : System.Object
local GUILayout = {}

---@overload fun(text:System.String, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@param image UnityEngine.Texture
---@param options UnityEngine.GUILayoutOption[]
function GUILayout.Label(image, options) end

---@overload fun(text:System.String, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@param image UnityEngine.Texture
---@param options UnityEngine.GUILayoutOption[]
function GUILayout.Box(image, options) end

---@overload fun(text:System.String, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):bool
---@param image UnityEngine.Texture
---@param options UnityEngine.GUILayoutOption[]
---@return bool
function GUILayout.Button(image, options) end

---@overload fun(text:System.String, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):bool
---@param image UnityEngine.Texture
---@param options UnityEngine.GUILayoutOption[]
---@return bool
function GUILayout.RepeatButton(image, options) end

---@overload fun(text:System.String, maxLength:int, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(text:System.String, maxLength:int, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param text System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function GUILayout.TextField(text, options) end

---@overload fun(password:System.String, maskChar:char, maxLength:int, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(password:System.String, maskChar:char, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(password:System.String, maskChar:char, maxLength:int, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param password System.String
---@param maskChar char
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function GUILayout.PasswordField(password, maskChar, options) end

---@overload fun(text:System.String, maxLength:int, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@overload fun(text:System.String, maxLength:int, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):System.String
---@param text System.String
---@param options UnityEngine.GUILayoutOption[]
---@return System.String
function GUILayout.TextArea(text, options) end

---@overload fun(value:bool, text:System.String, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(value:bool, content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(value:bool, image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(value:bool, text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):bool
---@overload fun(value:bool, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):bool
---@param value bool
---@param image UnityEngine.Texture
---@param options UnityEngine.GUILayoutOption[]
---@return bool
function GUILayout.Toggle(value, image, options) end

---@overload fun(selected:int, images:UnityEngine.Texture[], options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, contents:UnityEngine.GUIContent[], options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, texts:string[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, images:UnityEngine.Texture[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, texts:string[], style:UnityEngine.GUIStyle, buttonSize:UnityEngine.GUI.ToolbarButtonSize, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, images:UnityEngine.Texture[], style:UnityEngine.GUIStyle, buttonSize:UnityEngine.GUI.ToolbarButtonSize, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, contents:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, contents:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle, buttonSize:UnityEngine.GUI.ToolbarButtonSize, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, contents:UnityEngine.GUIContent[], enabled:bool[], style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, contents:UnityEngine.GUIContent[], enabled:bool[], style:UnityEngine.GUIStyle, buttonSize:UnityEngine.GUI.ToolbarButtonSize, options:UnityEngine.GUILayoutOption[]):int
---@param selected int
---@param texts string[]
---@param options UnityEngine.GUILayoutOption[]
---@return int
function GUILayout.Toolbar(selected, texts, options) end

---@overload fun(selected:int, images:UnityEngine.Texture[], xCount:int, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, content:UnityEngine.GUIContent[], xCount:int, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, texts:string[], xCount:int, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, images:UnityEngine.Texture[], xCount:int, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):int
---@overload fun(selected:int, contents:UnityEngine.GUIContent[], xCount:int, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):int
---@param selected int
---@param texts string[]
---@param xCount int
---@param options UnityEngine.GUILayoutOption[]
---@return int
function GUILayout.SelectionGrid(selected, texts, xCount, options) end

---@overload fun(value:float, leftValue:float, rightValue:float, slider:UnityEngine.GUIStyle, thumb:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):float
---@param value float
---@param leftValue float
---@param rightValue float
---@param options UnityEngine.GUILayoutOption[]
---@return float
function GUILayout.HorizontalSlider(value, leftValue, rightValue, options) end

---@overload fun(value:float, leftValue:float, rightValue:float, slider:UnityEngine.GUIStyle, thumb:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):float
---@param value float
---@param leftValue float
---@param rightValue float
---@param options UnityEngine.GUILayoutOption[]
---@return float
function GUILayout.VerticalSlider(value, leftValue, rightValue, options) end

---@overload fun(value:float, size:float, leftValue:float, rightValue:float, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):float
---@param value float
---@param size float
---@param leftValue float
---@param rightValue float
---@param options UnityEngine.GUILayoutOption[]
---@return float
function GUILayout.HorizontalScrollbar(value, size, leftValue, rightValue, options) end

---@overload fun(value:float, size:float, topValue:float, bottomValue:float, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):float
---@param value float
---@param size float
---@param topValue float
---@param bottomValue float
---@param options UnityEngine.GUILayoutOption[]
---@return float
function GUILayout.VerticalScrollbar(value, size, topValue, bottomValue, options) end

---@param pixels float
function GUILayout.Space(pixels) end

function GUILayout.FlexibleSpace() end

---@overload fun(style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@param options UnityEngine.GUILayoutOption[]
function GUILayout.BeginHorizontal(options) end

function GUILayout.EndHorizontal() end

---@overload fun(style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@overload fun(content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):void
---@param options UnityEngine.GUILayoutOption[]
function GUILayout.BeginVertical(options) end

function GUILayout.EndVertical() end

---@overload fun(screenRect:UnityEngine.Rect, text:System.String):void
---@overload fun(screenRect:UnityEngine.Rect, image:UnityEngine.Texture):void
---@overload fun(screenRect:UnityEngine.Rect, content:UnityEngine.GUIContent):void
---@overload fun(screenRect:UnityEngine.Rect, style:UnityEngine.GUIStyle):void
---@overload fun(screenRect:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):void
---@overload fun(screenRect:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):void
---@overload fun(screenRect:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):void
---@param screenRect UnityEngine.Rect
function GUILayout.BeginArea(screenRect) end

function GUILayout.EndArea() end

---@overload fun(scrollPosition:UnityEngine.Vector2, alwaysShowHorizontal:bool, alwaysShowVertical:bool, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, style:UnityEngine.GUIStyle):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, alwaysShowHorizontal:bool, alwaysShowVertical:bool, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@overload fun(scrollPosition:UnityEngine.Vector2, alwaysShowHorizontal:bool, alwaysShowVertical:bool, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle, background:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Vector2
---@param scrollPosition UnityEngine.Vector2
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Vector2
function GUILayout.BeginScrollView(scrollPosition, options) end

function GUILayout.EndScrollView() end

---@overload fun(id:int, screenRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(id:int, screenRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, content:UnityEngine.GUIContent, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(id:int, screenRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, text:System.String, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(id:int, screenRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@overload fun(id:int, screenRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle, options:UnityEngine.GUILayoutOption[]):UnityEngine.Rect
---@param id int
---@param screenRect UnityEngine.Rect
---@param func UnityEngine.GUI.WindowFunction
---@param text System.String
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Rect
function GUILayout.Window(id, screenRect, func, text, options) end

---@param width float
---@return UnityEngine.GUILayoutOption
function GUILayout.Width(width) end

---@param minWidth float
---@return UnityEngine.GUILayoutOption
function GUILayout.MinWidth(minWidth) end

---@param maxWidth float
---@return UnityEngine.GUILayoutOption
function GUILayout.MaxWidth(maxWidth) end

---@param height float
---@return UnityEngine.GUILayoutOption
function GUILayout.Height(height) end

---@param minHeight float
---@return UnityEngine.GUILayoutOption
function GUILayout.MinHeight(minHeight) end

---@param maxHeight float
---@return UnityEngine.GUILayoutOption
function GUILayout.MaxHeight(maxHeight) end

---@param expand bool
---@return UnityEngine.GUILayoutOption
function GUILayout.ExpandWidth(expand) end

---@param expand bool
---@return UnityEngine.GUILayoutOption
function GUILayout.ExpandHeight(expand) end

UnityEngine.GUILayout = GUILayout