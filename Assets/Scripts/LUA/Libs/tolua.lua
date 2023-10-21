--------------------------------------------------------------------------------
--      Copyright (c) 2015 - 2016 , 蒙占志(topameng) topameng@gmail.com
--      All rights reserved.
--      Use, modification and distribution are subject to the "MIT License"
--------------------------------------------------------------------------------
if jit then
    if jit.opt then
        jit.opt.start(3)
    end

    print("ver" .. jit.version_num .. " jit: ", jit.status())
    print(string.format("os: %s, arch: %s", jit.os, jit.arch))
end

require "Libs.misc.functions"
Mathf        = require "Libs.UnityEngine.Mathf"
Vector3    = require "Libs.UnityEngine.Vector3"
Quaternion    = require "Libs.UnityEngine.Quaternion"
Vector2        = require "Libs.UnityEngine.Vector2"
Vector4        = require "Libs.UnityEngine.Vector4"
Color        = require "Libs.UnityEngine.Color"
Ray            = require "Libs.UnityEngine.Ray"
Bounds        = require "Libs.UnityEngine.Bounds"
RaycastHit    = require "Libs.UnityEngine.RaycastHit"
Touch        = require "Libs.UnityEngine.Touch"
LayerMask    = require "Libs.UnityEngine.LayerMask"
Plane        = require "Libs.UnityEngine.Plane"
Time        = reimport "Libs.UnityEngine.Time"

list        = require "Libs.list"
utf8        = require "Libs.misc.utf8"

require "Libs.event"
require "Libs.typeof"
require "Libs.slot"
require "Libs.System.Timer"
require "Libs.System.coroutine"
require "Libs.System.ValueType"
require "Libs.System.Reflection.BindingFlags"

--require "misc.strict"