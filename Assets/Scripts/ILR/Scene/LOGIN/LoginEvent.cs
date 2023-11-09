#if UNITY_EDITOR || !EFRAME_ILR
namespace ILR.Scene.LOGIN
{
    public enum LoginEvent
    {
        OnSvrConnected,
        OnSvrDisconnected,
        OnSvrReconnected,
        OnSvrErrorOccurred,
        OnSvrLatency,
    }
}
#endif
