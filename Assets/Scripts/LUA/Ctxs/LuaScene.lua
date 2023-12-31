---@class LuaScene
LuaScene = CLASS {}
---@class LuaScene
---@field Scene Scene
---@field Instance LuaScene
---@field Name string

---@private
---@param name string
function LuaScene:CTOR(name)
    self.Name = name
    self.Scene = Scene(name, self)
    LuaScene.Name = name
    LuaScene.Scene = self.Scene
    LuaScene.Instance = self
end

---@protected
function LuaScene:Awake()
    Helper.Log("{0} Awake", self.Name)
    require "Gen.Proto.CID"
    require "Gen.Proto.MID"
    CPB = require "Gen.Proto.CPB"
    MPB = require "Gen.Proto.MPB"
end

---@protected
function LuaScene:Start(arg)
    Helper.Log("{0} Start: {1}", self.Name, arg)
end

---@protected
function LuaScene:Stop()
    Helper.Log("{0} Stop", self.Name)
end

NEW(LuaScene, "LuaScene")