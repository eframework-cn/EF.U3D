---@class UnityEngine.UI.Shadow : UnityEngine.UI.BaseMeshEffect
---@field effectColor UnityEngine.Color
---@field effectDistance UnityEngine.Vector2
---@field useGraphicAlpha bool
local Shadow = {}

---@param vh UnityEngine.UI.VertexHelper
function Shadow:ModifyMesh(vh) end

UnityEngine.UI.Shadow = Shadow