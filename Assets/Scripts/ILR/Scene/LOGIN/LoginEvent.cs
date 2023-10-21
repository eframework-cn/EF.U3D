#if UNITY_EDITOR || !EFRAME_ILR
namespace LOGIN
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
