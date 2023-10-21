---@class UnityEngine.Screen : System.Object
---@field width int
---@field height int
---@field dpi float
---@field currentResolution UnityEngine.Resolution
---@field resolutions UnityEngine.Resolution[]
---@field fullScreen bool
---@field fullScreenMode UnityEngine.FullScreenMode
---@field safeArea UnityEngine.Rect
---@field cutouts UnityEngine.Rect[]
---@field autorotateToPortrait bool
---@field autorotateToPortraitUpsideDown bool
---@field autorotateToLandscapeLeft bool
---@field autorotateToLandscapeRight bool
---@field orientation UnityEngine.ScreenOrientation
---@field sleepTimeout int
---@field brightness float
---@field mainWindowPosition UnityEngine.Vector2Int
---@field mainWindowDisplayInfo UnityEngine.DisplayInfo
local Screen = {}

---@overload fun(width:int, height:int, fullscreenMode:UnityEngine.FullScreenMode):void
---@overload fun(width:int, height:int, fullscreen:bool, preferredRefreshRate:int):void
---@overload fun(width:int, height:int, fullscreen:bool):void
---@param width int
---@param height int
---@param fullscreenMode UnityEngine.FullScreenMode
---@param preferredRefreshRate int
function Screen.SetResolution(width, height, fullscreenMode, preferredRefreshRate) end

---@param displayLayout table
function Screen.GetDisplayLayout(displayLayout) end

---@param display UnityEngine.DisplayInfo
---@param position UnityEngine.Vector2Int
---@return UnityEngine.AsyncOperation
function Screen.MoveMainWindowTo(display, position) end

UnityEngine.Screen = Screen