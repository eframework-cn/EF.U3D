---@class MPB.GM_Common 请求结果通知
---@field Result int32 required - 通知类型
---@field Params string[] repeated
local GM_Common = {}
MPB.GM_Common = GM_Common

---@class MPB.GM_LoginReq 请求登录
---@field Account string required
---@field Password string required
local GM_LoginReq = {}
MPB.GM_LoginReq = GM_LoginReq

---@class MPB.GM_LoginResp 响应登录
---@field ID int32 required - 玩家ID
---@field Status int32 optional - 0-服务正常 1-服务暂停
local GM_LoginResp = {}
MPB.GM_LoginResp = GM_LoginResp

