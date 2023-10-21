--
--------------------------------------------------------------------------------
--  FILE:  debugger.lua
--  DESCRIPTION:  protoc-gen-lua
--      Google's Protocol Buffers project, ported to lua.
--      https://code.google.com/p/protoc-gen-lua/
--
--      Copyright (c) 2010 , 林卓毅 (Zhuoyi Lin) netsnail@gmail.com
--      All rights reserved.
--
--      Use, modification and distribution are subject to the "New BSD License"
--      as listed at <url: http://www.opensource.org/licenses/bsd-license.php >.
--  COMPANY:  NetEase
--  CREATED:  2010年08月05日 15时14分13秒 CST
--------------------------------------------------------------------------------
--
local string = string
local math = math
local print = print
local getmetatable = getmetatable
local table = table
local ipairs = ipairs
local tostring = tostring
local type = type
local descriptor = require "Libs.protobuf.descriptor"

module "Libs.protobuf.debugger"

local FieldDescriptor = descriptor.FieldDescriptor

handle_debug_format = function(nobj, oobj)
    for field, value in oobj:ListFields() do
        local print_field = function(field_value)
            local name = field.name
            if field.type == FieldDescriptor.TYPE_MESSAGE then
                local lobj = {}
                handle_debug_format(lobj, field_value)
                nobj[name] = lobj
            else
                nobj[name] = field_value
            end
        end
        if field.label == FieldDescriptor.LABEL_REPEATED then
            local lobj1 = {}
            nobj[field.name] = lobj1
            for k, v in ipairs(value) do
                if type(v) == "table" then
                    local lobj2 = {}
                    handle_debug_format(lobj2, v)
                    lobj1[k] = lobj2
                else
                    lobj1[k] = v
                end
            end
        else
            print_field(value)
        end
    end
end

function debug_format(msg)
    local nobj = {}
    handle_debug_format(nobj, msg)
    return nobj
end