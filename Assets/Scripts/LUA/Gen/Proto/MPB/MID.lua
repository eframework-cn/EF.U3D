-- AUTO GENERATED, DO NOT EDIT --

--- msg protocol
MID = {
	--- <tag>to:"gate"</tag>                心跳包
	GM_HEART_BEAT = 0,
	--- <tag>to:"client"</tag>              下线
	GM_KICK_OFF = 1,
	--- <tag>to:"center" go:"0" rw:"1"</tag>请求设备登录
	GM_LOGIN_REQUEST = 2,
	--- <tag>to:"client"</tag>              返回设备登录
	GM_LOGIN_RESPONSE = 3,
}
