local EVTs = {}
local HOOKs = {}

function CLASS(meta)
    if meta then
        if meta.BASE then
            local __index = function(mt, k)
                for ki, vi in pairs(meta) do
                    if ki == k then
                        return vi
                    end
                end
                return meta.BASE[k]
            end
            meta.__index = __index
        else
            meta.__index = meta
        end
    end
    return meta
end

function NEW(meta, ...)
    local obj
    if meta then
        obj = {}
        if meta.BASE then obj.BASE = meta.BASE end
        setmetatable(obj, meta)
        if obj.CTOR then obj:CTOR(...) end
    end
    return obj
end

function COPY(ori)
    if type(ori) == "table" then
        local tb = {}
        for k, v in pairs(ori) do
            tb[k] = v
        end
        return tb
    else
        return ori
    end
end

function CLONE(ori, ...)
    if ori then
        local filter = { ... }
        local visited = {}
        local function visit(o)
            if type(o) ~= "table" then
                return o
            end
            local newo = {}
            visited[o] = newo
            for k, v in pairs(o) do
                local skip = false
                if filter then
                    for i = 1, #filter do
                        if k == filter[i] then
                            skip = true
                            break
                        end
                    end
                end
                if skip then
                    newo[k] = v
                else
                    newo[visit(k)] = visit(v)
                end
            end
            return setmetatable(newo, getmetatable(o))
        end
        return visit(ori)
    end
end

function INVOKE(obj, name, ...)
    if obj and name then
        local func = obj[name]
        if func and type(func) == "function" then
            func(...)
        end
    end
end

function EXIST(o, v)
    local isFunc = type(v) == "function"
    if o and v then
        for ki, vi in pairs(o) do
            if isFunc then
                if v(vi, ki) then
                    return true
                end
            else
                if vi == v then
                    return true
                end
            end
        end
        if o.__index then
            for ki, vi in pairs(o.__index) do
                if isFunc then
                    if v(ki, vi) then
                        return true
                    end
                else
                    if ki == v then
                        return true
                    end
                end
            end
        end
    end
    return false
end

function REMOVE(o, condition)
    local k
    if type(condition) == "function" then
        k = FIND(o, condition).key
    else
        k = KEY(o, condition)
    end
    if k then
        if type(k) == "number" then
            table.remove(o, k)
        else
            o[k] = nil
        end
    end
end

function FIND(o, condition)
    if o and condition and type(condition) == "function" then
        for ki, vi in pairs(o) do
            if condition(vi, ki) then
                return { key = ki, value = vi }
            end
        end
        if o.__index then
            for ki, vi in pairs(o.__index) do
                if condition(vi, ki) then
                    return { key = ki, value = vi }
                end
            end
        end
    end
    return { key = nil, value = nil }
end

function FINDALL(o, condition)
    ---@type {key:any, value:any}[]
    local result = {}
    if o and condition and type(condition) == "function" then
        for ki, vi in pairs(o) do
            if condition(vi, ki) then
                table.insert(result, { key = ki, value = vi })
            end
        end
        if o.__index then
            for ki, vi in pairs(o.__index) do
                if condition(vi, ki) then
                    table.insert(result, { key = ki, value = vi })
                end
            end
        end
    end
    return result
end

function KEY(o, v)
    local kf = nil
    if o and v then
        for ki, vi in pairs(o) do
            if vi == v then
                kf = ki
                break
            end
        end
        if not kf and o.__index then
            for ki, vi in pairs(o.__index) do
                if vi == v then
                    kf = ki
                    break
                end
            end
        end
    end
    return kf
end

function VALUE(o, k)
    local vf = nil
    if o and k then
        for ki, vi in pairs(o) do
            if ki == k then
                vf = vi
                break
            end
        end
        if not vf and o.__index then
            for ki, vi in pairs(o.__index) do
                if ki == k then
                    vf = vi
                    break
                end
            end
        end
    end
    return vf
end

function READONLY(ori)
    if ori then
        local new = {}
        local meta = {}
        meta.__index = ori
        meta.__newindex = function(t, k, v)
            error("attempt to update a read-only table!\n", 2)
        end
        setmetatable(new, meta)
        return new
    end
end

function BIND(obj, id, func, that, once)
    if obj and id and func then
        local temp = EVTs[obj]
        if not temp then
            temp = {}
            EVTs[obj] = temp
        end
        local evt = temp[id]
        if not evt then
            evt = {}
            temp[id] = evt
        end
        evt[func] = { that = that, once = once and true or false }
    end
end

function UNBIND(obj, id, func)
    if obj and id and func then
        local temp = EVTs[obj]
        if temp then
            local evt = temp[id]
            if evt then
                evt[func] = nil
                if next(evt) == nil then
                    temp[id] = nil
                end
            end
            if next(temp) == nil then
                EVTs[obj] = nil
            end
        end
    end
end

function UNBINDALL(obj, id)
    if obj and id then
        local temp = EVTs[obj]
        if temp then
            temp[id] = nil
        end
        if next(temp) == nil then
            EVTs[obj] = nil
        end
    end
end

function NOTIFY(obj, id, ...)
    if obj and id then
        local temp = EVTs[obj]
        if temp then
            local evt = temp[id]
            if evt then
                for k, v in pairs(evt) do
                    if k and type(k) == "function" then
                        if v.that then k(v.that, ...)
                        else k(...) end
                        if v.once then
                            evt[k] = nil
                            if next(evt) == nil then
                                temp[id] = nil
                            end
                        end
                    end
                end
            end
            if next(temp) == nil then
                EVTs[obj] = nil
            end
        end
    end
end

function HOOK(ctx, from, to)
    local ret = nil
    local err = nil
    if ctx and to and type(ctx) == "table" and type(to) == "function" then
        local isString = false
        if type(from) == "function" then
            from = KEY(ctx, from)
        elseif type(from) == "string" then
            isString = true
        else
            from = nil
            err = "Hook failed caused by invalid arg 'from'."
        end
        if from then
            if not HOOKs[ctx] then HOOKs[ctx] = {} end
            if not HOOKs[ctx][from] then
                ret = VALUE(ctx, from)
                if ret and type(ret) == "function" then
                    ctx[from] = to
                    HOOKs[ctx][from] = ret
                elseif isString then
                    ret = to
                    ctx[from] = to
                else
                    err = "Hook failed caused by nil or invalid target."
                end
            else
                err = "Hook failed caused by multiple hook."
            end
        end
    else
        err = "Hook failed caused by invalid args."
    end
    if err then
        Helper.LogError(Constants.RELEASE_MODE or err)
    end
    return ret, err
end

function UNHOOK(ctx, from)
    local ret = nil
    local err = nil
    if ctx and type(ctx) == "table" then
        local isString = false
        if type(from) == "function" then
            from = KEY(ctx, from)
        elseif type(from) == "string" then
            isString = true
        else
            from = nil
            err = "Unhook failed caused by invalid arg 'from'."
        end
        if from then
            if HOOKs[ctx] then
                ret = HOOKs[ctx][from]
                if ret and type(ret) == "function" then
                    ctx[from] = ret
                elseif isString then
                    ctx[from] = nil
                else
                    err = "Unhook failed caused by nil or invalid target."
                end
                HOOKs[ctx][from] = nil
            else
                err = "Unhook failed caused by nil hook map."
            end
        end
    else
        err = "Unhook failed caused by invalid args."
    end
    if err then
        Helper.LogError(Constants.RELEASE_MODE or err)
    end
    return ret
end

function UnNil(any, defaultValue)
    if any ~= nil then
        return any
    end
    return defaultValue
end

function TableAdd(...)
    local args = { ... }
    local totalTable = {}

    for i = 1, #args do
        if not args[i] then
            args[i] = {}
        end
        if type(args[i]) ~= "table" then
            return nil
        end
        for j = 1, #args[i] do
            table.insert(totalTable, args[i][j])
        end
    end

    return totalTable
end