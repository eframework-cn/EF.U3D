---@class EP.U3D.LIBRARY.NET.NetConnection : System.Object
---@field App int
---@field Host System.String
---@field Port int
---@field Protocol System.Net.Sockets.ProtocolType
---@field BeatID int
---@field BeatTO int
---@field BeatInterval int
---@field BeatMsg System.Func
---@field BeatLag long
---@field BeatResp long
---@field Socket System.Net.Sockets.Socket
---@field Error System.String
---@field IsConnected bool
---@field OnConnectedFunc EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnDisconnectedFunc EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnReconnectedFunc EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnErrorOccurredFunc EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnDataReceivedFunc EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnHeartBeatedFunc EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnConnectedEvt EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnDisconnectedEvt EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnReconnectedEvt EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnErrorOccurredEvt EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnDataReceivedEvt EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
---@field OnHeartBeatedEvt EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate
local NetConnection = {}

function NetConnection:Reset() end

function NetConnection:Connect() end

function NetConnection:Reconnect() end

function NetConnection:Disconnect() end

---@overload fun(buffer:byte[]):void
---@param buffer EP.U3D.LIBRARY.PROTO.StreamBuffer
function NetConnection:Send(buffer) end

---@overload fun(buffer:byte[]):void
---@param buffer EP.U3D.LIBRARY.PROTO.StreamBuffer
function NetConnection:SendAsync(buffer) end

EP.U3D.LIBRARY.NET.NetConnection = NetConnection