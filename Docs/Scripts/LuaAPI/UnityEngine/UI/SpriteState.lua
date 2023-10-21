---@class UnityEngine.UI.SpriteState
---@field highlightedSprite UnityEngine.Sprite
---@field pressedSprite UnityEngine.Sprite
---@field selectedSprite UnityEngine.Sprite
---@field disabledSprite UnityEngine.Sprite
local SpriteState = {}

---@param other UnityEngine.UI.SpriteState
---@return bool
function SpriteState:Equals(other) end

UnityEngine.UI.SpriteState = SpriteState