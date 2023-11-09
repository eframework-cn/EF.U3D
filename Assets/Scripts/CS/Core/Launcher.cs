using UnityEngine;
using UnityEngine.SceneManagement;
using System.Reflection;
using System.Collections;
using System.Threading;
using EP.U3D.LIBRARY.BASE;
using EP.U3D.LIBRARY.NET;
using EP.U3D.LIBRARY.AUDIO;
using EP.U3D.LIBRARY.REPORT;
using EP.U3D.LIBRARY.PATCH;
using EP.U3D.LIBRARY.UI;
using EP.U3D.LIBRARY.I18N;
using EP.U3D.LIBRARY.ASSET;

#if EFRAME_ILR
using EP.U3D.RUNTIME.ILR;
using ILRuntime.Runtime.Intepreter;
using ILRuntime.Runtime.Generated;
#endif

#if EFRAME_LUA
using LuaInterface;
using EP.U3D.RUNTIME.LUA;
#endif

#if UNITY_EDITOR
using UnityEditor;
#endif

namespace CS.Core
{
    public abstract class ILauncher
    {
        public virtual void Start(GameObject go) { }
        public virtual void OnGUI() { }
        public virtual void Update() { }
        public virtual void LateUpdate() { }
        public virtual void FixedUpdate() { }
        public virtual void OnDestroy() { }
        public virtual void OnApplicationFocus(bool status) { }
        public virtual void OnApplicationPause(bool status) { }
        public virtual void OnApplicationQuit() { }
        public virtual void OnSceneWasLoaded(Scene scene, LoadSceneMode mode) { }
        public virtual void OnException(string exception, bool isNew) { }
    }

    public class Launcher : MonoBehaviour
    {
        public static Launcher Instance;
        #region life cycle
        private ILauncher ILauncher;
#if EFRAME_LUA
        private LuaFunction LStart;
        private LuaFunction LOnGUI;
        private LuaFunction LUpdate;
        private LuaFunction LLateUpdate;
        private LuaFunction LFixedUpdate;
        private LuaFunction LOnDestroy;
        private LuaFunction LOnApplicationPause;
        private LuaFunction LOnApplicationFocus;
        private LuaFunction LOnApplicationQuit;
        private LuaFunction LOnSceneWasLoaded;
        private LuaFunction LOnException;
#endif
        #endregion
        private bool patchOK;

        private void Awake()
        {
            DontDestroyOnLoad(gameObject);
            Instance = this;
#if UNITY_EDITOR
            Platform.Instance = null;
            Preferences.Instance = null;
            PlayerSettings.runInBackground = !Preferences.Instance.Pauseable;
#endif
            Screen.sleepTimeout = SleepTimeout.NeverSleep;
            Constants.LIVE_MODE = Preferences.Instance.LiveMode;
            Constants.RELEASE_MODE = Preferences.Instance.ReleaseMode;
            Constants.REPORT_URL = Preferences.Instance.LogServer;
            Loom.Initialize(transform);

            #region compare uuid and cleanup
            var uuid = Helper.StringFormat("{0}{1}", Constants.CONFIG_PATH, Preferences.Instance.UUID);
            if (!Application.isEditor && !string.IsNullOrEmpty(Preferences.Instance.UUID) && !Helper.HasFile(uuid))
            {
                Helper.LogWarning("missing uuid, clean up local directory.");
#if EFRAME_ILR || EFRAME_LUA
                Helper.DeleteDirectory(Constants.LOCAL_ASSET_BUNDLE_PATH);
#endif
#if EFRAME_ILR
                Helper.DeleteDirectory(Constants.LOCAL_ILR_BUNDLE_PATH);
#endif
#if EFRAME_LUA
                Helper.DeleteDirectory(Constants.LOCAL_LUA_BUNDLE_PATH);
#endif
                Helper.DeleteDirectory(Constants.CONFIG_PATH);
                Helper.DeleteDirectory(Constants.LOG_PATH);
                Helper.DeleteDirectory(Constants.TEMP_PATH);
                Helper.SaveText(uuid, "");
#if EFRAME_ILR || EFRAME_LUA
                Helper.CreateDirectory(Constants.LOCAL_ASSET_BUNDLE_PATH);
#endif
#if EFRAME_ILR
                Helper.CreateDirectory(Constants.LOCAL_ILR_BUNDLE_PATH);
#endif
#if EFRAME_LUA
                Helper.CreateDirectory(Constants.LOCAL_LUA_BUNDLE_PATH);
#endif
                Helper.CreateDirectory(Constants.CONFIG_PATH);
                Helper.CreateDirectory(Constants.LOG_PATH);
                Helper.CreateDirectory(Constants.TEMP_PATH);
            }
            #endregion
        }

        private IEnumerator Start()
        {
            Reporter.Instance.OnException += OnException;
            SceneManager.sceneLoaded += OnSceneWasLoaded;
            AssetManager.Initialize();
            I18NApi.RegLanguage(CSExcel.I18NUpdater.Instance);
            Updater.Initialize(() =>
            {
                Updater.Instance.OpenBG();
                Updater.Instance.SetVersion();
                Updater.Instance.OpenUpdate();
                Updater.Instance.SetUpdateProgress(0, 0, false);
            }, () =>
            {
                if (!Constants.RELEASE_MODE)
                {
                    Reporter.Instance.CommitVerbose();
                    Reporter.Instance.CommitException();
                }
                patchOK = true;
                Updater.Instance.CloseConfirm();
                Updater.Instance.CloseUpdate();
                UIManager.Initialize(UIHelper.GetTransform(transform, "UI"));
                AudioManager.Initialize(transform, Constants.SHARED_AUDIO_PREFAB);
                NetManager.Initialize();
#if EFRAME_ILR
                if (Constants.SCRIPT_BUNDLE_MODE)
                {
                    Loom.RunAsync(() =>
                    {
                        ILRManager.Initialize(null, () =>
                        {
                            AdapterRegister.RegisterCrossBindingAdaptor(ILRManager.AppDomain);
                            ILRuntimeDelegateHelper.Register(ILRManager.AppDomain);
                            ILRManager.AppDomain.RegisterValueTypeBinder(typeof(Vector2), new Vector2Binder());
                            ILRManager.AppDomain.RegisterValueTypeBinder(typeof(Vector3), new Vector3Binder());
                            ILRManager.AppDomain.RegisterValueTypeBinder(typeof(Vector4), new Vector4Binder());
                            ILRManager.AppDomain.RegisterValueTypeBinder(typeof(Quaternion), new QuaternionBinder());
                            ManualCLRBindings.Initialize(ILRManager.AppDomain);
                            CLRBindings.Initialize(ILRManager.AppDomain);
                        });
                        var types = ILRManager.GetTypes().ToArray();
                        foreach (var type in types)
                        {
                            if (type.FullName == "ILR.Core.Launcher")
                            {
                                var o = ILRManager.CreateInstance(type);
                                ILauncher = (o as ILTypeInstance).CLRInstance as ILauncher;
                                break;
                            }
                        }
                    });
                }
                else
                {
                    var assembly = Assembly.GetExecutingAssembly();
                    var type = assembly.GetType("ILR.Core.Launcher");
                    var o = ILRManager.CreateInstance(type);
                    ILauncher = o as ILauncher;
                }
#endif

#if EFRAME_LUA
                LuaManager.PostInit(Updater.Instance.Patcher.LUADifferInfo);
                LuaManager.DoString("require 'Core.Launcher'");
                LStart = LuaManager.LuaState.GetFunction("Launcher.Start");
                LOnGUI = LuaManager.LuaState.GetFunction("Launcher.OnGUI");
                LUpdate = LuaManager.LuaState.GetFunction("Launcher.Update");
                LLateUpdate = LuaManager.LuaState.GetFunction("Launcher.LateUpdate");
                LFixedUpdate = LuaManager.LuaState.GetFunction("Launcher.FixedUpdate");
                LOnDestroy = LuaManager.LuaState.GetFunction("Launcher.OnDestroy");
                LOnApplicationPause = LuaManager.LuaState.GetFunction("Launcher.OnApplicationPause");
                LOnApplicationFocus = LuaManager.LuaState.GetFunction("Launcher.OnApplicationFocus");
                LOnApplicationQuit = LuaManager.LuaState.GetFunction("Launcher.OnApplicationQuit");
                LOnSceneWasLoaded = LuaManager.LuaState.GetFunction("Launcher.OnSceneWasLoaded");
                LOnException = LuaManager.LuaState.GetFunction("Launcher.OnException");
                LStart?.Call(gameObject);
#endif

#if !EFRAME_ILR && !EFRAME_LUA
                var assembly = Assembly.GetExecutingAssembly();
                var type = assembly.GetType("Launcher");
                var o = System.Activator.CreateInstance(type);
                ILauncher = o as ILauncher;
                patchOK = ILauncher != null;
                ILauncher?.Start(gameObject);
#endif
            });

#if EFRAME_LUA
            LuaManager.PreInit(transform);
            LuaBinder.Bind(LuaManager.LuaState);
            DelegateRegister.Register();
#endif

#if EFRAME_ILR
            while (ILauncher == null) yield return 0;
            ILauncher?.Start(gameObject);
#endif
            yield return null;
        }

        private void OnGUI()
        {
            if (patchOK)
            {
                ILauncher?.OnGUI();
#if EFRAME_LUA
                LOnGUI?.Call();
#endif
            }
        }

        private void Update()
        {
            if (patchOK)
            {
                ILauncher?.Update();
#if EFRAME_ILR
                ILRComponent.OnUpdate();
#endif
#if EFRAME_LUA
                LUpdate?.Call();
#endif
            }
            EP.U3D.LIBRARY.SCENE.SceneManager.Update();
            NetManager.FlushInput();
        }

        private void LateUpdate()
        {
            if (patchOK)
            {
                ILauncher?.LateUpdate();
#if EFRAME_ILR
                ILRComponent.OnLateUpdate();
#endif
#if EFRAME_LUA
                LLateUpdate?.Call();
#endif
            }
        }

        private void FixedUpdate()
        {
            if (patchOK)
            {
                ILauncher?.FixedUpdate();
#if EFRAME_ILR
                ILRComponent.OnFixedUpdate();
#endif
#if EFRAME_LUA
                LFixedUpdate?.Call();
#endif
            }
        }

        private void OnDestroy()
        {
            NetManager.DisconnectAll();
            NetManager.Dispose();
            if (patchOK)
            {
#if EFRAME_ILR
                ILauncher?.OnDestroy();
                // [20230218]: 使用其他线程异步清理，避免相关SDK析构异常，如ILRuntime
                // OnApplicationQuit先于OnDestroy调用
                // 不同物体的OnDestroy调用时序是随机的
                Loom.RunAsync(() =>
                {
                    Thread.Sleep(1000);
                    CLRBindings.Shutdown(ILRManager.AppDomain);
                    ManualCLRBindings.Shutdown(ILRManager.AppDomain);
                    ILRManager.Close();
                });
#endif
#if EFRAME_LUA
                LOnDestroy?.Call();
#endif
            }
        }

        private void OnApplicationPause(bool status)
        {
            if (patchOK)
            {
                ILauncher?.OnApplicationPause(status);
#if EFRAME_LUA
                LOnApplicationPause?.Call(status);
#endif
            }
        }

        private void OnApplicationFocus(bool status)
        {
            if (patchOK)
            {
                ILauncher?.OnApplicationFocus(status);
#if EFRAME_LUA
                LOnApplicationFocus?.Call(status);
#endif
            }
        }

        private void OnApplicationQuit()
        {
            if (patchOK)
            {
                ILauncher?.OnApplicationQuit();
#if EFRAME_LUA
                LOnApplicationQuit?.Call();
#endif
            }
        }

        private void OnSceneWasLoaded(Scene scene, LoadSceneMode mode)
        {
            if (patchOK)
            {
                ILauncher?.OnSceneWasLoaded(scene, mode);
#if EFRAME_LUA
                LOnSceneWasLoaded?.Call(scene, mode);
#endif
            }
        }

        public void OnException(string exception, bool isNew)
        {
            if (patchOK)
            {
                ILauncher?.OnException(exception, isNew);
#if EFRAME_LUA
                LOnException?.Call(exception, isNew);
#endif
            }
        }
    }
}
