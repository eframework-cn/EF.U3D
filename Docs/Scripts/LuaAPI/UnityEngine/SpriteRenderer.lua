---@class UnityEngine.SpriteRenderer : UnityEngine.Renderer
---@field sprite UnityEngine.Sprite
---@field drawMode UnityEngine.SpriteDrawMode
---@field size UnityEngine.Vector2
---@field adaptiveModeThreshold float
---@field tileMode UnityEngine.SpriteTileMode
---@field color UnityEngine.Color
---@field maskInteraction UnityEngine.SpriteMaskInteraction
---@field flipX bool
---@field flipY bool
---@field spriteSortPoint UnityEngine.SpriteSortPoint
local SpriteRenderer = {}

---@param callback UnityEngine.Events.UnityAction
function SpriteRenderer:RegisterSpriteChangeCallback(callback) end

---@param callback UnityEngine.Events.UnityAction
function SpriteRenderer:UnregisterSpriteChangeCallback(callback) end

UnityEngine.SpriteRenderer = SpriteRenderer