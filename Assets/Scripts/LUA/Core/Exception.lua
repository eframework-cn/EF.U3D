---------------------------------------------------------------------------
--                     GNU GENERAL PUBLIC LICENSE                        --
--                        Version 2, June 1991                           --
--                                                                       --
-- Copyright (C) EFramework, https://eframework.cn, All rights reserved. --
-- Everyone is permitted to copy and distribute verbatim copies          --
-- of this license document, but changing it is not allowed.             --
--                   SEE LICENSE.md FOR MORE DETAILS.                    --
---------------------------------------------------------------------------
function _traceback(errors)
    local results = ""
    if errors then
        results = errors .. "\n"
    end
    results = results .. "stack traceback:\n"
    local level = 2
    while true do
        local info = debug.getinfo(level, "Sln")
        if not info or (info.name and info.name == "xpcall") then
            break
        end
        if info.what == "C" then
            results = results .. string.format("    [C]: in function '%s'\n", info.name)
        elseif info.name then
            results = results .. string.format("    [%s:%d]: in function '%s'\n", info.short_src, info.currentline, info.name)
        elseif info.what == "main" then
            results = results .. string.format("    [%s:%d]: in main chunk\n", info.short_src, info.currentline)
            break
        else
            results = results .. string.format("    [%s:%d]:\n", info.short_src, info.currentline)
        end
        level = level + 1
    end
    return results
end

function try(block)
    local try = block[1]
    assert(try)

    local catchBlock = block[2]
    local finallyBlock = block[3]

    local ok, errors = xpcall(try, _traceback)
    if not ok and catchBlock then
        INVOKE(catchBlock, "catch", errors)
    end
    if finallyBlock then
        INVOKE(finallyBlock, "finally", ok, errors)
    end

    return ok and nil or errors
end

function catch(block)
    return { catch = block[1] }
end

function finally(block)
    return { finally = block[1] }
end