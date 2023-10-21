---@class UnityEngine.RectTransform : UnityEngine.Transform
---@field rect UnityEngine.Rect
---@field anchorMin UnityEngine.Vector2
---@field anchorMax UnityEngine.Vector2
---@field anchoredPosition UnityEngine.Vector2
---@field sizeDelta UnityEngine.Vector2
---@field pivot UnityEngine.Vector2
---@field anchoredPosition3D UnityEngine.Vector3
---@field offsetMin UnityEngine.Vector2
---@field offsetMax UnityEngine.Vector2
---@field drivenByObject UnityEngine.Object
---@field reapplyDrivenProperties UnityEngine.RectTransform.ReapplyDrivenProperties
local RectTransform = {}

function RectTransform:ForceUpdateRectTransforms() end

---@param fourCornersArray UnityEngine.Vector3[]
function RectTransform:GetLocalCorners(fourCornersArray) end

---@param fourCornersArray UnityEngine.Vector3[]
function RectTransform:GetWorldCorners(fourCornersArray) end

---@param edge UnityEngine.RectTransform.Edge
---@param inset float
---@param size float
function RectTransform:SetInsetAndSizeFromParentEdge(edge, inset, size) end

---@param axis UnityEngine.RectTransform.Axis
---@param size float
function RectTransform:SetSizeWithCurrentAnchors(axis, size) end

UnityEngine.RectTransform = RectTransform