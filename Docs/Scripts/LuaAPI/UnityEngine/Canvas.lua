---@class UnityEngine.Canvas : UnityEngine.Behaviour
---@field renderMode UnityEngine.RenderMode
---@field isRootCanvas bool
---@field pixelRect UnityEngine.Rect
---@field scaleFactor float
---@field referencePixelsPerUnit float
---@field overridePixelPerfect bool
---@field pixelPerfect bool
---@field planeDistance float
---@field renderOrder int
---@field overrideSorting bool
---@field sortingOrder int
---@field targetDisplay int
---@field sortingLayerID int
---@field cachedSortingLayerValue int
---@field additionalShaderChannels UnityEngine.AdditionalCanvasShaderChannels
---@field sortingLayerName System.String
---@field rootCanvas UnityEngine.Canvas
---@field renderingDisplaySize UnityEngine.Vector2
---@field worldCamera UnityEngine.Camera
---@field normalizedSortingGridSize float
---@field preWillRenderCanvases UnityEngine.Canvas.WillRenderCanvases
---@field willRenderCanvases UnityEngine.Canvas.WillRenderCanvases
local Canvas = {}

---@return UnityEngine.Material
function Canvas.GetDefaultCanvasMaterial() end

---@return UnityEngine.Material
function Canvas.GetETC1SupportedCanvasMaterial() end

function Canvas.ForceUpdateCanvases() end

UnityEngine.Canvas = Canvas