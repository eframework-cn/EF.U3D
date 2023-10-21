---@class UnityEngine.UI.GridLayoutGroup : UnityEngine.UI.LayoutGroup
---@field startCorner UnityEngine.UI.GridLayoutGroup.Corner
---@field startAxis UnityEngine.UI.GridLayoutGroup.Axis
---@field cellSize UnityEngine.Vector2
---@field spacing UnityEngine.Vector2
---@field constraint UnityEngine.UI.GridLayoutGroup.Constraint
---@field constraintCount int
local GridLayoutGroup = {}

function GridLayoutGroup:CalculateLayoutInputHorizontal() end

function GridLayoutGroup:CalculateLayoutInputVertical() end

function GridLayoutGroup:SetLayoutHorizontal() end

function GridLayoutGroup:SetLayoutVertical() end

UnityEngine.UI.GridLayoutGroup = GridLayoutGroup