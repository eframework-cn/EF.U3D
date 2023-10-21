---@class UnityEngine.Cursor : System.Object
---@field visible bool
---@field lockState UnityEngine.CursorLockMode
local Cursor = {}

---@param texture UnityEngine.Texture2D
---@param hotspot UnityEngine.Vector2
---@param cursorMode UnityEngine.CursorMode
function Cursor.SetCursor(texture, hotspot, cursorMode) end

UnityEngine.Cursor = Cursor