---@class EP.U3D.RUNTIME.LUA.BASE.Helper : EP.U3D.LIBRARY.BASE.Helper
local Helper = {}

---@param format System.Object
---@param args object[]
function Helper.Log(format, args) end

---@param format System.Object
---@param args object[]
function Helper.LogError(format, args) end

---@param format System.Object
---@param args object[]
function Helper.LogWarning(format, args) end

---@param path System.String
---@return byte[]
function Helper.OpenFile(path) end

EP.U3D.RUNTIME.LUA.BASE.Helper = Helper