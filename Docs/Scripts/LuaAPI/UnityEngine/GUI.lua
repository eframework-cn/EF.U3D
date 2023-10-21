---@class UnityEngine.GUI : System.Object
---@field color UnityEngine.Color
---@field backgroundColor UnityEngine.Color
---@field contentColor UnityEngine.Color
---@field changed bool
---@field enabled bool
---@field depth int
---@field skin UnityEngine.GUISkin
---@field matrix UnityEngine.Matrix4x4
---@field tooltip System.String
local GUI = {}

---@param name System.String
function GUI.SetNextControlName(name) end

---@return System.String
function GUI.GetNameOfFocusedControl() end

---@param name System.String
function GUI.FocusControl(name) end

---@overload fun():void
---@param position UnityEngine.Rect
function GUI.DragWindow(position) end

---@param windowID int
function GUI.BringWindowToFront(windowID) end

---@param windowID int
function GUI.BringWindowToBack(windowID) end

---@param windowID int
function GUI.FocusWindow(windowID) end

function GUI.UnfocusWindow() end

---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture):void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):void
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):void
---@param position UnityEngine.Rect
---@param text System.String
function GUI.Label(position, text) end

---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode):void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, alphaBlend:bool):void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, alphaBlend:bool, imageAspect:float):void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, alphaBlend:bool, imageAspect:float, color:UnityEngine.Color, borderWidth:float, borderRadius:float):void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, alphaBlend:bool, imageAspect:float, color:UnityEngine.Color, borderWidths:UnityEngine.Vector4, borderRadius:float):void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, scaleMode:UnityEngine.ScaleMode, alphaBlend:bool, imageAspect:float, color:UnityEngine.Color, borderWidths:UnityEngine.Vector4, borderRadiuses:UnityEngine.Vector4):void
---@param position UnityEngine.Rect
---@param image UnityEngine.Texture
function GUI.DrawTexture(position, image) end

---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, texCoords:UnityEngine.Rect, alphaBlend:bool):void
---@param position UnityEngine.Rect
---@param image UnityEngine.Texture
---@param texCoords UnityEngine.Rect
function GUI.DrawTextureWithTexCoords(position, image, texCoords) end

---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture):void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):void
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):void
---@param position UnityEngine.Rect
---@param text System.String
function GUI.Box(position, text) end

---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture):bool
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):bool
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):bool
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):bool
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):bool
---@param position UnityEngine.Rect
---@param text System.String
---@return bool
function GUI.Button(position, text) end

---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture):bool
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):bool
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):bool
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):bool
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):bool
---@param position UnityEngine.Rect
---@param text System.String
---@return bool
function GUI.RepeatButton(position, text) end

---@overload fun(position:UnityEngine.Rect, text:System.String, maxLength:int):System.String
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, text:System.String, maxLength:int, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param text System.String
---@return System.String
function GUI.TextField(position, text) end

---@overload fun(position:UnityEngine.Rect, password:System.String, maskChar:char, maxLength:int):System.String
---@overload fun(position:UnityEngine.Rect, password:System.String, maskChar:char, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, password:System.String, maskChar:char, maxLength:int, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param password System.String
---@param maskChar char
---@return System.String
function GUI.PasswordField(position, password, maskChar) end

---@overload fun(position:UnityEngine.Rect, text:System.String, maxLength:int):System.String
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):System.String
---@overload fun(position:UnityEngine.Rect, text:System.String, maxLength:int, style:UnityEngine.GUIStyle):System.String
---@param position UnityEngine.Rect
---@param text System.String
---@return System.String
function GUI.TextArea(position, text) end

---@overload fun(position:UnityEngine.Rect, value:bool, image:UnityEngine.Texture):bool
---@overload fun(position:UnityEngine.Rect, value:bool, content:UnityEngine.GUIContent):bool
---@overload fun(position:UnityEngine.Rect, value:bool, text:System.String, style:UnityEngine.GUIStyle):bool
---@overload fun(position:UnityEngine.Rect, value:bool, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):bool
---@overload fun(position:UnityEngine.Rect, value:bool, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):bool
---@overload fun(position:UnityEngine.Rect, id:int, value:bool, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):bool
---@param position UnityEngine.Rect
---@param value bool
---@param text System.String
---@return bool
function GUI.Toggle(position, value, text) end

---@overload fun(position:UnityEngine.Rect, selected:int, images:UnityEngine.Texture[]):int
---@overload fun(position:UnityEngine.Rect, selected:int, contents:UnityEngine.GUIContent[]):int
---@overload fun(position:UnityEngine.Rect, selected:int, texts:string[], style:UnityEngine.GUIStyle):int
---@overload fun(position:UnityEngine.Rect, selected:int, images:UnityEngine.Texture[], style:UnityEngine.GUIStyle):int
---@overload fun(position:UnityEngine.Rect, selected:int, contents:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle):int
---@overload fun(position:UnityEngine.Rect, selected:int, contents:UnityEngine.GUIContent[], style:UnityEngine.GUIStyle, buttonSize:UnityEngine.GUI.ToolbarButtonSize):int
---@param position UnityEngine.Rect
---@param selected int
---@param texts string[]
---@return int
function GUI.Toolbar(position, selected, texts) end

---@overload fun(position:UnityEngine.Rect, selected:int, images:UnityEngine.Texture[], xCount:int):int
---@overload fun(position:UnityEngine.Rect, selected:int, content:UnityEngine.GUIContent[], xCount:int):int
---@overload fun(position:UnityEngine.Rect, selected:int, texts:string[], xCount:int, style:UnityEngine.GUIStyle):int
---@overload fun(position:UnityEngine.Rect, selected:int, images:UnityEngine.Texture[], xCount:int, style:UnityEngine.GUIStyle):int
---@overload fun(position:UnityEngine.Rect, selected:int, contents:UnityEngine.GUIContent[], xCount:int, style:UnityEngine.GUIStyle):int
---@param position UnityEngine.Rect
---@param selected int
---@param texts string[]
---@param xCount int
---@return int
function GUI.SelectionGrid(position, selected, texts, xCount) end

---@overload fun(position:UnityEngine.Rect, value:float, leftValue:float, rightValue:float, slider:UnityEngine.GUIStyle, thumb:UnityEngine.GUIStyle):float
---@overload fun(position:UnityEngine.Rect, value:float, leftValue:float, rightValue:float, slider:UnityEngine.GUIStyle, thumb:UnityEngine.GUIStyle, thumbExtent:UnityEngine.GUIStyle):float
---@param position UnityEngine.Rect
---@param value float
---@param leftValue float
---@param rightValue float
---@return float
function GUI.HorizontalSlider(position, value, leftValue, rightValue) end

---@overload fun(position:UnityEngine.Rect, value:float, topValue:float, bottomValue:float, slider:UnityEngine.GUIStyle, thumb:UnityEngine.GUIStyle):float
---@overload fun(position:UnityEngine.Rect, value:float, topValue:float, bottomValue:float, slider:UnityEngine.GUIStyle, thumb:UnityEngine.GUIStyle, thumbExtent:UnityEngine.GUIStyle):float
---@param position UnityEngine.Rect
---@param value float
---@param topValue float
---@param bottomValue float
---@return float
function GUI.VerticalSlider(position, value, topValue, bottomValue) end

---@param position UnityEngine.Rect
---@param value float
---@param size float
---@param start float
---@param _end float
---@param slider UnityEngine.GUIStyle
---@param thumb UnityEngine.GUIStyle
---@param horiz bool
---@param id int
---@param thumbExtent UnityEngine.GUIStyle
---@return float
function GUI.Slider(position, value, size, start, _end, slider, thumb, horiz, id, thumbExtent) end

---@overload fun(position:UnityEngine.Rect, value:float, size:float, leftValue:float, rightValue:float, style:UnityEngine.GUIStyle):float
---@param position UnityEngine.Rect
---@param value float
---@param size float
---@param leftValue float
---@param rightValue float
---@return float
function GUI.HorizontalScrollbar(position, value, size, leftValue, rightValue) end

---@overload fun(position:UnityEngine.Rect, value:float, size:float, topValue:float, bottomValue:float, style:UnityEngine.GUIStyle):float
---@param position UnityEngine.Rect
---@param value float
---@param size float
---@param topValue float
---@param bottomValue float
---@return float
function GUI.VerticalScrollbar(position, value, size, topValue, bottomValue) end

---@overload fun(position:UnityEngine.Rect):void
---@param position UnityEngine.Rect
---@param scrollOffset UnityEngine.Vector2
---@param renderOffset UnityEngine.Vector2
---@param resetOffset bool
function GUI.BeginClip(position, scrollOffset, renderOffset, resetOffset) end

---@overload fun(position:UnityEngine.Rect, text:System.String):void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture):void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent):void
---@overload fun(position:UnityEngine.Rect, style:UnityEngine.GUIStyle):void
---@overload fun(position:UnityEngine.Rect, text:System.String, style:UnityEngine.GUIStyle):void
---@overload fun(position:UnityEngine.Rect, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):void
---@overload fun(position:UnityEngine.Rect, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):void
---@param position UnityEngine.Rect
function GUI.BeginGroup(position) end

function GUI.EndGroup() end

function GUI.EndClip() end

---@overload fun(position:UnityEngine.Rect, scrollPosition:UnityEngine.Vector2, viewRect:UnityEngine.Rect, alwaysShowHorizontal:bool, alwaysShowVertical:bool):UnityEngine.Vector2
---@overload fun(position:UnityEngine.Rect, scrollPosition:UnityEngine.Vector2, viewRect:UnityEngine.Rect, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle):UnityEngine.Vector2
---@overload fun(position:UnityEngine.Rect, scrollPosition:UnityEngine.Vector2, viewRect:UnityEngine.Rect, alwaysShowHorizontal:bool, alwaysShowVertical:bool, horizontalScrollbar:UnityEngine.GUIStyle, verticalScrollbar:UnityEngine.GUIStyle):UnityEngine.Vector2
---@param position UnityEngine.Rect
---@param scrollPosition UnityEngine.Vector2
---@param viewRect UnityEngine.Rect
---@return UnityEngine.Vector2
function GUI.BeginScrollView(position, scrollPosition, viewRect) end

---@overload fun(handleScrollWheel:bool):void
function GUI.EndScrollView() end

---@param position UnityEngine.Rect
function GUI.ScrollTo(position) end

---@param position UnityEngine.Rect
---@param maxDelta float
---@return bool
function GUI.ScrollTowards(position, maxDelta) end

---@overload fun(id:int, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture):UnityEngine.Rect
---@overload fun(id:int, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, content:UnityEngine.GUIContent):UnityEngine.Rect
---@overload fun(id:int, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, text:System.String, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(id:int, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(id:int, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, title:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@param id int
---@param clientRect UnityEngine.Rect
---@param func UnityEngine.GUI.WindowFunction
---@param text System.String
---@return UnityEngine.Rect
function GUI.Window(id, clientRect, func, text) end

---@overload fun(id:int, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture):UnityEngine.Rect
---@overload fun(id:int, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, content:UnityEngine.GUIContent):UnityEngine.Rect
---@overload fun(id:int, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, text:System.String, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(id:int, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, image:UnityEngine.Texture, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@overload fun(id:int, clientRect:UnityEngine.Rect, func:UnityEngine.GUI.WindowFunction, content:UnityEngine.GUIContent, style:UnityEngine.GUIStyle):UnityEngine.Rect
---@param id int
---@param clientRect UnityEngine.Rect
---@param func UnityEngine.GUI.WindowFunction
---@param text System.String
---@return UnityEngine.Rect
function GUI.ModalWindow(id, clientRect, func, text) end

UnityEngine.GUI = GUI