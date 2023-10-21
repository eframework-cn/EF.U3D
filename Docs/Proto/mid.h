// msg protocol

enum MID
{
    GM_HEART_BEAT, //        <tag>to:"gate"</tag>              心跳包
    GM_KICK_OFF, //          <tag>to:"client"</tag>            下线

    GM_LOGIN_REQUEST, //     <tag>to:"hall" go:"0" rw:"1"</tag>请求设备登录
    GM_LOGIN_RESPONSE, //    <tag>to:"client"</tag>            返回设备登录
};