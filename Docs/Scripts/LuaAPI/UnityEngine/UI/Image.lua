---@class UnityEngine.UI.Image : UnityEngine.UI.MaskableGraphic
---@field sprite UnityEngine.Sprite
---@field atlas UnityEngine.UI.Atlas
---@field overrideSprite UnityEngine.Sprite
---@field type UnityEngine.UI.Image.Type
---@field preserveAspect bool
---@field fillCenter bool
---@field fillMethod UnityEngine.UI.Image.FillMethod
---@field fillAmount float
---@field fillClockwise bool
---@field fillOrigin int
---@field alphaHitTestMinimumThreshold float
---@field useSpriteMesh bool
---@field defaultETC1GraphicMaterial UnityEngine.Material
---@field mainTexture UnityEngine.Texture
---@field hasBorder bool
---@field pixelsPerUnitMultiplier float
---@field pixelsPerUnit float
---@field material UnityEngine.Material
---@field minWidth float
---@field preferredWidth float
---@field flexibleWidth float
---@field minHeight float
---@field preferredHeight float
---@field flexibleHeight float
---@field layoutPriority int
local Image = {}

function Image:DisableSpriteOptimizations() end

function Image:OnBeforeSerialize() end

function Image:OnAfterDeserialize() end

function Image:SetNativeSize() end

function Image:CalculateLayoutInputHorizontal() end

function Image:CalculateLayoutInputVertical() end

---@param screenPoint UnityEngine.Vector2
---@param eventCamera UnityEngine.Camera
---@return bool
function Image:IsRaycastLocationValid(screenPoint, eventCamera) end

UnityEngine.UI.Image = Image