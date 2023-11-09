using System;
using ILRuntime.CLR.Method;
using ILRuntime.Runtime.Enviorment;
using ILRuntime.Runtime.Intepreter;
#if DEBUG && !DISABLE_ILRUNTIME_DEBUG
using AutoList = System.Collections.Generic.List<object>;
#else
using AutoList = ILRuntime.Other.UncheckedList<object>;
#endif

namespace CS.Core
{   
    public class ILauncherAdapter : CrossBindingAdaptor
    {
        public override Type BaseCLRType
        {
            get
            {
                return typeof(CS.Core.ILauncher);
            }
        }

        public override Type AdaptorType
        {
            get
            {
                return typeof(Adapter);
            }
        }

        public override object CreateCLRInstance(ILRuntime.Runtime.Enviorment.AppDomain appdomain, ILTypeInstance instance)
        {
            return new Adapter(appdomain, instance);
        }

        public class Adapter : CS.Core.ILauncher, CrossBindingAdaptorType
        {
            CrossBindingMethodInfo<UnityEngine.GameObject> mStart_0 = new CrossBindingMethodInfo<UnityEngine.GameObject>("Start");
            CrossBindingMethodInfo mOnGUI_1 = new CrossBindingMethodInfo("OnGUI");
            CrossBindingMethodInfo mUpdate_2 = new CrossBindingMethodInfo("Update");
            CrossBindingMethodInfo mLateUpdate_3 = new CrossBindingMethodInfo("LateUpdate");
            CrossBindingMethodInfo mFixedUpdate_4 = new CrossBindingMethodInfo("FixedUpdate");
            CrossBindingMethodInfo mOnDestroy_5 = new CrossBindingMethodInfo("OnDestroy");
            CrossBindingMethodInfo<System.Boolean> mOnApplicationFocus_6 = new CrossBindingMethodInfo<System.Boolean>("OnApplicationFocus");
            CrossBindingMethodInfo<System.Boolean> mOnApplicationPause_7 = new CrossBindingMethodInfo<System.Boolean>("OnApplicationPause");
            CrossBindingMethodInfo mOnApplicationQuit_8 = new CrossBindingMethodInfo("OnApplicationQuit");
            CrossBindingMethodInfo<UnityEngine.SceneManagement.Scene, UnityEngine.SceneManagement.LoadSceneMode> mOnSceneWasLoaded_9 = new CrossBindingMethodInfo<UnityEngine.SceneManagement.Scene, UnityEngine.SceneManagement.LoadSceneMode>("OnSceneWasLoaded");
            CrossBindingMethodInfo<System.String, System.Boolean> mOnException_10 = new CrossBindingMethodInfo<System.String, System.Boolean>("OnException");

            bool isInvokingToString;
            ILTypeInstance instance;
            ILRuntime.Runtime.Enviorment.AppDomain appdomain;

            public Adapter()
            {

            }

            public Adapter(ILRuntime.Runtime.Enviorment.AppDomain appdomain, ILTypeInstance instance)
            {
                this.appdomain = appdomain;
                this.instance = instance;
            }

            public ILTypeInstance ILInstance { get { return instance; } }

            public override void Start(UnityEngine.GameObject go)
            {
                if (mStart_0.CheckShouldInvokeBase(this.instance))
                    base.Start(go);
                else
                    mStart_0.Invoke(this.instance, go);
            }

            public override void OnGUI()
            {
                if (mOnGUI_1.CheckShouldInvokeBase(this.instance))
                    base.OnGUI();
                else
                    mOnGUI_1.Invoke(this.instance);
            }

            public override void Update()
            {
                if (mUpdate_2.CheckShouldInvokeBase(this.instance))
                    base.Update();
                else
                    mUpdate_2.Invoke(this.instance);
            }

            public override void LateUpdate()
            {
                if (mLateUpdate_3.CheckShouldInvokeBase(this.instance))
                    base.LateUpdate();
                else
                    mLateUpdate_3.Invoke(this.instance);
            }

            public override void FixedUpdate()
            {
                if (mFixedUpdate_4.CheckShouldInvokeBase(this.instance))
                    base.FixedUpdate();
                else
                    mFixedUpdate_4.Invoke(this.instance);
            }

            public override void OnDestroy()
            {
                if (mOnDestroy_5.CheckShouldInvokeBase(this.instance))
                    base.OnDestroy();
                else
                    mOnDestroy_5.Invoke(this.instance);
            }

            public override void OnApplicationFocus(System.Boolean status)
            {
                if (mOnApplicationFocus_6.CheckShouldInvokeBase(this.instance))
                    base.OnApplicationFocus(status);
                else
                    mOnApplicationFocus_6.Invoke(this.instance, status);
            }

            public override void OnApplicationPause(System.Boolean status)
            {
                if (mOnApplicationPause_7.CheckShouldInvokeBase(this.instance))
                    base.OnApplicationPause(status);
                else
                    mOnApplicationPause_7.Invoke(this.instance, status);
            }

            public override void OnApplicationQuit()
            {
                if (mOnApplicationQuit_8.CheckShouldInvokeBase(this.instance))
                    base.OnApplicationQuit();
                else
                    mOnApplicationQuit_8.Invoke(this.instance);
            }

            public override void OnSceneWasLoaded(UnityEngine.SceneManagement.Scene scene, UnityEngine.SceneManagement.LoadSceneMode mode)
            {
                if (mOnSceneWasLoaded_9.CheckShouldInvokeBase(this.instance))
                    base.OnSceneWasLoaded(scene, mode);
                else
                    mOnSceneWasLoaded_9.Invoke(this.instance, scene, mode);
            }

            public override void OnException(System.String exception, System.Boolean isNew)
            {
                if (mOnException_10.CheckShouldInvokeBase(this.instance))
                    base.OnException(exception, isNew);
                else
                    mOnException_10.Invoke(this.instance, exception, isNew);
            }

            public override string ToString()
            {
                IMethod m = appdomain.ObjectType.GetMethod("ToString", 0);
                m = instance.Type.GetVirtualMethod(m);
                if (m == null || m is ILMethod)
                {
                    if (!isInvokingToString)
                    {
                        isInvokingToString = true;
                        string res = instance.ToString();
                        isInvokingToString = false;
                        return res;
                    }
                    else
                        return instance.Type.FullName;
                }
                else
                    return instance.Type.FullName;
            }
        }
    }
}

