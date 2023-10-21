---@class UnityEngine.RectOffset : System.Object
---@field left int
---@field right int
---@field top int
---@field bottom int
---@field horizontal int
---@field vertical int
local RectOffset = {}

---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function RectOffset:ToString() end

---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function RectOffset:Add(rect) end

---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function RectOffset:Remove(rect) end

UnityEngine.RectOffset = RectOffset