#if UNITY_EDITOR || !EFRAME_ILR
//-----------------------------------------------------------------------//
//                     GNU GENERAL PUBLIC LICENSE                        //
//                        Version 2, June 1991                           //
//                                                                       //
// Copyright (C) EFramework, https://eframework.cn, All rights reserved. //
// Everyone is permitted to copy and distribute verbatim copies          //
// of this license document, but changing it is not allowed.             //
//                   SEE LICENSE.md FOR MORE DETAILS.                    //
//-----------------------------------------------------------------------//
using EP.U3D.LIBRARY.BASE;
using EP.U3D.LIBRARY.EVT;
using EP.U3D.LIBRARY.NET;
using EP.U3D.LIBRARY.REPORT;
using EP.U3D.LIBRARY.SCENE;
using MID = ILRProto.MID;

namespace LOGIN
{
    public class LoginScene : Modulize.Module<LoginScene>, IScene
    {
        public NetConnection Connection;

        public override string Name() { return "LOGIN"; }

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
