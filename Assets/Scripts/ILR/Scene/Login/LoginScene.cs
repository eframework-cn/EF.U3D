#if UNITY_EDITOR || !EFRAME_ILR
using EP.U3D.LIBRARY.BASE;
using EP.U3D.LIBRARY.EVT;
using EP.U3D.LIBRARY.NET;
using EP.U3D.LIBRARY.REPORT;
using EP.U3D.LIBRARY.SCENE;
using ILR.Core;
using MID = ILRProto.MID;

namespace ILR.Scene.Login
{
    public class LoginScene : Module<LoginScene>, IScene
    {
        public NetConnection Connection;

        public override string Name() { return "Login"; }

        public override void Awake()
        {
            base.Awake();
            RegMsg(MID.GM_KICK_OFF, RespKickOff);
        }

        public override void Start(params object[] args)
        {
            base.Start(args);
            LoadScene(Name());
            DisconnectServer();
            ConnectServer();
        }

        public override void Stop() { base.Stop(); }

        public void ConnectServer()
        {
            Connection = NetManager.ConnectTo(app: 0, host: Constants.CONN_SERVER_IP, port: Constants.CONN_SERVER_PORT,
            onConnected: (connection, param) =>
            {
                NotifyEvt(LoginEvent.OnSvrConnected);
            },
            onDisconnected: (connection, param) =>
            {
                NotifyEvt(LoginEvent.OnSvrDisconnected);
            },
            onReconnected: (connection, param) =>
            {
                NotifyEvt(LoginEvent.OnSvrReconnected);
            },
            onErrorOccurred: (connection, param) =>
            {
                NotifyEvt(LoginEvent.OnSvrErrorOccurred);
            },
            onHeartBeated: (connection, param) =>
            {
                NotifyEvt(LoginEvent.OnSvrLatency, connection.BeatLag);
                Reporter.Instance.Latency = connection.BeatLag;
            },
            beatID: (int)MID.GM_HEART_BEAT, beatTO: 15000, beatInterval: 1000);
        }

        public void DisconnectServer()
        {
            NetManager.DisconnectFrom(0);
            Connection = null;
        }

        public void RespKickOff(Evt evt)
        {
            Constants.CONN_SERVER_UID = 0;
            GotoScene(this);
        }
    }
}
#endif
