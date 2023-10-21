---@class UnityEngine.UI.Text : UnityEngine.UI.MaskableGraphic
---@field cachedTextGenerator UnityEngine.TextGenerator
---@field cachedTextGeneratorForLayout UnityEngine.TextGenerator
---@field mainTexture UnityEngine.Texture
---@field font UnityEngine.Font
---@field text System.String
---@field supportRichText bool
---@field resizeTextForBestFit bool
---@field resizeTextMinSize int
---@field resizeTextMaxSize int
---@field alignment UnityEngine.TextAnchor
---@field alignByGeometry bool
---@field fontSize int
---@field horizontalOverflow UnityEngine.HorizontalWrapMode
---@field verticalOverflow UnityEngine.VerticalWrapMode
---@field lineSpacing float
---@field fontStyle UnityEngine.FontStyle
---@field pixelsPerUnit float
---@field minWidth float
---@field preferredWidth float
---@field flexibleWidth float
---@field minHeight float
---@field preferredHeight float
---@field flexibleHeight float
---@field layoutPriority int
local Text = {}

function Text:FontTextureChanged() end

---@param extents UnityEngine.Vector2
---@return UnityEngine.TextGenerationSettings
function Text:GetGenerationSettings(extents) end

---@param anchor UnityEngine.TextAnchor
---@return UnityEngine.Vector2
function Text.GetTextAnchorPivot(anchor) end

function Text:CalculateLayoutInputHorizontal() end

function Text:CalculateLayoutInputVertical() end

UnityEngine.UI.Text = Text