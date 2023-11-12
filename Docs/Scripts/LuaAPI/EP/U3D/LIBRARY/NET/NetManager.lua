---@class EP.U3D.LIBRARY.NET.NetManager : System.Object
local NetManager = {}

function NetManager.Initialize() end

function NetManager.Dispose() end

function NetManager.FlushInput() end

function NetManager.FlushOutput() end

---@param app int
---@param host System.String
---@param port int
---@param protocol System.Net.Sockets.ProtocolType
---@param onConnected EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@param onDisconnected EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@param onReconnected EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@param onErrorOccurred EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@param onHeartBeated EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@param beatID int
---@param beatTO int
---@param beatInterval int
---@param beatMsg System.Func
---@return EP.U3D.LIBRARY.NET.NetConnection
function NetManager.ConnectTo(app, host, port, protocol, onConnected, onDisconnected, onReconnected, onErrorOccurred, onHeartBeated, beatID, beatTO, beatInterval, beatMsg) end

---@param app int
function NetManager.DisconnectFrom(app) end

---@param app int
---@return EP.U3D.LIBRARY.NET.NetConnection
function NetManager.GetConnection(app) end

function NetManager.DisconnectAll() end

---@param id int
---@param func EP.U3D.LIBRARY.EVT.EventHandlerDelegate
---@param type System.Type
---@param once bool
function NetManager.RegMsg(id, func, type, once) end

---@param id int
---@param func EP.U3D.LIBRARY.EVT.EventHandlerDelegate
function NetManager.UnregMsg(id, func) end

---@param evt EP.U3D.LIBRARY.EVT.Evt
function NetManager.NotifyMsg(evt) end

---@overload fun(id:int, body:byte[], uid:int, rid:int, app:int):void
---@param id int
---@param body EP.U3D.LIBRARY.PROTO.IProto
---@param uid int
---@param rid int
---@param app int
function NetManager.SendMsg(id, body, uid, rid, app) end

---@param id int
---@param body EP.U3D.LIBRARY.PROTO.IProto
---@param uid int
---@param rid int
---@return EP.U3D.LIBRARY.POOL.StreamBuffer
function NetManager.EncodeMsg(id, body, uid, rid) end

---@overload fun(id:int, body:byte[], offset:int):EP.U3D.LIBRARY.PROTO.IProto
---@param id int
---@param body EP.U3D.LIBRARY.POOL.StreamBuffer
---@param offset int
---@return EP.U3D.LIBRARY.PROTO.IProto
function NetManager.DecodeMsg(id, body, offset) end

---@param type System.Type
---@param buffer EP.U3D.LIBRARY.POOL.StreamBuffer
---@param offset int
---@return EP.U3D.LIBRARY.PROTO.IProto
function NetManager.DecodePB(type, buffer, offset) end

---@param proto EP.U3D.LIBRARY.PROTO.IProto
---@param offset int
---@return EP.U3D.LIBRARY.POOL.StreamBuffer
function NetManager.EncodePB(proto, offset) end

---@param content System.String
---@param type System.Type
---@return System.Object
function NetManager.DecodeJson(content, type) end

---@param obj System.Object
---@return System.String
function NetManager.EncodeJson(obj) end

---@overload fun(id:int, body:EP.U3D.LIBRARY.POOL.StreamBuffer, func:System.Action, uid:int, rid:int, host:System.String):void
---@param id int
---@param body EP.U3D.LIBRARY.PROTO.IProto
---@param func System.Action
---@param uid int
---@param rid int
---@param host System.String
function NetManager.SendCgi(id, body, func, uid, rid, host) end

EP.U3D.LIBRARY.NET.NetManager = NetManager