---------------------------------------------------------------------------
--                     GNU GENERAL PUBLIC LICENSE                        --
--                        Version 2, June 1991                           --
--                                                                       --
-- Copyright (C) EFramework, https://eframework.cn, All rights reserved. --
-- Everyone is permitted to copy and distribute verbatim copies          --
-- of this license document, but changing it is not allowed.             --
--                   SEE LICENSE.md FOR MORE DETAILS.                    --
---------------------------------------------------------------------------
String = {}

local this = String

function String.IsNullOrEmpty(str)
    local isNull = false
    if str == nil then
        isNull = true
    elseif string.len(str) <= 0 then
        isNull = true
    end
    return isNull
end

function String.IndexOf(str, of)
    if str and of then
        return string.find(str, of)
    else
        return nil
    end
end

function String.LastIndexOf(str, of)
    if str and of then
        local isMatch = false
        local jStart = 0
        for i = string.len(str), 1, -1 do
            local chari = string.sub(str, i, i)
            if isMatch == false then
                jStart = string.len(of)
            else
                jStart = jStart - 1
            end
            local charj = string.sub(of, jStart, jStart)
            isMatch = chari == charj
            if jStart == 1 and isMatch then
                return i
            end
        end
        return nil
    else
        return nil
    end
end

function String.Equals(str1, str2)
    return str1 == str2
end

function String.Sub(str, from, to)
    if str and to >= from then
        return string.sub(str, from, to)
    else
        return nil
    end
end

function String.Replace(str, from, to)
    if str then
        return string.gsub(str, from, to)
    else
        return nil
    end
end

function String.Trim(str)
    if str then
        return (string.gsub(str, "^%s*(.-)%s*$", "%1"))
    else
        return nil
    end
end

function String.Split(str, of)
    if str == nil or string.len(str) == 0 or of == nil then
        return nil
    end
    if type(str) ~= "string" then
        str = tostring(str)
    end
    local result = {}
    local lastPos = 1
    for i in utf8.byte_indices(str) do
        local next = utf8.next(str, i)
        local right = next and next - 1
        local stri = string.sub(str, i, right)
        if stri == of then
            if i ~= lastPos then
                stri = string.sub(str, lastPos, i - 1)
                table.insert(result, stri)
            end
            lastPos = i + 1
        elseif right == nil then
            stri = string.sub(str, lastPos, right)
            table.insert(result, stri)
        end
    end
    return result
end

function String.ByteLength(str)
    if str == nil or type(str) ~= "string" then
        return 0
    end
    local totalCount = 0
    local strLen = #str
    local index = 1
    while index <= strLen do
        local byte = string.byte(str, index)
        local byteCount = 1
        if byte > 0 and byte <= 127 then
            byteCount = 1
        elseif byte >= 192 and byte < 223 then
            byteCount = 2
        elseif byte >= 224 and byte < 239 then
            byteCount = 3
        elseif byte >= 240 and byte <= 247 then
            byteCount = 4
        end
        index = index + byteCount
        if byteCount == 1 then
            totalCount = totalCount + 1
        else
            totalCount = totalCount + 2
        end
    end
    return totalCount
end

function String.Contains(str, of)
    local ret = String.IndexOf(str, of)
    if ret then
        return ret > 0
    else
        return false
    end
end

function String.StartWith(str, with)
    local ret = String.IndexOf(str, with)
    if ret then
        return ret == 1
    else
        return false
    end
end

function String.EndWith(str, with)
    if str and with then
        local isMatch = false
        local jStart = 0
        for i = string.len(str), 1, -1 do
            local chari = string.sub(str, i, i)
            if isMatch == false then
                jStart = string.len(with)
            else
                jStart = jStart - 1
            end
            local charj = string.sub(with, jStart, jStart)
            isMatch = chari == charj
            if not isMatch then
                return false
            elseif jStart == 1 then
                return true
            end
        end
        return false
    else
        return false
    end
end

function String.Format(format, ...)
    return string.format(format, ...)
end