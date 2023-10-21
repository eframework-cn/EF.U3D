---@class UnityEngine.UI.Graphic : UnityEngine.EventSystems.UIBehaviour
---@field defaultGraphicMaterial UnityEngine.Material
---@field color UnityEngine.Color
---@field raycastTarget bool
---@field raycastPadding UnityEngine.Vector4
---@field depth int
---@field rectTransform UnityEngine.RectTransform
---@field canvas UnityEngine.Canvas
---@field canvasRenderer UnityEngine.CanvasRenderer
---@field defaultMaterial UnityEngine.Material
---@field material UnityEngine.Material
---@field materialForRendering UnityEngine.Material
---@field mainTexture UnityEngine.Texture
local Graphic = {}

function Graphic:SetAllDirty() end

function Graphic:SetLayoutDirty() end

function Graphic:SetVerticesDirty() end

function Graphic:SetMaterialDirty() end

function Graphic:SetRaycastDirty() end

function Graphic:OnCullingChanged() end

---@param update UnityEngine.UI.CanvasUpdate
function Graphic:Rebuild(update) end

function Graphic:LayoutComplete() end

function Graphic:GraphicUpdateComplete() end

function Graphic:SetNativeSize() end

---@param sp UnityEngine.Vector2
---@param eventCamera UnityEngine.Camera
---@return bool
function Graphic:Raycast(sp, eventCamera) end

---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function Graphic:PixelAdjustPoint(point) end

---@return UnityEngine.Rect
function Graphic:GetPixelAdjustedRect() end

---@overload fun(targetColor:UnityEngine.Color, duration:float, ignoreTimeScale:bool, useAlpha:bool, useRGB:bool):void
---@param targetColor UnityEngine.Color
---@param duration float
---@param ignoreTimeScale bool
---@param useAlpha bool
function Graphic:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha) end

---@param alpha float
---@param duration float
---@param ignoreTimeScale bool
function Graphic:CrossFadeAlpha(alpha, duration, ignoreTimeScale) end

---@param action UnityEngine.Events.UnityAction
function Graphic:RegisterDirtyLayoutCallback(action) end

---@param action UnityEngine.Events.UnityAction
function Graphic:UnregisterDirtyLayoutCallback(action) end

---@param action UnityEngine.Events.UnityAction
function Graphic:RegisterDirtyVerticesCallback(action) end

---@param action UnityEngine.Events.UnityAction
function Graphic:UnregisterDirtyVerticesCallback(action) end

---@param action UnityEngine.Events.UnityAction
function Graphic:RegisterDirtyMaterialCallback(action) end

---@param action UnityEngine.Events.UnityAction
function Graphic:UnregisterDirtyMaterialCallback(action) end

UnityEngine.UI.Graphic = Graphic