using System;
using ILRuntime.CLR.Method;
using ILRuntime.Runtime.Enviorment;
using ILRuntime.Runtime.Intepreter;
#if DEBUG && !DISABLE_ILRUNTIME_DEBUG
using AutoList = System.Collections.Generic.List<object>;
#else
using AutoList = ILRuntime.Other.UncheckedList<object>;
#endif

namespace EP.U3D.LIBRARY.SCENE
{   
    public class SceneAdapter : CrossBindingAdaptor
    {
        public override Type BaseCLRType
        {
            get
            {
                return typeof(EP.U3D.LIBRARY.SCENE.Scene);
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

        public class Adapter : EP.U3D.LIBRARY.SCENE.Scene, CrossBindingAdaptorType
        {
            CrossBindingFunctionInfo<System.String> mName_0 = new CrossBindingFunctionInfo<System.String>("Name");
            CrossBindingMethodInfo mAwake_1 = new CrossBindingMethodInfo("Awake");
            CrossBindingMethodInfo<System.Object[]> mStart_2 = new CrossBindingMethodInfo<System.Object[]>("Start");
            CrossBindingMethodInfo mUpdate_3 = new CrossBindingMethodInfo("Update");
            CrossBindingMethodInfo mStop_4 = new CrossBindingMethodInfo("Stop");

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

            public override System.String Name()
            {
                if (mName_0.CheckShouldInvokeBase(this.instance))
                    return base.Name();
                else
                    return mName_0.Invoke(this.instance);
            }

            public override void Awake()
            {
                if (mAwake_1.CheckShouldInvokeBase(this.instance))
                    base.Awake();
                else
                    mAwake_1.Invoke(this.instance);
            }

            public override void Start(System.Object[] args)
            {
                if (mStart_2.CheckShouldInvokeBase(this.instance))
                    base.Start(args);
                else
                    mStart_2.Invoke(this.instance, args);
            }

            public override void Update()
            {
                if (mUpdate_3.CheckShouldInvokeBase(this.instance))
                    base.Update();
                else
                    mUpdate_3.Invoke(this.instance);
            }

            public override void Stop()
            {
                if (mStop_4.CheckShouldInvokeBase(this.instance))
                    base.Stop();
                else
                    mStop_4.Invoke(this.instance);
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

