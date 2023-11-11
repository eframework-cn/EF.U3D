#if UNITY_EDITOR || !EFRAME_ILR
// AUTO GENERATED, DO NOT EDIT //

namespace ILR.Gen.Proto
{
	/// <summary>
	/// msg protocol
	/// </summary>
	public enum MID
	{
		/// <summary>
		/// <tag>to:"gate"</tag>                心跳包
		/// </summary>
		GM_HEART_BEAT,
		/// <summary>
		/// <tag>to:"client"</tag>              下线
		/// </summary>
		GM_KICK_OFF,
		/// <summary>
		/// <tag>to:"center" go:"0" rw:"1"</tag>请求设备登录
		/// </summary>
		GM_LOGIN_REQUEST,
		/// <summary>
		/// <tag>to:"client"</tag>              返回设备登录
		/// </summary>
		GM_LOGIN_RESPONSE,
	}
}
#endif
