#if UNITY_EDITOR || !EFRAME_ILR
using System;
using EP.U3D.LIBRARY.ASSET;
using EP.U3D.LIBRARY.BASE;
using EP.U3D.LIBRARY.EVT;
using EP.U3D.LIBRARY.NET;
using EP.U3D.LIBRARY.SCENE;
using EP.U3D.LIBRARY.UI;
using EP.U3D.RUNTIME.ILR;
using UnityEngine;
using UIHelper = EP.U3D.RUNTIME.ILR.UI.UIHelper;
using UIManager = EP.U3D.RUNTIME.ILR.UI.UIManager;
using NetManager = EP.U3D.RUNTIME.ILR.NET.NetManager;
using System.Collections.Generic;
using EP.U3D.LIBRARY.POOL;
using EP.U3D.LIBRARY.PROTO;

namespace ILR.Core
{
    /// <summary>
    /// 模块接口
    /// </summary>
    public interface IModule
    {
        /// <summary>
        /// 模块名称
        /// </summary>
        string Name();

        /// <summary>
        /// 事件管理器
        /// </summary>
        EvtManager EvtMgr { get; }

        /// <summary>
        /// 模块实例化
        /// </summary>
        void Awake();

        /// <summary>
        /// 模块启动
        /// </summary>
        /// <param name="args">透传参数</param>
        void Start(params object[] args);

        /// <summary>
        /// 模块帧刷新
        /// </summary>
        void Update();

        /// <summary>
        /// 模块停止
        /// </summary>
        void Stop();
    }

    /// <summary>
    /// 模块化管理
    /// </summary>
    /// <typeparam name="TModule"></typeparam>
    public abstract class Module<TModule> : IModule
        where TModule : IModule, new()
    {
        #region class members || 类型成员
        private static TModule instance;

        /// <summary>
        /// 模块单例
        /// </summary>
        public static TModule Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new TModule();
                    instance.Awake();
                }
                return instance;
            }
        }

        private EvtManager mEvtMgr;
        /// <summary>
        /// 事件管理器
        /// </summary>
        public EvtManager EvtMgr { get { if (mEvtMgr == null) mEvtMgr = new EvtManager(); return mEvtMgr; } }

        /// <summary>
        /// 模块状态
        /// </summary>
        public bool Enabled { get; set; }
        #endregion

        #region life cycle || 生命周期
        /// <summary>
        /// 模块名称
        /// </summary>
        public virtual string Name() { return typeof(TModule).Name; }

        /// <summary>
        /// 模块实例化
        /// </summary>
        public virtual void Awake()
        {
            Helper.Log("[Module-{0}] has been awaked.", Name());
        }

        /// <summary>
        /// 模块启动
        /// </summary>
        /// <param name="args"></param>
        public virtual void Start(params object[] args)
        {
            Enabled = true;
            Helper.Log("[Module-{0}] has been started.", Name());
        }

        /// <summary>
        /// 模块帧刷新
        /// </summary>
        public virtual void Update() { }

        /// <summary>
        /// 模块停止
        /// </summary>
        public virtual void Stop()
        {
            Enabled = false;
            EvtMgr.UnregisterAll();
            Helper.Log("[Module-{0}] has been stopped.", Name());
        }
        #endregion

        #region event wrap || 事件封装
        /// <summary>
        /// 注册事件
        /// </summary>
        /// <param name="id">事件ID</param>
        /// <param name="handler">事件回调</param>
        /// <param name="once">调用一次</param>
        public virtual void RegEvt(Enum id, EventHandlerDelegate handler, bool once = false) { EvtMgr.Register(id.GetHashCode(), handler, once); }

        /// <summary>
        /// 注销事件
        /// </summary>
        /// <param name="id">事件ID</param>
        /// <param name="handler">事件回调</param>
        public virtual void UnregEvt(Enum id, EventHandlerDelegate handler) { EvtMgr.Unregister(id.GetHashCode(), handler); }

        /// <summary>
        /// 通知事件
        /// </summary>
        /// <param name="evt">事件对象</param>
        public virtual void NotifyEvt(Enum id, params object[] args) { EvtMgr.Notify(Evt.Get(id.GetHashCode(), args)); }

        /// <summary>
        /// 解析事件
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="evt">事件对象</param>
        /// <returns></returns>
        public virtual T DecodeEvt<T>(Evt evt) { return (T)evt.Param; }
        #endregion

        #region network wrap || 网络封装
        protected class MsgHandler
        {
            public int Proxy;
            public EventHandlerDelegate Handler;
        }

        protected readonly Dictionary<int, List<MsgHandler>> mMsgMap = new Dictionary<int, List<MsgHandler>>();

        /// <summary>
        /// 注册Msg消息（全局）
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="handler">消息回调</param>
        /// <param name="once">调用一次</param>
        public virtual void RegMsg(Gen.Proto.MID id, EventHandlerDelegate handler, bool once = false)
        {
            NetManager.RegMsg((int)id, handler, null, once);
        }

        /// <summary>
        /// 注册Msg消息（全局）
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="handler">消息回调</param>
        /// <param name="once">调用一次</param>
        public virtual void RegMsg<T>(Gen.Proto.MID id, Action<T> handler, bool once = false) where T : class, IProto
        {
            var _id = id.GetHashCode();
            if (!mMsgMap.ContainsKey(_id)) mMsgMap.Add(_id, new List<MsgHandler>());
            var nhandler = new EventHandlerDelegate(evt => { handler?.Invoke(evt.Param as T); });
            MsgHandler holder = new MsgHandler();
            holder.Proxy = handler.GetHashCode();
            holder.Handler = nhandler;
            mMsgMap[_id].Add(holder);
            NetManager.RegMsg(_id, nhandler, typeof(T), once);
        }

        /// <summary>
        /// 注销Msg消息（全局）
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="handler">消息回调</param>
        public virtual void UnregMsg(Gen.Proto.MID id, EventHandlerDelegate handler) { NetManager.UnregMsg((int)id, handler); }

        /// <summary>
        /// 注销Msg消息（全局）
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="handler">消息回调</param>
        public virtual void UnregMsg<T>(Gen.Proto.MID id, Action<T> handler) where T : class, IProto
        {
            var _id = id.GetHashCode();
            if (mMsgMap.TryGetValue(_id, out var rets))
            {
                for (int i = 0; i < rets.Count;)
                {
                    var ret = rets[i];
                    if (ret.Proxy == handler.GetHashCode())
                    {
                        rets.RemoveAt(i);
                        NetManager.UnregMsg(_id, ret.Handler);
                    }
                    else
                    {
                        i++;
                    }
                }
            }
        }

        /// <summary>
        /// 发送Msg消息
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="body">消息包</param>
        /// <param name="uid">用户ID</param>
        /// <param name="rid">路由ID</param>
        /// <param name="type">服务类型</param>
        public virtual void SendMsg(Gen.Proto.MID id, IProto body = null, int uid = 0, int rid = 0, int server = 0) { NetManager.SendMsg((int)id, body, uid, rid, server); }

        /// <summary>
        /// 发送Cgi消息
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="body">消息包</param>
        /// <param name="handler">消息回调</param>
        /// <param name="uid">用户ID</param>
        /// <param name="rid">路由ID</param>
        /// <param name="host">主机地址</param>
        public virtual void SendCgi(Gen.Proto.CID id, IProto body = null, Action<string, byte[]> handler = null, int uid = 0, int rid = 0, string host = null)
        {
            NetManager.SendCgi((int)id, body, handler, uid, rid, host);
        }

        /// <summary>
        /// 解析Msg消息
        /// </summary>
        /// <param name="evt"></param>
        /// <returns></returns>
        public virtual T DecodeMsg<T>(Evt evt) where T : class, IProto
        {
            if (evt.Param is T) return evt.Param as T;
            else if (evt.Param is StreamBuffer)
            {
                return (T)NetManager.DecodePB(typeof(T), evt.Param as StreamBuffer, NetPacket.MESSAGE_OFFSET);
            }
            return default(T);
        }

        /// <summary>
        /// 反序列化Json
        /// </summary>
        /// <param name="content"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        public virtual object DecodeJson<T>(string content) { return NetManager.DecodeJson(content, typeof(T)); }

        /// <summary>
        /// 序列化Json
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public virtual string EncodeJson(object obj) { return NetManager.EncodeJson(obj); }
        #endregion

        #region component || 组件封装
        /// <summary>
        /// 从父节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T GetComponentInParent<T>(UnityEngine.Object rootObj) where T : class { return UIHelper.GetComponentInParent(rootObj, typeof(T)) as T; }

        /// <summary>
        /// 从父节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object GetComponentInParent(UnityEngine.Object rootObj, System.Type type) { return UIHelper.GetComponentInParent(rootObj, type); }

        /// <summary>
        /// 从父节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T GetComponentInParent<T>(UnityEngine.Object parentObj, string path) where T : class { return UIHelper.GetComponentInParent(parentObj, path, typeof(T)) as T; }

        /// <summary>
        /// 从父节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object GetComponentInParent(UnityEngine.Object parentObj, string path, System.Type type) { return UIHelper.GetComponentInParent(parentObj, path, type); }

        /// <summary>
        /// 从当前节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <returns></returns>
        public virtual T GetComponent<T>(UnityEngine.Object rootObj) where T : class { return UIHelper.GetComponent(rootObj, typeof(T)) as T; }

        /// <summary>
        /// 从当前节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="attachIfMissing">若未找到则挂载</param>
        /// <returns></returns>
        public virtual object GetComponent(UnityEngine.Object rootObj, System.Type type, bool attachIfMissing = false) { return UIHelper.GetComponent(rootObj, type, attachIfMissing); }

        /// <summary>
        /// 从当前节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="attachIfMissing">若未找到则挂载</param>
        /// <returns></returns>
        public virtual T GetComponent<T>(UnityEngine.Object parentObj, string path, bool attachIfMissing = false) where T : class { return UIHelper.GetComponent(parentObj, path, typeof(T), attachIfMissing) as T; }

        /// <summary>
        /// 从当前节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="attachIfMissing">若未找到则挂载</param>
        /// <returns></returns>
        public virtual object GetComponent(UnityEngine.Object parentObj, string path, System.Type type, bool attachIfMissing = false) { return UIHelper.GetComponent(parentObj, path, type, attachIfMissing); }

        /// <summary>
        /// 从子节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T GetComponentInChildren<T>(UnityEngine.Object rootObj, bool includeInactive = false) where T : class { return UIHelper.GetComponentInChildren(rootObj, typeof(T), includeInactive) as T; }

        /// <summary>
        /// 从子节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object GetComponentInChildren(UnityEngine.Object rootObj, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentInChildren(rootObj, type, includeInactive); }

        /// <summary>
        /// 从子节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object GetComponentInChildren(UnityEngine.Object parentObj, string path, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentInChildren(parentObj, path, type, includeInactive); }

        /// <summary>
        /// 从子节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T GetComponentInChildren<T>(UnityEngine.Object parentObj, string path, bool includeInactive = false) where T : class { return UIHelper.GetComponentInChildren(parentObj, path, typeof(T), includeInactive) as T; }

        /// <summary>
        /// 从父节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T[] GetComponentsInParent<T>(UnityEngine.Object rootObj, bool includeInactive = false) where T : class { return UIHelper.GetComponentsInParent(rootObj, null, typeof(T), includeInactive) as T[]; }

        /// <summary>
        /// 从父节点中获取组件数组
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object[] GetComponentsInParent(UnityEngine.Object rootObj, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentsInParent(rootObj, type, includeInactive); }

        /// <summary>
        /// 从父节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T[] GetComponentsInParent<T>(UnityEngine.Object parentObj, string path, bool includeInactive = false) where T : class { return UIHelper.GetComponentsInParent(parentObj, path, typeof(T), includeInactive) as T[]; }

        /// <summary>
        /// 从父节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object[] GetComponentsInParent(UnityEngine.Object parentObj, string path, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentsInParent(parentObj, path, type, includeInactive); }

        /// <summary>
        /// 从当前节点中获取组件数组
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual T[] GetComponents<T>(UnityEngine.Object rootObj) where T : class { return UIHelper.GetComponents(rootObj, typeof(T)) as T[]; }

        /// <summary>
        /// 从当前节点中获取组件数组
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual object[] GetComponents(UnityEngine.Object rootObj, System.Type type) { return UIHelper.GetComponents(rootObj, type); }

        /// <summary>
        /// 从当前节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual T[] GetComponents<T>(UnityEngine.Object parentObj, string path) where T : class { return UIHelper.GetComponents(parentObj, path, typeof(T)) as T[]; }

        /// <summary>
        /// 从当前节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual object[] GetComponents(UnityEngine.Object parentObj, string path, System.Type type) { return UIHelper.GetComponents(parentObj, path, type); }

        /// <summary>
        /// 从子节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T[] GetComponentsInChildren<T>(UnityEngine.Object rootObj, bool includeInactive = false) where T : class { return UIHelper.GetComponentsInChildren(rootObj, null, typeof(T)) as T[]; }

        /// <summary>
        /// 从子节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object[] GetComponentsInChildren(UnityEngine.Object rootObj, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentsInChildren(rootObj, null, type, includeInactive); }

        /// <summary>
        /// 从子节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T[] GetComponentsInChildren<T>(UnityEngine.Object parentObj, string path, bool includeInactive = false) where T : class { return UIHelper.GetComponentsInChildren(parentObj, path, typeof(T)) as T[]; }

        /// <summary>
        /// 从子节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object[] GetComponentsInChildren(UnityEngine.Object parentObj, string path, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentsInChildren(parentObj, path, type, includeInactive); }

        /// <summary>
        /// 添加组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual T AddComponent<T>(UnityEngine.Object rootObj) where T : class { return UIHelper.AddComponent(rootObj, null, typeof(T)) as T; }

        /// <summary>
        /// 添加组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual object AddComponent(UnityEngine.Object rootObj, System.Type type) { return UIHelper.AddComponent(rootObj, type); }

        /// <summary>
        /// 添加组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual T AddComponent<T>(UnityEngine.Object parentObj, string path) where T : class { return UIHelper.AddComponent(parentObj, path, typeof(T)) as T; }

        /// <summary>
        /// 添加组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual object AddComponent(UnityEngine.Object parentObj, string path, System.Type type) { return UIHelper.AddComponent(parentObj, path, type); }

        /// <summary>
        /// 移除组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="immediate">立即移除</param>
        public virtual void RemoveComponent<T>(UnityEngine.Object rootObj) where T : class { UIHelper.RemoveComponent(rootObj, typeof(T)); }

        /// <summary>
        /// 移除组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="immediate">立即移除</param>
        public virtual void RemoveComponent(UnityEngine.Object rootObj, System.Type type) { UIHelper.RemoveComponent(rootObj, type); }

        /// <summary>
        /// 移除组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="immediate">立即移除</param>
        public virtual void RemoveComponent<T>(UnityEngine.Object parentObj, string path, bool immediate) where T : class { UIHelper.RemoveComponent(parentObj, path, typeof(T), immediate); }

        /// <summary>
        /// 移除组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="immediate">立即移除</param>
        public virtual void RemoveComponent(UnityEngine.Object parentObj, string path, System.Type type, bool immediate) { UIHelper.RemoveComponent(parentObj, path, type, immediate); }

        /// <summary>
        /// 设置组件激活/禁用
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="enabled">状态</param>
        /// <returns></returns>
        public virtual T SetComponentEnabled<T>(UnityEngine.Object rootObj, bool enabled) where T : class { return UIHelper.SetComponentEnabled(rootObj, typeof(T), enabled) as T; }

        /// <summary>
        /// 设置组件激活/禁用
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="enabled">状态</param>
        /// <returns></returns>
        public virtual object SetComponentEnabled(UnityEngine.Object rootObj, System.Type type, bool enabled) { return UIHelper.SetComponentEnabled(rootObj, type, enabled); }

        /// <summary>
        /// 设置组件激活/禁用
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="enabled">状态</param>
        /// <returns></returns>
        public virtual T SetComponentEnabled<T>(UnityEngine.Object parentObj, string path, bool enabled) where T : class { return UIHelper.SetComponentEnabled(parentObj, path, typeof(T), enabled) as T; }

        /// <summary>
        /// 设置组件激活/禁用
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="enabled">状态</param>
        /// <returns></returns>
        public virtual object SetComponentEnabled(UnityEngine.Object parentObj, string path, System.Type type, bool enabled) { return UIHelper.SetComponentEnabled(parentObj, path, type, enabled); }
        #endregion

        #region scenemanager || 场景封装
        /// <summary>
        /// 切换场景
        /// </summary>
        /// <param name="scene">场景实例</param>
        /// <param name="args">透传参数</param>
        public virtual void GotoScene(IScene scene, params object[] args) { SceneManager.Goto(scene, args); }
        #endregion

        #region assetmanager || 资源封装
        /// <summary>
        /// 加载资源
        /// </summary>
        /// <param name="assetPath">资源路径</param>
        /// <param name="type">资源类型</param>
        /// <param name="internal">resources内部资源</param>
        /// <returns></returns>
        public virtual T LoadAsset<T>(string assetPath, bool @internal = false) where T : UnityEngine.Object { return AssetManager.LoadAsset(assetPath, typeof(T), @internal) as T; }

        /// <summary>
        /// 加载资源
        /// </summary>
        /// <param name="assetPath">资源路径</param>
        /// <param name="type">资源类型</param>
        /// <param name="internal">resources内部资源</param>
        /// <returns></returns>
        public virtual UnityEngine.Object LoadAsset(string assetPath, Type type, bool @internal = false) { return AssetManager.LoadAsset(assetPath, type, @internal); }

        /// <summary>
        /// 加载资源（异步）
        /// </summary>
        /// <param name="assetPath">资源路径</param>
        /// <param name="type">资源类型</param>
        /// <param name="cb">回调函数</param>
        /// <param name="internal">resources内部资源</param>
        /// <returns></returns>
        public virtual AssetManager.Handler LoadAssetAsync<T>(string assetPath, Action<T> cb, bool @internal = false) where T : UnityEngine.Object { return AssetManager.LoadAssetAsync(assetPath, typeof(T), (asset) => cb?.Invoke(asset as T), @internal); }

        /// <summary>
        /// 加载资源（异步）
        /// </summary>
        /// <param name="assetPath">资源路径</param>
        /// <param name="type">资源类型</param>
        /// <param name="cb">回调函数</param>
        /// <param name="internal">resources内部资源</param>
        /// <returns></returns>
        public virtual AssetManager.Handler LoadAssetAsync(string assetPath, Type type, AssetManager.Callback cb, bool @internal = false) { return AssetManager.LoadAssetAsync(assetPath, type, cb, @internal); }

        /// <summary>
        /// 加载场景
        /// </summary>
        /// <param name="sceneName">场景名称</param>
        /// <returns></returns>
        public virtual void LoadScene(string sceneName) { AssetManager.LoadScene(sceneName); }

        /// <summary>
        /// 加载场景（异步）
        /// </summary>
        /// <param name="sceneName">场景名称</param>
        /// <param name="cb">回调函数</param>
        /// <returns></returns>
        public virtual AssetManager.Handler LoadSceneAsync(string sceneName, Action cb = null) { return AssetManager.LoadSceneAsync(sceneName, cb); }

        /// <summary>
        /// 引用物体（计数自增）
        /// </summary>
        /// <param name="go">资源实例</param>
        public virtual void ObtainObject(GameObject go) { AssetManager.ObtainObject(go); }

        /// <summary>
        /// 卸载所有的AB（强制卸载）
        /// </summary>
        public virtual void UnloadAll() { AssetManager.UnloadAll(); }

        /// <summary>
        /// 卸载资源
        /// </summary>
        /// <param name="assetPath">资源路径</param>
        public virtual void UnloadAsset(string assetPath) { AssetManager.UnloadAsset(assetPath); }

        /// <summary>
        /// 卸载物体（计数自减）
        /// </summary>
        /// <param name="go">物体实例</param>
        public virtual void UnloadObject(GameObject go) { AssetManager.UnloadObject(go); }

        /// <summary>
        /// 卸载AB
        /// </summary>
        /// <param name="bundleName"></param>
        public virtual void UnloadAssetBundle(string bundleName) { AssetManager.UnloadAssetBundle(bundleName); }

        /// <summary>
        /// 卸载场景
        /// </summary>
        /// <param name="sceneName">场景名称</param>
        public virtual void UnloadScene(string sceneName) { AssetManager.UnloadScene(sceneName); }
        #endregion

        #region uimanager || 窗口封装
        /// <summary>
        /// 打开窗口
        /// </summary>
        /// <param name="target">目标窗口描述</param>
        /// <param name="args">透传参数</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow OpenWindow(UIMeta target) { return UIManager.OpenWindow(target); }

        /// <summary>
        /// 打开窗口
        /// </summary>
        /// <param name="target">目标窗口描述</param>
        /// <param name="parent">父节点</param>
        /// <param name="args">透传参数</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow OpenWindow(UIMeta target, Transform parent) { return UIManager.OpenWindow(target, parent); }

        /// <summary>
        /// 打开窗口
        /// </summary>
        /// <param name="target">目标窗口描述</param>
        /// <param name="below">在某窗口之下</param>
        /// <param name="above">在某窗口之上</param>
        /// <param name="parent">父节点</param>
        /// <param name="args">透传参数</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow OpenWindow(UIMeta target, UIMeta below, UIMeta above, Transform parent) { return UIManager.OpenWindow(target, below, above, parent); }

        /// <summary>
        /// 打开窗口
        /// </summary>
        /// <param name="target">目标窗口描述</param>
        /// <param name="args">透传参数</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow OpenWindow(UIMeta target, params object[] args) { return UIManager.OpenWindow(target, args); }

        /// <summary>
        /// 打开窗口
        /// </summary>
        /// <param name="target">目标窗口描述</param>
        /// <param name="parent">父节点</param>
        /// <param name="args">透传参数</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow OpenWindow(UIMeta target, Transform parent, params object[] args) { return UIManager.OpenWindow(target, parent, args); }

        /// <summary>
        /// 打开窗口
        /// </summary>
        /// <param name="target">目标窗口描述</param>
        /// <param name="below">在某窗口之下</param>
        /// <param name="above">在某窗口之上</param>
        /// <param name="parent">父节点</param>
        /// <param name="args">透传参数</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow OpenWindow(UIMeta target, UIMeta below, UIMeta above, Transform parent, params object[] args) { return UIManager.OpenWindow(target, below, above, parent, args); }

        /// <summary>
        /// 聚焦窗口
        /// </summary>
        /// <param name="meta">窗口描述</param>
        public virtual void FocusWindow(UIMeta meta) { UIManager.FocusWindow(meta); }

        /// <summary>
        /// 聚焦窗口
        /// </summary>
        /// <param name="window">窗口实例</param>
        public virtual void FocusWindow(IUIWindow window) { UIManager.FocusWindow(window); }

        /// <summary>
        /// 关闭窗口
        /// </summary>
        /// <param name="meta">窗口描述</param>
        /// <param name="resume">是否恢复</param>
        public virtual void CloseWindow(UIMeta meta, bool resume = true) { UIManager.CloseWindow(meta, resume); }

        /// <summary>
        /// 关闭窗口
        /// </summary>
        /// <param name="window">窗口实例</param>
        /// <param name="resume">是否恢复</param>
        public virtual void CloseWindow(IUIWindow window, bool resume = true) { UIManager.CloseWindow(window, resume); }

        /// <summary>
        /// 关闭所有窗口
        /// </summary>
        public virtual void CloseAllWindows() { UIManager.CloseAllWindows(); }

        /// <summary>
        /// 关闭所有窗口
        /// </summary>
        /// <param name="filter">排除列表</param>
        public virtual void CloseAllWindowsExcept(params UIMeta[] filter) { UIManager.CloseAllWindowsExcept(filter); }

        /// <summary>
        /// 窗口是否显示
        /// </summary>
        /// <param name="meta">窗口描述</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow IsWindowOpened(UIMeta meta) { return UIManager.IsWindowOpened(meta); }
        #endregion

        #region log wrap || 日志封装
        /// <summary>
        /// 打印日志（Info）
        /// </summary>
        /// <param name="format"></param>
        /// <param name="args"></param>
        public virtual void Log(object format, params object[] args) { HandleLog(format, LogType.Log, args); }

        /// <summary>
        /// 打印日志（Warning）
        /// </summary>
        /// <param name="format"></param>
        /// <param name="args"></param>
        public virtual void LogWarning(object format, params object[] args) { HandleLog(format, LogType.Warning, args); }

        /// <summary>
        /// 打印日志（Error）
        /// </summary>
        /// <param name="format"></param>
        /// <param name="args"></param>
        public virtual void LogError(object format, params object[] args) { HandleLog(format, LogType.Error, args); }

        protected string mLogTag;
        protected virtual void HandleLog(object format, LogType type, params object[] args)
        {
            string log = null;
            if (format != null && !(format is bool))
            {
                if (format is string && args != null && args.Length > 0)
                {
                    log = Helper.StringFormat(format as string, args);
                }
                else
                {
                    log = format.ToString();
                }
            }
            if (string.IsNullOrEmpty(log) == false)
            {
                if (string.IsNullOrEmpty(mLogTag)) mLogTag = $"[{GetType().FullName}@{GetHashCode()}]";
                log = $"{mLogTag} {log}";
                if (type == LogType.Log) Debug.Log(log);
                else if (type == LogType.Warning) Debug.LogWarning(log);
                else if (type == LogType.Error) Debug.LogError(log);
            }
        }
        #endregion
    }

    /// <summary>
    /// 基础视图
    /// </summary>
    public abstract class View : Component, IUIWindow
    {
        #region event wrap || 事件封装
        protected class EvtHandler
        {
            public EvtManager Context;
            public EventHandlerDelegate Handler;
        }

        protected readonly Dictionary<int, List<EvtHandler>> mEvtMap = new Dictionary<int, List<EvtHandler>>();

        /// <summary>
        /// 注册事件
        /// </summary>
        /// <param name="id">事件ID</param>
        /// <param name="context">事件管理器</param>
        /// <param name="handler">事件回调</param>
        /// <param name="once">调用一次</param>
        public virtual void RegEvt(Enum id, EventHandlerDelegate handler, EvtManager context = null, bool once = false)
        {
            var _id = id.GetHashCode();
            if (!mEvtMap.ContainsKey(_id)) mEvtMap.Add(_id, new List<EvtHandler>());
            mEvtMap[_id].Add(new EvtHandler() { Context = context != null ? context : EvtManager.Instance, Handler = handler });
            if (context != null) context.Register(id.GetHashCode(), handler, once);
            else EvtManager.RegEvt(id.GetHashCode(), handler, once);
        }

        /// <summary>
        /// 注销事件
        /// </summary>
        /// <param name="id">事件ID</param>
        /// <param name="handler">事件回调</param>
        public virtual void UnregEvt(Enum id, EventHandlerDelegate handler)
        {
            var _id = id.GetHashCode();
            if (mEvtMap.TryGetValue(_id, out var rets))
            {
                for (int i = 0; i < rets.Count;)
                {
                    var ret = rets[i];
                    if (ret.Handler == handler)
                    {
                        rets.RemoveAt(i);
                        ret.Context.Unregister(id.GetHashCode(), ret.Handler);
                    }
                    else
                    {
                        i++;
                    }
                }
            }
        }

        /// <summary>
        /// 通知事件
        /// </summary>
        /// <param name="evt">事件对象</param>
        /// <param name="context">事件管理器</param>
        public virtual void NotifyEvt(Evt evt, EvtManager context = null)
        {
            if (context != null) context.Notify(evt);
            else EvtManager.NotifyEvt(evt);
        }

        /// <summary>
        /// 通知事件
        /// </summary>
        /// <param name="evt">事件对象</param>
        /// <param name="context">事件管理器</param>
        public virtual void NotifyEvt(Enum id, EvtManager context = null, params object[] args)
        {
            if (context != null) { context.Notify(Evt.Get(id.GetHashCode(), args)); }
            else { EvtManager.NotifyEvt(Evt.Get(id.GetHashCode(), args)); }
        }

        /// <summary>
        /// 解析事件
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="evt">事件对象</param>
        /// <returns></returns>
        public virtual T DecodeEvt<T>(Evt evt) { return (T)evt.Param; }
        #endregion

        #region network wrap || 网络封装
        protected class MsgHandler
        {
            public int Proxy;
            public EventHandlerDelegate Handler;
        }

        protected readonly Dictionary<int, List<MsgHandler>> mMsgMap = new Dictionary<int, List<MsgHandler>>();

        /// <summary>
        /// 注册Msg消息（全局）
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="handler">消息回调</param>
        /// <param name="once">调用一次</param>
        public virtual void RegMsg(Gen.Proto.MID id, EventHandlerDelegate handler, bool once = false)
        {
            var _id = id.GetHashCode();
            if (!mMsgMap.ContainsKey(_id)) mMsgMap.Add(_id, new List<MsgHandler>());
            MsgHandler holder = new MsgHandler();
            holder.Proxy = handler.GetHashCode();
            holder.Handler = handler;
            mMsgMap[_id].Add(holder);
            NetManager.RegMsg(_id, handler, null, once);
        }

        /// <summary>
        /// 注册Msg消息（全局）
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="handler">消息回调</param>
        /// <param name="once">调用一次</param>
        public virtual void RegMsg<T>(Gen.Proto.MID id, Action<T> handler, bool once = false) where T : class, IProto
        {
            var _id = id.GetHashCode();
            if (!mMsgMap.ContainsKey(_id)) mMsgMap.Add(_id, new List<MsgHandler>());
            var nhandler = new EventHandlerDelegate(evt => { handler?.Invoke(evt.Param as T); });
            MsgHandler holder = new MsgHandler();
            holder.Proxy = handler.GetHashCode();
            holder.Handler = nhandler;
            mMsgMap[_id].Add(holder);
            NetManager.RegMsg(_id, nhandler, typeof(T), once);
        }

        /// <summary>
        /// 注销Msg消息（全局）
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="handler">消息回调</param>
        public virtual void UnregMsg(Gen.Proto.MID id, EventHandlerDelegate handler)
        {
            var _id = id.GetHashCode();
            if (mMsgMap.TryGetValue(_id, out var rets))
            {
                for (int i = 0; i < rets.Count;)
                {
                    var ret = rets[i];
                    if (ret.Proxy == handler.GetHashCode())
                    {
                        rets.RemoveAt(i);
                        NetManager.UnregMsg(_id, ret.Handler);
                    }
                    else
                    {
                        i++;
                    }
                }
            }
        }

        /// <summary>
        /// 注销Msg消息（全局）
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="handler">消息回调</param>
        public virtual void UnregMsg<T>(Gen.Proto.MID id, Action<T> handler) where T : class, IProto
        {
            var _id = id.GetHashCode();
            if (mMsgMap.TryGetValue(_id, out var rets))
            {
                for (int i = 0; i < rets.Count;)
                {
                    var ret = rets[i];
                    if (ret.Proxy == handler.GetHashCode())
                    {
                        rets.RemoveAt(i);
                        NetManager.UnregMsg(_id, ret.Handler);
                    }
                    else
                    {
                        i++;
                    }
                }
            }
        }

        /// <summary>
        /// 发送Msg消息
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="body">消息包</param>
        /// <param name="uid">用户ID</param>
        /// <param name="rid">路由ID</param>
        /// <param name="type">服务类型</param>
        public virtual void SendMsg(Gen.Proto.MID id, IProto body = null, int uid = 0, int rid = 0, int server = 0) { NetManager.SendMsg((int)id, body, uid, rid, server); }

        /// <summary>
        /// 发送Cgi消息
        /// </summary>
        /// <param name="id">消息ID</param>
        /// <param name="body">消息包</param>
        /// <param name="handler">消息回调</param>
        /// <param name="uid">用户ID</param>
        /// <param name="rid">路由ID</param>
        /// <param name="host">主机地址</param>
        public virtual void SendCgi(Gen.Proto.CID id, IProto body = null, Action<string, byte[]> handler = null, int uid = 0, int rid = 0, string host = null)
        {
            NetManager.SendCgi((int)id, body, handler, uid, rid, host);
        }

        /// <summary>
        /// 解析Msg消息
        /// </summary>
        /// <param name="evt"></param>
        /// <returns></returns>
        public virtual T DecodeMsg<T>(Evt evt) where T : class, IProto
        {
            if (evt.Param is T) return evt.Param as T;
            else if (evt.Param is StreamBuffer)
            {
                return (T)NetManager.DecodePB(typeof(T), evt.Param as StreamBuffer, NetPacket.MESSAGE_OFFSET);
            }
            return default(T);
        }

        /// <summary>
        /// 反序列化Json
        /// </summary>
        /// <param name="content"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        public virtual object DecodeJson<T>(string content) { return NetManager.DecodeJson(content, typeof(T)); }

        /// <summary>
        /// 序列化Json
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public virtual string EncodeJson(object obj) { return NetManager.EncodeJson(obj); }
        #endregion

        #region uimanager || 窗口封装
        protected UIMeta mMeta;
        protected Canvas mPanel;
        /// <summary>
        /// 窗口描述
        /// </summary>
        /// <param name="meta"></param>
        /// <returns></returns>
        public virtual UIMeta Meta(UIMeta meta = null) { if (meta != null) mMeta = meta; return mMeta; }

        /// <summary>
        /// 窗口面板
        /// </summary>
        /// <param name="panel"></param>
        /// <returns></returns>
        public virtual Canvas Panel(Canvas panel = null) { if (panel != null) mPanel = panel; return mPanel; }

        /// <summary>
        /// 窗口打开
        /// </summary>
        /// <param name="args"></param>
        public virtual void OnBlur() { }

        /// <summary>
        /// 窗口失焦
        /// </summary>
        public virtual void OnClose(Action done) { done(); }

        /// <summary>
        /// 窗口聚焦
        /// </summary>
        public virtual void OnFocus() { }

        /// <summary>
        /// 窗口关闭
        /// </summary>
        /// <param name="done"></param>
        public virtual void OnOpen(params object[] args) { }

        /// <summary>
        /// 打开窗口
        /// </summary>
        /// <param name="target">目标窗口描述</param>
        /// <param name="args">透传参数</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow OpenWindow(UIMeta target, params object[] args) { return UIManager.OpenWindow(target, args); }

        /// <summary>
        /// 打开窗口
        /// </summary>
        /// <param name="target">目标窗口描述</param>
        /// <param name="parent">父节点</param>
        /// <param name="args">透传参数</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow OpenWindow(UIMeta target, Transform parent, params object[] args) { return UIManager.OpenWindow(target, parent, args); }

        /// <summary>
        /// 打开窗口
        /// </summary>
        /// <param name="target">目标窗口描述</param>
        /// <param name="below">在某窗口之下</param>
        /// <param name="above">在某窗口之上</param>
        /// <param name="parent">父节点</param>
        /// <param name="args">透传参数</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow OpenWindow(UIMeta target, UIMeta below, UIMeta above, Transform parent, params object[] args) { return UIManager.OpenWindow(target, below, above, parent, args); }

        /// <summary>
        /// 聚焦窗口
        /// </summary>
        public virtual void FocusWindow() { UIManager.FocusWindow(this); }

        /// <summary>
        /// 聚焦窗口
        /// </summary>
        /// <param name="meta">窗口描述</param>
        public virtual void FocusWindow(UIMeta meta) { UIManager.FocusWindow(meta); }

        /// <summary>
        /// 聚焦窗口
        /// </summary>
        /// <param name="window">窗口实例</param>
        public virtual void FocusWindow(IUIWindow window) { UIManager.FocusWindow(window); }

        /// <summary>
        /// 关闭窗口
        /// </summary>
        /// <param name="resume">是否恢复</param>
        public virtual void CloseWindow(bool resume = true) { UIManager.CloseWindow(this, resume); }

        /// <summary>
        /// 关闭窗口
        /// </summary>
        /// <param name="meta">窗口描述</param>
        /// <param name="resume">是否恢复</param>
        public virtual void CloseWindow(UIMeta meta, bool resume = true) { UIManager.CloseWindow(meta, resume); }

        /// <summary>
        /// 关闭窗口
        /// </summary>
        /// <param name="window">窗口实例</param>
        /// <param name="resume">是否恢复</param>
        public virtual void CloseWindow(IUIWindow window, bool resume = true) { UIManager.CloseWindow(window, resume); }

        /// <summary>
        /// 关闭所有窗口
        /// </summary>
        public virtual void CloseAllWindows() { UIManager.CloseAllWindows(); }

        /// <summary>
        /// 关闭所有窗口
        /// </summary>
        /// <param name="filter">排除列表</param>
        public virtual void CloseAllWindowsExcept(params UIMeta[] filter) { UIManager.CloseAllWindowsExcept(filter); }

        /// <summary>
        /// 窗口是否显示
        /// </summary>
        /// <param name="meta">窗口描述</param>
        /// <returns>窗口对象</returns>
        public virtual IUIWindow IsWindowOpened(UIMeta meta) { return UIManager.IsWindowOpened(meta); }
        #endregion

        #region life cycle || 生命周期
        public override void OnIDisable()
        {
            base.OnIDisable();
            foreach (var kvp in mEvtMap)
            {
                for (int i = 0; i < kvp.Value.Count; i++)
                {
                    var temp = kvp.Value[i];
                    temp.Context.Unregister(kvp.Key.GetHashCode(), temp.Handler);
                }
            }
            mEvtMap.Clear();

            foreach (var kvp in mMsgMap)
            {
                for (int i = 0; i < kvp.Value.Count; i++)
                {
                    NetManager.UnregMsg(kvp.Key, kvp.Value[i].Handler);
                }
            }
            mMsgMap.Clear();
        }
        #endregion
    }

    /// <summary>
    /// 基础视图
    /// </summary>
    /// <typeparam name="TView"></typeparam>
    public abstract class View<TView> : View where TView : View<TView>
    {
        public static TView Instance;

        public override void IAwake()
        {
            base.IAwake();
            Instance = (TView)this;
        }

        public override void OnIDestroy()
        {
            base.OnIDestroy();
            Instance = null;
        }
    }

    /// <summary>
    /// 基础视图
    /// </summary>
    /// <typeparam name="TView"></typeparam>
    /// <typeparam name="TModule"></typeparam>
    public abstract class View<TView, TModule> : View<TView>
        where TView : View<TView, TModule>
        where TModule : IModule, new()
    {
        /// <summary>
        /// 模块对象
        /// </summary>
        public TModule Module { get { return Module<TModule>.Instance; } }

        /// <summary>
        /// 注册事件
        /// </summary>
        /// <param name="id">事件ID</param>
        /// <param name="handler">事件回调</param>
        /// <param name="once">调用一次</param>
        public virtual void RegEvt(Enum id, EventHandlerDelegate handler, bool once = false) { base.RegEvt(id, handler, Module.EvtMgr, once); }

        /// <summary>
        /// 通知事件
        /// </summary>
        /// <param name="evt">事件对象</param>
        /// <param name="context">事件管理器</param>
        public virtual void NotifyEvt(Evt evt) { base.NotifyEvt(evt, Module.EvtMgr); }

        /// <summary>
        /// 通知事件
        /// </summary>
        /// <param name="evt">事件对象</param>
        /// <param name="context">事件管理器</param>
        public virtual void NotifyEvt(Enum id, params object[] args) { base.NotifyEvt(id, Module.EvtMgr, args); }
    }

    /// <summary>
    /// 缩放视图
    /// </summary>
    /// <typeparam name="TView"></typeparam>
    /// <typeparam name="TModule"></typeparam>
    public abstract class ZoomedView<TView, TModule> : View<TView, TModule>
          where TView : ZoomedView<TView, TModule>
          where TModule : IModule, new()
    {
        /// <summary>
        /// 放大时间
        /// </summary>
        public float ZInTime = 0.5f;
        /// <summary>
        /// 缩小时间
        /// </summary>
        public float ZOutTime = 0.5f;
        /// <summary>
        /// 缩放尺度
        /// </summary>
        public float ZFactor = 100f;
        protected Vector3 mIScale; // 初始缩放
        protected Vector3 mTScale; // 目标缩放

        public override void IAwake()
        {
            base.IAwake();
            mIScale = transform.localScale;
            mTScale = mIScale / (ZFactor <= 0 ? 100f : ZFactor);
        }

        public override void OnOpen(params object[] args)
        {
            base.OnOpen(args);
            if (ZInTime > 0 || ZOutTime > 0) iTween.Stop(gameObject);
            if (ZInTime > 0)
            {
                transform.localScale = mTScale;
                iTween.ScaleTo(gameObject, mIScale, ZInTime);
            }
        }

        public override void OnClose(Action done)
        {
            if (ZInTime > 0 || ZOutTime > 0) iTween.Stop(gameObject);
            if (ZOutTime > 0)
            {
                transform.localScale = mIScale;
                iTween.ScaleTo(gameObject, iTween.Hash("scale", mTScale, "time", ZOutTime, "oncomplete_ex", done));
            }
            else { done(); }
        }
    }

    /// <summary>
    /// 视图元数据
    /// </summary>
    public class ViewMeta : UIMeta
    {
        private string mPath;
        private int mFixedRQ;
        private UIMeta.CacheType mCache = UIMeta.CacheType.Scene;
        private UIMeta.EventType mFocus = UIMeta.EventType.Dynamic;
        private bool mMultiple;

        /// <summary>
        /// 视图元数据
        /// </summary>
        public ViewMeta() { }

        /// <summary>
        /// 视图元数据
        /// </summary>
        /// <param name="path">资源路径</param>
        /// <param name="fixedRQ">固定渲染</param>
        /// <param name="focus">事件类型</param>
        /// <param name="cache">缓存类型</param>
        /// <param name="multiple">是否多实例</param>
        public ViewMeta(string path, int fixedRQ = 0, UIMeta.EventType focus = UIMeta.EventType.Dynamic, UIMeta.CacheType cache = UIMeta.CacheType.Scene, bool multiple = false)
        {
            mPath = path;
            mFixedRQ = fixedRQ;
            mCache = cache;
            mFocus = focus;
            mMultiple = multiple;
        }

        /// <summary>
        /// 资源路径
        /// </summary>
        public string Path() { return mPath; }

        /// <summary>
        /// 固定渲染
        /// </summary>
        public int FixedRQ() { return mFixedRQ; }

        /// <summary>
        /// 事件类型
        /// </summary>
        public UIMeta.EventType Focus() { return mFocus; }

        /// <summary>
        /// 缓存类型
        /// </summary>
        public UIMeta.CacheType Cache() { return mCache; }

        /// <summary>
        /// 是否多实例
        /// </summary>
        public bool Multiple() { return mMultiple; }
    }

    /// <summary>
    /// 组件基类
    /// </summary>
    public abstract class Component : ILRComponent
    {
        #region component || 组件封装
        /// <summary>
        /// 从父节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T GetComponentInParent<T>(UnityEngine.Object rootObj = null) where T : class { return UIHelper.GetComponentInParent(rootObj ? rootObj : gameObject, typeof(T)) as T; }

        /// <summary>
        /// 从父节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object GetComponentInParent(UnityEngine.Object rootObj, System.Type type) { return UIHelper.GetComponentInParent(rootObj, type); }

        /// <summary>
        /// 从父节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T GetComponentInParent<T>(UnityEngine.Object parentObj, string path) where T : class { return UIHelper.GetComponentInParent(parentObj, path, typeof(T)) as T; }

        /// <summary>
        /// 从父节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object GetComponentInParent(UnityEngine.Object parentObj, string path, System.Type type) { return UIHelper.GetComponentInParent(parentObj, path, type); }

        /// <summary>
        /// 从当前节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="attachIfMissing">若未找到则挂载</param>
        /// <returns></returns>
        public virtual T GetComponent<T>(UnityEngine.Object rootObj = null, bool attachIfMissing = false) where T : class { return UIHelper.GetComponent(rootObj ? rootObj : gameObject, typeof(T), attachIfMissing) as T; }

        /// <summary>
        /// 从当前节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="attachIfMissing">若未找到则挂载</param>
        /// <returns></returns>
        public virtual object GetComponent(UnityEngine.Object rootObj, System.Type type, bool attachIfMissing = false) { return UIHelper.GetComponent(rootObj, type, attachIfMissing); }

        /// <summary>
        /// 从当前节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="attachIfMissing">若未找到则挂载</param>
        /// <returns></returns>
        public virtual T GetComponent<T>(UnityEngine.Object parentObj, string path, bool attachIfMissing = false) where T : class { return UIHelper.GetComponent(parentObj, path, typeof(T), attachIfMissing) as T; }

        /// <summary>
        /// 从当前节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="attachIfMissing">若未找到则挂载</param>
        /// <returns></returns>
        public virtual object GetComponent(UnityEngine.Object parentObj, string path, System.Type type, bool attachIfMissing = false) { return UIHelper.GetComponent(parentObj, path, type, attachIfMissing); }

        /// <summary>
        /// 从子节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T GetComponentInChildren<T>(UnityEngine.Object rootObj = null, bool includeInactive = false) where T : class { return UIHelper.GetComponentInChildren(rootObj ? rootObj : gameObject, typeof(T), includeInactive) as T; }

        /// <summary>
        /// 从子节点中获取组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object GetComponentInChildren(UnityEngine.Object rootObj, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentInChildren(rootObj, type, includeInactive); }

        /// <summary>
        /// 从子节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object GetComponentInChildren(UnityEngine.Object parentObj, string path, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentInChildren(parentObj, path, type, includeInactive); }

        /// <summary>
        /// 从子节点中获取组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T GetComponentInChildren<T>(UnityEngine.Object parentObj, string path, bool includeInactive = false) where T : class { return UIHelper.GetComponentInChildren(parentObj, path, typeof(T), includeInactive) as T; }

        /// <summary>
        /// 从父节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T[] GetComponentsInParent<T>(UnityEngine.Object rootObj = null, bool includeInactive = false) where T : class { return UIHelper.GetComponentsInParent(rootObj ? rootObj : gameObject, null, typeof(T), includeInactive) as T[]; }

        /// <summary>
        /// 从父节点中获取组件数组
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object[] GetComponentsInParent(UnityEngine.Object rootObj, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentsInParent(rootObj, type, includeInactive); }

        /// <summary>
        /// 从父节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T[] GetComponentsInParent<T>(UnityEngine.Object parentObj, string path, bool includeInactive = false) where T : class { return UIHelper.GetComponentsInParent(parentObj, path, typeof(T), includeInactive) as T[]; }

        /// <summary>
        /// 从父节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object[] GetComponentsInParent(UnityEngine.Object parentObj, string path, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentsInParent(parentObj, path, type, includeInactive); }

        /// <summary>
        /// 从当前节点中获取组件数组
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual T[] GetComponents<T>(UnityEngine.Object rootObj = null) where T : class { return UIHelper.GetComponents(rootObj ? rootObj : gameObject, typeof(T)) as T[]; }

        /// <summary>
        /// 从当前节点中获取组件数组
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual object[] GetComponents(UnityEngine.Object rootObj, System.Type type) { return UIHelper.GetComponents(rootObj, type); }

        /// <summary>
        /// 从当前节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual T[] GetComponents<T>(UnityEngine.Object parentObj, string path) where T : class { return UIHelper.GetComponents(parentObj, path, typeof(T)) as T[]; }

        /// <summary>
        /// 从当前节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual object[] GetComponents(UnityEngine.Object parentObj, string path, System.Type type) { return UIHelper.GetComponents(parentObj, path, type); }

        /// <summary>
        /// 从子节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T[] GetComponentsInChildren<T>(UnityEngine.Object rootObj = null, bool includeInactive = false) where T : class { return UIHelper.GetComponentsInChildren(rootObj ? rootObj : gameObject, null, typeof(T)) as T[]; }

        /// <summary>
        /// 从子节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object[] GetComponentsInChildren(UnityEngine.Object rootObj, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentsInChildren(rootObj, null, type, includeInactive); }

        /// <summary>
        /// 从子节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual T[] GetComponentsInChildren<T>(UnityEngine.Object parentObj, string path, bool includeInactive = false) where T : class { return UIHelper.GetComponentsInChildren(parentObj, path, typeof(T)) as T[]; }

        /// <summary>
        /// 从子节点中获取组件数组
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="includeInactive">包含隐藏的物体</param>
        /// <returns></returns>
        public virtual object[] GetComponentsInChildren(UnityEngine.Object parentObj, string path, System.Type type, bool includeInactive = false) { return UIHelper.GetComponentsInChildren(parentObj, path, type, includeInactive); }

        /// <summary>
        /// 添加组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual T AddComponent<T>(UnityEngine.Object rootObj = null) where T : class { return UIHelper.AddComponent(rootObj ? rootObj : gameObject, null, typeof(T)) as T; }

        /// <summary>
        /// 添加组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual object AddComponent(UnityEngine.Object rootObj, System.Type type) { return UIHelper.AddComponent(rootObj, type); }

        /// <summary>
        /// 添加组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual T AddComponent<T>(UnityEngine.Object parentObj, string path) where T : class { return UIHelper.AddComponent(parentObj, path, typeof(T)) as T; }

        /// <summary>
        /// 添加组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public virtual object AddComponent(UnityEngine.Object parentObj, string path, System.Type type) { return UIHelper.AddComponent(parentObj, path, type); }

        /// <summary>
        /// 移除组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="immediate">立即移除</param>
        public virtual void RemoveComponent<T>(UnityEngine.Object rootObj = null) where T : class { UIHelper.RemoveComponent(rootObj ? rootObj : gameObject, typeof(T)); }

        /// <summary>
        /// 移除组件
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="immediate">立即移除</param>
        public virtual void RemoveComponent(UnityEngine.Object rootObj, System.Type type) { UIHelper.RemoveComponent(rootObj, type); }

        /// <summary>
        /// 移除组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="immediate">立即移除</param>
        public virtual void RemoveComponent<T>(UnityEngine.Object parentObj, string path, bool immediate) where T : class { UIHelper.RemoveComponent(parentObj, path, typeof(T), immediate); }

        /// <summary>
        /// 移除组件
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="immediate">立即移除</param>
        public virtual void RemoveComponent(UnityEngine.Object parentObj, string path, System.Type type, bool immediate) { UIHelper.RemoveComponent(parentObj, path, type, immediate); }

        /// <summary>
        /// 设置组件激活/禁用
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="enabled">状态</param>
        /// <returns></returns>
        public virtual T SetComponentEnabled<T>(UnityEngine.Object rootObj, bool enabled) where T : class { return UIHelper.SetComponentEnabled(rootObj, typeof(T), enabled) as T; }

        /// <summary>
        /// 设置组件激活/禁用
        /// </summary>
        /// <param name="rootObj">节点</param>
        /// <param name="type">类型</param>
        /// <param name="enabled">状态</param>
        /// <returns></returns>
        public virtual object SetComponentEnabled(UnityEngine.Object rootObj, System.Type type, bool enabled) { return UIHelper.SetComponentEnabled(rootObj, type, enabled); }

        /// <summary>
        /// 设置组件激活/禁用
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="enabled">状态</param>
        /// <returns></returns>
        public virtual T SetComponentEnabled<T>(UnityEngine.Object parentObj, string path, bool enabled) where T : class { return UIHelper.SetComponentEnabled(parentObj, path, typeof(T), enabled) as T; }

        /// <summary>
        /// 设置组件激活/禁用
        /// </summary>
        /// <param name="parentObj">父节点</param>
        /// <param name="path">节点路径</param>
        /// <param name="type">类型</param>
        /// <param name="enabled">状态</param>
        /// <returns></returns>
        public virtual object SetComponentEnabled(UnityEngine.Object parentObj, string path, System.Type type, bool enabled) { return UIHelper.SetComponentEnabled(parentObj, path, type, enabled); }
        #endregion

        #region scenemanager || 场景封装
        /// <summary>
        /// 切换场景
        /// </summary>
        /// <param name="scene">场景实例</param>
        /// <param name="args">透传参数</param>
        public virtual void GotoScene(IScene scene, params object[] args) { SceneManager.Goto(scene, args); }
        #endregion

        #region assetmanager || 资源封装
        /// <summary>
        /// 加载资源
        /// </summary>
        /// <param name="assetPath">资源路径</param>
        /// <param name="type">资源类型</param>
        /// <param name="internal">resources内部资源</param>
        /// <returns></returns>
        public virtual T LoadAsset<T>(string assetPath, bool @internal = false) where T : UnityEngine.Object { return AssetManager.LoadAsset(assetPath, typeof(T), @internal) as T; }

        /// <summary>
        /// 加载资源
        /// </summary>
        /// <param name="assetPath">资源路径</param>
        /// <param name="type">资源类型</param>
        /// <param name="internal">resources内部资源</param>
        /// <returns></returns>
        public virtual UnityEngine.Object LoadAsset(string assetPath, Type type, bool @internal = false) { return AssetManager.LoadAsset(assetPath, type, @internal); }

        /// <summary>
        /// 加载资源（异步）
        /// </summary>
        /// <param name="assetPath">资源路径</param>
        /// <param name="type">资源类型</param>
        /// <param name="cb">回调函数</param>
        /// <param name="internal">resources内部资源</param>
        /// <returns></returns>
        public virtual AssetManager.Handler LoadAssetAsync<T>(string assetPath, Action<T> cb, bool @internal = false) where T : UnityEngine.Object { return AssetManager.LoadAssetAsync(assetPath, typeof(T), (asset) => cb?.Invoke(asset as T), @internal); }

        /// <summary>
        /// 加载资源（异步）
        /// </summary>
        /// <param name="assetPath">资源路径</param>
        /// <param name="type">资源类型</param>
        /// <param name="cb">回调函数</param>
        /// <param name="internal">resources内部资源</param>
        /// <returns></returns>
        public virtual AssetManager.Handler LoadAssetAsync(string assetPath, Type type, AssetManager.Callback cb, bool @internal = false) { return AssetManager.LoadAssetAsync(assetPath, type, cb, @internal); }

        /// <summary>
        /// 加载场景
        /// </summary>
        /// <param name="sceneName">场景名称</param>
        /// <returns></returns>
        public virtual void LoadScene(string sceneName) { AssetManager.LoadScene(sceneName); }

        /// <summary>
        /// 加载场景（异步）
        /// </summary>
        /// <param name="sceneName">场景名称</param>
        /// <param name="cb">回调函数</param>
        /// <returns></returns>
        public virtual AssetManager.Handler LoadSceneAsync(string sceneName, Action cb = null) { return AssetManager.LoadSceneAsync(sceneName, cb); }

        /// <summary>
        /// 引用物体（计数自增）
        /// </summary>
        /// <param name="go">资源实例</param>
        public virtual void ObtainObject(GameObject go) { AssetManager.ObtainObject(go); }

        /// <summary>
        /// 卸载所有的AB（强制卸载）
        /// </summary>
        public virtual void UnloadAll() { AssetManager.UnloadAll(); }

        /// <summary>
        /// 卸载资源
        /// </summary>
        /// <param name="assetPath">资源路径</param>
        public virtual void UnloadAsset(string assetPath) { AssetManager.UnloadAsset(assetPath); }

        /// <summary>
        /// 卸载物体（计数自减）
        /// </summary>
        /// <param name="go">物体实例</param>
        public virtual void UnloadObject(GameObject go) { AssetManager.UnloadObject(go); }

        /// <summary>
        /// 卸载AB
        /// </summary>
        /// <param name="bundleName"></param>
        public virtual void UnloadAssetBundle(string bundleName) { AssetManager.UnloadAssetBundle(bundleName); }

        /// <summary>
        /// 卸载场景
        /// </summary>
        /// <param name="sceneName">场景名称</param>
        public virtual void UnloadScene(string sceneName) { AssetManager.UnloadScene(sceneName); }
        #endregion

        #region log wrap || 日志封装
        /// <summary>
        /// 打印日志（Info）
        /// </summary>
        /// <param name="format"></param>
        /// <param name="args"></param>
        public virtual void Log(object format, params object[] args) { HandleLog(format, LogType.Log, args); }

        /// <summary>
        /// 打印日志（Warning）
        /// </summary>
        /// <param name="format"></param>
        /// <param name="args"></param>
        public virtual void LogWarning(object format, params object[] args) { HandleLog(format, LogType.Warning, args); }

        /// <summary>
        /// 打印日志（Error）
        /// </summary>
        /// <param name="format"></param>
        /// <param name="args"></param>
        public virtual void LogError(object format, params object[] args) { HandleLog(format, LogType.Error, args); }

        protected string mLogTag;
        protected virtual void HandleLog(object format, LogType type, params object[] args)
        {
            string log = null;
            if (format != null && !(format is bool))
            {
                if (format is string && args != null && args.Length > 0)
                {
                    log = Helper.StringFormat(format as string, args);
                }
                else
                {
                    log = format.ToString();
                }
            }
            if (string.IsNullOrEmpty(log) == false)
            {
                if (string.IsNullOrEmpty(mLogTag)) mLogTag = this ? $"[{GetType().FullName}][{name}@{GetHashCode()}]" : $"[{GetType().FullName}][null@{GetHashCode()}]";
                log = $"{mLogTag} {log}";
                if (type == LogType.Log) Debug.Log(log);
                else if (type == LogType.Warning) Debug.LogWarning(log);
                else if (type == LogType.Error) Debug.LogError(log);
            }
        }
        #endregion
    }

    /// <summary>
    /// 组件单例
    /// </summary>
    /// <typeparam name="TComp"></typeparam>
    public abstract class Component<TComp> : Component
           where TComp : Component<TComp>
    {
        #region class members || 类型成员
        public static TComp Instance;

        public override void IAwake()
        {
            base.IAwake();
            Instance = (TComp)this;
        }

        public override void OnIDestroy()
        {
            base.OnIDestroy();
            Instance = null;
        }
        #endregion
    }
}
#endif
