---@class EP.U3D.RUNTIME.LUA.SCENE.Scene : EP.U3D.LIBRARY.SCENE.Scene
---@field LScene LuaInterface.LuaTable
local Scene = {}

---@return System.String
function Scene:Name() end

function Scene:Awake() end

---@param args object[]
function Scene:Start(args) end

function Scene:Update() end

function Scene:Stop() end

EP.U3D.RUNTIME.LUA.SCENE.Scene = Scene