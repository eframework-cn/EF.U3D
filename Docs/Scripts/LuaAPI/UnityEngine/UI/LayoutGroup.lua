---@class UnityEngine.UI.LayoutGroup : UnityEngine.EventSystems.UIBehaviour
---@field padding UnityEngine.RectOffset
---@field childAlignment UnityEngine.TextAnchor
---@field minWidth float
---@field preferredWidth float
---@field flexibleWidth float
---@field minHeight float
---@field preferredHeight float
---@field flexibleHeight float
---@field layoutPriority int
local LayoutGroup = {}

function LayoutGroup:CalculateLayoutInputHorizontal() end

function LayoutGroup:CalculateLayoutInputVertical() end

function LayoutGroup:SetLayoutHorizontal() end

function LayoutGroup:SetLayoutVertical() end

UnityEngine.UI.LayoutGroup = LayoutGroup