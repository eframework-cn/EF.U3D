---@class UnityEngine.WWWForm : System.Object
---@field headers table
---@field data byte[]
local WWWForm = {}

---@overload fun(fieldName:System.String, value:System.String, e:System.Text.Encoding):void
---@overload fun(fieldName:System.String, i:int):void
---@param fieldName System.String
---@param value System.String
function WWWForm:AddField(fieldName, value) end

---@overload fun(fieldName:System.String, contents:byte[], fileName:System.String):void
---@overload fun(fieldName:System.String, contents:byte[], fileName:System.String, mimeType:System.String):void
---@param fieldName System.String
---@param contents byte[]
function WWWForm:AddBinaryData(fieldName, contents) end

UnityEngine.WWWForm = WWWForm