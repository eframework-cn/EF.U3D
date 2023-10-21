---------------------------------------------------------------------------
--                     GNU GENERAL PUBLIC LICENSE                        --
--                        Version 2, June 1991                           --
--                                                                       --
-- Copyright (C) EFramework, https://eframework.cn, All rights reserved. --
-- Everyone is permitted to copy and distribute verbatim copies          --
-- of this license document, but changing it is not allowed.             --
--                   SEE LICENSE.md FOR MORE DETAILS.                    --
---------------------------------------------------------------------------
if UnityEngine.Application.isEditor and not EP.U3D.LIBRARY.BASE.Constants.SCRIPT_BUNDLE_MODE then
    -- for vscode + luaide-lite
    -- usage: run debugger first before run game
    BREAKINFOFUNC, XPCALLFUNC = require("Core.LuaDebug")("localhost", 7003)
    coroutine.start(function()
        while true do
            coroutine.wait(0.1)
            BREAKINFOFUNC()
        end
    end)

    -- for idea + emmylua
    -- usage: run game first before run debugger
    -- block: dbg.waitIDE()
    package.cpath = string.format("%s;%s/%s;%s/%s", package.cpath,
    UnityEngine.Application.dataPath, "/../Packages/ep.u3d.library.lua/Runtime/Plugins/Libs/?.dll",
    UnityEngine.Application.dataPath, "/../Library/PackageCache/ep.u3d.library.lua@1.0.0/Runtime/Plugins/Libs/?.dll")
    local dbg = require("emmy_core")
    dbg.tcpListen("localhost", 9966)
end

require "Core.Define"
require "Core.Core"
require "Core.Exception"
require "Core.String"

---@class Launcher
---@field gameObject UnityEngine.GameObject
---@field transform UnityEngine.Transform
Launcher = {}

function Launcher.Start(go)
    Launcher.gameObject = go
    Launcher.transform = go.transform
    require "Ctxs.LuaScene"
    coroutine.start(function()
        coroutine.wait(0)
        SceneManager.Goto(LuaScene.Scene, "hello world!")
    end)
end