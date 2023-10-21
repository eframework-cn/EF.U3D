---@class UnityEngine.UI.MaskableGraphic.CullStateChangedEvent : UnityEngine.Events.UnityEvent
local CullStateChangedEvent = {}

UnityEngine.UI.MaskableGraphic.CullStateChangedEvent = CullStateChangedEvent

---@class UnityEngine.UI.MaskableGraphic : UnityEngine.UI.Graphic
---@field onCullStateChanged UnityEngine.UI.MaskableGraphic.CullStateChangedEvent
---@field maskable bool
---@field isMaskingGraphic bool
local MaskableGraphic = {}

---@param baseMaterial UnityEngine.Material
---@return UnityEngine.Material
function MaskableGraphic:GetModifiedMaterial(baseMaterial) end

---@param clipRect UnityEngine.Rect
---@param validRect bool
function MaskableGraphic:Cull(clipRect, validRect) end

---@param clipRect UnityEngine.Rect
---@param validRect bool
function MaskableGraphic:SetClipRect(clipRect, validRect) end

---@param clipSoftness UnityEngine.Vector2
function MaskableGraphic:SetClipSoftness(clipSoftness) end

function MaskableGraphic:RecalculateClipping() end

function MaskableGraphic:RecalculateMasking() end

UnityEngine.UI.MaskableGraphic = MaskableGraphic