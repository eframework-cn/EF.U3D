---@class UnityEngine.TextAsset : UnityEngine.Object
---@field bytes byte[]
---@field text System.String
---@field dataSize long
local TextAsset = {}

---@return System.String
function TextAsset:ToString() end

UnityEngine.TextAsset = TextAsset